@Timeout(Duration(minutes: 5))
/// A hand-written Google argument the provider requires has no default, so a
/// caller who leaves it out gets a compile error rather than a block they
/// never wrote.
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'doc_snippets.dart' show analyzeDiagnostics;

const _packages = ['terradart_core', 'terradart_google', 'terradart_time'];

String _pubspec(String root) {
  final b = StringBuffer()
    ..writeln('name: required_helper_args')
    ..writeln('publish_to: none')
    ..writeln('environment:')
    ..writeln('  sdk: ^3.12.0')
    ..writeln('dependencies:');
  for (final pkg in _packages) {
    b.writeln('  $pkg: any');
  }
  b.writeln('dependency_overrides:');
  for (final pkg in _packages) {
    b
      ..writeln('  $pkg:')
      ..writeln('    path: ${p.join(root, 'packages', pkg)}');
  }
  return b.toString();
}

void main() {
  test('a security monitoring condition without includeAllResources does not '
      'compile', () async {
    final root = Directory.current.path;
    final sandbox = Directory.systemTemp.createTempSync('required_args_');
    addTearDown(() => sandbox.deleteSync(recursive: true));
    Directory(p.join(sandbox.path, 'lib')).createSync();
    File(
      p.join(sandbox.path, 'pubspec.yaml'),
    ).writeAsStringSync(_pubspec(root));
    File(p.join(sandbox.path, 'lib', 'condition.dart')).writeAsStringSync('''
import 'package:terradart_google/apigee.dart';

final condition = GoogleApigeeSecurityMonitoringCondition(
  'smc',
  conditionId: .literal('smc'),
  orgId: .literal('organizations/demo-org'),
  profile: .literal('demo-profile'),
  scope: .literal('demo-env'),
);
''');
    var get = await Process.run('dart', [
      'pub',
      'get',
      '--offline',
    ], workingDirectory: sandbox.path);
    if (get.exitCode != 0) {
      get = await Process.run('dart', [
        'pub',
        'get',
      ], workingDirectory: sandbox.path);
    }
    expect(get.exitCode, 0, reason: '${get.stdout}${get.stderr}');

    final errors = [
      for (final d in await analyzeDiagnostics(sandbox.path))
        if (d.severity == 'ERROR') d,
    ];
    expect(errors, hasLength(1), reason: '$errors');
    expect(errors.single.code, 'MISSING_REQUIRED_ARGUMENT');
    expect(errors.single.message, contains("'includeAllResources'"));
  });
}
