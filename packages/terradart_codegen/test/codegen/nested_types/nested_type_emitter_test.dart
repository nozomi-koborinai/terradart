import 'dart:convert';
import 'dart:io';

import 'package:terradart_codegen/src/codegen/constructor_slots.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_emitter.dart';
import 'package:terradart_codegen/src/codegen/package_formatter.dart';
import 'package:test/test.dart';

final _formatter = packageFormatter('../terradart_google');

String _fmt(String source) => _formatter.format(source);

const _schemaPath = 'test/fixtures/wrap/source/schema.json';

Map<String, dynamic> _blockOf(String terraformType) {
  final decoded =
      jsonDecode(File(_schemaPath).readAsStringSync()) as Map<String, dynamic>;
  final providerSchemas = (decoded['provider_schemas'] as Map)
      .cast<String, dynamic>();
  final providerBody = (providerSchemas.values.single as Map)
      .cast<String, dynamic>();
  final resourceSchemas = (providerBody['resource_schemas'] as Map)
      .cast<String, dynamic>();
  final resource = (resourceSchemas[terraformType] as Map)
      .cast<String, dynamic>();
  return (resource['block'] as Map).cast<String, dynamic>();
}

String _resourcePrefixOf(String terraformType) {
  const providerPrefix = 'google_';
  final short = terraformType.startsWith(providerPrefix)
      ? terraformType.substring(providerPrefix.length)
      : terraformType;
  return snakeToPascal(short);
}

