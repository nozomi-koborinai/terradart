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
      description: 'A schema is a format that messages must follow.',
      root: BlockDef(
        attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
      ),
    );

void main() {
  group('derived class-doc emission', () {
    test('emits the derived doc + curatedDoc when deriveClassDoc is true', () {
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(
          outputDir: 'pubsub',
          deriveClassDoc: true,
          curatedDoc: '/// Curated example.',
        ),
      });
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, contains('/// Factory wrapper for `google_pubsub_schema`.'));
      expect(
        src,
        contains('/// A schema is a format that messages must follow.'),
      );
      expect(src, contains('/// Curated example.'));
    });

    test('emits no class doc when deriveClassDoc is false', () {
      // The hand-written classDocComment fallback is retired (2026-07 doc
      // wave): a gate-off override emits a bare class declaration.
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(outputDir: 'pubsub'),
      });
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, isNot(contains('Factory wrapper for')));
      expect(src, isNot(contains('A schema is a format')));
    });
  });
}
