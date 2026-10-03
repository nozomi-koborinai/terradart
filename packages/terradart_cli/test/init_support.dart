import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

/// The workspace's `packages/` directory; tests run in `terradart_cli`.
final workspacePackages = p.normalize(p.join(Directory.current.path, '..'));

/// One scaffold `init_synth_test.dart` and the e2e test check: the `init`
/// flags, and the resource type the Stack holds.
typedef Scaffold = ({List<String> args, String resource, String backend});

const scaffolds = <String, Scaffold>{
  'google': (
    args: ['--provider', 'google', '--backend', 'gcs'],
    resource: 'google_pubsub_topic',
    backend: 'gcs',
  ),
  'aws': (
    args: ['--provider', 'aws', '--backend', 's3'],
    resource: 'aws_s3_bucket',
    backend: 's3',
  ),
  'cloudflare': (
    args: ['--provider', 'cloudflare', '--backend', 's3'],
    resource: 'cloudflare_workers_kv_namespace',
    backend: 's3',
  ),
  'appwrite': (
    args: ['--provider', 'appwrite'],
    resource: 'appwrite_auth_team',
    backend: 'local',
  ),
};

/// Runs `terradart <args>` in [cwd] with the real process runner, failing
/// the test on a nonzero exit.
Future<String> terradart(
  List<String> args, {
  required String cwd,
  Map<String, String>? environment,
}) async {
  final log = StringBuffer();
  final code = await runTerradart(
    args,
    workingDirectory: cwd,
    environment: environment,
    console: Console(out: log.writeln, err: log.writeln),
  );
  expect(code, 0, reason: '$log');
  return '$log';
}

/// Points every `terradart_*` dependency of the project in [dir] at the
/// workspace, as `dependency_overrides`.
void overrideWorkspacePackages(String dir) {
  final pubspec = File(p.join(dir, 'pubspec.yaml'));
  final text = pubspec.readAsStringSync();
  final deps = RegExp(
    r'^  (terradart_\w+):',
    multiLine: true,
  ).allMatches(text).map((m) => m[1]!).toList();
  pubspec.writeAsStringSync('''
$text
dependency_overrides:
${[for (final d in deps) '  $d:\n    path: ${jsonEncode(p.join(workspacePackages, d))}'].join('\n')}
''');
}

/// `tf-out/<env>/main.tf.json` of the project in [dir].
Map<String, Object?> mainTf(String dir, String env) =>
    jsonDecode(
          File(p.join(dir, 'tf-out', env, 'main.tf.json')).readAsStringSync(),
        )
        as Map<String, Object?>;
