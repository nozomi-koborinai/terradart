import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  test('migrate does not need a Dart project', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_migrate_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    File(p.join(scratch.path, 'main.tf')).writeAsStringSync(
      'resource "google_pubsub_topic" "t" { name = "orders" }\n',
    );
    final out = p.join(scratch.path, 'pkg');
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    final code = await runTerradart(
      ['migrate', '--dir', scratch.path, '--out', out, '--name', 'orders'],
      runner: FakeRunner(),
      console: Console(out: stdout.writeln, err: stderr.writeln),
      workingDirectory: scratch.path,
      environment: const {'PATH': ''},
      dartExecutable: 'dart',
    );
    expect(code, 0, reason: '$stderr');
    expect(stderr.toString(), isEmpty);
    final infra = File(p.join(out, 'bin/infra.dart')).readAsStringSync();
    expect(infra, contains('runStack(args, () => OrdersStack()'));
    expect(infra, contains("out: 'tf-out'"));
    expect(
      File(p.join(out, 'pubspec.yaml')).readAsStringSync(),
      contains('name: orders'),
    );
  });

  test('a migrated project keeps running Terraform', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_engine_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    File(p.join(scratch.path, 'main.tf')).writeAsStringSync(
      'resource "google_pubsub_topic" "t" { name = "orders" }\n',
    );
    final out = p.join(scratch.path, 'pkg');
    final bin = Directory(p.join(scratch.path, 'bin'))..createSync();
    fakeExecutable(bin.path, 'tofu');
    final terraform = fakeExecutable(bin.path, 'terraform');
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    Future<int> run(List<String> args) => runTerradart(
      args,
      runner: FakeRunner(),
      console: Console(out: stdout.writeln, err: stderr.writeln),
      workingDirectory: scratch.path,
      environment: {
        'PATH': bin.path,
        if (Platform.isWindows) 'PATHEXT': '.EXE',
      },
      dartExecutable: 'dart',
    );
    expect(await run(['migrate', '--dir', scratch.path, '--out', out]), 0);
    stdout.clear();
    expect(await run(['engine', '--project', out]), 0, reason: '$stderr');
    expect(stdout.toString().trim(), terraform);
  });

  test('migrate --report writes nothing', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_report_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    File(p.join(scratch.path, 'main.tf')).writeAsStringSync(
      'resource "google_pubsub_topic" "t" { name = "orders" }\n',
    );
    final project = TestProject.create();
    final r = await project.run([
      'migrate',
      '--report',
      '--dir',
      scratch.path,
    ], FakeRunner());
    expect(r.code, 0, reason: r.err);
    expect(r.out, contains('Nothing was written.'));
    expect(r.out, contains('terradart migrate'));
    expect(Directory(p.join(scratch.path, 'out')).existsSync(), isFalse);
  });

  test('migrate --report --json is the report, on stdout', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_report_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    File(p.join(scratch.path, 'main.tf')).writeAsStringSync(
      'resource "google_pubsub_topic" "t" { name = "orders" }\n',
    );
    final project = TestProject.create();
    final r = await project.run([
      'migrate',
      '--report',
      '--json',
      '--dir',
      scratch.path,
    ], FakeRunner());
    expect(r.code, 0, reason: r.err);
    final report = jsonDecode(r.out) as Map<String, Object?>;
    expect(report, isNot(contains('schemaVersion')));
    expect(r.out, contains('google_pubsub_topic'));
  });

  test('a global --json before migrate is the report too', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_report_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    File(p.join(scratch.path, 'main.tf')).writeAsStringSync(
      'resource "google_pubsub_topic" "t" { name = "orders" }\n',
    );
    final project = TestProject.create();
    final r = await project.run([
      '--json',
      'migrate',
      '--report',
      '--dir',
      scratch.path,
    ], FakeRunner());
    expect(r.code, 0, reason: r.err);
    final report = jsonDecode(r.out) as Map<String, Object?>;
    expect(report, isNot(contains('schemaVersion')));
    expect(r.out, contains('google_pubsub_topic'));
  });

  test('migrate --merge-envs is the same command as the library', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_merge_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    for (final env in ['dev', 'prod']) {
      final dir = Directory(p.join(scratch.path, 'envs', env))
        ..createSync(recursive: true);
      File(p.join(dir.path, 'main.tf')).writeAsStringSync('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic" "t" {
  name = "t-$env"
}
''');
    }
    final out = p.join(scratch.path, 'pkg');
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    final code = await runTerradart(
      [
        'migrate',
        '--dir',
        scratch.path,
        '--out',
        out,
        '--merge-envs',
        '--name',
        'app',
      ],
      runner: FakeRunner(),
      console: Console(out: stdout.writeln, err: stderr.writeln),
      workingDirectory: scratch.path,
      environment: const {'PATH': ''},
      dartExecutable: 'dart',
    );
    expect(code, 0, reason: '$stderr');
    final infra = File(p.join(out, 'bin/infra.dart')).readAsStringSync();
    expect(infra, contains('runEnvironments'));
    expect(infra, contains('Env.values'));
    expect(stdout.toString(), contains('terradart plan --env dev'));
  });

  test('a missing directory is a data error, not a missing project', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_missing_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    final code = await runTerradart(
      [
        'migrate',
        '--dir',
        p.join(scratch.path, 'nope'),
        '--out',
        p.join(scratch.path, 'out'),
      ],
      runner: FakeRunner(),
      console: Console(out: stdout.writeln, err: stderr.writeln),
      workingDirectory: scratch.path,
      environment: const {'PATH': ''},
      dartExecutable: 'dart',
    );
    expect(code, 65);
    expect(stderr.toString(), contains('is not a directory'));
    expect(stderr.toString(), isNot(contains('pubspec.yaml')));
  });

  test('usage errors exit 64', () async {
    final scratch = Directory.systemTemp.createTempSync('terradart_usage_');
    addTearDown(() => scratch.deleteSync(recursive: true));
    final stderr = StringBuffer();
    final code = await runTerradart(
      ['migrate'],
      runner: FakeRunner(),
      console: Console(out: (_) {}, err: stderr.writeln),
      workingDirectory: scratch.path,
      environment: const {'PATH': ''},
      dartExecutable: 'dart',
    );
    expect(code, 64);
    expect(stderr.toString(), contains('--dir and --out are required'));
  });
}
