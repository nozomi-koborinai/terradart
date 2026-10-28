import 'package:terradart_codegen/src/codegen/constructor_params.dart';
import 'package:terradart_codegen/src/codegen/constructor_slots.dart';
import 'package:terradart_codegen/src/codegen/data_source_wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/references/reference_targets.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

ResourceDef _def() => const ResourceDef(
  terraformType: 'google_test',
  root: BlockDef(
    attributes: [
      Attribute(
        name: 'name',
        type: StringType(),
        constraints: Constraints(required: true),
      ),
      Attribute(
        name: 'note',
        type: StringType(),
        constraints: Constraints(optional: true),
      ),
      Attribute(
        name: 'colors',
        type: StringType(),
        constraints: Constraints(optional: true),
      ),
      Attribute(
        name: 'token',
        type: StringType(),
        constraints: Constraints(optional: true, sensitive: true),
      ),
      Attribute(
        name: 'location',
        type: StringType(),
        constraints: Constraints(optional: true),
      ),
      Attribute(
        name: 'service',
        type: StringType(),
        constraints: Constraints(optional: true),
      ),
      Attribute(
        name: 'id',
        type: StringType(),
        constraints: Constraints(computed: true),
      ),
      Attribute(
        name: 'gateway_id',
        type: StringType(),
        constraints: Constraints(required: true),
      ),
    ],
    nestedBlocks: [
      NestedBlockDef(
        name: 'config',
        nesting: NestingMode.single,
        block: BlockDef(),
        constraints: Constraints(optional: true),
      ),
      NestedBlockDef(
        name: 'rules',
        nesting: NestingMode.list,
        block: BlockDef(),
        constraints: Constraints(optional: true),
      ),
      NestedBlockDef(
        name: 'timeouts',
        nesting: NestingMode.single,
        block: BlockDef(),
        constraints: Constraints(optional: true),
      ),
    ],
  ),
);

const _order = ['name', 'note', 'token', 'location', 'service', 'config'];

const _project = ResolvedReference(
  target: 'google_project',
  className: 'GoogleProject',
  outputDir: 'cloud',
  attribute: 'project',
  list: false,
  dartName: 'project',
  absorbed: ['location'],
);

ConstructorSlots _slots({
  WrapperOverrideKind kind = WrapperOverrideKind.resource,
  bool Function(Attribute attr) skipAttribute = skipAttribute,
  Map<String, String> deprecations = const {},
  Map<String, String> typeOverrides = const {},
  Set<String> requiredOverrides = const {},
  Map<String, ResolvedReference> references = const {},
  List<String> paramOrder = _order,
  Map<String, OverrideSlot> overrideSlots = const {},
  List<NestedBlockSpec> nestedTypeSpecs = const [],
}) => ConstructorSlots.wrapper(
  def: _def(),
  kind: kind,
  skipAttribute: skipAttribute,
  requiredOverrides: requiredOverrides,
  typeOverrides: typeOverrides,
  deprecations: deprecations,
  references: references,
  paramOrder: paramOrder,
  overrideSlots: overrideSlots,
  nestedTypeSpecs: nestedTypeSpecs,
);

SealedArgument _sealed(
  String concept,
  String sealedClass, {
  bool optional = false,
}) => SealedArgument(
  concept: concept,
  sealedClass: sealedClass,
  optional: optional,
  variants: [
    for (final m in const ['note', 'token'])
      (
        tfName: m,
        ident: m,
        fieldType: 'TfArg<String>',
        encodeExpr: '$m.toTfJson()',
        argMapExpr: m,
        deprecation: null,
        defaultValue: null,
      ),
  ],
  variantClasses: ['${sealedClass}Note', '${sealedClass}Token'],
);

