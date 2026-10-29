// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:path/path.dart' as p;
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