void main() {
  group(
    'renderNestedTypes: byte-pinned idiom (google_app_engine_domain_mapping.ssl_settings)',
    () {
      test(
        'matches the hand-written helper idiom byte-for-byte (post-format)',
        () {
          final certificateId = const NestedAttrSpec(
            tfName: 'certificate_id',
            dartName: 'certificateId',
            dartType: 'String',
            required: false,
          );
          final sslManagementType = const NestedAttrSpec(
            tfName: 'ssl_management_type',
            dartName: 'sslManagementType',
            dartType: 'AppEngineDomainMappingSslManagementType',
            required: false,
            enumValues: ['AUTOMATIC', 'MANUAL'],
          );
          final sslSettings = NestedBlockSpec(
            tfName: 'ssl_settings',
            path: const ['ssl_settings'],
            className: 'AppEngineDomainMappingSslSettings',
            repeated: false,
            required: false,
            attrs: [sslManagementType, certificateId],
            children: const [],
            excludedChildren: const [],
          );

          final actual = renderNestedTypes([
            sslSettings,
          ], resourceTerraformType: 'google_app_engine_domain_mapping');

          const expected = '''
/// Typed helper for the `ssl_settings` block of
/// `google_app_engine_domain_mapping` (derived from provider schema).
@immutable
final class AppEngineDomainMappingSslSettings {
  const AppEngineDomainMappingSslSettings({
    this.certificateId,
    this.sslManagementType,
  });

  final TfArg<String>? certificateId;

  final AppEngineDomainMappingSslManagementType?
      sslManagementType;

  @internal
  Map<String, Object?> encode() => {
        'certificate_id': ?certificateId?.toTfJson(),
        'ssl_management_type': ?sslManagementType?.toTfJson(),
      };
}

/// `ssl_management_type` — derived from the provider schema description.
extension type const AppEngineDomainMappingSslManagementType._(TfArg<String> _) implements TfArg<String> {
  AppEngineDomainMappingSslManagementType.variable(String name) : this._(TfArg.variable(name));
  AppEngineDomainMappingSslManagementType.expression(String template) : this._(TfArg.expression(template));
  const AppEngineDomainMappingSslManagementType.arg(TfArg<String> arg) : this._(arg);

  static const automatic = AppEngineDomainMappingSslManagementType._(TfArgLiteral('AUTOMATIC'));
  static const manual = AppEngineDomainMappingSslManagementType._(TfArgLiteral('MANUAL'));

  static const List<AppEngineDomainMappingSslManagementType> values = [automatic, manual];
}
''';

          expect(_fmt(actual), _fmt(expected));
        },
      );
    },
  );

  group('renderNestedTypes: real collector output', () {
    test(
      'ssl_management_type renders as required (real schema: required=true)',
      () {
        const terraformType = 'google_app_engine_domain_mapping';
        final specs = collectNestedTypes(
          resourceBlock: _blockOf(terraformType),
          resourcePrefix: _resourcePrefixOf(terraformType),
          customSlotKeys: const {},
          excludedPaths: const {},
        );

        final formatted = _fmt(
          renderNestedTypes(specs, resourceTerraformType: terraformType),
        );

        expect(formatted, contains('required this.sslManagementType'));
        expect(formatted, contains('AppEngineDomainMappingSslManagementType'));
        expect(
          formatted,
          matches(RegExp(r'final \w+SslManagementType\s+sslManagementType;')),
        );
        expect(
          formatted,
          contains("'ssl_management_type': sslManagementType.toTfJson(),"),
        );
        expect(formatted, isNot(contains('sslManagementType!.toTfJson()')));
        expect(formatted, isNot(contains('if (sslManagementType != null)')));

        expect(formatted, contains('this.certificateId,'));
        expect(formatted, contains('final TfArg<String>? certificateId;'));
      },
    );

    test('google_access_context_manager_access_level: basic.conditions is '
        'both required AND repeated (Task 3 carry-over — untested combo, '
        'real data)', () {
      const terraformType = 'google_access_context_manager_access_level';
      final specs = collectNestedTypes(
        resourceBlock: _blockOf(terraformType),
        resourcePrefix: _resourcePrefixOf(terraformType),
        customSlotKeys: const {},
        excludedPaths: const {},
      );

      final formatted = _fmt(
        renderNestedTypes(specs, resourceTerraformType: terraformType),
      );

      expect(formatted, contains('required this.conditions'));
      expect(
        formatted,
        contains(
          'final List<AccessContextManagerAccessLevelConditions> '
          'conditions;',
        ),
      );
      expect(
        formatted,
        contains("'conditions': [for (final e in conditions) e.encode()],"),
      );
      expect(formatted, isNot(contains('conditions!')));
      expect(formatted, isNot(contains('if (conditions != null)')));
      expect(
        formatted,
        contains('final class AccessContextManagerAccessLevelConditions {'),
      );
    });
  });

  group('renderNestedTypes: additional shape rules', () {
    test(
      'a repeated child block renders as List<Child>? and encodes via .encode()',
      () {
        final conditions = const NestedBlockSpec(
          tfName: 'conditions',
          path: ['basic', 'conditions'],
          className: 'AccessLevelBasicConditions',
          repeated: true,
          required: false,
          attrs: [],
          children: [],
          excludedChildren: [],
        );
        final basic = NestedBlockSpec(
          tfName: 'basic',
          path: const ['basic'],
          className: 'AccessLevelBasic',
          repeated: false,
          required: false,
          attrs: const [],
          children: [conditions],
          excludedChildren: const [],
        );

        final formatted = _fmt(
          renderNestedTypes(
            [basic],
            resourceTerraformType: 'google_access_context_manager_access_level',
          ),
        );

        expect(
          formatted,
          contains('final List<AccessLevelBasicConditions>? conditions;'),
        );
        expect(formatted, contains('if (conditions != null)'));
        expect(
          formatted,
          contains("'conditions': [for (final e in conditions!) e.encode()],"),
        );
        expect(formatted, contains('final class AccessLevelBasicConditions {'));
      },
    );

    test(
      'a required attr renders required this.x, non-nullable field, unconditional entry',
      () {
        final requiredAttr = const NestedAttrSpec(
          tfName: 'display_name',
          dartName: 'displayName',
          dartType: 'String',
          required: true,
        );
        final spec = NestedBlockSpec(
          tfName: 'thing',
          path: const ['thing'],
          className: 'FooThing',
          repeated: false,
          required: false,
          attrs: [requiredAttr],
          children: const [],
          excludedChildren: const [],
        );

        final formatted = _fmt(
          renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
        );

        expect(formatted, contains('required this.displayName'));
        expect(formatted, contains('final TfArg<String> displayName;'));
        expect(formatted, contains("'display_name': displayName.toTfJson()"));
        expect(formatted, isNot(contains('displayName!.toTfJson()')));
        expect(formatted, isNot(contains('if (displayName != null)')));
      },
    );

    test('a scalar, optional excludedChildren entry renders a '
        'TfArg<Map<String, dynamic>>? passthrough', () {
      final spec = const NestedBlockSpec(
        tfName: 'thing',
        path: ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [
          ExcludedNestedBlock(
            tfName: 'device_policy',
            repeated: false,
            required: false,
          ),
        ],
      );

      final formatted = _fmt(
        renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
      );

      expect(
        formatted,
        contains('final TfArg<Map<String, dynamic>>? devicePolicy;'),
      );
      expect(formatted, contains("'device_policy': ?devicePolicy?.toTfJson()"));
    });

    test(
      'a repeated excludedChildren entry renders TfArg<List<Map<String, '
      'dynamic>>>? (a single TfArg wrapping a list, not List<TfArg<...>>?)',
      () {
        final spec = const NestedBlockSpec(
          tfName: 'thing',
          path: ['thing'],
          className: 'FooThing',
          repeated: false,
          required: false,
          attrs: [],
          children: [],
          excludedChildren: [
            ExcludedNestedBlock(
              tfName: 'resources',
              repeated: true,
              required: false,
            ),
          ],
        );

        final formatted = _fmt(
          renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
        );

        expect(
          formatted,
          contains('final TfArg<List<Map<String, dynamic>>>? resources;'),
        );
        expect(formatted, contains("'resources': ?resources?.toTfJson()"));
        expect(formatted, isNot(contains('List<TfArg<Map<String, dynamic>>>')));
        expect(formatted, isNot(contains('for (final e in resources')));
      },
    );

    test('a required, repeated excludedChildren entry renders a non-nullable '
        'field with an unconditional entry (google_os_config_os_policy_'
        'assignment\'s real os_policies.resource_groups.resources shape)', () {
      final spec = const NestedBlockSpec(
        tfName: 'thing',
        path: ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [
          ExcludedNestedBlock(
            tfName: 'resources',
            repeated: true,
            required: true,
          ),
        ],
      );

      final formatted = _fmt(
        renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
      );

      expect(formatted, contains('required this.resources'));
      expect(
        formatted,
        contains('final TfArg<List<Map<String, dynamic>>> resources;'),
      );
      expect(formatted, contains("'resources': resources.toTfJson()"));
      expect(formatted, isNot(contains('resources!')));
      expect(formatted, isNot(contains('if (resources != null)')));
    });

    test('google_os_config_os_policy_assignment: the real excluded '
        'os_policies.resource_groups.resources renders required + repeated '
        '(real collector output, not a hand-built spec)', () {
      const terraformType = 'google_os_config_os_policy_assignment';
      final specs = collectNestedTypes(
        resourceBlock: _blockOf(terraformType),
        resourcePrefix: _resourcePrefixOf(terraformType),
        customSlotKeys: const {},
        excludedPaths: const {'os_policies.resource_groups.resources'},
      );

      final formatted = _fmt(
        renderNestedTypes(specs, resourceTerraformType: terraformType),
      );

      expect(formatted, contains('required this.resources'));
      expect(
        formatted,
        contains('final TfArg<List<Map<String, dynamic>>> resources;'),
      );
      expect(formatted, isNot(contains('resources!')));
    });

    test('a repeated enum attribute renders EnumList<EnumClass>?', () {
      final repeatedEnumAttr = const NestedAttrSpec(
        tfName: 'allowed_statuses',
        dartName: 'allowedStatuses',
        dartType: 'FooThingAllowedStatuses',
        required: false,
        enumValues: ['ESSENTIAL', 'FULL'],
        repeated: true,
      );
      final spec = NestedBlockSpec(
        tfName: 'thing',
        path: const ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [repeatedEnumAttr],
        children: const [],
        excludedChildren: const [],
      );

      final formatted = _fmt(
        renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
      );

      expect(
        formatted,
        contains('final EnumList<FooThingAllowedStatuses>? allowedStatuses;'),
      );
      expect(
        formatted,
        contains("'allowed_statuses': ?allowedStatuses?.toTfJson(),"),
      );
      expect(
        formatted,
        contains('extension type const FooThingAllowedStatuses._('),
      );
      expect(formatted, contains("TfArgLiteral('ESSENTIAL')"));
      expect(formatted, contains("TfArgLiteral('FULL')"));
    });

    test('hyphenated schema enum values become legal Dart members', () {
      final retryConditions = const NestedAttrSpec(
        tfName: 'retry_conditions',
        dartName: 'retryConditions',
        dartType: 'FooRetryConditions',
        required: false,
        enumValues: ['connect-failure', 'deadline-exceeded'],
        repeated: true,
      );
      final spec = NestedBlockSpec(
        tfName: 'retry_policy',
        path: const ['retry_policy'],
        className: 'FooRetryPolicy',
        repeated: false,
        required: false,
        attrs: [retryConditions],
        children: const [],
        excludedChildren: const [],
      );

      final formatted = _fmt(
        renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
      );

      expect(formatted, contains('static const connectFailure ='));
      expect(formatted, contains("TfArgLiteral('connect-failure')"));
      expect(formatted, contains('static const deadlineExceeded ='));
      expect(formatted, contains("TfArgLiteral('deadline-exceeded')"));
      expect(formatted, isNot(contains('connect-failure =')));
    });

    test('field order: attrs (alphabetical) first, then block-type children '
        '— derived and excluded merged (alphabetical) — second', () {
      final zzzAttr = const NestedAttrSpec(
        tfName: 'zzz_attr',
        dartName: 'zzzAttr',
        dartType: 'String',
        required: false,
      );
      final aaaAttr = const NestedAttrSpec(
        tfName: 'aaa_attr',
        dartName: 'aaaAttr',
        dartType: 'String',
        required: false,
      );
      final mmmChild = const NestedBlockSpec(
        tfName: 'mmm_child',
        path: ['thing', 'mmm_child'],
        className: 'FooThingMmmChild',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      final spec = NestedBlockSpec(
        tfName: 'thing',
        path: const ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [zzzAttr, aaaAttr],
        children: [mmmChild],
        excludedChildren: const [
          ExcludedNestedBlock(
            tfName: 'bbb_excluded',
            repeated: false,
            required: false,
          ),
        ],
      );

      final formatted = _fmt(
        renderNestedTypes([spec], resourceTerraformType: 'google_foo'),
      );

      final aaaIdx = formatted.indexOf('aaaAttr');
      final zzzIdx = formatted.indexOf('zzzAttr');
      final bbbIdx = formatted.indexOf('bbbExcluded');
      final mmmIdx = formatted.indexOf('mmmChild');
      expect([aaaIdx, zzzIdx, bbbIdx, mmmIdx], everyElement(greaterThan(-1)));
      expect(aaaIdx, lessThan(zzzIdx));
      expect(zzzIdx, lessThan(bbbIdx));
      expect(bbbIdx, lessThan(mmmIdx));
    });
  });

  group('renderNestedTypes: determinism', () {
    test('same specs produce identical output on repeated calls', () {
      final a = const NestedBlockSpec(
        tfName: 'aaa',
        path: ['aaa'],
        className: 'FooAaa',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      final b = const NestedBlockSpec(
        tfName: 'bbb',
        path: ['bbb'],
        className: 'FooBbb',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );

      final first = renderNestedTypes([
        a,
        b,
      ], resourceTerraformType: 'google_foo');
      final second = renderNestedTypes([
        a,
        b,
      ], resourceTerraformType: 'google_foo');
      expect(first, second);
    });

    test('output is stable across input list-order permutations', () {
      final a = const NestedBlockSpec(
        tfName: 'aaa',
        path: ['aaa'],
        className: 'FooAaa',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      final b = const NestedBlockSpec(
        tfName: 'bbb',
        path: ['bbb'],
        className: 'FooBbb',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      final c = const NestedBlockSpec(
        tfName: 'ccc',
        path: ['ccc'],
        className: 'FooCcc',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );

      final canonical = renderNestedTypes([
        a,
        b,
        c,
      ], resourceTerraformType: 'google_foo');
      for (final permuted in [
        [a, c, b],
        [b, a, c],
        [b, c, a],
        [c, a, b],
        [c, b, a],
      ]) {
        expect(
          renderNestedTypes(permuted, resourceTerraformType: 'google_foo'),
          canonical,
        );
      }
    });
  });

  group('nestedParamType', () {
    test('single block -> "ClassName?"', () {
      final spec = const NestedBlockSpec(
        tfName: 'ssl_settings',
        path: ['ssl_settings'],
        className: 'AppEngineDomainMappingSslSettings',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      expect(
        ConstructorSlots.nestedParamType(spec),
        'AppEngineDomainMappingSslSettings?',
      );
    });

    test('repeated block -> "List<ClassName>?"', () {
      final spec = const NestedBlockSpec(
        tfName: 'conditions',
        path: ['basic', 'conditions'],
        className: 'AccessLevelBasicConditions',
        repeated: true,
        required: false,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      expect(
        ConstructorSlots.nestedParamType(spec),
        'List<AccessLevelBasicConditions>?',
      );
    });

    test('keyed block -> "Map<String, ClassName>?"', () {
      final spec = const NestedBlockSpec(
        tfName: 'behaviors',
        path: ['behaviors'],
        className: 'RiskBehaviorBehaviors',
        repeated: false,
        keyed: true,
        required: true,
        attrs: [],
        children: [],
        excludedChildren: [],
      );
      expect(
        ConstructorSlots.nestedParamType(spec),
        'Map<String, RiskBehaviorBehaviors>?',
      );
      final slot = ConstructorSlots.nestedTypeConstructorSlot(
        spec,
        isRequired: true,
      );
      expect(
        slot.param,
        'required Map<String, RiskBehaviorBehaviors> behaviors',
      );
      expect(
        slot.argMapEntry,
        "'behaviors': TfArg.literal({for (final e in behaviors.entries) "
        'e.key: e.value.encode()}),',
      );
    });
  });

  group('keyed children', () {
    test('a map child encodes each helper under its own key', () {
      final spec = const NestedBlockSpec(
        tfName: 'preview',
        path: ['preview'],
        className: 'PagesPreview',
        repeated: false,
        required: false,
        attrs: [],
        children: [
          NestedBlockSpec(
            tfName: 'env_vars',
            path: ['preview', 'env_vars'],
            className: 'PagesPreviewEnvVars',
            repeated: false,
            keyed: true,
            required: false,
            attrs: [],
            children: [],
            excludedChildren: [],
          ),
        ],
        excludedChildren: [
          ExcludedNestedBlock(
            tfName: 'services',
            repeated: false,
            keyed: true,
            required: false,
          ),
        ],
      );
      final actual = renderNestedTypes([
        spec,
      ], resourceTerraformType: 'cloudflare_pages_project');
      expect(
        actual,
        contains('final Map<String, PagesPreviewEnvVars>? envVars;'),
      );
      expect(
        actual,
        contains(
          "if (envVars != null) 'env_vars': "
          '{for (final e in envVars!.entries) e.key: e.value.encode()},',
        ),
      );
      expect(actual, contains('final TfArg<Map<String, dynamic>>? services;'));
    });
  });

  group('reserved Dart identifiers', () {
    test('field named default encodes as defaultCase, tf key stays default', () {
      final spec = const NestedBlockSpec(
        tfName: 'schema',
        path: ['schema'],
        className: 'CesToolSchema',
        repeated: false,
        required: false,
        attrs: [
          NestedAttrSpec(
            tfName: 'default',
            dartName: 'default',
            dartType: 'String',
            required: false,
          ),
          NestedAttrSpec(
            tfName: 'enum',
            dartName: 'enum',
            dartType: 'String',
            required: false,
            repeated: true,
          ),
        ],
        children: [],
        excludedChildren: [],
      );

      final actual = renderNestedTypes([
        spec,
      ], resourceTerraformType: 'google_ces_tool');

      expect(actual, contains('this.defaultCase,'));
      expect(actual, contains('this.enumCase,'));
      expect(actual, contains('final TfArg<String>? defaultCase;'));
      expect(actual, contains('final List<TfArg<String>>? enumCase;'));
      expect(actual, contains("'default': ?defaultCase?.toTfJson(),"));
      expect(
        actual,
        contains(
          "if (enumCase != null) 'enum': [for (final e in enumCase!) e.toTfJson()],",
        ),
      );
      expect(actual, isNot(contains('this.default,')));
    });
  });
}
