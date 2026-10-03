import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'support.dart';

/// `runStack` writing a `main.tf.json` whose backend is [backend].
FakeSynth _withBackend(Map<String, Object?>? backend) {
  final entry = runStackEntry();
  return (
    files: {
      'tf-out': {
        'terraform': {'required_version': '>= 1.11.0', 'backend': ?backend},
      },
    },
    manifest: entry.manifest,
    exitCode: 0,
  );
}

const _gcs = {
  'gcs': {'bucket': 'acme-tfstate', 'prefix': 'app'},
};

void main() {
  test('asks on a terminal, then runs init -migrate-state', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(
      ['state', 'migrate'],
      runner,
      input: const ['yes'],
    );
    if (!stdin.hasTerminal) {
      expect(r.code, 64);
      expect(r.err, contains('Pass --auto-approve'));
      expect(runner.engineCalls, isEmpty);
      return;
    }
    expect(r.code, 0, reason: r.err);
    expect(
      r.out,
      contains(
        'Copy the state in tf-out from the local backend to the gcs backend '
        'the Stack configures?',
      ),
    );
    expect(runner.calls.first.executable, 'dart');
    expect(runner.engineCalls, [
      'version -json',
      'init -input=false -migrate-state -force-copy',
    ]);
    expect(r.out, contains('Moved the state to the gcs backend.'));
  });

  test('a no stops before the engine runs', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(
      ['state', 'migrate'],
      runner,
      input: const ['no'],
    );
    if (!stdin.hasTerminal) {
      expect(r.code, 64);
      expect(runner.engineCalls, isEmpty);
      return;
    }
    expect(r.code, 1);
    expect(r.err, contains('Stopped; the state did not move.'));
    expect(runner.engineCalls, isEmpty);
  });

  test('without a terminal it needs --auto-approve', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(['state', 'migrate'], runner);
    expect(r.code, 64);
    expect(r.err, contains('Pass --auto-approve'));
    expect(runner.engineCalls, isEmpty);

    final approved = await project.run([
      'state',
      'migrate',
      '--auto-approve',
    ], runner);
    expect(approved.code, 0, reason: approved.err);
    expect(
      runner.engineCalls.last,
      'init -input=false -migrate-state -force-copy',
    );
  });

  test('moves a remote state back to a local file', () async {
    final project = TestProject.create();
    File(project.path('tf-out/.terraform/terraform.tfstate'))
      ..createSync(recursive: true)
      ..writeAsStringSync(
        jsonEncode({
          'backend': {'type': 'gcs'},
        }),
      );
    final runner = FakeRunner(synth: (_) => _withBackend(null));
    final r = await project.run(
      ['state', 'migrate'],
      runner,
      input: const ['yes'],
    );
    if (!stdin.hasTerminal) {
      expect(r.code, 64);
      return;
    }
    expect(r.code, 0, reason: r.err);
    expect(r.out, contains('from the gcs backend to the local'));
  });

  test('--env passes the environment and its backend configuration', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (args) => runEnvironmentsEntry(
        args,
        ['dev', 'prod'],
        dir: (_) => 'tf-out',
        backendConfig: (env) => ['backend/$env.gcs.tfbackend'],
      ),
    );
    final r = await project.run([
      'state',
      'migrate',
      '--env',
      'prod',
      '--auto-approve',
    ], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.calls.first.args, ['run', 'bin/infra.dart', '--env', 'prod']);
    expect(
      runner.engineCalls.last,
      'init -input=false -migrate-state -force-copy '
      '-backend-config=${project.path('backend/prod.gcs.tfbackend')}',
    );
  });

  test('takes no engine arguments', () async {
    final project = TestProject.create();
    final r = await project.run([
      'state',
      'migrate',
      '--',
      '-lock=false',
    ], FakeRunner(synth: (_) => runStackEntry()));
    expect(r.code, 64);
  });
}
