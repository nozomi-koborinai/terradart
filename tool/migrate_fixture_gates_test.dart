// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

import 'migrate_fixture_gates.dart';
import 'wrap_lanes.dart';

void main() {
  test('a yaml lane with no fixture directory fails', () {
    final lanes = [_lane('oci')];
    final plan = planFixtures(
      lanes: lanes,
      onDisk: _covering(lanes)..remove('lanes/oci'),
    );
    expect(plan.failures, hasLength(1));
    expect(plan.failures.single, contains('lanes/oci'));
    expect(plan.run, contains('lanes/oci'));
  });

  test('an unlisted lanes directory fails', () {
    final lanes = [_lane('google')];
    final plan = planFixtures(
      lanes: lanes,
      onDisk: _covering(lanes)..add('lanes/aws_azure'),
    );
    expect(plan.failures, hasLength(1));
    expect(plan.failures.single, contains('lanes/aws_azure'));
  });

  test('a shared fixture name that a lane also owns is listed twice', () {
    final lanes = [_lane('time')];
    final plan = planFixtures(lanes: lanes, onDisk: _covering(lanes));
    expect(plan.failures, hasLength(1));
    expect(plan.failures.single, contains('lanes/time'));
    expect(plan.run.where((path) => path == 'lanes/time'), hasLength(2));
  });

  test('deleting lanes/time fails', () {
    final lanes = _realLanes();
    final plan = planFixtures(
      lanes: lanes,
      onDisk: _onDisk()..remove('lanes/time'),
    );
    expect(plan.failures, contains(contains('lanes/time')));
  });

  test('the committed fixture tree agrees with the lane list', () {
    final plan = planFixtures(lanes: _realLanes(), onDisk: _onDisk());
    expect(plan.failures, isEmpty);
    expect(plan.run, [
      'config_tree',
      'real_plan_src',
      'lanes/google',
      'lanes/google_beta',
      'lanes/appwrite',
      'lanes/cloudflare',
      'lanes/aws',
      'lanes/azure',
      'lanes/time',
      'lanes/google_cloudflare',
      'lanes/aws_cloudflare',
      'lanes/azure_cloudflare',
      'lanes/google_google_beta',
      'lanes/google_azure',
      'lanes/aliased',
    ]);
  });

  group('pinDrift', () {
    test('an aws version that differs from the synthesized Stack is drift', () {
      final drift = pinDrift('lanes/aws', [
        _pins(
          hcl: _providers(
            'aws = { source = "hashicorp/aws", version = "1.2.3" }',
          ),
          synthesized: _synth({
            'aws': {'source': 'hashicorp/aws', 'version': '9.8.7'},
          }),
        ),
      ]);
      expect(drift, hasLength(1));
      expect(
        drift.single,
        allOf(contains('hashicorp/aws'), contains('1.2.3'), contains('9.8.7')),
      );
    });

    test('google ~> 8.0 matches the synthesized constraint', () {
      expect(
        pinDrift('lanes/google', [
          _pins(
            hcl: _providers(
              'google = { source = "hashicorp/google", version = "~> 8.0" }',
            ),
            synthesized: _synth({
              'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
              'time': {'source': 'hashicorp/time', 'version': '~> 0.12'},
            }),
          ),
        ]),
        isEmpty,
      );
    });

    test('google 8.8.1 against a synthesized ~> 8.0 is drift', () {
      final drift = pinDrift('lanes/google', [
        _pins(
          hcl: _providers(
            'google = { source = "hashicorp/google", version = "8.8.1" }',
          ),
          synthesized: _synth({
            'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
          }),
        ),
      ]);
      expect(drift, hasLength(1));
      expect(drift.single, allOf(contains('8.8.1'), contains('~> 8.0')));
    });

    test('local name azurerm matches source hashicorp/azurerm', () {
      final hcl = _providers(
        'azure = { source = "hashicorp/azurerm", version = "1.0.0" }',
      );
      expect(
        pinDrift('lanes/azure', [
          _pins(
            hcl: hcl,
            synthesized: _synth({
              'azurerm': {'source': 'hashicorp/azurerm', 'version': '1.0.0'},
            }),
          ),
        ]),
        isEmpty,
      );
      final drift = pinDrift('lanes/azure', [
        _pins(
          hcl: hcl,
          synthesized: _synth({
            'azurerm': {'source': 'hashicorp/azurerm', 'version': '2.0.0'},
          }),
        ),
      ]);
      expect(drift, hasLength(1));
      expect(drift.single, contains('hashicorp/azurerm'));
    });

    test('a fixture source missing from the synthesized block is drift', () {
      final drift = pinDrift('lanes/aws', [
        _pins(
          hcl: _providers(
            'aws = { source = "hashicorp/aws", version = "1.2.3" }',
          ),
          synthesized: _synth({
            'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
          }),
        ),
      ]);
      expect(drift, hasLength(1));
      expect(drift.single, contains('hashicorp/aws'));
    });

    test('a lanes module with no pin fails', () {
      final drift = pinDrift('lanes/empty', [
        _pins(hcl: '# no providers\n', synthesized: '{}'),
      ]);
      expect(drift, [contains('lanes/empty')]);
    });

    test('config_tree with no pin does not fail', () {
      expect(
        pinDrift('config_tree', [
          _pins(hcl: '# no providers\n', synthesized: '{}'),
        ]),
        isEmpty,
      );
    });

    test('a lanes child with no pin is covered by another module', () {
      expect(
        pinDrift('lanes/aliased', [
          _pins(
            hcl: _providers(
              'google = { source = "hashicorp/google", version = "~> 8.0" }',
            ),
            synthesized: _synth({
              'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
            }),
          ),
          _pins(
            relPath: 'modules/net',
            hcl: 'resource "x" "y" {}\n',
            synthesized: '{}',
          ),
        ]),
        isEmpty,
      );
    });

    test('a version that is not a literal string is drift', () {
      final drift = pinDrift('config_tree', [
        _pins(
          hcl: _providers(
            'google = { source = "hashicorp/google", version = var.v }',
          ),
          synthesized: _synth({
            'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
          }),
        ),
      ]);
      expect(drift, hasLength(1));
      expect(drift.single, contains('literal'));
    });
  });
}

