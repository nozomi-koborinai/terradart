import 'package:terradart_codegen/src/codegen/constructor_params.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  ResourceDef makeResource({
    List<Attribute> attrs = const [],
    List<NestedBlockDef> blocks = const [],
  }) => ResourceDef(
    terraformType: 'google_test_resource',
    root: BlockDef(attributes: attrs, nestedBlocks: blocks),
  );

  group('orderedConstructorParams – IR-natural order (no override)', () {
    test('returns empty list for resource with no eligible slots', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'effective_labels',
            type: MapType(StringType()),
            constraints: Constraints(computed: true),
          ),
          const Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ],
        blocks: [
          const NestedBlockDef(
            name: 'timeouts',
            nesting: NestingMode.single,
            block: BlockDef(),
            constraints: Constraints(),
          ),
        ],
      );
      final result = orderedConstructorParams(def, null);
      expect(result, isEmpty);
    });

    test(
      'attributes appear before nested blocks, both in IR (alphabetical) order',
      () {
        final def = makeResource(
          attrs: [
            const Attribute(
              name: 'alpha',
              type: StringType(),
              constraints: Constraints(required: true),
            ),
            const Attribute(
              name: 'beta',
              type: StringType(),
              constraints: Constraints(optional: true),
            ),
          ],
          blocks: [
            const NestedBlockDef(
              name: 'config',
              nesting: NestingMode.single,
              block: BlockDef(),
              constraints: Constraints(optional: true),
            ),
          ],
        );
        final result = orderedConstructorParams(def, null);
        expect(result, ['alpha', 'beta', 'config']);
      },
    );

    test(
      'computed-only attributes are excluded (required/optional flag present = included)',
      () {
        final def = makeResource(
          attrs: [
            const Attribute(
              name: 'project',
              type: StringType(),
              constraints: Constraints(optional: true, computed: true),
            ),
            const Attribute(
              name: 'terraform_labels',
              type: MapType(StringType()),
              constraints: Constraints(computed: true),
            ),
            const Attribute(
              name: 'name',
              type: StringType(),
              constraints: Constraints(required: true),
            ),
          ],
        );
        final result = orderedConstructorParams(def, null);
        expect(result, containsAll(['project', 'name']));
        expect(result, isNot(contains('terraform_labels')));
      },
    );

    test(
      'optional/computed id is excluded by name (not just computed-only)',
      () {
        final def = makeResource(
          attrs: [
            const Attribute(
              name: 'id',
              type: StringType(),
              constraints: Constraints(optional: true, computed: true),
            ),
            const Attribute(
              name: 'name',
              type: StringType(),
              constraints: Constraints(required: true),
            ),
          ],
        );
        final result = orderedConstructorParams(def, null);
        expect(result, ['name']);
        expect(result, isNot(contains('id')));
      },
    );

    test('AWS tags_all is excluded while tags stays an input', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'bucket',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
          const Attribute(
            name: 'tags',
            type: MapType(StringType()),
            constraints: Constraints(optional: true),
          ),
          const Attribute(
            name: 'tags_all',
            type: MapType(StringType()),
            constraints: Constraints(optional: true, computed: true),
          ),
        ],
      );
      expect(orderedConstructorParams(def, null), ['bucket', 'tags']);
    });

    test('required id stays in the resource constructor', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          const Attribute(
            name: 'account_id',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
      );
      expect(orderedConstructorParams(def, null), ['id', 'account_id']);
    });

    test('timeouts nested block is always excluded', () {
      final def = makeResource(
        blocks: [
          const NestedBlockDef(
            name: 'timeouts',
            nesting: NestingMode.single,
            block: BlockDef(),
            constraints: Constraints(),
          ),
          const NestedBlockDef(
            name: 'retry_policy',
            nesting: NestingMode.single,
            block: BlockDef(),
            constraints: Constraints(optional: true),
          ),
        ],
      );
      final result = orderedConstructorParams(def, null);
      expect(result, ['retry_policy']);
      expect(result, isNot(contains('timeouts')));
    });

    test('computed-only nested block is excluded (framework nested_type)', () {
      final def = makeResource(
        blocks: [
          const NestedBlockDef(
            name: 'meta',
            nesting: NestingMode.single,
            block: BlockDef(),
            constraints: Constraints(computed: true),
          ),
          const NestedBlockDef(
            name: 'account',
            nesting: NestingMode.single,
            block: BlockDef(),
            constraints: Constraints(required: true),
          ),
        ],
      );
      final result = orderedConstructorParams(def, null);
      expect(result, ['account']);
      expect(result, isNot(contains('meta')));
    });
  });

  group('orderedConstructorParams – paramOrder override', () {
    test('override list replaces IR-natural order', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'beta',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
          const Attribute(
            name: 'alpha',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
      );
      final result = orderedConstructorParams(def, ['beta', 'alpha']);
      expect(result, ['beta', 'alpha']);
    });

    test('override list can suppress IR slots by omitting them', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'alpha',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          const Attribute(
            name: 'beta',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
          const Attribute(
            name: 'gamma',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
        ],
      );
      final result = orderedConstructorParams(def, ['alpha', 'beta']);
      expect(result, ['alpha', 'beta']);
      expect(result, isNot(contains('gamma')));
    });

    test('override list can include virtual slot names not in the IR', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
      );
      final result = orderedConstructorParams(def, ['name', 'target']);
      expect(result, ['name', 'target']);
    });
  });

  group('orderedDataSourceConstructorParams', () {
    test('keeps a required lookup id', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(required: true, computed: true),
          ),
          const Attribute(
            name: 'project_id',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
        ],
      );
      expect(orderedDataSourceConstructorParams(def, null), [
        'id',
        'project_id',
      ]);
      expect(orderedConstructorParams(def, null), ['id', 'project_id']);
    });

    test('drops a synthetic optional/computed id', () {
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
          const Attribute(
            name: 'project_id',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
        ],
      );
      expect(orderedDataSourceConstructorParams(def, null), ['project_id']);
    });
  });
}
