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

/// A shared `tf-out` whose per-env backend is a file plus a `prefix` pair.
FakeSynth _sharedGcs(List<String> args) {
  final entry = runEnvironmentsEntry(
    args,
    ['dev', 'prod'],
    dir: (_) => 'tf-out',
    backendConfig: (env) => ['backend/$env.gcs.tfbackend', 'prefix=from-pair'],
  );
  return (
    files: {
      for (final dir in entry.files.keys)
        dir: {
          'terraform': {
            'required_version': '>= 1.11.0',
            'backend': {
              'gcs': {'bucket': 'shared', 'prefix': 'base'},
            },
          },
        },
    },
    manifest: entry.manifest,
    exitCode: entry.exitCode,
  );
}

void _recordInit(
  TestProject project, {
  required String env,
  required String bucket,
  required String prefix,
}) {
  File(project.path('tf-out/.terraform/terraform.tfstate'))
    ..createSync(recursive: true)
    ..writeAsStringSync(
      jsonEncode({
        'backend': {
          'type': 'gcs',
          'config': {
            'bucket': bucket,
            'prefix': prefix,
            'credentials': 'sekret',
            'access_token': null,
          },
        },
      }),
    );
  File(project.path('tf-out/.terraform/terradart-env.json')).writeAsStringSync(
    '${jsonEncode({'environment': env, 'workspace': null})}\n',
  );
}

