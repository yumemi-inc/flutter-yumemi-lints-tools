import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub_semver/pub_semver.dart';

part 'lint_rule.freezed.dart';
part 'lint_rule.g.dart';

typedef LintRules =
    ({Iterable<DartLintRule> dart, Iterable<FlutterLintRule> flutter});

@freezed
sealed class LintRule with _$LintRule {
  const factory LintRule.dart(Rule rule) = DartLintRule;

  const factory LintRule.flutter(Rule rule) = FlutterLintRule;
}

@freezed
abstract class Rule with _$Rule {
  const factory Rule({
    required String name,
    required List<String> categories,
    @JsonKey(name: 'deprecatedDetails') required String details,
    @_StateJsonConverter() required Map<RuleState, Since> state,
  }) = _Rule;

  factory Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);

  const Rule._();
}

enum RuleState {
  stable,
  experimental,
  deprecated,
  removed,
  internal;

  bool get active => switch (this) {
    RuleState.stable || RuleState.experimental => true,
    RuleState.deprecated || RuleState.removed || RuleState.internal => false,
  };

  bool get inactive => !active;
}

enum RuleSet { core, recommended, flutter }

enum FixStatus { unregistered, needsFix, needsEvaluation, hasFix, noFix }

@Freezed(fromJson: false, toJson: false)
sealed class Since with _$Since {
  const Since._();

  const factory Since.dartSdk(Version version) = SinceDartSdk;

  const factory Since.unreleased() = SinceUnreleased;

  static final _versionRegExp = RegExp(r'^(\d+)\.(\d+)$');

  factory Since.fromJson(String value) {
    final match = _versionRegExp.firstMatch(value);
    if (match == null) {
      // NOTE:
      //  This is a workaround for the fact that the `sinceDartSdk` field in the [rules.json] is not always a valid version.
      //  Expected format: "1.0", "2.1", etc.
      //  Unexpected format examples: "3.3-wip", "3.5-dev", etc.
      //  [rules.json]: https://github.com/dart-lang/sdk/blob/main/pkg/linter/tool/machine/rules.json
      return SinceUnreleased();
    }

    final major = int.parse(match[1]!);
    final minor = int.parse(match[2]!);
    const patch = 0;
    final version = Version(major, minor, patch);

    return SinceDartSdk(version);
  }

  String toJson() => switch (this) {
    SinceDartSdk(version: final version) => '${version.major}.${version.minor}',
    SinceUnreleased() => 'unreleased',
  };
}

typedef State = Map<RuleState, Since>;

extension ExtState on State {
  /// Check if the [State] has an active state with a supported version.
  bool hasSupportedVersion(Version version) {
    // Check if the version is supported by any of the states
    final supportedStates = entries.where((e) {
      final since = e.value;
      if (since is! SinceDartSdk) {
        return false;
      }

      return since.version <= version;
    });

    if (supportedStates.any((r) => r.key.inactive)) {
      return false;
    }

    return supportedStates.any((r) => r.key.active);
  }
}

class _StateJsonConverter
    implements JsonConverter<State, Map<String, dynamic>> {
  const _StateJsonConverter();

  @override
  State fromJson(Map<String, dynamic> value) {
    return value.map(
      (key, value) =>
          MapEntry(RuleState.values.byName(key), Since.fromJson(value)),
    );
  }

  @override
  Map<String, dynamic> toJson(State value) => Map<String, dynamic>.from(value);
}
