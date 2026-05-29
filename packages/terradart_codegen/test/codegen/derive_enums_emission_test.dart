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
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema':
            const WrapperOverride(outputDir: 'pubsub', deriveEnums: true),
      });
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, contains('enum PubsubSchemaType implements TerraformEnum {'));
      expect(src, contains("typeUnspecified('TYPE_UNSPECIFIED'),"));
      expect(src, contains("avro('AVRO');"));
      expect(src, contains('final String terraformValue;'));
    });

    test('does NOT emit a derived enum when deriveEnums is false', () {
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(outputDir: 'pubsub'),
      });
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, isNot(contains('enum PubsubSchemaType')));
    });
  });
}
