import 'dart:convert';
import 'dart:io';

import 'package:terradart_cli/src/output/exit_codes.dart';
import 'package:test/test.dart';

import 'support.dart';

/// The one line `--json` prints on stdout.
Map<String, Object?> result(({int code, String out, String err}) r) {
  final lines = r.out.trim().split('\n');
  expect(lines, hasLength(1), reason: 'stdout:\n${r.out}\nstderr:\n${r.err}');
  return jsonDecode(lines.single) as Map<String, Object?>;
}

void main() {
  const envs = ['dev', 'stg'];

  FakeRunner envRunner({
    List<List<String>> planChanges = const [],
    Map<String, Object?> outputs = const {},
    String? failOn,
    int failCode = 1,
  }) => FakeRunner(
    synth: (args) => runEnvironmentsEntry(args, envs),
    planChanges: planChanges,
    outputs: outputs,
    failOn: failOn,
    failCode: failCode,
  );

  test('the exit codes are distinct, except the two usage errors', () {
    final byCode = <int, List<ExitCode>>{};
    for (final k in ExitCode.values) {
      (byCode[k.code] ??= []).add(k);
    }
    for (final MapEntry(key: code, value: kinds) in byCode.entries) {
      expect(
        kinds.length,
        code == 64 ? 2 : 1,
        reason: '$code: ${kinds.map((k) => k.error)}',
      );
    }
    expect(ExitCode.values.map((k) => k.error).toSet(), hasLength(11));
    expect(exitChanges, 2);
  });

  test('plan prints one result on stdout and the rest on stderr', () async {
    final project = TestProject.create();
    final runner = envRunner(
      planChanges: [
        ['create'],
        ['update'],
        ['delete', 'create'],
      ],
    );
    final r = await project.run(['plan', '--json', '--env', 'dev'], runner);
    expect(r.code, 0, reason: r.err);
    final json = result(r);
    expect(json, {
      'schemaVersion': 1,
      'command': 'plan',
      'ok': true,
      'exitCode': 0,
      'env': {'name': 'dev', 'source': 'flag'},
      'engine': {
        'kind': 'tofu',
        'version': '1.13.1',
        'source': 'path',
        'path': project.engine('tofu'),
      },
      'outDir': 'tf-out/dev',
      'plan': {'add': 1, 'change': 1, 'destroy': 0, 'replace': 1},
      'notices': <Object?>[],
      'next': ['terradart apply --env dev'],
    });
    expect(r.err, contains('> tofu plan -input=false -out='));
    expect(r.err, contains('env: dev (--env)'));
    expect(runner.calls.where((c) => c.streamed).map((c) => c.toStderr), [
      true,
      true,
      true,
    ]);
    expect(runner.engineCalls, contains(startsWith('show -json ')));
  });

  test('--json may come before the command', () async {
    final project = TestProject.create();
    final r = await project.run([
      '--json',
      'plan',
      '--env',
      'dev',
    ], envRunner());
    expect(r.code, 0, reason: r.err);
    final json = result(r);
    expect(json['command'], 'plan');
    expect(json['plan'], {'add': 0, 'change': 0, 'destroy': 0, 'replace': 0});
    expect(json['next'], isEmpty);
  });

  group('plan --detailed-exitcode', () {
    test('exits 2 with changes, still ok', () async {
      final project = TestProject.create();
      final runner = envRunner(
        planChanges: [
          ['create'],
        ],
      );
      final r = await project.run([
        'plan',
        '--env',
        'dev',
        '--detailed-exitcode',
        '--json',
      ], runner);
      expect(r.code, 2, reason: r.err);
      final json = result(r);
      expect(json['ok'], true);
      expect(json['exitCode'], 2);
      expect(runner.engineCalls, contains(contains('-detailed-exitcode')));
    });

    test('exits 0 without changes', () async {
      final project = TestProject.create();
      final r = await project.run([
        'plan',
        '--env',
        'dev',
        '--detailed-exitcode',
      ], envRunner());
      expect(r.code, 0, reason: r.err);
    });

    test('an engine failure is still 12', () async {
      final project = TestProject.create();
      final r = await project.run([
        'plan',
        '--env',
        'dev',
        '--detailed-exitcode',
      ], envRunner(failOn: 'plan'));
      expect(r.code, 12);
    });
  });

  test('apply without --auto-approve stops with exit code 3', () async {
    final project = TestProject.create();
    final r = await project.run([
      'apply',
      '--json',
      '--env',
      'dev',
    ], envRunner());
    expect(r.code, 3);
    final json = result(r);
    expect(json['ok'], false);
    expect(json['error'], {
      'code': 'input_required',
      'message': contains('--auto-approve'),
      'flag': '--auto-approve',
    });
    expect(json['next'], ['terradart apply --json --env dev --auto-approve']);
  });

  test('apply names the define keys, never their values', () async {
    final project = TestProject.create();
    final r = await project.run(
      ['apply', '--json', '--env', 'dev', '--auto-approve'],
      envRunner(
        outputs: {
          'dart_defines': {'API_URL': 'https://secret.example', 'KEY': 'k'},
        },
      ),
    );
    expect(r.code, 0, reason: r.err);
    final json = result(r);
    expect(json['defineFile'], '.terradart/dart_defines.dev.json');
    expect(json['keys'], ['API_URL', 'KEY']);
    expect(r.out, isNot(contains('secret.example')));
  });

  test('an unknown env is a project_config error with the choices', () async {
    final project = TestProject.create();
    final first = await project.run(['synth'], envRunner());
    expect(first.code, 0, reason: first.err);
    final again = await project.run([
      'plan',
      '--json',
      '--env',
      'qa',
      '--no-synth',
    ], envRunner());
    expect(again.code, 65);
    expect(result(again)['error'], {
      'code': 'project_config',
      'message': contains('Unknown environment "qa"'),
      'flag': '--env',
      'choices': envs,
    });
  });

  test('a missing --env is missing_flag, exit 64, with Next', () async {
    final project = TestProject.create();
    final r = await project.run(['plan', '--json'], envRunner());
    expect(r.code, 64);
    final json = result(r);
    expect((json['error'] as Map)['code'], 'missing_flag');
    expect(json['next'], ['terradart plan --json --env dev']);
  });

  test('a failing engine step is engine_failed with its code', () async {
    final project = TestProject.create();
    final r = await project.run([
      'plan',
      '--json',
      '--env',
      'dev',
    ], envRunner(failOn: 'init', failCode: 7));
    expect(r.code, 12);
    expect(result(r)['error'], {
      'code': 'engine_failed',
      'message': 'tofu init exited 7.',
      'engineExitCode': 7,
    });
  });

  test('a failing entry point is synth_failed', () async {
    final project = TestProject.create();
    final r = await project.run(
      ['synth', '--json'],
      FakeRunner(synth: (_) => (files: const {}, manifest: null, exitCode: 1)),
    );
    expect(r.code, 10);
    expect((result(r)['error'] as Map)['code'], 'synth_failed');
  });

  test('outside a project is no_project', () async {
    final project = TestProject.create();
    final elsewhere = Directory.systemTemp.createTempSync('no_project_');
    addTearDown(() => elsewhere.deleteSync(recursive: true));
    final r = await project.run([
      'plan',
      '--json',
      '-C',
      elsewhere.path,
    ], FakeRunner());
    expect(r.code, 66, reason: r.err);
    expect((result(r)['error'] as Map)['code'], 'no_project');
  });

  test('a usage error is usage, exit 64', () async {
    final project = TestProject.create();
    final r = await project.run(['plan', '--json', '--bogus'], FakeRunner());
    expect(r.code, 64);
    final json = result(r);
    expect(json['command'], 'plan');
    expect(json['error'], {'code': 'usage', 'message': contains('bogus')});
  });

  test('engine reports the engine it picked', () async {
    final project = TestProject.create();
    final r = await project.run(['engine', '--json'], FakeRunner());
    expect(r.code, 0, reason: r.err);
    final json = result(r);
    expect(json['command'], 'engine');
    expect(json['engine'], {
      'kind': 'tofu',
      'version': '1.13.1',
      'source': 'path',
      'path': project.engine('tofu'),
    });
    expect(r.err, contains(project.engine('tofu')));
  });

  test('--help with --json prints the usage on stderr', () async {
    final project = TestProject.create();
    for (final args in [
      ['plan', '--help', '--json'],
      ['--json', 'help', 'plan'],
    ]) {
      final r = await project.run(args, envRunner());
      expect(r.code, 0, reason: r.err);
      expect(result(r)['ok'], isTrue);
      expect(r.err, contains('Usage: terradart plan'));
    }
  });

  test('state migrate is one command path', () async {
    final project = TestProject.create();
    final r = await project.run([
      'state',
      'migrate',
      '--json',
    ], FakeRunner(synth: (_) => runStackEntry()));
    expect(r.code, 3, reason: r.err);
    expect(result(r)['command'], 'state migrate');
  });
}