void main() {
  group('wrapper schema slots', () {
    test('a required string is a TfArg and an unconditional argMap entry', () {
      final slots = _slots();
      expect(slots.parameter('name'), 'required TfArg<String> name');
      expect(slots.argMapEntry('name'), "'name': name,");
    });

    test('an optional string is nullable and null-aware in the argMap', () {
      final slots = _slots();
      expect(slots.parameter('note'), 'TfArg<String>? note');
      expect(slots.argMapEntry('note'), "'note': ?note,");
    });

    test('a sensitive string is Sensitive and not a TfArg', () {
      final slots = _slots();
      expect(slots.parameter('token'), 'Sensitive<String>? token');
      expect(slots.argMapEntry('token'), "'token': ?token,");
    });

    test('a single block is one map and a list block is a list of maps', () {
      final slots = _slots();
      expect(slots.parameter('config'), 'TfArg<Map<String, dynamic>>? config');
      expect(slots.argMapEntry('config'), "'config': ?config,");
      expect(
        slots.parameter('rules'),
        'TfArg<List<Map<String, dynamic>>>? rules',
      );
      expect(slots.argMapEntry('rules'), "'rules': ?rules,");
    });

    test('computed id and timeouts are not slots, a required id is', () {
      final slots = _slots();
      expect(slots.parameter('id'), isNull);
      expect(slots.argMapEntry('timeouts'), isNull);
      expect(slots.parameter('gateway_id'), 'required TfArg<String> gatewayId');
    });

    test('the caller skip predicate drops an attribute the default keeps', () {
      final slots = _slots(
        skipAttribute: (attr) => attr.name == 'note' || skipAttribute(attr),
      );
      expect(slots.parameter('note'), isNull);
      expect(slots.parameter('name'), 'required TfArg<String> name');
    });

    test('a requiredParams name forces a required parameter', () {
      final slots = _slots(requiredOverrides: {'location'});
      expect(slots.parameter('location'), 'required TfArg<String> location');
      expect(slots.argMapEntry('location'), "'location': location,");
    });

    test(
      'an enum override is the enum type, and a list encodes element-wise',
      () {
        final slots = _slots(
          typeOverrides: {'note': 'Status', 'colors': 'List<Color>'},
        );
        expect(slots.parameter('note'), 'Status? note');
        expect(slots.argMapEntry('note'), "'note': ?note,");
        expect(slots.parameter('colors'), 'List<Color>? colors');
        expect(
          slots.argMapEntry('colors'),
          "if (colors != null) 'colors': "
          'TfArg.literal([for (final e in colors) e.toTfJson()]),',
        );
      },
    );

    test('a resource deprecation escapes quotes and backslashes', () {
      final slots = _slots(deprecations: {'note': r"it's a \path"});
      expect(
        slots.parameter('note'),
        r"@Deprecated('it\'s a \\path') TfArg<String>? note",
      );
    });

    test('a data source ignores deprecations', () {
      final slots = _slots(
        kind: WrapperOverrideKind.dataSource,
        skipAttribute: skipDataSourceAttribute,
        deprecations: {'note': 'gone'},
      );
      expect(slots.parameter('note'), 'TfArg<String>? note');
    });

    test('an unknown name has no parameter and no argMap entry', () {
      final slots = _slots();
      expect(slots.parameter('missing'), isNull);
      expect(slots.argMapEntry('missing'), isNull);
    });
  });

  group('reference and custom overlays', () {
    test('a resource reference uses dartName and fills an absorbed key', () {
      final slots = _slots(references: {'service': _project});
      expect(slots.parameter('service'), 'RefTo<GoogleProject>? project');
      expect(
        slots.argMapEntry('service'),
        "'service': ?project?.encodeAs('project'),",
      );
      expect(slots.parameter('location'), 'TfArg<String>? location');
      expect(
        slots.argMapEntry('location'),
        "'location': ?(location ?? project?.alsoAs('location')),",
      );
    });

    test('a type override keeps the absorbed key as a schema slot', () {
      final slots = _slots(
        references: {'service': _project},
        typeOverrides: {'location': 'Status'},
      );
      expect(slots.parameter('location'), 'Status? location');
      expect(slots.argMapEntry('location'), "'location': ?location,");
    });

    test('an absorbed key outside paramOrder stays a schema slot', () {
      final slots = _slots(
        references: {'service': _project},
        paramOrder: const ['service'],
      );
      expect(slots.parameter('location'), 'TfArg<String>? location');
      expect(slots.argMapEntry('location'), "'location': ?location,");
    });

    test('a data source names the reference from its Terraform name', () {
      final slots = _slots(
        kind: WrapperOverrideKind.dataSource,
        skipAttribute: skipDataSourceAttribute,
        references: {'service': _project},
      );
      expect(slots.parameter('service'), 'RefTo<GoogleProject>? service');
      expect(
        slots.argMapEntry('service'),
        "'service': ?service?.encodeAs('project'),",
      );
      expect(slots.argMapEntry('location'), "'location': ?location,");
    });

    test('a custom slot replaces the schema slot, deprecation included', () {
      final slots = _slots(
        deprecations: {'name': 'old'},
        overrideSlots: {
          'name': const CustomSlot(
            paramDeclaration: 'required Name name',
            argMapEntry: "'name': name.encode(),",
          ),
          'target': const CustomSlot(
            paramDeclaration: 'required Target target',
            argMapEntry: '...target.argMap,',
          ),
        },
      );
      expect(slots.parameter('name'), 'required Name name');
      expect(slots.argMapEntry('name'), "'name': name.encode(),");
      expect(slots.parameter('target'), 'required Target target');
      expect(slots.argMapEntry('target'), '...target.argMap,');
    });

    test('a sealed argument spreads its argMap, null-aware when optional', () {
      final slots = _slots(
        overrideSlots: {
          'code': _sealed('code', 'TestCode'),
          'source_choice': _sealed(
            'source_choice',
            'TestSourceChoice',
            optional: true,
          ),
        },
      );
      expect(slots.parameter('code'), 'required TestCode code');
      expect(slots.argMapEntry('code'), '...code.argMap,');
      expect(
        slots.parameter('source_choice'),
        'TestSourceChoice? sourceChoice',
      );
      expect(slots.argMapEntry('source_choice'), '...?sourceChoice?.argMap,');
    });

    test('a sealed argument named after an attribute replaces it, '
        'deprecation included', () {
      final slots = _slots(
        deprecations: {'name': 'old'},
        overrideSlots: {'name': _sealed('name', 'TestName')},
      );
      expect(slots.parameter('name'), 'required TestName name');
      expect(slots.argMapEntry('name'), '...name.argMap,');
    });

    test('an absorbed key that is a sealed argument gets no alsoAs fill', () {
      final slots = _slots(
        references: {'service': _project},
        overrideSlots: {
          'location': _sealed('location', 'TestLocation', optional: true),
        },
      );
      expect(slots.parameter('service'), 'RefTo<GoogleProject>? project');
      expect(slots.parameter('location'), 'TestLocation? location');
      expect(slots.argMapEntry('location'), '...?location?.argMap,');
    });

    test('a derived nested spec replaces the generic block slot', () {
      final slots = _slots(
        nestedTypeSpecs: const [
          NestedBlockSpec(
            tfName: 'config',
            path: ['config'],
            className: 'Config',
            repeated: false,
            required: true,
            attrs: [],
            children: [],
            excludedChildren: [],
          ),
        ],
      );
      expect(slots.parameter('config'), 'required Config config');
      expect(
        slots.argMapEntry('config'),
        "'config': TfArg.literal(config.encode()),",
      );
    });
  });

  group('helper and sealed-variant constructors', () {
    test('an optional attribute is a nullable TfArg field', () {
      final member = ConstructorSlots.nestedAttribute(
        const NestedAttrSpec(
          tfName: 'display_name',
          dartName: 'displayName',
          dartType: 'String',
          required: false,
        ),
      );
      expect(member.ctorParam, 'this.displayName,');
      expect(member.fieldDecl, 'final TfArg<String>? displayName;');
      expect(member.encodeEntry, "'display_name': ?displayName?.toTfJson(),");
    });

    test('a required repeated attribute encodes every element', () {
      final member = ConstructorSlots.nestedAttribute(
        const NestedAttrSpec(
          tfName: 'items',
          dartName: 'items',
          dartType: 'String',
          required: true,
          repeated: true,
        ),
      );
      expect(member.ctorParam, 'required this.items,');
      expect(member.fieldDecl, 'final List<TfArg<String>> items;');
      expect(
        member.encodeEntry,
        "'items': [for (final e in items) e.toTfJson()],",
      );
    });

    test('a reference attribute encodes with encodeAs', () {
      final member = ConstructorSlots.nestedAttribute(
        const NestedAttrSpec(
          tfName: 'network',
          dartName: 'network',
          dartType: 'String',
          required: true,
          reference: ResolvedReference(
            target: 'google_compute_network',
            className: 'ComputeNetwork',
            outputDir: 'compute',
            attribute: 'id',
            list: false,
          ),
        ),
      );
      expect(member.ctorParam, 'required this.network,');
      expect(member.fieldDecl, 'final RefTo<ComputeNetwork> network;');
      expect(
        member.encodeEntry,
        "'network': network.encodeAs('id').toTfJson(),",
      );
    });

    test('an optional keyed child encodes each value under its key', () {
      final member = ConstructorSlots.nestedChild(
        const NestedBlockSpec(
          tfName: 'labels',
          path: ['labels'],
          className: 'Label',
          repeated: false,
          keyed: true,
          required: false,
          attrs: [],
          children: [],
          excludedChildren: [],
        ),
      );
      expect(member.ctorParam, 'this.labels,');
      expect(member.fieldDecl, 'final Map<String, Label>? labels;');
      expect(
        member.encodeEntry,
        "if (labels != null) 'labels': "
        '{for (final e in labels!.entries) e.key: e.value.encode()},',
      );
    });

    test('a required repeated excluded block is one TfArg around the list', () {
      final member = ConstructorSlots.excludedBlock(
        const ExcludedNestedBlock(
          tfName: 'resources',
          repeated: true,
          required: true,
        ),
      );
      expect(member.ctorParam, 'required this.resources,');
      expect(
        member.fieldDecl,
        'final TfArg<List<Map<String, dynamic>>> resources;',
      );
      expect(member.encodeEntry, "'resources': resources.toTfJson(),");
    });

    test(
      'a sealed field spreads encode, and an at-most-one field is nullable',
      () {
        final requiredField = ConstructorSlots.sealedMember(
          ident: 'code',
          type: 'ThingCode',
          optional: false,
        );
        expect(requiredField.ctorParam, 'required this.code,');
        expect(requiredField.fieldDecl, 'final ThingCode code;');
        expect(requiredField.encodeEntry, '...code.encode(),');

        final optionalField = ConstructorSlots.sealedMember(
          ident: 'code',
          type: 'ThingCode',
          optional: true,
        );
        expect(optionalField.ctorParam, 'this.code,');
        expect(optionalField.fieldDecl, 'final ThingCode? code;');
        expect(optionalField.encodeEntry, '...?code?.encode(),');
      },
    );

    test('a variant factory takes one positional parameter', () {
      final plain = ConstructorSlots.variantConstructor((
        fieldType: 'TfArg<String>',
        ident: 'name',
        defaultValue: null,
      ));
      expect(plain.factoryParameters, 'TfArg<String> name');
      expect(plain.variantParameters, 'this.name');
    });

    test('a variant with a default takes an optional positional parameter', () {
      final empty = ConstructorSlots.variantConstructor((
        fieldType: 'ThingEmpty',
        ident: 'empty',
        defaultValue: 'const ThingEmpty()',
      ));
      expect(empty.factoryParameters, '[ThingEmpty empty]');
      expect(empty.variantParameters, '[this.empty = const ThingEmpty()]');
    });
  });

  group('emitters print the builder slots', () {
    test('a resource constructor prints deprecations and absorbed keys', () {
      const type = 'google_test';
      final source = WrapperEmitter(
        overrides: {
          type: const WrapperOverride(
            outputDir: 'test',
            deprecatedParams: {'note': 'old'},
          ),
        },
        references: {
          type: {'service': _project},
        },
      ).emit(_def(), providerSource: 'hashicorp/google');

      expect(source, contains("@Deprecated('old') TfArg<String>? note"));
      expect(source, contains('RefTo<GoogleProject>? project'));
      expect(source, contains("?(location ?? project?.alsoAs('location'))"));
    });

    test('a data source constructor does not absorb or deprecate', () {
      const type = 'google_test';
      final source = DataSourceWrapperEmitter(
        overrides: {
          type: const WrapperOverride(
            outputDir: 'data',
            kind: WrapperOverrideKind.dataSource,
            deprecatedParams: {'note': 'old'},
          ),
        },
        references: {
          type: {'service': _project},
        },
      ).emit(_def(), providerSource: 'hashicorp/google');

      expect(source, contains('RefTo<GoogleProject>? service'));
      expect(source, isNot(contains('RefTo<GoogleProject>? project')));
      expect(source, isNot(contains('alsoAs')));
      expect(source, isNot(contains("@Deprecated('old')")));
      expect(source, contains('TfArg<String>? note'));
    });
  });
}
