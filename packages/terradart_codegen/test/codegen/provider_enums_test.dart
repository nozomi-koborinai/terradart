import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/provider_schema_ir.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

Attribute _attr(
  String name, {
  TypeDef type = const StringType(),
  String? description,
  bool computedOnly = false,
}) =>
    Attribute(
      name: name,
      type: type,
      description: description,
      constraints: computedOnly
          ? const Constraints(computed: true)
          : const Constraints(optional: true),
    );

ProviderSchemaIR _ir(List<Attribute> attrs) => ProviderSchemaIR(
      providerName: 'x',
      providerSource: 'example/x',
      providerVersion: '1.0.0',
      resources: {
        'x_thing': ResourceDef(
          terraformType: 'x_thing',
          root: BlockDef(attributes: attrs),
        ),
      },
      dataSources: const {},
    );

List<String>? _values(ProviderSchemaIR ir, String attr) =>
    ir.resources['x_thing']!.root.attributes
        .firstWhere((a) => a.name == attr)
        .constraints
        .enumValues;

void main() {
  const available = 'Available values: "a", "b".';

  test('off leaves the IR and the resolver alone', () {
    final ir = _ir([_attr('mode', description: available)]);
    expect(identical(ProviderEnums.off.enrich(ir), ir), isTrue);
    expect(ProviderEnums.off.resolver('x_thing'), same(descriptionEnumValues));
  });

  test('a hint beats the description, at any depth', () {
    const enums = ProviderEnums.on(hints: {
      'x_thing': {
        'mode': ['h1', 'h2'],
        'settings.level': ['l1'],
      },
    });
    final ir = enums.enrich(_ir([_attr('mode', description: available)]));
    expect(_values(ir, 'mode'), ['h1', 'h2']);
    expect(enums.resolver('x_thing')(['settings', 'level'], available), ['l1']);
    expect(enums.resolver(null)(['settings', 'level'], available), ['a', 'b']);
  });

  test('only top-level string inputs are enriched', () {
    final ir = const ProviderEnums.on().enrich(_ir([
      _attr('status', description: available, computedOnly: true),
      _attr('tags', type: const ListType(StringType()), description: available),
      _attr('mode', description: available),
    ]));
    expect(_values(ir, 'status'), isNull);
    expect(_values(ir, 'tags'), isNull);
    expect(_values(ir, 'mode'), ['a', 'b']);
  });

  test('typeDerivedEnums types deriveEnums inputs; explicit entries win', () {
    const enums = ProviderEnums.on();
    final ir = enums.enrich(_ir([
      _attr('mode', description: available),
      _attr('kind', description: available),
      _attr('slot', description: available),
    ]));
    final typed = enums.typeDerivedEnums({
      'x_thing': const WrapperOverride(
        outputDir: 'thing',
        deriveEnums: true,
        dartTypeOverrides: {'kind': 'String'},
        customSlots: {
          'slot': CustomSlot(paramDeclaration: 'x', argMapEntry: 'y,'),
        },
      ),
    }, ir.resources);
    expect(typed['x_thing']!.dartTypeOverrides, {
      'mode': 'XThingMode',
      'kind': 'String',
    });

    final untouched = enums.typeDerivedEnums({
      'x_thing': const WrapperOverride(outputDir: 'thing'),
    }, ir.resources);
    expect(untouched['x_thing']!.dartTypeOverrides, isNull);
  });
}
