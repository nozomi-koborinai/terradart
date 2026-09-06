import 'dart:convert';
import 'dart:io';
import 'package:test/test.dart';

void main() {
  test('CLI prints a coverage report for a state file', () async {
    final result = await Process.run('dart', [
      'run',
      'bin/terradart_coverage.dart',
      'test/fixtures/state_sample.json',
    ]);
    expect(result.exitCode, 0, reason: result.stderr.toString());
    expect(result.stdout, contains('Coverage'));
    expect(result.stdout, contains('google_storage_bucket'));
  });

  test('CLI --json emits valid JSON', () async {
    final result = await Process.run('dart', [
      'run',
      'bin/terradart_coverage.dart',
      '--json',
      'test/fixtures/state_sample.json',
    ]);
    expect(result.exitCode, 0, reason: result.stderr.toString());
    final decoded = jsonDecode(result.stdout as String);
    expect(decoded['summary'], isA<Map<String, dynamic>>());
  });

  test('CLI exits non-zero on non-JSON input', () async {
    final result = await Process.run('dart', [
      'run',
      'bin/terradart_coverage.dart',
      'pubspec.yaml',
    ]);
    expect(result.exitCode, isNonZero);
  });

  test('CLI --dir scans a source tree without terraform', () async {
    final result = await Process.run('dart', [
      'run',
      'bin/terradart_coverage.dart',
      '--json',
      '--dir',
      'test/fixtures/config_tree',
    ]);
    expect(result.exitCode, 0, reason: result.stderr.toString());
    final decoded = jsonDecode(result.stdout as String) as Map<String, dynamic>;
    expect((decoded['summary'] as Map)['totalOccurrences'], 41);
    expect(decoded['unexpanded'], isEmpty);
    expect(decoded['unparseable'], isEmpty);
  });

  test('CLI --help prints usage and exits 0', () async {
    final result = await Process.run('dart', [
      'run',
      'bin/terradart_coverage.dart',
      '--help',
    ]);
    expect(result.exitCode, 0, reason: result.stderr.toString());
    expect(result.stdout, contains('Usage:'));
  });

  test('CLI reads terraform JSON from stdin when no file arg', () async {
    final process = await Process.start('dart', [
      'run',
      'bin/terradart_coverage.dart',
    ]);
    process.stdin
      ..write(File('test/fixtures/state_sample.json').readAsStringSync())
      ..close();
    final out = await process.stdout.transform(utf8.decoder).join();
    expect(await process.exitCode, 0);
    expect(out, contains('Coverage'));
    expect(out, contains('google_storage_bucket'));
  });
}
