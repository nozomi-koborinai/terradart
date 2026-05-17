import 'package:terradart_codegen/src/codegen/wrap_promote/min_items_assert_emitter.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:test/test.dart';

ResourceDef _resourceWith(List<NestedBlockDef> nested) => ResourceDef(
      terraformType: 'google_synthetic',
      description: null,
      deprecationMessage: null,
      root: BlockDef(
        attributes: const [],
        nestedBlocks: nested,
        description: null,
      ),
    );

NestedBlockDef _nb({
  required String name,
  required NestingMode nesting,
  int? minItems,
  int? maxItems,
}) =>
    NestedBlockDef(
      name: name,
      nesting: nesting,
      minItems: minItems,
      maxItems: maxItems,
      block: const BlockDef(),
      constraints: const Constraints(),
    );

void main() {
  group('MinItemsAssertEmitter', () {
    test(
        'emits an assert hint for list nested block with min_items >= 1 '
        'and max_items != 1', () {
      final def = _resourceWith([
        _nb(
          name: 'splits',
          nesting: NestingMode.list,
          minItems: 1,
          maxItems: null,
        ),
      ]);

      final output = const MinItemsAssertEmitter().emit(def);

      expect(output, contains('Assert hints'));
      expect(output, contains('splits.length >= 1'));
      expect(output, contains('min_items=1'));
      expect(output, startsWith('# '),
          reason: 'output is a curator-facing comment block');
    });

    test('emits nothing when nested block is single-shaped (max_items == 1)',
        () {
      final def = _resourceWith([
        _nb(
          name: 'target',
          nesting: NestingMode.list,
          minItems: 1,
          maxItems: 1,
        ),
      ]);

      final output = const MinItemsAssertEmitter().emit(def);

      expect(output, isEmpty);
    });

    test('emits nothing when nested block lacks min_items', () {
      final def = _resourceWith([
        _nb(
          name: 'conditions',
          nesting: NestingMode.list,
          minItems: null,
          maxItems: null,
        ),
      ]);

      final output = const MinItemsAssertEmitter().emit(def);

      expect(output, isEmpty);
    });

    test('emits nothing when nesting is single (not list/set)', () {
      final def = _resourceWith([
        _nb(
          name: 'config',
          nesting: NestingMode.single,
          minItems: 1,
          maxItems: 1,
        ),
      ]);

      final output = const MinItemsAssertEmitter().emit(def);

      expect(output, isEmpty);
    });

    test('emits a hint per qualifying list nested block in a single resource',
        () {
      final def = _resourceWith([
        _nb(
          name: 'splits',
          nesting: NestingMode.list,
          minItems: 1,
        ),
        _nb(
          name: 'target_name_servers',
          nesting: NestingMode.set,
          minItems: 1,
        ),
        _nb(
          name: 'config',
          nesting: NestingMode.single,
          minItems: 1,
          maxItems: 1,
        ),
      ]);

      final output = const MinItemsAssertEmitter().emit(def);

      expect(output, contains('splits.length >= 1'));
      expect(output, contains('targetNameServers.length >= 1'),
          reason: 'snake_case is converted to camelCase for Dart identifier');
      expect(output, isNot(contains('config.length')),
          reason: 'single-shaped nested block must be excluded');
    });
  });
}
