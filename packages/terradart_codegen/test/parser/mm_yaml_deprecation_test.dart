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
  });
}
