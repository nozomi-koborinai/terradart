import 'dart:convert';
import 'dart:io';
import 'package:test/test.dart';

void main() {
  test('CLI prints a coverage report for a state file', () async {
    final result = await Process.run(
      'dart',
      ['run', 'bin/terradart_coverage.dart', 'test/fixtures/state_sample.json'],
    );
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
    expect(decoded['summary'], isA<Map>());
  });

  test('CLI exits non-zero on non-JSON input', () async {
    final result = await Process.run(
      'dart',
      ['run', 'bin/terradart_coverage.dart', 'pubspec.yaml'],
    );
    expect(result.exitCode, isNonZero);
  });
}
