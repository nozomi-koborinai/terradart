import 'package:terradart_codegen/src/codegen/constructor_params.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  // Helper to build a ResourceDef inline.
  ResourceDef makeResource({
    List<Attribute> attrs = const [],
    List<NestedBlockDef> blocks = const [],
  }) =>
      ResourceDef(
        terraformType: 'google_test_resource',
        root: BlockDef(attributes: attrs, nestedBlocks: blocks),
      );

  group('orderedConstructorParams – IR-natural order (no override)', () {
    test('returns empty list for resource with no eligible slots', () {
      // `id` is excluded; computed-only attributes are excluded.
      final def = makeResource(
        attrs: [
          // computed-only: excluded
          const Attribute(
            name: 'effective_labels',
            type: MapType(StringType()),
            constraints: Constraints(computed: true),
          ),
          // id: excluded
          const Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ],
        blocks: [
          // timeouts: excluded
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

    test('attributes appear before nested blocks, both in IR (alphabetical) order', () {
      // IR order from JSON parser is alphabetical; we mimic that by listing
      // attrs in alphabetical order here. The helper preserves that order.
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
    });

    test('computed-only attributes are excluded (required/optional flag present = included)', () {
      final def = makeResource(
        attrs: [
          // computed AND optional → eligible (not computed-only)
          const Attribute(
            name: 'project',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
          ),
          // computed-only → excluded
          const Attribute(
            name: 'terraform_labels',
            type: MapType(StringType()),
            constraints: Constraints(computed: true),
          ),
          // required → eligible
          const Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
      );
      final result = orderedConstructorParams(def, null);
      // Only 'project' and 'name' are eligible (id is not in the list).
      expect(result, containsAll(['project', 'name']));
      expect(result, isNot(contains('terraform_labels')));
    });

    test('id attribute is always excluded by name (not just computed-only)', () {
      // `id` is given `optional + computed` constraints so it would NOT be
      // caught by the computed-only branch — this isolates the by-name
      // `isIdAttribute` exclusion. A plain `Constraints(computed: true)` would
      // pass this test even if the id-name check were deleted.
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
      // Override reverses the natural order.
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
      // gamma is intentionally omitted (suppressed virtual-fan-out pattern).
      final result = orderedConstructorParams(def, ['alpha', 'beta']);
      expect(result, ['alpha', 'beta']);
      expect(result, isNot(contains('gamma')));
    });

    test('override list can include virtual slot names not in the IR', () {
      // Virtual slots (e.g. scheduler_job's `target`) are listed in paramOrder
      // but don't exist as IR attributes. The helper returns them verbatim —
      // it is the caller's responsibility to resolve them via customSlots.
      final def = makeResource(
        attrs: [
          const Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
      );
      // 'target' is a virtual slot not present in the IR.
      final result = orderedConstructorParams(def, ['name', 'target']);
      expect(result, ['name', 'target']);
    });
  });
}
