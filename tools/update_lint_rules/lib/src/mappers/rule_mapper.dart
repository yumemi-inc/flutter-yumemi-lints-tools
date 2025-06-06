import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:update_lint_rules/src/models/lint_code_dto.dart';
import 'package:update_lint_rules/src/models/lint_rule.dart';

class RuleMapper {
  const RuleMapper._();

  /// Builds a [Rule] instance from provided parameters.
  ///
  /// If any of the required parameters (details or state)
  /// is null, the [FormatException] message includes which fields are missing.
  @visibleForTesting
  static Rule buildRule({
    required String name,
    required List<String>? categories,
    required String? details,
    required Map<String, dynamic>? state,
  }) {
    if (details == null || state == null) {
      throw FormatException(
        'The required fields for the $name are null: ${[if (details == null) 'details', if (state == null) 'state'].join(', ')}',
      );
    }

    return Rule(
      name: name,
      // NOTE:
      //  https://github.com/dart-lang/sdk/blob/ae6da8b926f208bf87d2e11375be5c611c27ee1b/pkg/linter/messages.yaml#L222-L250
      //  Since data such as always_require_non_null_named_parameters's for which category is null already exists,
      //  an empty character is assigned when category is null.
      categories: categories ?? const [],
      details: details,
      state: state.map(
        (key, value) =>
            MapEntry(RuleState.values.byName(key), Since.fromJson(value)),
      ),
    );
  }

  /// Convert a list of [LintCodeDto] to a list of [Rule]
  static List<Rule> convertDtosToRules(Iterable<LintCodeDto> dtos) {
    // Group DTOs by sharedName
    final groupedLintCodeDtosBySharedName = dtos
        .where((dto) => dto.sharedName != null)
        // If `dto.sharedName` is not null, `dto.name` is the same as `dto.sharedName`.
        // So, group by `dto.name`.
        .groupListsBy((dto) => dto.name);

    // Convert DTOs with sharedName to Rules
    final rulesWithSharedName = groupedLintCodeDtosBySharedName.entries.map((
      e,
    ) {
      final dtos = e.value;

      final categories = dtos.map((e) => e.categories).nonNulls.firstOrNull;
      final deprecatedDetails =
          dtos.map((e) => e.deprecatedDetails).nonNulls.firstOrNull;
      final state = dtos.map((e) => e.state).nonNulls.firstOrNull;

      return RuleMapper.buildRule(
        name: e.key,
        categories: categories,
        details: deprecatedDetails,
        state: state,
      );
    });

    // Convert DTOs without sharedName to Rules
    final rulesWithoutSharedName = dtos
        .where((dto) => dto.sharedName == null)
        .map(
          (dto) => RuleMapper.buildRule(
            name: dto.name,
            categories: dto.categories,
            details: dto.deprecatedDetails,
            state: dto.state,
          ),
        );

    final allRules = [...rulesWithSharedName, ...rulesWithoutSharedName];
    // Sort by name
    return allRules.sorted((a, b) => a.name.compareTo(b.name));
  }
}
