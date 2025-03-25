import 'package:yaml/yaml.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:update_lint_rules/src/clients/app_client.dart';
import 'package:update_lint_rules/src/services/lint_rule_service.dart';

void main() {
  group(
    'convertToJsonFromYaml',
    () {
      final service = LintRuleService(appClient: AppClient(Client()));

      test('Can convert basic YamlMap to Map', () {
        final yamlString = '''
          name: test
          age: 25
          isActive: true
        ''';

        final yamlMap = loadYaml(yamlString);
        final result = service.convertToJsonFromYaml(yamlMap);

        expect(result, {
          'name': 'test',
          'age': 25,
          'isActive': true,
        });
      });

      test('Can convert nested Map', () {
        final yamlString = '''
          person:
            name: test
            address:
              city: Tokyo
              country: Japan
        ''';

        final yamlMap = loadYaml(yamlString);
        final result = service.convertToJsonFromYaml(yamlMap);

        expect(result, {
          'person': {
            'name': 'test',
            'address': {
              'city': 'Tokyo',
              'country': 'Japan',
            },
          },
        });
      });

      test('Can convert Map containing lists', () {
        final yamlString = '''
          fruits:
            - apple
            - banana
          scores:
            - 100
            - 200
          mixed:
            - name: item1
              value: 1
            - name: item2
              value: 2
        ''';

        final yamlMap = loadYaml(yamlString);
        final result = service.convertToJsonFromYaml(yamlMap);

        expect(result, {
          'fruits': ['apple', 'banana'],
          'scores': [100, 200],
          'mixed': [
            {'name': 'item1', 'value': 1},
            {'name': 'item2', 'value': 2},
          ],
        });
      });

      test('Can convert empty YamlMap', () {
        final yamlString = '{}';

        final yamlMap = loadYaml(yamlString);
        final result = service.convertToJsonFromYaml(yamlMap);

        expect(result, {});
      });
    },
  );
}
