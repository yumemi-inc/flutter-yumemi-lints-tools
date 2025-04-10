import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';
import 'package:update_lint_rules/src/mappers/lint_code_dto_mapper.dart';
import 'package:update_lint_rules/src/models/lint_code_dto.dart';
import 'package:update_lint_rules/src/models/lint_rule.dart';

void main() {
  group('LintCodeDtoMapper', () {
    group('canConvertToRule', () {
      test('returns true when all required fields are present', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: {'removed': '3.3', 'stable': '2.0'},
          categories: ['style'],
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: 'test_details',
          todo: 'test_todo',
        );

        expect(LintCodeDtoMapper.canConvertToRule(dto), isTrue);
      });

      test('returns false when categories is null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: {'removed': '3.3', 'stable': '2.0'},
          categories: null,
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: 'test_details',
          todo: 'test_todo',
        );

        expect(LintCodeDtoMapper.canConvertToRule(dto), isFalse);
      });

      test('returns false when deprecatedDetails is null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: {'removed': '3.3', 'stable': '2.0'},
          categories: ['style'],
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: null,
          todo: 'test_todo',
        );

        expect(LintCodeDtoMapper.canConvertToRule(dto), isFalse);
      });

      test('returns false when state is null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: null,
          categories: ['style'],
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: 'test_details',
          todo: 'test_todo',
        );

        expect(LintCodeDtoMapper.canConvertToRule(dto), isFalse);
      });
    });

    group('toRule', () {
      test('converts valid LintCodeDto to Rule', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: {'removed': '3.3', 'stable': '2.0'},
          categories: ['style'],
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: 'test_details',
          todo: 'test_todo',
        );

        final rule = LintCodeDtoMapper.toRule(dto);

        expect(rule.name, equals('test_name'));
        expect(rule.categories, equals(['style']));
        expect(rule.details, equals('test_details'));
        expect(rule.state.keys, contains(RuleState.stable));
      });

      test('throws FormatException when categories is null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: {'removed': '3.3', 'stable': '2.0'},
          categories: null,
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: 'test_details',
          todo: 'test_todo',
        );

        expect(() => LintCodeDtoMapper.toRule(dto), throwsFormatException);
      });

      test('throws FormatException when details is null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: {'removed': '3.3', 'stable': '2.0'},
          categories: ['style'],
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: null,
          todo: 'test_todo',
        );

        expect(() => LintCodeDtoMapper.toRule(dto), throwsFormatException);
      });

      test('throws FormatException when state is null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: 'test_shared_name',
          problemMessage: 'test_message',
          correctionMessage: 'test_correction',
          state: null,
          categories: ['style'],
          hasPublishedDocs: true,
          documentation: 'test_documentation',
          deprecatedDetails: 'test_details',
          todo: 'test_todo',
        );

        expect(() => LintCodeDtoMapper.toRule(dto), throwsFormatException);
      });

      test('throws FormatException when multiple fields are null', () {
        final dto = LintCodeDto(
          name: 'test_name',
          sharedName: null,
          problemMessage: null,
          correctionMessage: null,
          state: null,
          categories: null,
          hasPublishedDocs: true,
          documentation: null,
          deprecatedDetails: null,
          todo: null,
        );

        expect(() => LintCodeDtoMapper.toRule(dto), throwsFormatException);
      });
    });

    group('toRuleFromDtos', () {
      test('converts list of LintCodeDtos to a single Rule', () {
        final dtos = [
          LintCodeDto(
            name: 'test_name_1',
            sharedName: 'test_shared_name',
            problemMessage: 'test_message_1',
            correctionMessage: 'test_correction_1',
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation_1',
            deprecatedDetails: null,
            todo: 'test_todo_1',
            state: null,
          ),
          LintCodeDto(
            name: 'test_name_2',
            sharedName: 'test_shared_name',
            problemMessage: 'test_message_2',
            correctionMessage: 'test_correction_2',
            categories: null,
            hasPublishedDocs: true,
            documentation: 'test_documentation_2',
            deprecatedDetails: 'test_details_2',
            todo: 'test_todo_2',
            state: null,
          ),
          LintCodeDto(
            name: 'test_name_3',
            sharedName: 'test_shared_name',
            problemMessage: 'test_message_3',
            correctionMessage: 'test_correction_3',
            categories: null,
            hasPublishedDocs: true,
            documentation: 'test_documentation_3',
            deprecatedDetails: null,
            todo: 'test_todo_3',
            state: {'removed': '3.3'},
          ),
        ];

        final rule = LintCodeDtoMapper.toRuleFromDtos(
          sharedName: 'test_shared_name',
          dtos: dtos,
        );

        expect(rule.name, equals('test_shared_name'));
        expect(rule.categories, equals(['style']));
        expect(rule.details, equals('test_details_2'));
        expect(rule.state[RuleState.removed],
            equals(Since.dartSdk(Version.parse('3.3.0'))));
      });

      test('throws ArgumentError when dto names do not match sharedName', () {
        final dtos = [
          LintCodeDto(
            name: 'test_name_1',
            sharedName: 'shared_name',
            problemMessage: 'test_message_1',
            correctionMessage: 'test_correction_1',
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation_1',
            deprecatedDetails: 'test_details_1',
            todo: 'test_todo_1',
            state: {'state': '2.0'},
          ),
          LintCodeDto(
            name: 'test_name_2',
            sharedName: 'different_rule',
            problemMessage: 'test_message_2',
            correctionMessage: 'test_correction_2',
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation_2',
            deprecatedDetails: 'test_details_2',
            todo: 'test_todo_2',
            state: {'state': '3.0'},
          ),
        ];

        expect(
          () => LintCodeDtoMapper.toRuleFromDtos(
            sharedName: 'test_name',
            dtos: dtos,
          ),
          throwsArgumentError,
        );
      });

      test('throws FormatException when no dto has categories', () {
        final dtos = [
          LintCodeDto(
            name: 'test_name',
            sharedName: 'test_shared_name',
            problemMessage: 'test_message',
            correctionMessage: 'test_correction',
            categories: null,
            hasPublishedDocs: true,
            documentation: 'test_documentation',
            deprecatedDetails: 'test_details',
            todo: 'test_todo',
            state: {'state': '2.0'},
          ),
        ];

        expect(
          () => LintCodeDtoMapper.toRuleFromDtos(
            sharedName: 'test_shared_name',
            dtos: dtos,
          ),
          throwsFormatException,
        );
      });

      test('throws FormatException when no dto has details', () {
        final dtos = [
          LintCodeDto(
            name: 'test_name',
            sharedName: 'test_shared_name',
            problemMessage: 'test_message',
            correctionMessage: 'test_correction',
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation',
            deprecatedDetails: null,
            todo: 'test_todo',
            state: {'state': '2.0'},
          ),
        ];

        expect(
          () => LintCodeDtoMapper.toRuleFromDtos(
            sharedName: 'test_shared_name',
            dtos: dtos,
          ),
          throwsFormatException,
        );
      });

      test('throws FormatException when no dto has state', () {
        final dtos = [
          LintCodeDto(
            name: 'test_name',
            sharedName: 'test_shared_name',
            problemMessage: 'test_message',
            correctionMessage: 'test_correction',
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation',
            deprecatedDetails: 'test_details',
            todo: 'test_todo',
            state: null,
          ),
        ];

        expect(
          () => LintCodeDtoMapper.toRuleFromDtos(
            sharedName: 'test_shared_name',
            dtos: dtos,
          ),
          throwsFormatException,
        );
      });
    });
  });
}
