import 'package:collection/collection.dart';
import 'package:update_lint_rules/src/models/lint_code_dto.dart';
import 'package:update_lint_rules/src/models/lint_rule.dart';

class LintCodeDtoMapper {
  const LintCodeDtoMapper._();

  // Group DTOs by sharedName
  static Map<String, List<LintCodeDto>> groupLintCodeDtosBySharedName(
    List<LintCodeDto> dtos,
  ) {
    return dtos
        .where(
          (dto) =>
              dto.sharedName != null &&
              dto.categories != null &&
              dto.deprecatedDetails != null &&
              dto.state != null,
        )
        // If `dto.sharedName` is not null, `dto.name` is the same as `dto.sharedName`.
        // So, group by `dto.name`.
        .groupListsBy((dto) => dto.name);
  }

  /// Filter [LintCodeDto] by sharedName
  static Iterable<LintCodeDto> filterLintCodeDtosBySharedName(
    Iterable<LintCodeDto> dtos,
  ) {
    return dtos.where(
      (dto) =>
          dto.sharedName == null &&
          dto.categories != null &&
          dto.deprecatedDetails != null &&
          dto.state != null,
    );
  }

  /// Convert [LintCodeDto] to [Rule]
  static Rule toRule(LintCodeDto dto) {
    final categories = dto.categories;
    final details = dto.deprecatedDetails;
    final state = dto.state;

    if (categories == null || details == null || state == null) {
      throw FormatException(
        'Required fields are null: ${[if (categories == null) 'categories', if (details == null) 'details', if (state == null) 'state'].join(', ')}',
      );
    }

    return Rule(
      name: dto.name,
      categories: categories,
      details: details,
      state: state.map(
        (key, value) =>
            MapEntry(RuleState.values.byName(key), Since.fromJson(value)),
      ),
    );
  }

  /// Convert a list of [LintCodeDto] to [Rule]
  static Rule toRuleFromDtos({
    required String sharedName,
    required List<LintCodeDto> dtos,
  }) {
    if (dtos.any((dto) => dto.sharedName != sharedName)) {
      throw ArgumentError(
        'All LintCodeDto objects must have the same name: $sharedName',
      );
    }

    final categories = dtos.map((e) => e.categories).nonNulls.firstOrNull;
    final details = dtos.map((e) => e.deprecatedDetails).nonNulls.firstOrNull;
    final state = dtos.map((e) => e.state).nonNulls.firstOrNull;

    if (categories == null || details == null || state == null) {
      throw FormatException(
        'Required fields are null: ${[if (categories == null) 'categories', if (details == null) 'details', if (state == null) 'state'].join(', ')}',
      );
    }

    return Rule(
      name: sharedName,
      categories: categories,
      details: details,
      state: state.map(
        (key, value) =>
            MapEntry(RuleState.values.byName(key), Since.fromJson(value)),
      ),
    );
  }
}
