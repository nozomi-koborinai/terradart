import 'dart:io';

import 'package:terradart_agent/src/version.dart';
import 'package:test/test.dart';

void main() {
  test('packageVersion stays in lockstep with pubspec.yaml version', () {
    // `dart test` runs from the package root, so pubspec.yaml is at cwd.
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final m = RegExp(r'^version:\s*(.+)$', multiLine: true).firstMatch(pubspec);
    expect(m, isNotNull, reason: 'no version: line found in pubspec.yaml');
    expect(packageVersion, m!.group(1)!.trim());
  });
}
