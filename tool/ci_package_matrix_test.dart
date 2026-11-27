import 'dart:io';

import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'lane_surface.dart';

void main() {
  final packages =
      Directory('packages')
          .listSync()
          .whereType<Directory>()
          .where((d) => File('${d.path}/pubspec.yaml').existsSync())
          .map((d) => d.uri.pathSegments.where((s) => s.isNotEmpty).last)
          .toList()
        ..sort();
  final jobs =
      (loadYaml(File('.github/workflows/ci.yml').readAsStringSync())
              as YamlMap)['jobs']
          as YamlMap;
  const fromWorkspace =
      r'${{ fromJson(needs.workspace_packages.outputs.packages) }}';

  List<String> needsOf(YamlMap job) {
    final needs = job['needs'];
    if (needs is String) return [needs];
    if (needs is YamlList) return [for (final n in needs) n.toString()];
    return const [];
  }

  test('the workspace list is every package directory', () {
    expect(
      [...workspacePackageNames(File('pubspec.yaml').readAsStringSync())]
        ..sort(),
      packages,
    );
  });

  for (final name in ['test', 'publish_dry_run']) {
    test('ci.yml $name covers every package', () {
      final job = jobs[name] as YamlMap;
      final matrix = (job['strategy'] as YamlMap)['matrix'] as YamlMap;
      expect(matrix['package'], fromWorkspace);
      expect(needsOf(job), contains('workspace_packages'), reason: name);
    });
  }

  test('ci.yml shards terraform_validate from changes.outputs.shards', () {
    final job = jobs['terraform_validate'] as YamlMap;
    final matrix = (job['strategy'] as YamlMap)['matrix'] as YamlMap;
    expect(matrix['shard'], r'${{ fromJSON(needs.changes.outputs.shards) }}');
    expect(
      needsOf(job),
      unorderedEquals(['changes', 'plugin_cache_key', 'tofu_plugin_cache']),
    );
  });

  test('terraform_validate and migrate_* do not block on test', () {
    for (final name in [
      'terraform_validate',
      'terraform_validate_gate',
      'migrate_roundtrip',
      'migrate_fixtures',
      'migrate_moved',
    ]) {
      final job = jobs[name] as YamlMap;
      expect(
        needsOf(job),
        isNot(contains('test')),
        reason: '$name must not wait on test',
      );
    }
    expect(needsOf(jobs['migrate_fixtures'] as YamlMap), ['plugin_cache_key']);
    expect(needsOf(jobs['migrate_moved'] as YamlMap), ['plugin_cache_key']);
    expect(
      needsOf(jobs['terraform_validate_gate'] as YamlMap),
      unorderedEquals([
        'changes',
        'plugin_cache_key',
        'tofu_plugin_cache',
        'terraform_validate',
      ]),
    );
  });

  test(
    'ci_gate still requires test, migrate_*, and terraform_validate_gate',
    () {
      final gateNeeds = needsOf(jobs['ci_gate'] as YamlMap);
      expect(
        gateNeeds,
        containsAll([
          'test',
          'migrate_roundtrip',
          'migrate_fixtures',
          'migrate_moved',
          'terraform_validate_gate',
        ]),
      );
    },
  );
}
