import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/provider_schema_ir.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
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

  group('IrMerger merges Constraints.deprecationMessage', () {
    test('preserves MM-only deprecation when schema is silent', () {
      const base = ProviderSchemaIR(
        providerName: 'test',
        providerSource: 'test/test',
        providerVersion: '0.0.1',
        resources: {
          'test_resource': ResourceDef(
            terraformType: 'test_resource',
            root: BlockDef(
              attributes: [
                Attribute(
                  name: 'foo',
                  type: StringType(),
                  constraints: Constraints(required: true),
                ),
              ],
            ),
          ),
        },
        dataSources: {},
      );
      final overrides = <String, MmResourceOverrides>{
        'test_resource': const MmResourceOverrides(
          fieldOverrides: {
            'foo': Constraints(
              deprecationMessage: 'Use the new API.',
            ),
          },
        ),
      };

      final merged = const IrMerger().merge(base: base, overrides: overrides);

      final attr = merged.resources['test_resource']!.root.attributes
          .singleWhere((a) => a.name == 'foo');
      expect(attr.constraints.required, isTrue,
          reason: 'schema-side required flag must survive');
      expect(attr.constraints.deprecationMessage, 'Use the new API.',
          reason: 'MM-only deprecation must survive when schema has none');
    });

    test('MM YAML deprecation overrides schema-json Deprecated. placeholder',
        () {
      const base = ProviderSchemaIR(
        providerName: 'test',
        providerSource: 'test/test',
        providerVersion: '0.0.1',
        resources: {
          'test_resource': ResourceDef(
            terraformType: 'test_resource',
            root: BlockDef(
              attributes: [
                Attribute(
                  name: 'foo',
                  type: StringType(),
                  constraints: Constraints(
                    deprecationMessage: 'Deprecated.',
                  ),
                ),
              ],
            ),
          ),
        },
        dataSources: {},
      );
      final overrides = <String, MmResourceOverrides>{
        'test_resource': const MmResourceOverrides(
          fieldOverrides: {
            'foo': Constraints(
              deprecationMessage:
                  'BigQuery deprecated this in favour of foo.bar.',
            ),
          },
        ),
      };

      final merged = const IrMerger().merge(base: base, overrides: overrides);

      final attr = merged.resources['test_resource']!.root.attributes
          .singleWhere((a) => a.name == 'foo');
      expect(
        attr.constraints.deprecationMessage,
        'BigQuery deprecated this in favour of foo.bar.',
        reason:
            'MM YAML deprecation message must override schema-json placeholder',
      );
    });
  });
}
