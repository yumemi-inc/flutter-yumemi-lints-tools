import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';
import 'package:update_lint_rules/src/mappers/rule_mapper.dart';
import 'package:update_lint_rules/src/models/lint_code_dto.dart';
import 'package:update_lint_rules/src/models/lint_rule.dart';

void main() {
  group('RuleMapper', () {
    group('buildRule', () {
      test('builds Rule when parameters are provided', () {
        final rule = RuleMapper.buildRule(
          name: 'test_name',
          categories: ['style'],
          details: 'test_details',
          state: {'stable': '2.0'},
        );

        expect(rule.name, equals('test_name'));
        expect(rule.categories, equals(['style']));
        expect(rule.details, equals('test_details'));
        expect(
          rule.state[RuleState.stable],
          equals(Since.dartSdk(Version.parse('2.0.0'))),
        );
      });

      test('throws FormatException when categories is null', () {
        expect(
          () => RuleMapper.buildRule(
            name: 'test_name',
            categories: null,
            details: 'test_details',
            state: {'stable': '2.0'},
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException when details is null', () {
        expect(
          () => RuleMapper.buildRule(
            name: 'test_name',
            categories: ['style'],
            details: null,
            state: {'stable': '2.0'},
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException when state is null', () {
        expect(
          () => RuleMapper.buildRule(
            name: 'test_name',
            categories: ['style'],
            details: 'test_details',
            state: null,
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('builds Rule when state has multiple entries', () {
        final rule = RuleMapper.buildRule(
          name: 'test_name',
          categories: ['style'],
          details: 'test_details',
          state: {'stable': '2.0', 'deprecated': '3.0'},
        );

        expect(
          rule.state[RuleState.stable],
          equals(Since.dartSdk(Version.parse('2.0.0'))),
        );
        expect(
          rule.state[RuleState.deprecated],
          equals(Since.dartSdk(Version.parse('3.0.0'))),
        );
      });
    });
    group('convertDtosToRules', () {
      test('converts DTOs to sorted Rules', () {
        final dtos = [
          LintCodeDto(
            name: 'b_name',
            sharedName: null,
            problemMessage: 'test_message',
            correctionMessage: 'test_correction',
            state: {'stable': '2.0'},
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation',
            deprecatedDetails: 'test_details',
            todo: 'test_todo',
          ),
          LintCodeDto(
            name: 'a_name',
            sharedName: null,
            problemMessage: 'test_message',
            correctionMessage: 'test_correction',
            state: {'stable': '2.0'},
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation',
            deprecatedDetails: 'test_details',
            todo: 'test_todo',
          ),
        ];

        final rules = RuleMapper.convertDtosToRules(dtos);

        expect(rules.length, equals(2));
        expect(rules[0].name, equals('a_name'));
        expect(rules[1].name, equals('b_name'));
      });

      test('converts DTOs with same sharedName into single Rule', () {
        final dtos = [
          LintCodeDto(
            name: 'shared_rule',
            sharedName: 'shared_rule',
            problemMessage: 'test_message_1',
            correctionMessage: 'test_correction_1',
            state: {'stable': '2.0'},
            categories: ['style'],
            hasPublishedDocs: true,
            documentation: 'test_documentation_1',
            deprecatedDetails: 'test_details_1',
            todo: 'test_todo_1',
          ),
          LintCodeDto(
            name: 'shared_rule',
            sharedName: 'shared_rule',
            problemMessage: 'test_message_2',
            correctionMessage: 'test_correction_2',
            state: {'deprecated': '2.0'},
            categories: null,
            hasPublishedDocs: true,
            documentation: 'test_documentation_2',
            deprecatedDetails: null,
            todo: 'test_todo_2',
          ),
        ];

        final rules = RuleMapper.convertDtosToRules(dtos);

        expect(rules.length, equals(1));

        final rule = rules.first;
        expect(rule.name, equals('shared_rule'));
        expect(rule.categories, equals(['style']));
        expect(rule.details, equals('test_details_1'));
        expect(
          rule.state[RuleState.stable],
          equals(Since.dartSdk(Version.parse('2.0.0'))),
        );
      });

      test('converts empty DTOs to empty Rules', () {
        final rules = RuleMapper.convertDtosToRules([]);

        expect(rules, isEmpty);
      });

      test('filters out dtos with null categories and null sharedName', () {
        final dtos = [
          LintCodeDto(
            name: 'test_name',
            sharedName: null,
            problemMessage: 'test_message',
            correctionMessage: 'test_correction',
            state: {"stable": "2.0", "removed": "3.0"},
            categories: null,
            hasPublishedDocs: true,
            documentation: 'test_documentation',
            deprecatedDetails: 'test_details',
            todo: 'test_todo',
          ),
        ];

        final rules = RuleMapper.convertDtosToRules(dtos);

        expect(rules.length, equals(1));
        expect(rules[0].categories, equals([]));
      });
    });
  });
}
