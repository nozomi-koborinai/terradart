import 'package:terradart_codegen/src/codegen/wrap_promote/prose_enum_extractor.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

ResourceDef _resourceWithAttribute({
  required String name,
  String? description,
}) {
  return ResourceDef(
    terraformType: 'fake',
    root: BlockDef(
      attributes: [
        Attribute(
          name: name,
          type: const StringType(),
          constraints: const Constraints(optional: true),
          description: description,
        ),
      ],
      nestedBlocks: const [],
    ),
  );
}

void main() {
  group('ProseEnumExtractor', () {
    const extractor = ProseEnumExtractor();

    test('matches canonical MM-style "Possible values: A, B, C." pattern', () {
      final def = _resourceWithAttribute(
        name: 'purpose',
        description:
            'Choose a purpose. Possible values: PRIVATE, REGIONAL, GLOBAL.',
      );
      expect(
        extractor.extract(def),
        equals({
          'purpose': ['PRIVATE', 'REGIONAL', 'GLOBAL'],
        }),
      );
    });

    test('matches lowercase token lists', () {
      final def = _resourceWithAttribute(
        name: 'tier',
        description: 'Performance tier. Possible values: standard, premium.',
      );
      expect(
        extractor.extract(def),
        equals({
          'tier': ['standard', 'premium'],
        }),
      );
    });

    test('terminates extraction at the first period or newline', () {
      final def = _resourceWithAttribute(
        name: 'state',
        description:
            'The current state. Possible values: ON, OFF, TRANSFER. Unrelated trailing sentence.',
      );
      expect(
        extractor.extract(def)['state'],
        equals(['ON', 'OFF', 'TRANSFER']),
      );
    });

    test('skips fields with a single value (not enum-like)', () {
      final def = _resourceWithAttribute(
        name: 'kind',
        description: 'Resource kind. Possible values: STANDARD.',
      );
      expect(extractor.extract(def), isEmpty);
    });

    test('skips fields whose extracted tokens contain whitespace or dots', () {
      // URL / path-style enums get rejected by the conservative token rule.
      final def = _resourceWithAttribute(
        name: 'url',
        description:
            'Possible values: https://a.example.com, https://b.example.com',
      );
      expect(extractor.extract(def), isEmpty);
    });

    test('skips when the marker "Possible values:" is absent', () {
      final def = _resourceWithAttribute(
        name: 'foo',
        description: 'Some unrelated description without the marker phrase.',
      );
      expect(extractor.extract(def), isEmpty);
    });

    test('walks nested blocks and emits dotted paths', () {
      const def = ResourceDef(
        terraformType: 'fake',
        root: BlockDef(
          attributes: [],
          nestedBlocks: [
            NestedBlockDef(
              name: 'dnssec_config',
              nesting: NestingMode.single,
              constraints: Constraints(optional: true),
              block: BlockDef(
                attributes: [
                  Attribute(
                    name: 'state',
                    type: StringType(),
                    constraints: Constraints(optional: true),
                    description:
                        'DNSSEC state. Possible values: off, on, transfer.',
                  ),
                ],
                nestedBlocks: [],
              ),
            ),
          ],
        ),
      );
      expect(
        const ProseEnumExtractor().extract(def),
        equals({
          'dnssec_config.state': ['off', 'on', 'transfer'],
        }),
      );
    });
  });
}
