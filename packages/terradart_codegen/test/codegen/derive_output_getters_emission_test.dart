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
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
          Attribute(
            name: 'project',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
        ],
      ),
    );

void main() {
  group('derived output-getter emission', () {
    test('emits nameRef and id when deriveOutputGetters is true', () {
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema':
            const WrapperOverride(outputDir: 'pubsub', deriveOutputGetters: true),
      });
      final src = emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(
        src,
        contains(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect(
        src,
        contains("TfRef<String> get id => TfRef.attribute<String>(this, 'id');"),
      );
      // `project` is optional+computed: a constructor input, not a getter.
      expect(src, isNot(contains('get project =>')));
    });

    test('does NOT emit derived getters when deriveOutputGetters is false', () {
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(outputDir: 'pubsub'),
      });
      final src = emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, isNot(contains('get nameRef')));
      expect(src, isNot(contains('get id =>')));
    });

    test('still emits hand-written extraGetters alongside derived ones', () {
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(
          outputDir: 'pubsub',
          deriveOutputGetters: true,
          extraGetters:
              "  TfRef<String> get iamMember => TfRef.attribute<String>(this, 'member');\n",
        ),
      });
      final src = emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, contains('get nameRef'));
      expect(src, contains('get iamMember'));
      expect(
        src.indexOf('get nameRef'),
        lessThan(src.indexOf('get iamMember')),
        reason: 'derived getters must precede hand-written extraGetters',
      );
    });
  });
}
