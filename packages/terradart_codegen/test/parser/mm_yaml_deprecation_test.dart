import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:test/test.dart';

void main() {
  group('MmYamlParser populates Constraints.deprecationMessage', () {
    test('reads top-level field `deprecation_message:` into Constraints', () {
      const yaml = '''
name: GoogleSampleResource
properties:
  - name: 'sampleField'
    type: String
    deprecation_message: "Use new_field instead."
''';
      final result = const MmYamlParser().parseString(yaml);
      final field = result.fieldOverrides['sample_field'];
      expect(field, isNotNull,
          reason: 'parser should expose the field override entry');
      expect(
        field!.deprecationMessage,
        'Use new_field instead.',
        reason: 'MM YAML deprecation_message should populate '
            'Constraints.deprecationMessage',
      );
    });

    test(
        'property with no meaningful constraints is excluded from '
        'fieldOverrides (regression guard for _isMeaningful)', () {
      // A property with only `name` + `type` — no immutable, no validation, no
      // enum_values, no deprecation_message. _isMeaningful must return false,
      // so the property must NOT appear in fieldOverrides.
      const yaml = '''
name: GoogleSampleResource
properties:
  - name: 'plainField'
    type: String
''';
      final result = const MmYamlParser().parseString(yaml);

      expect(
        result.fieldOverrides,
        isNot(contains('plain_field')),
        reason:
            'A property with no meaningful constraints must be excluded from '
            'fieldOverrides. If this fires, _isMeaningful is over-eager and '
            'will pollute downstream IR merging with no-op entries.',
      );
    });
  });
}
