// Every package under packages/ is tested and publish-dry-run in CI: the
// dry-run matrix once listed only the core and google packages, so a
// secret-scanner or pubspec problem in any other provider package would have
// surfaced only at release.
import 'dart:io';

import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

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

  for (final job in ['test', 'publish_dry_run']) {
    test('ci.yml $job covers every package', () {
      final matrix =
          ((jobs[job] as YamlMap)['strategy'] as YamlMap)['matrix'] as YamlMap;
      expect(
        (matrix['package'] as YamlList).cast<String>().toList()..sort(),
        packages,
      );
    });
  }
}
