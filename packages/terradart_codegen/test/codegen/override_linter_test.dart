import 'package:terradart_codegen/src/codegen/override_linter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:test/test.dart';

void main() {
  group('lintOverride', () {
    test('flags curatedDoc without deriveClassDoc as dead config (rule d)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        curatedDoc: '/// Curated tail.',
      );
      final violations = lintOverride('google_x', o);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'curated-doc-without-derive-class-doc');
    });

    test('clean: deriveClassDoc + curatedDoc', () {
      const o = WrapperOverride(
        outputDir: 'x',
        deriveClassDoc: true,
        curatedDoc: '/// Curated tail.',
      );
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('clean: bare override with only outputDir', () {
      const o = WrapperOverride(outputDir: 'x');
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('flags customSlots without any paramOrder (rule e)', () {
      const o = WrapperOverride(
        outputDir: 'redis',
        customSlots: {
          'maintenance_policy': CustomSlot(
            paramDeclaration: 'Policy? maintenancePolicy',
            argMapEntry: "if (maintenancePolicy != null) 'maintenance_policy': "
                'TfArg.literal([maintenancePolicy.toArgMap()]),',
          ),
        },
      );
      final violations = lintOverride('google_redis_instance', o);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'custom-slot-missing-param-order');
      expect(violations.single.detail, contains('maintenance_policy'));
    });

    test('flags customSlot key absent from paramOrder (rule e)', () {
      // The Wave 32 regression shape: slots declared, paramOrder present,
      // but the slot keys never listed -> emitter silently drops both.
      const o = WrapperOverride(
        outputDir: 'redis',
        paramOrder: ['name', 'memory_size_gb'],
        customSlots: {
          'maintenance_policy': CustomSlot(
            paramDeclaration: 'Policy? maintenancePolicy',
            argMapEntry: "if (maintenancePolicy != null) 'maintenance_policy': "
                'TfArg.literal([maintenancePolicy.toArgMap()]),',
          ),
          'persistence_config': CustomSlot(
            paramDeclaration: 'Persistence? persistenceConfig',
            argMapEntry: "if (persistenceConfig != null) 'persistence_config': "
                'TfArg.literal([persistenceConfig.toArgMap()]),',
          ),
        },
      );
      final rules =
          lintOverride('google_redis_instance', o).map((v) => v.rule).toList();
      expect(rules, [
        'custom-slot-not-in-param-order',
        'custom-slot-not-in-param-order',
      ]);
    });

    test('flags customSlot key missing from an explicit argMapOrder (rule e)',
        () {
      const o = WrapperOverride(
        outputDir: 'scheduler',
        paramOrder: ['name', 'target'],
        argMapOrder: ['name'],
        customSlots: {
          'target': CustomSlot(
            paramDeclaration: 'required Target target',
            argMapEntry: 'target.blockKey: TfArg.literal([target.toArgMap()]),',
          ),
        },
      );
      final violations = lintOverride('google_x', o);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'custom-slot-not-in-arg-map-order');
    });

    test('clean: customSlot keys listed in paramOrder and argMapOrder', () {
      const o = WrapperOverride(
        outputDir: 'scheduler',
        paramOrder: ['name', 'target'],
        argMapOrder: ['name', 'target'],
        customSlots: {
          'target': CustomSlot(
            paramDeclaration: 'required Target target',
            argMapEntry: 'target.blockKey: TfArg.literal([target.toArgMap()]),',
          ),
        },
      );
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('flags exactly_one optional fanout on canonical sibling groups', () {
      const mm = MmResourceOverrides(
        fieldOverrides: {},
        exactlyOneOfGroups: [
          ['oidc.oidc', 'oidc.aws', 'oidc.saml'],
        ],
      );
      const o = WrapperOverride(
        outputDir: 'iam',
        paramOrder: ['oidc', 'aws'],
        customSlots: {
          'oidc': CustomSlot(
            paramDeclaration: 'Oidc? oidc',
            argMapEntry:
                "if (oidc != null) 'oidc': TfArg.literal([oidc.encode()]),",
          ),
          'aws': CustomSlot(
            paramDeclaration: 'Aws? aws',
            argMapEntry:
                "if (aws != null) 'aws': TfArg.literal([aws.encode()]),",
          ),
        },
      );
      final violations = lintOverride('google_x', o, mm: mm);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'exactly-one-optional-fanout');
    });

    test('flags exactly_one paramOrder fanout (phase 2b)', () {
      const mm = MmResourceOverrides(
        fieldOverrides: {},
        exactlyOneOfGroups: [
          ['copy.copy', 'copy.extract', 'copy.load', 'copy.query'],
        ],
      );
      const o = WrapperOverride(
        outputDir: 'bigquery',
        paramOrder: ['copy', 'extract', 'load', 'query'],
      );
      final violations = lintOverride('google_x', o, mm: mm);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'exactly-one-paramorder-fanout');
    });

    test('clean: paramOrder mixes customSlot with schema slot in group', () {
      const mm = MmResourceOverrides(
        fieldOverrides: {},
        exactlyOneOfGroups: [
          [
            'default_service.default_service',
            'default_service.default_url_redirect',
          ],
        ],
      );
      const o = WrapperOverride(
        outputDir: 'compute',
        paramOrder: ['name', 'default_service', 'default_url_redirect'],
        customSlots: {
          'default_url_redirect': CustomSlot(
            paramDeclaration:
                'ComputeUrlMapUrlMapUrlRedirect? defaultUrlRedirect',
            argMapEntry:
                "if (defaultUrlRedirect != null) 'default_url_redirect': "
                'TfArg.literal([defaultUrlRedirect.toArgMap()]),',
          ),
        },
      );
      expect(lintOverride('google_x', o, mm: mm), isEmpty);
    });

    test('canonicalExactlyOneOfGroups collapses sibling MM duplicates', () {
      expect(
        canonicalExactlyOneOfGroups([
          ['aws.aws', 'aws.oidc', 'aws.saml'],
          ['oidc.aws', 'oidc.oidc', 'oidc.saml'],
        ]),
        [
          ['aws', 'oidc', 'saml'],
        ],
      );
    });

    test('canonicalExactlyOneOfGroups skips nested-block-indexed members', () {
      // google_vpc_access_connector: exactly_one_of [network, subnet.0.name].
      // Collapsing `subnet.0.name` to its last segment fabricated a bogus
      // [name, network] group; the `.0.` index marks a nested-block field
      // reference, so the whole group must be skipped.
      expect(
        canonicalExactlyOneOfGroups([
          ['network', 'subnet.0.name'],
          ['subnet.0.name', 'network'],
        ]),
        isEmpty,
      );
      // A flat top-level group with no index still collapses normally.
      expect(
        canonicalExactlyOneOfGroups([
          ['hostname', 'matcher'],
        ]),
        [
          ['hostname', 'matcher'],
        ],
      );
    });

    test('clean: exactly-one optional fanout suppressed by debt allowlist', () {
      const mm = MmResourceOverrides(
        fieldOverrides: {},
        exactlyOneOfGroups: [
          ['oidc', 'aws'],
        ],
      );
      const o = WrapperOverride(
        outputDir: 'iam',
        paramOrder: ['oidc', 'aws'],
        customSlots: {
          'oidc': CustomSlot(
            paramDeclaration: 'Oidc? oidc',
            argMapEntry: "if (oidc != null) 'oidc': TfArg.literal([]),",
          ),
          'aws': CustomSlot(
            paramDeclaration: 'Aws? aws',
            argMapEntry: "if (aws != null) 'aws': TfArg.literal([]),",
          ),
        },
      );
      expect(
        lintOverride(
          'google_x',
          o,
          mm: mm,
          exactlyOneOptionalFanoutDebt: {'google_x'},
        ),
        isEmpty,
      );
    });

    test('clean: sealed virtual slot satisfies exactly_one', () {
      const mm = MmResourceOverrides(
        fieldOverrides: {},
        exactlyOneOfGroups: [
          ['oidc', 'aws'],
        ],
      );
      const o = WrapperOverride(
        outputDir: 'iam',
        paramOrder: ['trust_source'],
        customSlots: {
          'trust_source': CustomSlot(
            paramDeclaration: 'required TrustSource trustSource',
            argMapEntry:
                'trustSource.blockKey: TfArg.literal(trustSource.encode()),',
          ),
        },
      );
      expect(lintOverride('google_x', o, mm: mm), isEmpty);
    });

    test('curatedDoc with deriveClassDoc on does not trigger rule (d)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        deriveClassDoc: true,
        curatedDoc: '/// live (deriveClassDoc is true)',
      );
      expect(lintOverride('google_x', o), isEmpty);
    });

    test(
        'flags nestedTypeExcludes without deriveNestedTypes as dead config '
        '(belt-and-suspenders for the loader-level FormatException)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        nestedTypeExcludes: ['basic.conditions'],
      );
      final violations = lintOverride('google_x', o);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'nested-excludes-without-derive');
      expect(violations.single.detail, contains('nestedTypeExcludes'));
    });

    test('clean: deriveNestedTypes + nestedTypeExcludes', () {
      const o = WrapperOverride(
        outputDir: 'x',
        deriveNestedTypes: true,
        nestedTypeExcludes: ['basic.conditions'],
      );
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('clean: deriveNestedTypes true with no excludes', () {
      const o = WrapperOverride(outputDir: 'x', deriveNestedTypes: true);
      expect(lintOverride('google_x', o), isEmpty);
    });
  });

  group('lintOverrides', () {
    test('aggregates across the map sorted by tfType', () {
      const a = WrapperOverride(outputDir: 'x', curatedDoc: '/// dead');
      const b = WrapperOverride(outputDir: 'x', curatedDoc: '/// dead');
      final violations = lintOverrides({'google_zeta': a, 'google_alpha': b});
      expect(violations, hasLength(2));
      // sorted by tfType: alpha before zeta
      expect(violations.first.tfType, 'google_alpha');
      expect(violations.last.tfType, 'google_zeta');
    });

    test('empty map yields no violations', () {
      expect(lintOverrides(const {}), isEmpty);
    });

    test('all-clean map yields no violations', () {
      const o = WrapperOverride(outputDir: 'x', deriveClassDoc: true);
      expect(lintOverrides({'google_x': o}), isEmpty);
    });
  });

  group('lintMigrateShapes', () {
    const irregularPrelude = '''
class Fanout {
  const Fanout({required this.protocol, this.additionalRules});
  final TfArg<String> protocol;
  final List<Fanout>? additionalRules;
  List<Map<String, Object?>> encode() => [
    {'protocol': protocol.toTfJson()},
    ...?additionalRules?.map((r) => r.encode().single),
  ];
}
''';
    const sealedPrelude = '''
sealed class Target {
  const Target();
}
final class PubsubTarget extends Target {
  const PubsubTarget({required this.topicName});
  final TfArg<String> topicName;
  @override
  String get blockKey => 'pubsub_target';
  @override
  Map<String, Object?> encode() => {'topic_name': topicName.toTfJson()};
}
''';
    const sealedSlot = CustomSlot(
      paramDeclaration: 'required Target target',
      argMapEntry: 'target.blockKey: TfArg.literal(target.encode()),',
    );

    MigrateShapeLintInput input(
      Map<String, WrapperOverride> overrides, {
      Set<String> debt = const {},
    }) =>
        MigrateShapeLintInput(
          context: preludeShapeContext(overrides),
          debt: debt,
        );

    test('flags an irregular prelude helper', () {
      const o = WrapperOverride(outputDir: 'x', prelude: irregularPrelude);
      final v = lintMigrateShapes('google_x', o, input({'google_x': o}));
      expect(v, hasLength(1));
      expect(v.single.rule, 'migrate-shape-underivable');
      expect(v.single.detail, contains('`Fanout`'));
      expect(v.single.detail, contains('tool/migrate_manifest_debt.yaml'));
    });

    test('flags a helper field the manifest cannot express', () {
      const o = WrapperOverride(
        outputDir: 'x',
        prelude: '''
class Policy {
  const Policy({this.schedules});
  final Map<String, Schedule>? schedules;
  Map<String, Object?> encode() => {
    if (schedules != null) 'schedules': schedules,
  };
}
''',
      );
      final v = lintMigrateShapes('google_x', o, input({'google_x': o}));
      expect(v.single.rule, 'migrate-shape-underivable');
      expect(v.single.detail, contains('field `schedules`'));
    });

    test('flags an underivable custom slot without a hint', () {
      const o = WrapperOverride(
        outputDir: 'x',
        paramOrder: ['h'],
        customSlots: {
          'h': CustomSlot(
            paramDeclaration: 'Map<String, Object?>? h',
            argMapEntry: 'if (h != null) ...h,',
          ),
        },
      );
      final v = lintMigrateShapes('google_x', o, input({'google_x': o}));
      expect(v.single.rule, 'migrate-shape-underivable');
      expect(v.single.detail, contains('customSlots["h"]'));
      expect(v.single.detail, contains('no static key'));
    });

    test('a migrate hint accepts an underivable slot', () {
      const o = WrapperOverride(
        outputDir: 'x',
        paramOrder: ['h'],
        customSlots: {
          'h': CustomSlot(
            paramDeclaration: 'Map<String, Object?>? h',
            argMapEntry: 'if (h != null) ...h,',
            migrate: MigrateHint.manual(reason: 'free-form extras'),
          ),
        },
      );
      expect(
        lintMigrateShapes('google_x', o, input({'google_x': o})),
        isEmpty,
      );
    });

    test('a hint on a derivable slot is stale (never suppressed by debt)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        paramOrder: ['target'],
        prelude: sealedPrelude,
        customSlots: {
          'target': CustomSlot(
            paramDeclaration: 'required Target target',
            argMapEntry: 'target.blockKey: TfArg.literal(target.encode()),',
            migrate: MigrateHint.manual(reason: 'not needed'),
          ),
        },
      );
      final v = lintMigrateShapes(
        'google_x',
        o,
        input({'google_x': o}, debt: {'google_x'}),
      );
      expect(v.single.rule, 'migrate-hint-stale');
      expect(v.single.detail, contains('derives it as sealed'));
    });

    test('clean: sealed virtual slot resolved through the prelude', () {
      const o = WrapperOverride(
        outputDir: 'x',
        paramOrder: ['target'],
        prelude: sealedPrelude,
        customSlots: {'target': sealedSlot},
      );
      expect(
        lintMigrateShapes('google_x', o, input({'google_x': o})),
        isEmpty,
      );
    });

    test('clean: helper declared in another override prelude resolves', () {
      const declaring = WrapperOverride(
        outputDir: 'x',
        prelude: '''
class Shared {
  const Shared({this.x});
  final TfArg<String>? x;
  Map<String, Object?> encode() => {if (x != null) 'x': x!.toTfJson()};
}
''',
      );
      const user = WrapperOverride(
        outputDir: 'x',
        paramOrder: ['s'],
        customSlots: {
          's': CustomSlot(
            paramDeclaration: 'Shared? s',
            argMapEntry: "if (s != null) 's': TfArg.literal([s.encode()]),",
          ),
        },
      );
      final registry = {'google_a': declaring, 'google_b': user};
      expect(lintMigrateShapes('google_b', user, input(registry)), isEmpty);
      // Alone, the same slot is underivable — the context is package-wide.
      expect(
        lintMigrateShapes('google_b', user, input({'google_b': user})),
        hasLength(1),
      );
    });

    test('debt suppresses underivable findings and reports staleness', () {
      const bad = WrapperOverride(outputDir: 'x', prelude: irregularPrelude);
      const fine = WrapperOverride(outputDir: 'x');
      final registry = {'google_bad': bad, 'google_fine': fine};
      final ctx = preludeShapeContext(registry);
      expect(
        lintMigrateShapes(
          'google_bad',
          bad,
          MigrateShapeLintInput(context: ctx, debt: const {'google_bad'}),
        ),
        isEmpty,
      );
      expect(
        staleMigrateManifestDebt(
          registry,
          context: ctx,
          debt: const {'google_bad', 'google_fine', 'google_missing'},
        ),
        ['google_fine', 'google_missing'],
      );
    });

    test('lintOverride / lintOverrides run the rule when given the input', () {
      const bad = WrapperOverride(outputDir: 'x', prelude: irregularPrelude);
      final registry = {'google_bad': bad};
      final input =
          MigrateShapeLintInput(context: preludeShapeContext(registry));
      expect(lintOverride('google_bad', bad), isEmpty);
      expect(
        lintOverride('google_bad', bad, migrate: input).single.rule,
        'migrate-shape-underivable',
      );
      expect(
        lintOverrides(registry, migrate: input).single.rule,
        'migrate-shape-underivable',
      );
    });
  });
}
