// Every package under packages/ is tested and publish-dry-run in CI.
// The matrix is the workspace list that tool/ci_packages.dart prints.
// A directory that is not a workspace member, or a hardcoded package list,
// fails this file.
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

  bool needsWorkspace(YamlMap job) {
    final needs = job['needs'];
    if (needs == 'workspace_packages') return true;
    return needs is YamlList && needs.contains('workspace_packages');
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
      expect(needsWorkspace(job), isTrue, reason: name);
    });
  }
}
