import 'dart:convert';
import 'dart:io';

import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  // test/fixtures/config_tree mirrors a real multi-environment GCP repo:
  // infra-style `dev/` and `prod/` root modules (each with a GCS backend) that
  // call shared local modules under `modules/` (cloud_run, cloud_sql, pubsub,
  // secret_manager, service_account, workload_identity). All HCL, all local
  // modules, no terraform run.
  group('scanConfigDir on a realistic multi-env tree', () {
    const fixture = 'test/fixtures/config_tree';

    test('recursively extracts every resource/data block across envs '
        'and modules', () {
      final out = scanConfigDir(fixture);

      expect(out.references, hasLength(41));
      expect(out.references.map((r) => r.modulePath).toSet(), {
        'dev',
        'prod',
        'modules/cloud_run',
        'modules/cloud_sql',
        'modules/pubsub',
        'modules/secret_manager',
        'modules/service_account',
        'modules/workload_identity',
      });
      // `data "google_project"` appears once per environment.
      final data = out.references.where(
        (r) => r.kind == CatalogKind.dataSource,
      );
      expect(data, hasLength(2));
      expect(data.every((r) => r.type == 'google_project'), isTrue);
      // Every module is local (reached by the walk), so nothing is unanalyzed.
      expect(out.unparseable, isEmpty);
    });

    test('counts resources that live inside local modules', () {
      final types = scanConfigDir(
        fixture,
      ).references.map((r) => r.type).toSet();
      // These types only exist under modules/*, found via the recursive walk.
      expect(
        types,
        containsAll([
          'google_cloud_run_v2_service',
          'google_sql_database_instance',
          'google_iam_workload_identity_pool',
        ]),
      );
    });

    test('builds a coverage report grouped by directory', () {
      final report = buildCoverageReport(
        scanConfigDir(fixture),
        CatalogIndex(terradartCatalog),
      );

      // Parse-level totals are catalog-independent.
      expect(report.summary.distinctTypes, 20);
      expect(report.summary.totalOccurrences, 41);
      // Invariant: every distinct type is classified exactly once.
      expect(
        report.supported.length + report.notInCatalog.length,
        report.summary.distinctTypes,
      );
      expect(
        report.supported.map((s) => s.type),
        containsAll(['google_storage_bucket', 'google_cloud_run_v2_service']),
      );
      expect(
        report.notInCatalog,
        isNotEmpty,
        reason:
            'the fixture includes an uncurated type '
            '(google_storage_bucket_iam_binding); refresh if it gets curated',
      );
      expect(
        report.perModule.keys,
        containsAll(['dev', 'prod', 'modules/cloud_sql']),
      );
    });
  });

  test('parses .tf.json config', () {
    final tmp = Directory.systemTemp.createTempSync('cov_json_');
    try {
      File('${tmp.path}/main.tf.json').writeAsStringSync(
        jsonEncode({
          'resource': {
            'google_pubsub_topic': {'a': {}, 'b': {}},
          },
          'data': {
            'google_project': {'p': {}},
          },
        }),
      );

      final out = scanConfigDir(tmp.path);

      expect(
        out.references.where((r) => r.type == 'google_pubsub_topic'),
        hasLength(2),
      );
      final data = out.references.where(
        (r) => r.kind == CatalogKind.dataSource,
      );
      expect(data.single.type, 'google_project');
    } finally {
      tmp.deleteSync(recursive: true);
    }
  });

  test('calls out a remote module but not a local one', () {
    final tmp = Directory.systemTemp.createTempSync('cov_mod_');
    try {
      File('${tmp.path}/main.tf').writeAsStringSync('''
module "local" {
  source = "../modules/network"
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"
}
''');

      final out = scanConfigDir(tmp.path);

      expect(
        out.unparseable,
        contains(matches(r'module "vpc".*remote module')),
      );
      expect(
        out.unparseable.any((n) => n.contains('"local"')),
        isFalse,
        reason: 'a local module is reached by the walk; it must not be flagged',
      );
    } finally {
      tmp.deleteSync(recursive: true);
    }
  });

  test('skips .terraform/ and .git/ caches', () {
    final tmp = Directory.systemTemp.createTempSync('cov_cfg_');
    try {
      File(
        '${tmp.path}/main.tf',
      ).writeAsStringSync('resource "google_storage_bucket" "a" {}\n');
      Directory('${tmp.path}/.terraform/modules/x').createSync(recursive: true);
      File(
        '${tmp.path}/.terraform/modules/x/main.tf',
      ).writeAsStringSync('resource "google_compute_firewall" "vendored" {}\n');

      final out = scanConfigDir(tmp.path);

      expect(out.references, hasLength(1));
      expect(out.references.single.type, 'google_storage_bucket');
    } finally {
      tmp.deleteSync(recursive: true);
    }
  });

  test('throws a clear error for a missing directory', () {
    expect(
      () => scanConfigDir('does/not/exist'),
      throwsA(isA<FormatException>()),
    );
  });
}
