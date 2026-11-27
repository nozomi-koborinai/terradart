import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  final script = p.canonicalize('tool/prepare_publish.sh');

  Directory setupFixture({
    required String pkg,
    required String pubspec,
    required String changelog,
  }) {
    final root = Directory.systemTemp.createTempSync('prepare_publish_test_');
    addTearDown(() => root.deleteSync(recursive: true));
    final pkgDir = Directory(p.join(root.path, 'packages', pkg))
      ..createSync(recursive: true);
    File(p.join(pkgDir.path, 'pubspec.yaml')).writeAsStringSync(pubspec);
    File(p.join(pkgDir.path, 'CHANGELOG.md')).writeAsStringSync(changelog);
    return root;
  }

  Map<String, String> envWithBrokenYq(Directory root) {
    final bin = Directory(p.join(root.path, 'fake_bin'))..createSync();
    final yq = File(
      p.join(bin.path, 'yq'),
    )..writeAsStringSync('#!/usr/bin/env bash\necho "wrong yq" >&2\nexit 99\n');
    Process.runSync('chmod', ['+x', yq.path]);
    final env = Map<String, String>.from(Platform.environment);
    env['PATH'] = '${bin.path}:${env['PATH'] ?? ''}';
    return env;
  }

  test(
    'strips resolution and publish_to without calling yq and preserves comments',
    () {
      final root = setupFixture(
        pkg: 'demo_pkg',
        pubspec: '''
name: demo_pkg
# Package version comment
version: 0.37.0 # lockstep
publish_to: none

environment:
  sdk: ^3.12.0

resolution: workspace

dependencies:
  meta: ^1.15.0
''',
        changelog: '''
# Changelog

## 0.37.0 - 2026-11-24

- Release notes.
''',
      );

      final result = Process.runSync(
        'bash',
        [script, 'v0.37.0', 'demo_pkg'],
        workingDirectory: root.path,
        environment: envWithBrokenYq(root),
      );
      expect(
        result.exitCode,
        0,
        reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
      );

      final updated = File(
        p.join(root.path, 'packages', 'demo_pkg', 'pubspec.yaml'),
      ).readAsStringSync();
      expect(updated, contains('# Package version comment'));
      expect(updated, isNot(contains('resolution:')));
      expect(updated, isNot(contains('publish_to:')));

      final yaml = loadYaml(updated) as YamlMap;
      expect(yaml['name'], 'demo_pkg');
      expect(yaml['version'], '0.37.0');
      expect(yaml.containsKey('resolution'), isFalse);
      expect(yaml.containsKey('publish_to'), isFalse);
    },
  );

  test('accepts quoted pubspec version', () {
    final root = setupFixture(
      pkg: 'demo_pkg',
      pubspec: '''
name: demo_pkg
version: "0.37.0"
resolution: workspace
''',
      changelog: '## 0.37.0\n',
    );

    final result = Process.runSync(
      'bash',
      [script, 'v0.37.0', 'demo_pkg'],
      workingDirectory: root.path,
      environment: envWithBrokenYq(root),
    );
    expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  });

  test('fails fast on version mismatch', () {
    final root = setupFixture(
      pkg: 'demo_pkg',
      pubspec: '''
name: demo_pkg
version: 0.36.0
resolution: workspace
''',
      changelog: '## 0.37.0 - 2026-11-24\n',
    );

    final result = Process.runSync(
      'bash',
      [script, 'v0.37.0', 'demo_pkg'],
      workingDirectory: root.path,
      environment: envWithBrokenYq(root),
    );
    expect(result.exitCode, 1);
    expect('${result.stdout}${result.stderr}', contains('pubspec version'));
  });

  test('fails fast when CHANGELOG.md lacks the tag version', () {
    final root = setupFixture(
      pkg: 'demo_pkg',
      pubspec: '''
name: demo_pkg
version: 0.37.0
resolution: workspace
''',
      changelog: '## 0.36.0 - 2026-11-03\n',
    );

    final result = Process.runSync(
      'bash',
      [script, 'v0.37.0', 'demo_pkg'],
      workingDirectory: root.path,
      environment: envWithBrokenYq(root),
    );
    expect(result.exitCode, 1);
    expect(
      '${result.stdout}${result.stderr}',
      contains('CHANGELOG.md is missing'),
    );
  });
}
