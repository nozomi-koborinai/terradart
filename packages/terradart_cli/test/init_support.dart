import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/cli.dart';
import 'package:terradart_cli/src/workflow.dart';
import 'package:test/test.dart';

final workspacePackages = p.normalize(p.join(Directory.current.path, '..'));

typedef Scaffold = ({List<String> args, String resource, String backend});

const scaffolds = <String, Scaffold>{
  'google': (
    args: [
      '--provider',
      'google',
      '--env',
      'dev,prd',
      '--gcp-project',
      'dev=acme-dev',
      '--state-bucket',
      'acme-tfstate',
    ],
    resource: 'google_pubsub_topic',
    backend: 'gcs',
  ),
  'aws': (
    args: [
      '--provider',
      'aws',
      '--env',
      'dev,prd',
      '--aws-region',
      'prd=eu-west-1',
      '--aws-account',
      'prd=111122223333',
      '--backend',
      's3',
    ],
    resource: 'aws_s3_bucket',
    backend: 's3',
  ),
  'cloudflare': (
    args: [
      '--provider',
      'cloudflare',
      '--env',
      'dev,prd',
      '--cloudflare-account',
      '0123abcd',
      '--state-bucket',
      'dev=acme-dev-state,prd=acme-prd-state',
    ],
    resource: 'cloudflare_workers_kv_namespace',
    backend: 's3',
  ),
  'appwrite': (
    args: ['--provider', 'appwrite', '--defaults'],
    resource: 'appwrite_auth_team',
    backend: 'local',
  ),
  'azure': (
    args: ['--provider', 'azure', '--defaults'],
    resource: 'azurerm_resource_group',
    backend: 'local',
  ),
  'azurerm': (
    args: [
      '--provider',
      'google',
      '--env',
      'dev,prd',
      '--gcp-project',
      'dev=acme-dev',
      '--backend',
      'azurerm',
    ],
    resource: 'google_pubsub_topic',
    backend: 'azurerm',
  ),
};

Future<String> terradart(
  List<String> args, {
  required String cwd,
  Map<String, String>? environment,
}) async {
  final log = StringBuffer();
  final code = await runTerradartWith(
    args,
    workingDirectory: cwd,
    environment: environment,
    console: Console(out: log.writeln, err: log.writeln),
  );
  expect(code, 0, reason: '$log');
  return '$log';
}

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

Map<String, Object?> mainTf(String dir, String env) =>
    jsonDecode(
          File(p.join(dir, 'tf-out', env, 'main.tf.json')).readAsStringSync(),
        )
        as Map<String, Object?>;