WrapLane _lane(String name) => WrapLane(
  name: name,
  source: 'example/$name',
  schemaDir: 's',
  outputPackage: 'o',
  overridesRoot: 'r',
  barrelsManifest: 'b',
  resourceProvider: null,
  migrateManifest: 'm',
);

List<WrapLane> _realLanes() =>
    parseWrapLanes(File(providersPath).readAsStringSync());

/// Every path [planFixtures] would migrate for [lanes], so a test can drop
/// or add one directory without failing the rest.
Set<String> _covering(List<WrapLane> lanes) =>
    planFixtures(lanes: lanes, onDisk: const {}).run.toSet();

({String relPath, TfModule module, String synthesized}) _pins({
  String relPath = '.',
  required String hcl,
  required String synthesized,
}) =>
    (relPath: relPath, module: TfModule.fromHcl(hcl), synthesized: synthesized);

String _providers(String body) =>
    '''
terraform {
  required_providers {
    $body
  }
}
''';

String _synth(Map<String, Map<String, String>> providers) => jsonEncode({
  'terraform': {
    'required_providers': {
      for (final entry in providers.entries)
        entry.key: {
          'source': entry.value['source'],
          'version': entry.value['version'],
        },
    },
  },
});

Set<String> _onDisk() {
  const root = 'packages/terradart_migrate/test/fixtures';
  final names = <String>{};
  for (final entity in Directory(root).listSync()) {
    if (entity is! Directory) continue;
    final name = p.basename(entity.path);
    if (name == 'lanes') {
      for (final child in Directory(entity.path).listSync()) {
        if (child is Directory) names.add('lanes/${p.basename(child.path)}');
      }
    } else {
      names.add(name);
    }
  }
  return names;
}
