import 'package:terradart_codegen/src/codegen/getter_emitter.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

ResourceDef _def(List<Attribute> attrs) => ResourceDef(
      terraformType: 'google_x',
      root: BlockDef(attributes: attrs),
    );

void main() {
  group('emitDerivedOutputGetters', () {
    test('emits nameRef then id for the identity attributes', () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'name',
          type: StringType(),
          constraints: Constraints(required: true),
        ),
        Attribute(
          name: 'id',
          type: StringType(),
          constraints: Constraints(computed: true),
        ),
      ]));
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
      expect(src.indexOf('get nameRef'), lessThan(src.indexOf('get id')));
    });

    test('emits camelCase getters for pure computed-only attributes', () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'self_link',
          type: StringType(),
          constraints: Constraints(computed: true),
        ),
        Attribute(
          name: 'generated_id',
          type: IntType(),
          constraints: Constraints(computed: true),
        ),
      ]));
      expect(
        src,
        contains(
          "TfRef<String> get selfLink => "
          "TfRef.attribute<String>(this, 'self_link');",
        ),
      );
      expect(
        src,
        contains(
          "TfRef<int> get generatedId => "
          "TfRef.attribute<int>(this, 'generated_id');",
        ),
      );
      expect(src.indexOf('get selfLink'),
          lessThan(src.indexOf('get generatedId')));
    });

    test('emits nameRef exactly once when name is itself computed-only', () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'name',
          type: StringType(),
          constraints: Constraints(computed: true),
        ),
      ]));
      expect(
        src,
        contains(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect('get nameRef'.allMatches(src).length, 1);
    });

    test('does NOT emit getters for optional+computed (settable) attributes',
        () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'project',
          type: StringType(),
          constraints: Constraints(optional: true, computed: true),
        ),
      ]));
      expect(src, isEmpty);
    });

    test('emits a one-line template doc comment per getter', () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'self_link',
          type: StringType(),
          constraints: Constraints(computed: true),
        ),
      ]));
      expect(src, contains('/// Reference to `self_link` attribute.'));
    });

    test('returns empty source when there is nothing to derive', () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'description',
          type: StringType(),
          constraints: Constraints(optional: true),
        ),
      ]));
      expect(src, isEmpty);
    });

    test('skips a computed-only getter whose Dart name is in excludeNames', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'execution_count',
            type: IntType(),
            constraints: Constraints(computed: true),
          ),
          Attribute(
            name: 'self_link',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
        excludeNames: {'executionCount'},
      );
      // The excluded camelCase getter is omitted entirely...
      expect(src, isNot(contains('get executionCount')));
      // ...while non-excluded computed-only getters are still derived.
      expect(
        src,
        contains(
          "TfRef<String> get selfLink => "
          "TfRef.attribute<String>(this, 'self_link');",
        ),
      );
    });

    test('skips the special-cased identity getters (nameRef/id) when excluded',
        () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
        excludeNames: {'nameRef', 'id'},
      );
      expect(src, isEmpty);
    });

    test('defaults to deriving everything when excludeNames is omitted', () {
      final src = emitDerivedOutputGetters(_def(const [
        Attribute(
          name: 'execution_count',
          type: IntType(),
          constraints: Constraints(computed: true),
        ),
      ]));
      expect(src, contains('get executionCount'));
    });
  });
}
