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
    test('emits name then id for the identity attributes', () {
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
          "TfRef<String> get name => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect(
        src,
        contains(
          "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
        ),
      );
      expect(src.indexOf('get name '), lessThan(src.indexOf('get id')));
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

    test('emits name exactly once when name is itself computed-only', () {
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
          "TfRef<String> get name => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect('get name '.allMatches(src).length, 1);
    });

    test('emits kindAttr (not kind) to avoid colliding with Resource.kind', () {
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
          "TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');",
        ),
      );
      expect(src, isNot(contains('get kind =>')));
      expect('get kindAttr'.allMatches(src).length, 1);
    });

    test('emits localNameAttr (not localName) to avoid colliding with '
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
          "TfRef<String> get localNameAttr => "
          "TfRef.attribute<String>(this, 'local_name');",
        ),
      );
      expect(src, isNot(contains('get localName =>')));
      expect('get localNameAttr'.allMatches(src).length, 1);
    });

    test(
      'emits a plain getter for every input, optional+computed included',
      () {
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
            "TfRef<String> get project => "
            "TfRef.attribute<String>(this, 'project');",
          ),
        );
        expect(
          src,
          contains(
            "TfRef<String> get scopeId => "
            "TfRef.attribute<String>(this, 'scope_id');",
          ),
        );
        expect(
          src,
          contains(
            "TfRef<Map<String, String>> get labels => "
            "TfRef.attribute<Map<String, String>>(this, 'labels');",
          ),
        );
      },
    );

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
        excludeNames: const {'region'},
      );
      expect(src, isNot(contains('passwordWo')));
      expect(src, isNot(contains('tagsAll')));
      expect(
        src,
        contains("get etag => TfRef.attribute<String>(this, 'etag')"),
      );
      expect(
        src,
        contains("get etagRef => TfRef.attribute<String>(this, 'etag_ref')"),
      );
      expect(src, isNot(contains('get region')));
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
      'skips the special-cased identity getters (name/id) when excluded',
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
          excludeNames: {'name', 'id'},
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

    test('takes an Attr suffix for a wrapper member or a reserved word', () {
      Attribute input(String name) => Attribute(
        name: name,
        type: const StringType(),
        constraints: const Constraints(optional: true),
      );
      final src = emitDerivedOutputGetters(
        _def([
          input('provider'),
          input('ref'),
          input('default'),
          input('override'),
          input('principal'),
          input('timeouts'),
        ]),
        principal: true,
      );
      for (final (getter, attr) in [
        ('providerAttr', 'provider'),
        ('refAttr', 'ref'),
        ('defaultAttr', 'default'),
        ('overrideAttr', 'override'),
        ('principalAttr', 'principal'),
        ('timeoutsAttr', 'timeouts'),
      ]) {
        expect(
          src,
          contains(
            "TfRef<String> get $getter => "
            "TfRef.attribute<String>(this, '$attr');",
          ),
        );
      }
    });

    test('keeps principal plain on a block without a principal getter', () {
      final src = emitDerivedOutputGetters(
        _def(const [
          Attribute(
            name: 'principal',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ]),
      );
      expect(src, contains('get principal =>'));
    });
  });
}
