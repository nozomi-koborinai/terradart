import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

MigrationCoverage _coverageOf(Directory dir) => MigrationCoverage.of(
  migrateTree(scanModuleTree(dir), name: 'infra', format: false),
);

void main() {
  late Directory tmp;
  setUp(() {
    tmp = Directory.systemTemp.createTempSync('terradart_migrate_report_');
  });
  tearDown(() => tmp.deleteSync(recursive: true));

  Directory tree(Map<String, String> files) {
    for (final e in files.entries) {
      File(p.join(tmp.path, 'tf', e.key))
        ..createSync(recursive: true)
        ..writeAsStringSync(e.value);
    }
    return Directory(p.join(tmp.path, 'tf'));
  }

  group('config_tree (two environments over six local modules)', () {
    final coverage = _coverageOf(Directory('test/fixtures/config_tree'));

    test('counts every resource and data block once per directory', () {
      expect(coverage.total, 41);
      expect(coverage.types, hasLength(20));
      expect(coverage.directories.map((d) => d.directory), [
        'dev',
        'modules/cloud_run',
        'modules/cloud_sql',
        'modules/pubsub',
        'modules/secret_manager',
        'modules/service_account',
        'modules/workload_identity',
        'prod',
      ]);
      final project = coverage.types.singleWhere(
        (t) => t.type == 'google_project',
      );
      expect(project.kind, CatalogKind.dataSource);
      expect(project.count, 2);
    });

    test('translates the whole tree through the curated catalogs', () {
      expect(coverage.translated, coverage.total);
      expect(coverage.curatedTypes, coverage.types.length);
      expect(coverage.unscanned, isEmpty);
      final run = coverage.types.singleWhere(
        (t) => t.type == 'google_cloud_run_v2_service',
      );
      expect(run.factory, (
        className: 'GoogleCloudRunV2Service',
        package: 'terradart_google',
        barrel: 'cloud_run',
      ));
    });
  });

  test('separates kept blocks, uncatalogued types, instances and remote '
      'modules', () {
    final coverage = _coverageOf(
      tree({
        'main.tf': '''
resource "google_storage_bucket" "logs" {
  count    = 3
  name     = "logs-\${count.index}"
  location = "US"
}

resource "google_storage_bucket" "odd" {
  name      = "odd"
  location  = "US"
  bogus_arg = 1
}

resource "acme_widget" "w" {
  size = 3
}

data "google_project" "current" {}

module "vpc" {
  source = "terraform-google-modules/network/google"
}
''',
      }),
    );
    final bucket = coverage.types.first;
    expect(bucket.type, 'google_storage_bucket');
    expect((bucket.translated, bucket.kept), (3, 1));
    final acme = coverage.types.singleWhere((t) => t.type == 'acme_widget');
    expect(acme.inCatalog, isFalse);
    expect((acme.translated, acme.kept), (0, 1));
    expect(coverage.total, 6);
    expect(coverage.translated, 4);
    expect(coverage.curatedTypes, 2);
    expect(
      coverage.kept.map((k) => k.address),
      containsAll(['google_storage_bucket.odd', 'acme_widget.w']),
    );
    expect(coverage.unscanned.single, (
      directory: '.',
      name: 'vpc',
      source: 'terraform-google-modules/network/google',
    ));

    final text = coverage.renderText();
    expect(
      text,
      contains(
        'google_storage_bucket [resource] x4: 3 translate, 1 kept -> '
        'GoogleStorageBucket (terradart_google/storage)',
      ),
    );
    expect(text, contains('acme_widget [resource] x1: not in any catalog'));
    expect(text, contains('module "vpc"'));
    expect(text, contains('Nothing was written.'));

    final json = jsonDecode(coverage.renderJson()) as Map<String, Object?>;
    expect(json['summary'], {
      'types': 3,
      'curatedTypes': 2,
      'blocks': 6,
      'translated': 4,
      'kept': 2,
      'translatedPct': 67,
    });
  });

  group('the --report CLI', () {
    Future<({int code, String out, String err})> run(List<String> args) async {
      final out = StringBuffer();
      final err = StringBuffer();
      final code = await runMigrateCli(args, out: out, err: err);
      return (code: code, out: out.toString(), err: err.toString());
    }

    test('prints the report as JSON and writes nothing', () async {
      final dir = tree({
        'main.tf': '''
resource "google_pubsub_topic" "orders" {
  name = "orders"
}
''',
      });
      final before = dir.listSync(recursive: true).map((e) => e.path).toSet();
      final r = await run(['--report', '--json', '--dir', dir.path]);
      expect(r.code, MigrateExitCodes.success, reason: r.err);
      final json = jsonDecode(r.out) as Map<String, Object?>;
      expect((json['summary'] as Map)['translated'], 1);
      expect(dir.listSync(recursive: true).map((e) => e.path).toSet(), before);
      expect(tmp.listSync().map((e) => p.basename(e.path)), ['tf']);
    });

    test('rejects --out', () async {
      final r = await run([
        '--report',
        '--dir',
        'test/fixtures/real_plan_src',
        '--out',
        p.join(tmp.path, 'out'),
      ]);
      expect(r.code, MigrateExitCodes.usage);
      expect(r.err, contains('--report writes nothing'));
      expect(Directory(p.join(tmp.path, 'out')).existsSync(), isFalse);
    });

    test('reports a missing directory as a data error', () async {
      final r = await run(['--report', '--dir', p.join(tmp.path, 'none')]);
      expect(r.code, MigrateExitCodes.dataError);
    });
  });
}
