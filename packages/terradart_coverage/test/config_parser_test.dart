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
        isEmpty,
        reason:
            'the fixture tree should be fully covered by the curated catalog',
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
            'google_pubsub_topic': {
              'a': <String, Object?>{},
              'b': <String, Object?>{},
            },
          },
          'data': {
            'google_project': {'p': <String, Object?>{}},
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

  group('module calls are read from the AST', () {
    late Directory tmp;
    setUp(() {
      tmp = Directory.systemTemp.createTempSync('cov_mod_');
      Directory('${tmp.path}/dev').createSync();
      Directory('${tmp.path}/modules/network').createSync(recursive: true);
      File(
        '${tmp.path}/modules/network/main.tf',
      ).writeAsStringSync('resource "google_compute_network" "n" {}\n');
      File('${tmp.path}/dev/main.tf').writeAsStringSync('''
module "local" {
  source = "../modules/network"
}

module "twice" {
  source = "../modules/network"
  count  = 2
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"
}

module "missing" {
  source = "../modules/does_not_exist"
}

module "dynamic" {
  source = var.source
}
''');
    });
    tearDown(() => tmp.deleteSync(recursive: true));

    test('calls out a remote module but not a local one inside the tree', () {
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
      // The module directory itself is scanned, once.
      expect(
        out.references.where((r) => r.type == 'google_compute_network'),
        hasLength(1),
      );
    });

    test('a local module called with count is scanned once and said so', () {
      final out = scanConfigDir(tmp.path);

      expect(
        out.unexpanded,
        contains(matches(r'module "twice": count = 2 .*scanned once')),
      );
      expect(out.unexpanded.any((n) => n.contains('"local"')), isFalse);
    });

    test('a missing or non-constant module source is not analyzed', () {
      final out = scanConfigDir(tmp.path);

      expect(
        out.unparseable,
        contains(matches(r'module "missing".*directory not found')),
      );
      expect(
        out.unparseable,
        contains(matches(r'module "dynamic" has no constant source')),
      );
    });

    test('a local module outside the scanned directory is not analyzed', () {
      final out = scanConfigDir('${tmp.path}/dev');

      expect(
        out.unparseable,
        contains(matches(r'module "local".*outside the scanned directory')),
      );
      expect(out.references, isEmpty);
    });
  });

  group('count / for_each awareness', () {
    late Directory tmp;
    setUp(() {
      tmp = Directory.systemTemp.createTempSync('cov_count_');
      File('${tmp.path}/main.tf').writeAsStringSync('''
resource "google_storage_bucket" "n" {
  count = 3
}

resource "google_pubsub_topic" "v" {
  count = var.topics
}

resource "google_pubsub_subscription" "m" {
  for_each = {
    a = "x"
    b = "y"
  }
}

resource "google_service_account" "s" {
  for_each = toset([
    "one",
    "two",
    "three",
  ])
}

resource "google_compute_network" "off" {
  count = 0
}

resource "google_compute_subnetwork" "cond" {
  count = var.enabled ? 1 : 0
}

data "google_project" "p" {
  for_each = var.projects
}
''');
    });
    tearDown(() => tmp.deleteSync(recursive: true));

    Map<String, int> occurrences(ParseOutcome out) {
      final counts = <String, int>{};
      for (final r in out.references) {
        counts[r.type] = (counts[r.type] ?? 0) + 1;
      }
      return counts;
    }

    test('a literal count, object or toset([...]) for_each is expanded', () {
      final counts = occurrences(scanConfigDir(tmp.path));

      expect(counts['google_storage_bucket'], 3);
      expect(counts['google_pubsub_subscription'], 2);
      expect(counts['google_service_account'], 3);
    });

    test('count = 0 still counts the block once (it must be migrated)', () {
      final counts = occurrences(scanConfigDir(tmp.path));

      expect(counts['google_compute_network'], 1);
    });

    test('anything else counts once and is listed as unexpanded', () {
      final out = scanConfigDir(tmp.path);
      final counts = occurrences(out);

      expect(counts['google_pubsub_topic'], 1);
      expect(counts['google_compute_subnetwork'], 1);
      expect(counts['google_project'], 1);
      expect(out.unexpanded, hasLength(3));
      expect(
        out.unexpanded,
        containsAll([
          'main.tf: google_pubsub_topic.v: count = var.topics — counted once',
          'main.tf: google_compute_subnetwork.cond: '
              'count = var.enabled ? 1 : 0 — counted once',
          'main.tf: data.google_project.p: for_each = var.projects '
              '— counted once',
        ]),
      );
      // Expanded blocks are not listed; nothing was unparseable.
      expect(out.unparseable, isEmpty);
    });

    test('.tf.json count is expanded too', () {
      File('${tmp.path}/extra.tf.json').writeAsStringSync(
        jsonEncode({
          'resource': {
            'google_dns_managed_zone': {
              'z': {'count': 2},
              'dyn': {'count': r'${var.n}'},
            },
          },
        }),
      );

      final out = scanConfigDir(tmp.path);

      expect(occurrences(out)['google_dns_managed_zone'], 3);
      expect(
        out.unexpanded,
        contains(matches(r'extra\.tf\.json: google_dns_managed_zone\.dyn:')),
      );
    });
  });

  group('files that do not parse', () {
    test(
      'are listed with their first error and skipped; others still count',
      () {
        final tmp = Directory.systemTemp.createTempSync('cov_err_');
        try {
          File(
            '${tmp.path}/broken.tf',
          ).writeAsStringSync('resource "google_storage_bucket" "a" {\n');
          File(
            '${tmp.path}/ok.tf',
          ).writeAsStringSync('resource "google_pubsub_topic" "t" {}\n');

          final out = scanConfigDir(tmp.path);

          expect(out.references.single.type, 'google_pubsub_topic');
          expect(out.unparseable, hasLength(1));
          expect(out.unparseable.single, startsWith('broken.tf:'));
          expect(out.unparseable.single, endsWith('— file skipped'));
        } finally {
          tmp.deleteSync(recursive: true);
        }
      },
    );

    test('a block with the wrong label count is reported, not guessed', () {
      final tmp = Directory.systemTemp.createTempSync('cov_lbl_');
      try {
        File('${tmp.path}/main.tf').writeAsStringSync('''
resource "google_storage_bucket" {
}

resource "google_pubsub_topic" "t" {}
''');

        final out = scanConfigDir(tmp.path);

        expect(out.references.single.type, 'google_pubsub_topic');
        expect(
          out.unparseable.single,
          matches(r'^main\.tf:1:1: "resource" block has 1 label\(s\)'),
        );
      } finally {
        tmp.deleteSync(recursive: true);
      }
    });

    test('a resource header inside a heredoc is not a resource', () {
      final tmp = Directory.systemTemp.createTempSync('cov_doc_');
      try {
        File('${tmp.path}/main.tf').writeAsStringSync('''
resource "google_storage_bucket_object" "readme" {
  content = <<-EOT
    resource "google_compute_instance" "not_real" {
    }
  EOT
}
''');

        final out = scanConfigDir(tmp.path);

        expect(out.references.single.type, 'google_storage_bucket_object');
      } finally {
        tmp.deleteSync(recursive: true);
      }
    });
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
