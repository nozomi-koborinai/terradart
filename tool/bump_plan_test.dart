// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'bump_plan.dart';
import 'wrap_lanes.dart';

void main() {
  final lanes = parseBumpLanes(File(providersPath).readAsStringSync());
  String names(List<BumpLane> l) => l.map((b) => b.lane.name).join(',');

  test('google-beta has no bump of its own', () {
    expect(names(lanes), isNot(contains('google-beta')));
    expect(names(lanes), contains('google'));
  });

  test('each lane has its own cron, on different days', () {
    final crons = lanes.map((l) => l.cron).toList();
    expect(crons.toSet(), hasLength(lanes.length));
    expect(lanes.map((l) => l.weekday).toSet(), hasLength(lanes.length));
    expect(
      {for (final l in lanes) l.lane.name: l.weekday},
      {
        'google': Weekday.sunday,
        'aws': Weekday.monday,
        'cloudflare': Weekday.tuesday,
        'appwrite': Weekday.wednesday,
        'azure': Weekday.thursday,
      },
    );
  });

  test('the bump docs step continues only for a partial coverage render', () {
    final tool = File('tool/render_coverage_page.dart').readAsStringSync();
    final partialExit = int.parse(
      RegExp(
        r'const incompleteQuickstartTfOutExit = (\d+);',
      ).firstMatch(tool)!.group(1)!,
    );
    expect(tool, contains('exit(incompleteQuickstartTfOutExit)'));
    expect(partialExit, isNot(1));

    final script = _docsStepRun();
    final refreshed = _runRenderTail(script, toolExit: 0);
    expect(refreshed.exitCode, 0);
    expect(refreshed.stdout, contains('Coverage pages refreshed.'));

    final partial = _runRenderTail(script, toolExit: partialExit);
    expect(partial.exitCode, 0);
    expect(partial.stdout, contains('coverage pages were not refreshed.'));
    expect(partial.stdout, isNot(contains('Coverage pages refreshed.')));

    expect(_runRenderTail(script, toolExit: 1).exitCode, 1);
    expect(_runRenderTail(script, toolExit: 255).exitCode, 255);
  });

  test(
    'schema-bump commits with git add -A and does not name .schema-bump',
    () {
      // .schema-bump/ is gitignored. An exclude pathspec that names it makes
      // `git add` exit 1, which killed every bump that had something to commit
      // (runs 26–28, and the commit step of any later run).
      final workflow = File(
        '.github/workflows/schema-bump.yml',
      ).readAsStringSync();
      expect(workflow, contains('\n          git add -A\n'));
      expect(workflow, isNot(contains(':(exclude).schema-bump')));
      expect(workflow, isNot(contains('git add -f')));
    },
  );

  test("schema-bump.yml schedules exactly the lanes' crons", () {
    final workflow = File(
      '.github/workflows/schema-bump.yml',
    ).readAsStringSync();
    final scheduled = RegExp(
      r"^\s*- cron: '([^']+)'",
      multiLine: true,
    ).allMatches(workflow).map((m) => m[1]).toSet();
    expect(scheduled, lanes.map((l) => l.cron).toSet());
  });

  test('a schedule plans only its lane', () {
    expect(names(planLanes(lanes, schedule: '0 22 * * 1')), 'aws');
    expect(planLanes(lanes, schedule: '0 0 * * *'), isEmpty);
  });

  test('a manual run plans one lane or all of them', () {
    expect(names(planLanes(lanes, lane: 'cloudflare')), 'cloudflare');
    expect(names(planLanes(lanes, lane: 'all')), names(lanes));
    expect(() => planLanes(lanes, lane: 'google-beta'), throwsFormatException);
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
    expect(
      google['example_generator'],
      'tool/generate_data_source_leftover_example.dart',
    );
  });

  test('which new factories each lane example generator covers', () {
    final covers = {for (final l in lanes) l.lane.name: l.exampleCovers};
    expect(covers['google'], {'dataSource'});
    expect(covers['appwrite'], {'resource', 'dataSource'});
    expect(covers['cloudflare'], {'resource', 'dataSource'});
    expect(covers['aws'], {'resource', 'dataSource'});
    expect(covers['azure'], {'resource', 'dataSource'});
  });

  group('bump.exampleCovers', () {
    String lane(String bump) =>
        '''
providers:
  x:
    source: a/x
    schemaDir: s
    outputPackage: o
    overridesRoot: r
    barrelsManifest: b
    migrateManifest: m
    bump: {mode: auto, cron: '0 0 * * 0', refresh: dump, scaffold: lane$bump}
''';

    test('defaults to every kind with a generator, none without', () {
      expect(
        parseBumpLanes(lane(', exampleGenerator: g.dart')).single.exampleCovers,
        {'resource', 'dataSource'},
      );
      expect(parseBumpLanes(lane('')).single.exampleCovers, isEmpty);
    });

    test('dataSources covers data sources only', () {
      expect(
        parseBumpLanes(
          lane(', exampleGenerator: g.dart, exampleCovers: dataSources'),
        ).single.exampleCovers,
        {'dataSource'},
      );
    });

    test('an unknown value or a missing generator is rejected', () {
      expect(
        () => parseBumpLanes(
          lane(', exampleGenerator: g.dart, exampleCovers: resources'),
        ),
        throwsFormatException,
      );
      expect(
        () => parseBumpLanes(lane(', exampleCovers: dataSources')),
        throwsFormatException,
      );
    });
  });

  test(
    'appwrite auto-merges, extracts every type and has a coverage stack',
    () {
      final aw = lanes.firstWhere((l) => l.lane.name == 'appwrite').toMatrix();
      expect(aw['mode'], 'auto');
      expect(aw['refresh'], 'extract');
      expect(aw['scaffold'], 'lane');
      expect(aw['data_sources'], isTrue);
      expect(aw['api_lanes'], 'appwrite');
      expect(
        aw['catalog'],
        'packages/terradart_appwrite/lib/src/_catalog.g.dart',
      );
      expect(
        aw['example_generator'],
        'tool/generate_appwrite_leftover_example.dart',
      );
      expect(names(planLanes(lanes, schedule: '0 22 * * 3')), 'appwrite');
    },
  );

  test('azure auto-merges, extracts every type and has a coverage stack', () {
    final az = lanes.firstWhere((l) => l.lane.name == 'azure').toMatrix();
    expect(az['mode'], 'auto');
    expect(az['refresh'], 'extract');
    expect(az['scaffold'], 'lane');
    expect(az['data_sources'], isTrue);
    expect(az['api_lanes'], 'azure');
    expect(az['catalog'], 'packages/terradart_azure/lib/src/_catalog.g.dart');
    expect(
      az['example_generator'],
      'tool/generate_azure_leftover_example.dart',
    );
    expect(names(planLanes(lanes, schedule: '0 22 * * 4')), 'azure');
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

  test('a cron day field that is not one number is rejected', () {
    String lane(String cron) =>
        '''
providers:
  x:
    source: a/x
    schemaDir: s
    outputPackage: o
    overridesRoot: r
    barrelsManifest: b
    migrateManifest: m
    bump: {mode: auto, cron: '$cron', refresh: dump, scaffold: lane}
''';

    expect(parseBumpLanes(lane('0 22 * * 0')).single.weekday, Weekday.sunday);
    expect(parseBumpLanes(lane('0 22 * * 7')).single.weekday, Weekday.sunday);
    expect(() => parseBumpLanes(lane('0 22 * * 1-5')), throwsFormatException);
    expect(() => parseBumpLanes(lane('0 22 * * *')), throwsFormatException);
    expect(() => parseBumpLanes(lane('0 22 * * 1,2')), throwsFormatException);
    expect(() => parseBumpLanes(lane('0 22 * * 8')), throwsFormatException);
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

String _docsStepRun() {
  final doc =
      loadYaml(File('.github/workflows/schema-bump.yml').readAsStringSync())
          as YamlMap;
  final steps =
      ((doc['jobs'] as YamlMap)['bump'] as YamlMap)['steps'] as YamlList;
  final step = steps.cast<YamlMap>().singleWhere(
    (s) => s['name'] == 'Sync catalog counts and coverage pages in the docs',
  );
  return step['run'] as String;
}

ProcessResult _runRenderTail(String script, {required int toolExit}) {
  final lines = script.split('\n');
  final renderAt = lines.indexWhere(
    (line) => line.contains('dart tool/render_coverage_page.dart'),
  );
  final start = lines.lastIndexWhere(
    (line) => line.contains('set +e'),
    renderAt,
  );
  final tail = lines
      .sublist(start)
      .join('\n')
      .replaceAll(
        'dart tool/render_coverage_page.dart',
        "sh -c 'exit $toolExit'",
      );
  return Process.runSync('bash', ['-e', '-c', tail]);
}
