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
        'google_pubsub_schema': const WrapperOverride(
            outputDir: 'pubsub', deriveOutputGetters: true),
      });
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(
        src,
        contains(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect(
        src,
        contains(
            "TfRef<String> get id => TfRef.attribute<String>(this, 'id');"),
      );
      // `project` is optional+computed: a constructor input, not a getter.
      expect(src, isNot(contains('get project =>')));
    });

    test('does NOT emit derived getters when deriveOutputGetters is false', () {
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(outputDir: 'pubsub'),
      });
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
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
      final src =
          emitter.emit(_schemaDef(), providerSource: 'hashicorp/google');
      expect(src, contains('get nameRef'));
      expect(src, contains('get iamMember'));
      expect(
        src.indexOf('get nameRef'),
        lessThan(src.indexOf('get iamMember')),
        reason: 'derived getters must precede hand-written extraGetters',
      );
    });

    test(
        'a hand-written extraGetters getter shadows the derived one '
        '(exactly one, hand-written type wins)', () {
      // `count` is a pure computed-only int attribute that derivation would
      // emit as `TfRef<int> get count`. The override re-declares it in
      // extraGetters with a deliberately distinct body to prove the derived
      // one is skipped (no duplicate_definition).
      const def = ResourceDef(
        terraformType: 'google_pubsub_schema',
        root: BlockDef(
          attributes: [
            Attribute(
              name: 'count',
              type: IntType(),
              constraints: Constraints(computed: true),
            ),
          ],
        ),
      );
      final emitter = WrapperEmitter(overrides: {
        'google_pubsub_schema': const WrapperOverride(
          outputDir: 'pubsub',
          deriveOutputGetters: true,
          extraGetters:
              "  /// Hand-written.\n  TfRef<int> get count => TfRef.attribute<int>(this, 'count');\n",
        ),
      });
      final src = emitter.emit(def, providerSource: 'hashicorp/google');
      // Exactly one declaration of `get count` — the derived one was skipped.
      expect('get count'.allMatches(src).length, 1);
      // ...and it is the hand-written one (carries its bespoke doc comment).
      expect(src, contains('/// Hand-written.'));
    });
  });
}
