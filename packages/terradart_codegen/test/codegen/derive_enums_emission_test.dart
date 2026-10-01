import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

ResourceDef _schemaDef() => const ResourceDef(
  terraformType: 'google_pubsub_schema',
  root: BlockDef(
    attributes: [
      Attribute(
        name: 'type',
        type: StringType(),
        constraints: Constraints(
          optional: true,
          enumValues: ['TYPE_UNSPECIFIED', 'PROTOCOL_BUFFER', 'AVRO'],
        ),
      ),
    ],
  ),
);

void main() {
  group('derived enum emission', () {
    test('emits a TerraformEnum when deriveEnums is true', () {
      final emitter = WrapperEmitter(
        overrides: {
          'google_pubsub_schema': const WrapperOverride(
            outputDir: 'pubsub',
            deriveEnums: true,
          ),
        },
      );
      final src = emitter.emit(
        _schemaDef(),
        providerSource: 'hashicorp/google',
      );
      expect(src, contains('enum PubsubSchemaType implements TerraformEnum {'));
      expect(src, contains("typeUnspecified('TYPE_UNSPECIFIED'),"));
      expect(src, contains("avro('AVRO');"));
      expect(src, contains('final String terraformValue;'));
    });

    test('a top-level enum and block helper never share a name', () {
      const def = ResourceDef(
        terraformType: 'google_foo_bar',
        root: BlockDef(
          attributes: [
            Attribute(
              name: 'bar_type',
              type: StringType(),
              constraints: Constraints(
                optional: true,
                enumValues: ['ONE', 'TWO'],
              ),
            ),
          ],
          nestedBlocks: [
            NestedBlockDef(
              name: 'type',
              nesting: NestingMode.single,
              constraints: Constraints(optional: true),
              block: BlockDef(
                attributes: [
                  Attribute(
                    name: 'x',
                    type: StringType(),
                    constraints: Constraints(optional: true),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      final emitter = WrapperEmitter(
        overrides: {
          'google_foo_bar': const WrapperOverride(
            outputDir: 'foo',
            deriveEnums: true,
            deriveNestedTypes: true,
          ),
        },
        rawResourceSchemas: {
          'google_foo_bar': {
            'attributes': {
              'bar_type': {'type': 'string', 'optional': true},
            },
            'block_types': {
              'type': {
                'nesting_mode': 'single',
                'block': {
                  'attributes': {
                    'x': {'type': 'string', 'optional': true},
                  },
                },
              },
            },
          },
        },
      );
      final src = emitter.emit(def, providerSource: 'hashicorp/google');
      final declared = [
        for (final m in RegExp(
          r'^(?:final class|class|enum) (\w+)',
          multiLine: true,
        ).allMatches(src))
          m[1]!,
      ];
      expect(declared, containsAll(['FooBarType', 'FooBarBarType']));
      expect(declared.toSet(), hasLength(declared.length));
    });

    test('does NOT emit a derived enum when deriveEnums is false', () {
      final emitter = WrapperEmitter(
        overrides: {
          'google_pubsub_schema': const WrapperOverride(outputDir: 'pubsub'),
        },
      );
      final src = emitter.emit(
        _schemaDef(),
        providerSource: 'hashicorp/google',
      );
      expect(src, isNot(contains('enum PubsubSchemaType')));
    });
  });
}
