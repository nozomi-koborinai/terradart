import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'self_heal_overrides.dart';

void main() {
  group('parseMechanicalWrapFixes', () {
    test('extracts every mechanical E406 and E301 diagnostic', () {
      const log = '''
[E406] terradart wrap: data.azurerm_policy_definition sealedNames "display_name, name" matches no sealed group
[E406] terradart wrap: google_cloud_run_v2_service [a, b]: sealedNames "foo" repeats the derived name; remove it
[E406] terradart wrap: google_network_connectivity_spoke [gateway, linked_vpc_network]: the group source declares it; remove the entry
[E406] terradart wrap: google_org_policy_policy enumValues spec.rules.allow_all: the derivation already gives every one of these values; remove the entry
terradart wrap: google_compute_instance unsealedGroups "guest_accelerators, reservation_affinity" matches no group wrap leaves unsealed; remove it
  [E301] data.azurerm_monitor_action_group unsealedGroups "x, y" matches no group wrap leaves unsealed; remove it
terradart wrap: nested helper not reachable from the constructor: google_app_engine_standard_app_version.vpc_access
  [E301] nested helper not reachable from the constructor: google_ces_deployment.model_settings (add the block to paramOrder, or list it in nestedTypeExcludes)
''';
      expect(parseMechanicalWrapFixes(log), [
        const DropSealedName(
          'data.azurerm_policy_definition',
          'display_name, name',
        ),
        const DropSealedName('google_cloud_run_v2_service', 'a, b'),
        const DropOverrideGroup(
          'google_network_connectivity_spoke',
          'gateway, linked_vpc_network',
        ),
        const DropEnumValues(
          'google_org_policy_policy',
          'spec.rules.allow_all',
        ),
        const DropUnsealedGroup(
          'google_compute_instance',
          'guest_accelerators, reservation_affinity',
        ),
        const DropUnsealedGroup('data.azurerm_monitor_action_group', 'x, y'),
        const AddParamOrderBlock(
          'google_app_engine_standard_app_version',
          'vpc_access',
        ),
        const AddParamOrderBlock('google_ces_deployment', 'model_settings'),
      ]);
    });

    test('ignores non-mechanical judgement-class diagnostics', () {
      const log = '''
[E406] terradart wrap: google_foo [a, b]: sealedNames "bar" clashes: takes existing slot bar
[E406] terradart wrap: google_foo [a, b]: no usable name for [a, b] (a_or_b: repeats); name it in sealedNames
[E406] terradart wrap: google_foo [a, b]: b names no input
[E406] terradart wrap: google_foo enumValues mode: names no string attribute
[E406] terradart wrap: reference input not typed: google_foo.bar
terradart wrap: google_foo: typeNames mode names no derived enum or helper
  [E301] exclusive group names no schema input: google_compute_global_forwarding_rule [backend_service, target] (seal it, or give the reason in the override's unsealedGroups)
  [E301] at-most-one group not sealed: google_app_engine_standard_app_version [vpc_access_connector, vpc_access]: vpc_access is not a constructor input (seal it, or give the reason in the override's unsealedGroups)
terradart: Bad state: no unique type name for WorkersScript placement.mode: WorkersScriptPlacementMode is taken
''';
      expect(parseMechanicalWrapFixes(log), isEmpty);
    });
  });

  group('YAML section rewriters', () {
    test(
      'dropGroupListSection removes matching member sets regardless of order',
      () {
        const source = '''
outputDir: network

exactlyOneOf:
  - "b, a"
  - "c, d"

paramOrder:
  - a
''';
        expect(dropGroupListSection(source, 'exactlyOneOf', {'a, b'}), '''
outputDir: network

exactlyOneOf:
  - "c, d"

paramOrder:
  - a
''');
      },
    );

    test('dropGroupListSection removes the section header when emptied', () {
      const source = '''
outputDir: network

atMostOneOf:
  - "a, b"

paramOrder:
  - a
''';
      expect(dropGroupListSection(source, 'atMostOneOf', {'a, b'}), '''
outputDir: network

paramOrder:
  - a
''');
    });

    test('dropEnumValuesSection drops one path and keeps siblings', () {
      const source = '''
enumValues:
  dry_run_spec.rules.allow_all:
    - "TRUE"
    - "FALSE"
  spec.rules.allow_all:
    - "TRUE"
    - "FALSE"

outputDir: organization
''';
      expect(dropEnumValuesSection(source, {'spec.rules.allow_all'}), '''
enumValues:
  dry_run_spec.rules.allow_all:
    - "TRUE"
    - "FALSE"

outputDir: organization
''');
      expect(
        dropEnumValuesSection(source, {
          'dry_run_spec.rules.allow_all',
          'spec.rules.allow_all',
        }),
        'outputDir: organization\n',
      );
    });

    test('addParamOrderBlocks inserts before trailing project or at end', () {
      const withProject = '''
outputDir: artifact_registry

paramOrder:
  - repository_id
  - vulnerability_scanning_config
  - project
''';
      expect(addParamOrderBlocks(withProject, ['platform_logs_config']), '''
outputDir: artifact_registry

paramOrder:
  - repository_id
  - vulnerability_scanning_config
  - platform_logs_config
  - project
''');

      const withoutProject = '''
outputDir: ces

paramOrder:
  - display_name
  - location

typeNames:
  a: B
''';
      expect(addParamOrderBlocks(withoutProject, ['model_settings']), '''
outputDir: ces

paramOrder:
  - display_name
  - location
  - model_settings

typeNames:
  a: B
''');

      const noParamOrder = 'outputDir: storage\nderiveNestedTypes: true\n';
      expect(
        addParamOrderBlocks(noParamOrder, ['rapid_cache_config']),
        noParamOrder,
      );
    });
  });

  test(
    'applyMechanicalOverrideFixes edits resources and data sources and is idempotent',
    () {
      final root = Directory.systemTemp.createTempSync('self_heal_overrides_');
      addTearDown(() => root.deleteSync(recursive: true));

      final dataPolicy =
          File(p.join(root.path, 'data_azurerm_policy_definition.yaml'))
            ..writeAsStringSync('''
kind: data_source
outputDir: data
deriveExactlyOne: true

sealedNames:
  "display_name, name": identifier
''');

      final resource = File(p.join(root.path, 'google_compute_instance.yaml'))
        ..writeAsStringSync('''
outputDir: compute

unsealedGroups:
  "guest_accelerators, reservation_affinity": >-
    No longer applies upstream.

paramOrder:
  - name
  - project
''');

      final fixes = [
        const DropSealedName(
          'data.azurerm_policy_definition',
          'display_name, name',
        ),
        const DropUnsealedGroup(
          'google_compute_instance',
          'guest_accelerators, reservation_affinity',
        ),
        const AddParamOrderBlock('google_compute_instance', 'shielded_config'),
      ];

      final first = applyMechanicalOverrideFixes(root.path, fixes);
      expect(first, [
        'data.azurerm_policy_definition sealedNames "display_name, name"',
        'google_compute_instance paramOrder +shielded_config',
        'google_compute_instance unsealedGroups "guest_accelerators, reservation_affinity"',
      ]);
      expect(dataPolicy.readAsStringSync(), '''
kind: data_source
outputDir: data
deriveExactlyOne: true
''');
      expect(resource.readAsStringSync(), '''
outputDir: compute

paramOrder:
  - name
  - shielded_config
  - project
''');

      // Second pass is a strict no-op.
      expect(applyMechanicalOverrideFixes(root.path, fixes), isEmpty);
    },
  );
}