void main() {
  test('asks on a terminal, then runs init -migrate-state', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(['state', 'migrate'], runner, input: ['y']);
    expect(r.code, 0, reason: r.err);
    expect(
      r.out,
      contains(
        'Copy the state in tf-out from local to gcs '
        '(bucket=acme-tfstate, prefix=app)? [y/N]',
      ),
    );
    expect(runner.calls.first.executable, 'dart');
    expect(runner.engineCalls, [
      'version -json',
      'init -input=false -migrate-state -force-copy',
    ]);
    expect(
      r.out,
      contains('Moved the state to gcs (bucket=acme-tfstate, prefix=app).'),
    );
  });

  test('a no stops before the engine runs', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(['state', 'migrate'], runner, input: ['n']);
    expect(r.code, 1);
    expect(r.err, contains('Stopped; the state did not move.'));
    expect(runner.engineCalls, isEmpty);
  });

  test('without a terminal it needs --auto-approve', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(['state', 'migrate'], runner);
    expect(r.code, 3);
    expect(r.err, contains('Pass --auto-approve'));
    expect(r.err, contains('  Next: terradart state migrate --auto-approve'));
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

  test('names the initialized bucket and prefix, not only the type', () async {
    final project = TestProject.create();
    File(project.path('tf-out/.terraform/terraform.tfstate'))
      ..createSync(recursive: true)
      ..writeAsStringSync(
        jsonEncode({
          'backend': {
            'type': 'gcs',
            'config': {
              'bucket': 'acme-old',
              'prefix': 'dev',
              'key': 'states/app.tfstate',
              'credentials': 'sekret',
              'encryption_key': 'also-sekret',
              'access_token': null,
            },
          },
        }),
      );
    final runner = FakeRunner(synth: (_) => _withBackend(_gcs));
    final r = await project.run(['state', 'migrate'], runner, input: ['y']);
    expect(r.code, 0, reason: r.err);
    expect(
      r.out,
      contains(
        'from gcs (bucket=acme-old, key=states/app.tfstate, prefix=dev) '
        'to gcs (bucket=acme-tfstate, prefix=app)?',
      ),
    );
    expect(r.out, isNot(contains('sekret')));
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
          'backend': {
            'type': 'gcs',
            'config': {'bucket': 'acme-old'},
          },
        }),
      );
    final runner = FakeRunner(synth: (_) => _withBackend(null));
    final r = await project.run(['state', 'migrate'], runner, input: ['y']);
    expect(r.code, 0, reason: r.err);
    expect(r.out, contains('from gcs (bucket=acme-old) to local'));
  });

  test('--env with no init record refuses before copying', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: _sharedGcs);
    final r = await project.run([
      'state',
      'migrate',
      '--env',
      'prod',
      '--auto-approve',
    ], runner);
    expect(r.code, 64);
    expect(r.err, contains('terradart plan --env prod'));
    expect(r.err, contains('cannot tell which environment'));
    expect(runner.engineCalls, isEmpty);
  });

  test('--env refuses when the last init was another environment', () async {
    final project = TestProject.create();
    _recordInit(project, env: 'dev', bucket: 'acme-dev', prefix: 'dev');
    final runner = FakeRunner(synth: _sharedGcs);
    final r = await project.run([
      'state',
      'migrate',
      '--env',
      'prod',
      '--auto-approve',
    ], runner);
    expect(r.code, 64);
    expect(r.err, contains('environment "dev", not "prod"'));
    expect(r.err, contains('terradart plan --env prod'));
    expect(runner.engineCalls, isEmpty);
    expect(
      jsonDecode(
        File(
          project.path('tf-out/.terraform/terradart-env.json'),
        ).readAsStringSync(),
      ),
      containsPair('environment', 'dev'),
    );
  });

  test('an unreadable init record is the same refusal', () async {
    final project = TestProject.create();
    File(project.path('tf-out/.terraform/terradart-env.json'))
      ..createSync(recursive: true)
      ..writeAsStringSync('{');
    final runner = FakeRunner(synth: _sharedGcs);
    final r = await project.run([
      'state',
      'migrate',
      '--env',
      'prod',
      '--auto-approve',
    ], runner);
    expect(r.code, 64);
    expect(r.err, contains('cannot tell which environment'));
    expect(r.err, contains('terradart plan --env prod'));
    expect(runner.engineCalls, isEmpty);
  });

  test('--env copies when the last init was that environment', () async {
    final project = TestProject.create();
    _recordInit(project, env: 'prod', bucket: 'acme-old', prefix: 'prod');
    File(project.path('backend/prod.gcs.tfbackend'))
      ..createSync(recursive: true)
      ..writeAsStringSync(
        '# prod state\nbucket = "acme-prod"\nprefix = "from-file"\n',
      );
    final runner = FakeRunner(synth: _sharedGcs);
    final r = await project.run(
      ['state', 'migrate', '--env', 'prod'],
      runner,
      input: ['y'],
    );
    expect(r.code, 0, reason: r.err);
    expect(
      r.out,
      contains(
        'from gcs (bucket=acme-old, prefix=prod) '
        'to gcs (bucket=acme-prod, prefix=from-pair)?',
      ),
    );
    expect(r.out, isNot(contains('sekret')));
    expect(runner.calls.first.args, ['run', 'bin/infra.dart', '--env', 'prod']);
    expect(
      runner.engineCalls.last,
      'init -input=false -migrate-state -force-copy '
      '-backend-config=${project.path('backend/prod.gcs.tfbackend')} '
      '-backend-config=prefix=from-pair',
    );
    expect(
      jsonDecode(
        File(
          project.path('tf-out/.terraform/terradart-env.json'),
        ).readAsStringSync(),
      ),
      containsPair('environment', 'prod'),
    );
  });

  test('a JSON backend file overrides the block and hides secrets', () async {
    final project = TestProject.create();
    _recordInit(project, env: 'prod', bucket: 'acme-old', prefix: 'prod');
    File(project.path('backend/prod.json'))
      ..createSync(recursive: true)
      ..writeAsStringSync(
        jsonEncode({
          'bucket': 'from-json',
          'prefix': 'json-prefix',
          'token': 'sekret',
        }),
      );
    final runner = FakeRunner(
      synth: (args) {
        final entry = runEnvironmentsEntry(
          args,
          ['dev', 'prod'],
          dir: (_) => 'tf-out',
          backendConfig: (env) => ['backend/$env.json'],
        );
        return (
          files: {
            for (final dir in entry.files.keys)
              dir: {
                'terraform': {
                  'required_version': '>= 1.11.0',
                  'backend': {
                    'gcs': {'bucket': 'shared'},
                  },
                },
              },
          },
          manifest: entry.manifest,
          exitCode: entry.exitCode,
        );
      },
    );
    final r = await project.run([
      'state',
      'migrate',
      '--env',
      'prod',
      '--auto-approve',
    ], runner);
    expect(r.code, 0, reason: r.err);
    expect(
      r.out,
      contains(
        'Moved the state to gcs (bucket=from-json, prefix=json-prefix).',
      ),
    );
    expect(r.out, isNot(contains('sekret')));
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
