// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:test/test.dart';

import 'bump_plan.dart';
import 'wrap_lanes.dart';

void main() {
  final lanes = parseBumpLanes(File(providersPath).readAsStringSync());
  String names(List<BumpLane> l) => l.map((b) => b.lane.name).join(',');

  test('google, cloudflare and aws bump; google-beta and appwrite do not', () {
    expect(names(lanes), 'google,cloudflare,aws');
  });

  test('each lane has its own cron, on different days', () {
    final crons = lanes.map((l) => l.cron).toList();
    expect(crons.toSet(), hasLength(lanes.length));
    final days = crons.map((c) => c.split(' ').last).toSet();
    expect(days, hasLength(lanes.length));
  });

  test("schema-bump.yml schedules exactly the lanes' crons", () {
    final workflow =
        File('.github/workflows/schema-bump.yml').readAsStringSync();
    final scheduled = RegExp(r"^\s*- cron: '([^']+)'", multiLine: true)
        .allMatches(workflow)
        .map((m) => m[1])
        .toSet();
    expect(scheduled, lanes.map((l) => l.cron).toSet());
  });

  test('a schedule plans only its lane', () {
    expect(names(planLanes(lanes, schedule: '0 22 * * 1')), 'aws');
    expect(planLanes(lanes, schedule: '0 0 * * *'), isEmpty);
  });

  test('a manual run plans one lane or all of them', () {
    expect(names(planLanes(lanes, lane: 'cloudflare')), 'cloudflare');
    expect(names(planLanes(lanes, lane: 'all')), 'google,cloudflare,aws');
    expect(() => planLanes(lanes, lane: 'appwrite'), throwsFormatException);
  });

  test('google rides google-beta along and dumps with MM YAML', () {
    final google = lanes.first.toMatrix();
    expect(google['mode'], 'auto');
    expect(google['refresh'], 'dump');
    expect(google['scaffold'], 'wrap-init');
    expect(google['mm'], isTrue);
    expect(google['data_sources'], isTrue);
    expect(google['api_lanes'], 'google,google-beta');
    expect(google['ride_along'], 'google-beta');
    expect(
      google['ride_along_schema_dir'],
      'packages/terradart_codegen/test/fixtures/wrap/source_beta',
    );
    expect(google['example_generator'], '');
  });

  test('cloudflare is pr-only and extracts every type', () {
    final cf = lanes.firstWhere((l) => l.lane.name == 'cloudflare').toMatrix();
    expect(cf['mode'], 'pr-only');
    expect(cf['refresh'], 'extract');
    expect(cf['scaffold'], 'lane');
    expect(cf['data_sources'], isTrue);
    expect(cf['api_lanes'], 'cloudflare');
    expect(
      cf['catalog'],
      'packages/terradart_cloudflare/lib/src/_catalog.g.dart',
    );
    expect(
      cf['example_generator'],
      'tool/generate_cloudflare_leftover_example.dart',
    );
  });

  test('every referenced path exists', () {
    for (final lane in lanes) {
      final m = lane.toMatrix();
      for (final key in [
        'schema_dir',
        'overrides_root',
        'package',
        'catalog',
        'manifest',
        'ride_along_schema_dir',
        'ride_along_package',
        'ride_along_manifest',
        'example_generator',
      ]) {
        final path = m[key]! as String;
        if (path.isEmpty) continue;
        expect(
          FileSystemEntity.typeSync(path),
          isNot(FileSystemEntityType.notFound),
          reason: '${lane.lane.name} $key $path',
        );
      }
    }
  });

  test('an unknown mode is rejected', () {
    const yaml = '''
providers:
  x:
    source: a/x
    schemaDir: s
    outputPackage: o
    overridesRoot: r
    barrelsManifest: b
    migrateManifest: m
    bump: {mode: sometimes, cron: '0 0 * * 0', refresh: dump, scaffold: lane}
''';
    expect(() => parseBumpLanes(yaml), throwsFormatException);
  });
}
