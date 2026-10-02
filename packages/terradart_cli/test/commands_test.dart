import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'support.dart';

void main() {
  const defines = {'API_URL': 'https://api.example.com', 'BUCKET': 'uploads'};

  test('synth runs the entry point with the arguments after --', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => {'tf-out': mainTf()});
    final r = await project.run(['synth', '--', '--region', 'eu'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.calls.single.executable, 'dart');
    expect(runner.calls.single.args, [
      'run',
      'bin/infra.dart',
      '--region',
      'eu',
    ]);
    expect(runner.calls.single.workingDirectory, project.root);
  });

  test('synth names a missing entry point', () async {
    final project = TestProject.create(terradart: '  entrypoint: infra.dart\n');
    final r = await project.run(['synth'], FakeRunner());
    expect(r.code, 64);
    expect(r.err, contains('No infra.dart'));
  });

  test('plan synthesizes, then runs init and plan in tf-out', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => {'tf-out': mainTf()});
    final r = await project.run(['plan', '--', '-target=a.b'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.engineCalls, [
      'version -json',
      'init -input=false',
      'plan -input=false -target=a.b',
    ]);
    final plan = runner.calls.last;
    expect(plan.executable, project.engine('tofu'));
    expect(plan.workingDirectory, project.path('tf-out'));
    expect(r.out, contains('Using OpenTofu 1.13.1 (tofu on PATH)'));
  });

  test('plan --no-synth skips the entry point', () async {
    final project = TestProject.create();
    File(project.path('tf-out/main.tf.json'))
      ..createSync(recursive: true)
      ..writeAsStringSync('{}');
    final runner = FakeRunner();
    final r = await project.run(['plan', '--no-synth'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.calls.where((c) => c.executable == 'dart'), isEmpty);
  });

  test('a failing engine step stops with its exit code', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => {'tf-out': mainTf()},
      failOn: 'init',
    );
    final r = await project.run(['apply'], runner);
    expect(r.code, 1);
    expect(r.err, contains('tofu init exited 1'));
    expect(runner.engineCalls, isNot(contains(startsWith('apply'))));
  });

  test('apply writes the define file and prints the flutter command', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => {
        'tf-out': mainTf(outputs: ['api_url', 'dart_defines']),
      },
      outputs: {'dart_defines': defines},
    );
    final r = await project.run(['apply', '--auto-approve'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.engineCalls, [
      'version -json',
      'init -input=false',
      'apply -auto-approve',
      'output -json dart_defines',
    ]);
    final file = File(project.path('.terradart/dart_defines.json'));
    expect(jsonDecode(file.readAsStringSync()), defines);
    expect(
      File(project.path('.terradart/.gitignore')).readAsStringSync(),
      '*\n',
    );
    final shown = p.join('.terradart', 'dart_defines.json');
    expect(r.out, contains('Wrote 2 dart-defines to $shown'));
    expect(r.out, contains('flutter run --dart-define-from-file=$shown'));
    expect(r.out, contains('flutter build <target> --dart-define-from-file'));
  });

  test('apply skips the define file when the Stack declares none', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => {'tf-out': mainTf()});
    final r = await project.run(['apply'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.engineCalls.last, 'apply');
    expect(
      File(project.path('.terradart/dart_defines.json')).existsSync(),
      isFalse,
    );
  });

  test('outputs writes the define file without applying', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => {
        'tf-out': mainTf(outputs: ['dart_defines']),
      },
      outputs: {'dart_defines': defines},
    );
    final r = await project.run(['outputs'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.engineCalls, [
      'version -json',
      'init -input=false',
      'output -json dart_defines',
    ]);
    expect(
      File(project.path('.terradart/dart_defines.json')).existsSync(),
      isTrue,
    );
  });

  test('outputs tells how to declare a missing define output', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => {'tf-out': mainTf()});
    final r = await project.run(['outputs', '--no-init'], runner);
    expect(r.code, 1);
    expect(r.err, contains('addDartDefineOutput()'));
  });

  test('outputs before any apply says to apply first', () async {
    final project = TestProject.create(terradart: '  environments: [stg]\n');
    final runner = FakeRunner(
      synth: (_) => {
        'tf-out/stg': mainTf(outputs: ['dart_defines']),
      },
    );
    final r = await project.run(['outputs', '--env', 'stg'], runner);
    expect(r.code, 1);
    expect(r.err, contains('terradart apply --env stg'));
  });

  test('--define-output and --define-file pick another output', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => {
        'tf-out': mainTf(outputs: ['mobile_defines']),
      },
      outputs: {'mobile_defines': defines},
    );
    final r = await project.run([
      'outputs',
      '--define-output',
      'mobile_defines',
      '--define-file',
      'app/defines.json',
    ], runner);
    expect(r.code, 0, reason: r.err);
    expect(File(project.path('app/defines.json')).existsSync(), isTrue);
  });

  group('--env', () {
    test('A: one environment root per directory', () async {
      final project = TestProject.create(
        terradart: '  environments: [dev, stg, prod]\n',
      );
      final runner = FakeRunner(
        synth: (_) => {
          for (final env in ['dev', 'stg', 'prod'])
            'tf-out/envs/$env': mainTf(outputs: ['dart_defines']),
        },
        outputs: {'dart_defines': defines},
      );
      final r = await project.run(['apply', '--env', 'stg'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.args, [
        'run',
        'bin/infra.dart',
        '--env',
        'stg',
      ]);
      expect(
        runner.calls.last.workingDirectory,
        project.path(p.join('tf-out', 'envs', 'stg')),
      );
      expect(
        File(project.path('.terradart/dart_defines.stg.json')).existsSync(),
        isTrue,
      );
      expect(
        r.out,
        contains(
          '--dart-define-from-file='
          '${p.join('.terradart', 'dart_defines.stg.json')}',
        ),
      );
    });

    test('B: one parameterized Stack writing tf-out/<env>', () async {
      final project = TestProject.create(
        terradart: '  environments: [dev, stg, prod]\n',
      );
      final runner = FakeRunner(
        synth: (args) => {'tf-out/${args[1]}': mainTf()},
      );
      final r = await project.run(['plan', '--env', 'prod'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.last.workingDirectory, project.path('tf-out/prod'));
      expect(runner.engineCalls, contains('init -input=false'));
    });

    test('C: partial backend configuration per environment', () async {
      final project = TestProject.create(
        terradart:
            '  environments:\n'
            '    dev:\n      backend_config: backend/dev.gcs.tfbackend\n'
            '    stg:\n      backend_config: backend/stg.gcs.tfbackend\n'
            '    prod:\n      backend_config: [bucket=prod-state, prefix=app]\n',
      );
      final runner = FakeRunner(synth: (_) => {'tf-out': mainTf()});
      expect((await project.run(['plan', '--env', 'dev'], runner)).code, 0);
      expect((await project.run(['plan', '--env', 'prod'], runner)).code, 0);
      final inits = [
        for (final c in runner.engineCalls)
          if (c.startsWith('init')) c,
      ];
      expect(inits, [
        'init -input=false -reconfigure '
            '-backend-config=${project.path(p.join('backend', 'dev.gcs.tfbackend'))}',
        'init -input=false -reconfigure '
            '-backend-config=bucket=prod-state -backend-config=prefix=app',
      ]);
    });

    test('D: one workspace per environment', () async {
      final project = TestProject.create(
        terradart:
            '  environments:\n'
            '    dev:\n      workspace: dev\n'
            '    stg:\n      workspace: stg\n'
            '    prod:\n      workspace: prod\n',
      );
      final runner = FakeRunner(
        synth: (_) => {
          'tf-out': mainTf(outputs: ['dart_defines']),
        },
        outputs: {'dart_defines': defines},
      );
      final apply = await project.run([
        'apply',
        '--env',
        'prod',
        '--auto-approve',
      ], runner);
      expect(apply.code, 0, reason: apply.err);
      expect(runner.calls.first.args, [
        'run',
        'bin/infra.dart',
        '--env',
        'prod',
        '--workspace',
        'prod',
      ]);
      expect(runner.engineCalls, [
        'version -json',
        'init -input=false',
        'workspace select -or-create=true prod',
        'apply -auto-approve',
        'output -json dart_defines',
      ]);
      runner.calls.clear();
      final outputs = await project.run(['outputs', '--env', 'prod'], runner);
      expect(outputs.code, 0, reason: outputs.err);
      expect(runner.engineCalls, contains('workspace select prod'));
      expect(
        File(project.path('.terradart/dart_defines.prod.json')).existsSync(),
        isTrue,
      );
    });

    test('takes user-defined names, not a fixed set', () async {
      final project = TestProject.create(
        terradart:
            '  environments:\n'
            '    qa:\n'
            '    sandbox:\n      args: [--target, sandbox-eu]\n'
            '    prd:\n',
      );
      final runner = FakeRunner(
        synth: (args) => {
          'tf-out/${args.last == 'sandbox-eu' ? 'sandbox' : args.last}': mainTf(
            outputs: ['dart_defines'],
          ),
        },
        outputs: {'dart_defines': defines},
      );
      final r = await project.run(['apply', '--env', 'sandbox'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.args, [
        'run',
        'bin/infra.dart',
        '--target',
        'sandbox-eu',
      ]);
      expect(
        File(project.path('.terradart/dart_defines.sandbox.json')).existsSync(),
        isTrue,
      );

      final unknown = await project.run(['apply', '--env', 'staging'], runner);
      expect(unknown.code, 64);
      expect(
        unknown.err,
        contains(
          'Unknown environment "staging"; known envs: qa, sandbox, prd.',
        ),
      );
    });
  });

  group('engine', () {
    test('prefers tofu, then terraform, on PATH', () async {
      final both = TestProject.create(engines: ['terraform', 'tofu']);
      final r = await both.run(['engine'], FakeRunner());
      expect(r.out.trim(), both.engine('tofu'));
      final terraformOnly = TestProject.create(engines: ['terraform']);
      final t = await terraformOnly.run(['engine'], FakeRunner());
      expect(t.out.trim(), terraformOnly.engine('terraform'));
    });

    test('--engine terraform fails when terraform is not on PATH', () async {
      final project = TestProject.create(engines: ['tofu']);
      final r = await project.run([
        'engine',
        '--engine',
        'terraform',
      ], FakeRunner());
      expect(r.code, 1);
      expect(r.err, contains('no terraform is on PATH'));
    });

    test('engine_path wins', () async {
      final project = TestProject.create(
        engines: ['tofu'],
        terradart: '  engine_path: tools/terraform\n',
      );
      Directory(project.path('tools')).createSync();
      final path = fakeExecutable(project.path('tools'), 'terraform');
      final r = await project.run(['engine'], FakeRunner());
      expect(r.out.trim(), path);
    });

    test(
      'keeps the engine that applied the state, and warns on a switch',
      () async {
        final project = TestProject.create(engines: ['terraform', 'tofu']);
        final runner = FakeRunner(
          synth: (_) => {'tf-out': mainTf()},
          engineVersion: '1.16.4',
        );
        final first = await project.run([
          'apply',
          '--engine',
          'terraform',
        ], runner);
        expect(first.code, 0, reason: first.err);
        final records = jsonDecode(
          File(project.path('.terradart/engines.json')).readAsStringSync(),
        );
        expect(records, {
          'tf-out': {'engine': 'terraform', 'version': '1.16.4'},
        });

        runner.calls.clear();
        final again = await project.run(['plan'], runner);
        expect(again.code, 0, reason: again.err);
        expect(runner.calls.last.executable, project.engine('terraform'));
        expect(again.err, isEmpty);

        final switched = await project.run([
          'plan',
          '--engine',
          'tofu',
        ], runner);
        expect(switched.code, 0, reason: switched.err);
        expect(
          switched.err,
          contains('This state was last applied with Terraform 1.16.4'),
        );
      },
    );
  });

  test('a usage error exits 64', () async {
    final project = TestProject.create();
    final r = await project.run(['apply', '--bogus'], FakeRunner());
    expect(r.code, 64);
  });
}
