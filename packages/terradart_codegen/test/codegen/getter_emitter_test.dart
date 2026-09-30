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
      );
      expect(
        src,
        contains(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect(
        src,
        contains(
          "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
        ),
      );
      expect(src.indexOf('get nameRef'), lessThan(src.indexOf('get id')));
    });

    test('emits camelCase getters for pure computed-only attributes', () {
      final src = emitDerivedOutputGetters(
        _def(const [
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
        ]),
      );
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
      expect(
        src.indexOf('get selfLink'),
        lessThan(src.indexOf('get generatedId')),
      );
    });

    test('emits nameRef exactly once when name is itself computed-only', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
      );
      expect(
        src,
        contains(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect('get nameRef'.allMatches(src).length, 1);
    });

    test('emits kindRef (not kind) to avoid colliding with Resource.kind', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'kind',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
      );
      expect(
        src,
        contains(
          "TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');",
        ),
      );
      expect(src, isNot(contains('get kind =>')));
      expect('get kindRef'.allMatches(src).length, 1);
    });

    test('emits localNameRef (not localName) to avoid colliding with '
        'Resource.localName', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'local_name',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
      );
      expect(
        src,
        contains(
          "TfRef<String> get localNameRef => "
          "TfRef.attribute<String>(this, 'local_name');",
        ),
      );
      expect(src, isNot(contains('get localName =>')));
      expect('get localNameRef'.allMatches(src).length, 1);
    });

    test('emits <name>Ref for every input, optional+computed included', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'project',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
          Attribute(
            name: 'scope_id',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          Attribute(
            name: 'labels',
            type: MapType(StringType()),
            constraints: Constraints(optional: true),
          ),
        ]),
      );
      expect(
        src,
        contains(
          "TfRef<String> get projectRef => "
          "TfRef.attribute<String>(this, 'project');",
        ),
      );
      expect(
        src,
        contains(
          "TfRef<String> get scopeIdRef => "
          "TfRef.attribute<String>(this, 'scope_id');",
        ),
      );
      expect(
        src,
        contains(
          "TfRef<Map<String, String>> get labelsRef => "
          "TfRef.attribute<Map<String, String>>(this, 'labels');",
        ),
      );
    });

    test('skips an input getter that is write-only, skipped or taken', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'password_wo',
            type: StringType(),
            constraints: Constraints(optional: true, writeOnly: true),
          ),
          Attribute(
            name: 'tags_all',
            type: MapType(StringType()),
            constraints: Constraints(optional: true, computed: true),
          ),
          Attribute(
            name: 'etag',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
          Attribute(
            name: 'etag_ref',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
          Attribute(
            name: 'region',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
        ]),
        excludeNames: const {'regionRef'},
      );
      expect(src, isNot(contains('passwordWo')));
      expect(src, isNot(contains('tagsAll')));
      expect(
        RegExp(r'get etagRef\b').allMatches(src),
        hasLength(1),
        reason: 'the computed-only etag_ref keeps the name',
      );
      expect(src, contains("TfRef.attribute<String>(this, 'etag_ref')"));
      expect(src, isNot(contains('regionRef')));
    });

    test('emits a one-line template doc comment per getter', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'self_link',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
      );
      expect(src, contains('/// Reference to `self_link` attribute.'));
    });

    test('returns empty source when there is nothing to derive', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'secret_wo',
            type: StringType(),
            constraints: Constraints(optional: true, writeOnly: true),
          ),
        ]),
      );
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

    test(
      'skips the special-cased identity getters (nameRef/id) when excluded',
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
      },
    );

    test('defaults to deriving everything when excludeNames is omitted', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'execution_count',
            type: IntType(),
            constraints: Constraints(computed: true),
          ),
        ]),
      );
      expect(src, contains('get executionCount'));
    });
  });
}
