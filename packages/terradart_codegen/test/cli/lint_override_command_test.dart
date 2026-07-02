import 'dart:io';

import 'package:test/test.dart';

/// Runs `terradart lint-override` against the real bundled registry as a
/// subprocess (the same way `wrap` is exercised), so the command wiring +
/// package-URI resolution are covered end-to-end.
void main() {
  test('lint-override exits 0 on the clean committed registry', () {
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override'],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      0,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stdout, contains('lint-override:'));
  });

  test('lint-override is a registered subcommand in --help', () {
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', '--help'],
      workingDirectory: Directory.current.path,
    );
    expect('${result.stdout}${result.stderr}', contains('lint-override'));
  });

  test('lint-override exits 65 and lists violations on a dead config', () {
    final dir = Directory.systemTemp.createTempSync('a5lint');
    addTearDown(() => dir.deleteSync(recursive: true));
    File('${dir.path}/google_bad.yaml').writeAsStringSync(
      'outputDir: x\ncuratedDoc: |-\n  /// dead (deriveClassDoc is off)\n',
    );
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override', '--dir', dir.path],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      65,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stderr, contains('curated-doc-without-derive-class-doc'));
  });

  test('lint-override exits 65 with a clean message on a missing --dir', () {
    final missing = '${Directory.systemTemp.path}/a5-does-not-exist-xyz';
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override', '--dir', missing],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      65,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stderr, contains('terradart lint-override:'));
  });
}
