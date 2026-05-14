import 'package:terradart_codegen/src/codegen/universal_invariants/path_walker.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  group('PathWalker', () {
    const walker = PathWalker();

    test('resolves a top-level attribute', () {
      const block = BlockDef(
        attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ],
        nestedBlocks: [],
      );
      final attr = walker.resolveAttribute(block, ['name']);
      expect(attr, isNotNull);
      expect(attr!.name, equals('name'));
      expect(attr.constraints.required, isTrue);
    });

    test('resolves a depth-2 attribute through a nested block', () {
      const block = BlockDef(
        attributes: [],
        nestedBlocks: [
          NestedBlockDef(
            name: 'customer_encryption',
            nesting: NestingMode.single,
            constraints: Constraints(optional: true),
            block: BlockDef(
              attributes: [
                Attribute(
                  name: 'encryption_key',
                  type: StringType(),
                  constraints: Constraints(required: true, sensitive: true),
                ),
              ],
              nestedBlocks: [],
            ),
          ),
        ],
      );
      final attr = walker.resolveAttribute(
        block,
        ['customer_encryption', 'encryption_key'],
      );
      expect(attr, isNotNull);
      expect(attr!.constraints.sensitive, isTrue);
    });

    test('returns null for an unknown path', () {
      const block = BlockDef(attributes: [], nestedBlocks: []);
      expect(walker.resolveAttribute(block, ['missing']), isNull);
    });
  });
}
