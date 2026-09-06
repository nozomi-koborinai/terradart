import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

const _fixtures = '../terradart_coverage/test/fixtures';

void main() {
  group('config_tree', () {
    final tree = scanModuleTree(Directory('$_fixtures/config_tree'));

    test('finds every module directory, by path', () {
      expect(tree.modules.map((m) => m.relPath), [
        'dev',
        'modules/cloud_run',
        'modules/cloud_sql',
        'modules/pubsub',
        'modules/secret_manager',
        'modules/service_account',
        'modules/workload_identity',
        'prod',
      ]);
    });

    test('a module source makes a child; the rest are roots', () {
      expect(tree.roots.map((m) => m.relPath), ['dev', 'prod']);
      expect(
        tree.children.map((m) => m.relPath),
        everyElement(startsWith('modules/')),
      );
      final sa = tree.byPath('modules/service_account')!;
      expect(sa.callers, {'dev', 'prod'});
      final dev = tree.byPath('dev')!;
      expect(dev.calls['sa_bff'], 'modules/service_account');
      expect(dev.calls, hasLength(10));
      expect(dev.warnings, isEmpty);
    });

    test('sibling roots are environments, compared address by address', () {
      expect(tree.environments.keys, ['.']);
      final roots = tree.environments['.']!;
      expect(roots.map((m) => m.relPath), ['dev', 'prod']);
      final c = compareEnvironment('.', roots);
      expect(c.shared, hasLength(22));
      expect(c.only['dev'], isEmpty);
      expect(c.only['prod'], [
        'google_storage_bucket.backups',
        'google_storage_bucket_iam_binding.backups_admins',
      ]);
      expect(c.differing, {
        'google_storage_bucket.assets': ['name'],
        'google_storage_bucket.uploads': ['name'],
        'module.cloud_sql': ['instance_name'],
      });
    });

    test('--roots and --env-dirs override the inference', () {
      final forced = scanModuleTree(
        Directory('$_fixtures/config_tree'),
        roots: ['modules/pubsub/'],
        environmentDirs: ['./dev'],
      );
      expect(forced.byPath('modules/pubsub')!.isRoot, isTrue);
      expect(
        forced.environments.map(
          (k, v) => MapEntry(k, v.map((m) => m.relPath).toList()),
        ),
        {
          '.': ['dev'],
        },
      );
      expect(forced.byPath('prod')!.environment, isNull);
    });
  });

  group('real_plan_src', () {
    final tree = scanModuleTree(Directory('$_fixtures/real_plan_src'));

    test('the scanned directory is the root, ./modules/network its child', () {
      expect(tree.modules.map((m) => m.relPath), ['.', 'modules/network']);
      final root = tree.byPath('.')!;
      expect(root.isRoot, isTrue);
      expect(root.baseName, 'real_plan_src');
      expect(root.calls, {'network': 'modules/network'});
      expect(tree.byPath('modules/network')!.callers, {'.'});
      expect(tree.environments, isEmpty);
    });
  });

  group('scan edge cases', () {
    late Directory dir;
    setUp(() {
      dir = Directory.systemTemp.createTempSync('terradart_topology_');
    });
    tearDown(() => dir.deleteSync(recursive: true));

    test('sources outside the tree warn; hidden directories are skipped', () {
      File('${dir.path}/main.tf').writeAsStringSync(
        'module "x" { source = "../elsewhere" }\n'
        'module "y" { source = "hashicorp/x/aws" }\n',
      );
      Directory('${dir.path}/.terraform/modules/x').createSync(recursive: true);
      File(
        '${dir.path}/.terraform/modules/x/main.tf',
      ).writeAsStringSync('resource "a" "b" {}\n');
      final tree = scanModuleTree(dir);
      expect(tree.modules.map((m) => m.relPath), ['.']);
      expect(tree.modules.single.warnings, [
        contains('module "x": source "../elsewhere"'),
      ]);
    });

    test('a directory that does not parse fails the scan', () {
      File('${dir.path}/main.tf').writeAsStringSync('resource "a" {\n');
      expect(
        () => scanModuleTree(dir),
        throwsA(
          isA<ModuleTreeException>().having(
            (e) => e.errors.single.relPath,
            'relPath',
            '.',
          ),
        ),
      );
    });

    test('three environments: exclusive, partial and shared addresses', () {
      for (final env in ['a', 'b', 'c']) {
        Directory('${dir.path}/envs/$env').createSync(recursive: true);
      }
      File('${dir.path}/envs/a/main.tf').writeAsStringSync(
        'resource "google_pubsub_topic" "x" { name = "x" }\n'
        'resource "google_pubsub_topic" "y" { name = "y" }\n',
      );
      File('${dir.path}/envs/b/main.tf').writeAsStringSync(
        'resource "google_pubsub_topic" "x" { name = "x" }\n'
        'resource "google_pubsub_topic" "y" { name = "y" }\n'
        'resource "google_pubsub_topic" "z" { name = "z" }\n',
      );
      File('${dir.path}/envs/c/main.tf').writeAsStringSync(
        'resource "google_pubsub_topic" "x" { name = "x-c" }\n',
      );
      final tree = scanModuleTree(dir);
      expect(tree.environments.keys, ['envs']);
      final c = compareEnvironment('envs', tree.environments['envs']!);
      expect(c.shared, ['google_pubsub_topic.x']);
      expect(c.only, {
        'envs/a': <String>[],
        'envs/b': ['google_pubsub_topic.z'],
        'envs/c': <String>[],
      });
      expect(c.partial, {
        'google_pubsub_topic.y': ['envs/a', 'envs/b'],
      });
      expect(c.differing, {
        'google_pubsub_topic.x': ['name'],
      });
    });

    test('relative paths normalize', () {
      expect(normalizeRelPath('./envs/dev/'), 'envs/dev');
      expect(normalizeRelPath('.'), '.');
      expect(normalizeRelPath(''), '.');
      expect(normalizeRelPath('a\\b'), 'a/b');
    });
  });
}
