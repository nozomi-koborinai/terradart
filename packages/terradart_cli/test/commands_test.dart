import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/engine.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  const defines = {'API_URL': 'https://api.example.com', 'BUCKET': 'uploads'};

  test('synth runs the entry point with the arguments after --', () async {
    final project = TestProject.create();
    final runner = FakeRunner(synth: (_) => runStackEntry());
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
    final runner = FakeRunner(synth: (_) => runStackEntry());
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

  group('validate', () {
    test('synthesizes, then validates without the backend', () async {
      final project = TestProject.create();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['validate', '--', '-json'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.executable, 'dart');
      expect(runner.engineCalls, [
        'version -json',
        'init -backend=false -input=false',
        'validate -json',
      ]);
      expect(runner.calls.last.executable, project.engine('tofu'));
      expect(runner.calls.last.workingDirectory, project.path('tf-out'));
    });

    test('takes --env, and leaves its backend and workspace alone', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(
          args,
          ['dev', 'prod'],
          dir: (_) => 'tf-out',
          workspace: (e) => e,
          backendConfig: (e) => ['prefix=app-$e'],
        ),
      );
      final r = await project.run(['validate', '--env', 'prod'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.args, [
        'run',
        'bin/infra.dart',
        '--env',
        'prod',
      ]);
      expect(runner.engineCalls, [
        'version -json',
        'init -backend=false -input=false',
        'validate',
      ]);
      expect(File(project.path('.terradart/engines.json')).existsSync(), false);
    });

    test('several environments need --env', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, ['dev', 'prod']),
      );
      final r = await project.run(['validate'], runner);
      expect(r.code, 64);
      expect(
        r.err,
        contains('pass --env <name> or set TERRADART_ENV, one of dev, prod'),
      );
      expect(runner.engineCalls, isEmpty);
    });

    test('--no-synth validates what the last synth wrote', () async {
      final project = TestProject.create();
      File(project.path('tf-out/main.tf.json'))
        ..createSync(recursive: true)
        ..writeAsStringSync('{}');
      final runner = FakeRunner();
      final r = await project.run(['validate', '--no-synth'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.where((c) => c.executable == 'dart'), isEmpty);
      expect(runner.engineCalls.last, 'validate');
    });

    test('an invalid configuration exits with validate\'s code', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (_) => runStackEntry(),
        failOn: 'validate',
      );
      final r = await project.run(['validate'], runner);
      expect(r.code, 1);
      expect(r.err, contains('tofu validate exited 1'));
    });

    test('takes no --backend-config', () async {
      final project = TestProject.create();
      final r = await project.run([
        'validate',
        '--backend-config',
        'bucket=x',
      ], FakeRunner());
      expect(r.code, 64);
    });
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
    final runner = FakeRunner(synth: (_) => runStackEntry(), failOn: 'init');
    final r = await project.run(['apply'], runner);
    expect(r.code, 1);
    expect(r.err, contains('tofu init exited 1'));
    expect(runner.engineCalls, isNot(contains(startsWith('apply'))));
  });

  test('apply writes the define file and prints the flutter command', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => runStackEntry(dartDefines: ['dart_defines']),
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
    final runner = FakeRunner(synth: (_) => runStackEntry());
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
      synth: (_) => runStackEntry(dartDefines: ['dart_defines']),
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
    final runner = FakeRunner(synth: (_) => runStackEntry());
    final r = await project.run(['outputs', '--no-init'], runner);
    expect(r.code, 1);
    expect(r.err, contains('addDartDefineOutput()'));
  });

  test('outputs before any apply says to apply first', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (args) => runEnvironmentsEntry(args, ['dev', 'stg']),
    );
    final r = await project.run(['outputs', '--env', 'stg'], runner);
    expect(r.code, 1);
    expect(r.err, contains('terradart apply --env stg'));
  });

  test('--define-output and --define-file pick another output', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => runStackEntry(dartDefines: ['web', 'mobile_defines']),
      outputs: {'mobile_defines': defines, 'web': defines},
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
    expect(runner.engineCalls.last, 'output -json mobile_defines');
  });

  test('a named define output the Stack lacks fails before apply', () async {
    final project = TestProject.create(
      terradart: '  dart_defines:\n    output: mobile_defines\n',
    );
    final runner = FakeRunner(
      synth: (_) => runStackEntry(dartDefines: ['web_defines']),
    );
    for (final command in ['apply', 'outputs']) {
      final r = await project.run([command], runner);
      expect(r.code, 64, reason: command);
      expect(
        r.err,
        contains(
          'The Stack declares no dart-define output "mobile_defines"; it '
          'declares web_defines.',
        ),
      );
    }
    expect(runner.engineCalls, isEmpty);
  });

  test('takes the define output the Stack declares', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => runStackEntry(dartDefines: ['mobile_defines']),
      outputs: {'mobile_defines': defines},
    );
    final r = await project.run(['outputs'], runner);
    expect(r.code, 0, reason: r.err);
    expect(
      File(project.path('.terradart/mobile_defines.json')).existsSync(),
      isTrue,
    );
  });

  test('an entry point of its own still runs in tf-out', () async {
    final project = TestProject.create();
    final runner = FakeRunner(
      synth: (_) => plainEntry({
        'tf-out': mainTf(outputs: ['dart_defines']),
      }),
      outputs: {'dart_defines': defines},
    );
    final r = await project.run(['apply'], runner);
    expect(r.code, 0, reason: r.err);
    expect(runner.calls.last.workingDirectory, project.path('tf-out'));
    expect(
      File(project.path('.terradart/dart_defines.json')).existsSync(),
      isTrue,
    );
  });

  group('--env', () {
    const envs = ['dev', 'stg', 'prod'];

    test('one directory per environment (tf-out/<name>)', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs),
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
        runner.calls.first.environment,
        containsPair(
          'TERRADART_MANIFEST',
          project.path(p.join('.terradart', 'manifest.json')),
        ),
      );
      expect(runner.calls.last.workingDirectory, project.path('tf-out/stg'));
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

    test('a directory of its own per environment', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) =>
            runEnvironmentsEntry(args, envs, dir: (e) => 'infra/envs/$e'),
      );
      final r = await project.run(['plan', '--env', 'prod'], runner);
      expect(r.code, 0, reason: r.err);
      expect(
        runner.calls.last.workingDirectory,
        project.path(p.join('infra', 'envs', 'prod')),
      );
    });

    test('partial backend configuration per environment', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(
          args,
          envs,
          dir: (_) => 'tf-out',
          backendConfig: (e) => e == 'prod'
              ? ['bucket=prod-state', 'prefix=app']
              : ['backend/$e.gcs.tfbackend'],
        ),
      );
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
      expect(
        jsonDecode(
          File(
            project.path('tf-out/.terraform/terradart-env.json'),
          ).readAsStringSync(),
        ),
        {'environment': 'prod', 'workspace': null},
      );
    });

    test('outputs --no-init still switches the backend', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(
          args,
          envs,
          dir: (_) => 'tf-out',
          backendConfig: (e) => ['prefix=app-$e'],
        ),
        outputs: {'dart_defines': defines},
      );
      final r = await project.run([
        'outputs',
        '--env',
        'stg',
        '--no-init',
      ], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('Running init anyway'));
      expect(runner.engineCalls, [
        'version -json',
        'init -input=false -reconfigure -backend-config=prefix=app-stg',
        'output -json dart_defines',
      ]);
    });

    test('one workspace per environment', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(
          args,
          envs,
          dir: (_) => 'tf-out',
          workspace: (e) => e,
        ),
        outputs: {'dart_defines': defines},
      );
      final apply = await project.run([
        'apply',
        '--env',
        'prod',
        '--auto-approve',
      ], runner);
      expect(apply.code, 0, reason: apply.err);
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

    test('takes the names the entry point declares, not a fixed set', () async {
      final project = TestProject.create();
      const custom = ['qa', 'sandbox', 'prd', 'euWest1'];
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, custom),
        outputs: {'dart_defines': defines},
      );
      for (final env in custom) {
        final r = await project.run(['apply', '--env', env], runner);
        expect(r.code, 0, reason: r.err);
        expect(runner.calls.last.workingDirectory, project.path('tf-out/$env'));
        expect(
          File(project.path('.terradart/dart_defines.$env.json')).existsSync(),
          isTrue,
        );
      }
      final records =
          jsonDecode(
                File(
                  project.path('.terradart/engines.json'),
                ).readAsStringSync(),
              )
              as Map;
      expect(records.keys, [for (final e in custom) 'env:$e']);
    });

    test('an unknown name lists the known envs (--no-synth)', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, ['qa', 'sandbox', 'prd']),
      );
      expect((await project.run(['synth'], runner)).code, 0);
      final r = await project.run([
        'plan',
        '--no-synth',
        '--env',
        'staging',
      ], runner);
      expect(r.code, 64);
      expect(
        r.err,
        contains(
          'Unknown environment "staging" (--env); known envs: qa, sandbox, prd.',
        ),
      );
    });

    test('an unknown name fails the entry point', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, ['qa']),
      );
      final r = await project.run(['plan', '--env', 'staging'], runner);
      expect(r.code, 64);
      expect(r.err, contains('synth failed: bin/infra.dart exited 64'));
      expect(runner.engineCalls, isEmpty);
    });

    test('several environments need --env', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs),
      );
      final r = await project.run(['plan'], runner);
      expect(r.code, 64);
      expect(
        r.err,
        contains(
          'pass --env <name> or set TERRADART_ENV, one of dev, stg, prod',
        ),
      );
    });

    test('--env prints that it chose the env', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs, defaultEnv: 'dev'),
      );
      final r = await project.run(
        ['plan', '--env', 'prod'],
        runner,
        env: {'TERRADART_ENV': 'stg'},
      );
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.args, [
        'run',
        'bin/infra.dart',
        '--env',
        'prod',
      ]);
      expect(r.out, contains('env: prod (--env)'));
      expect(runner.calls.last.workingDirectory, project.path('tf-out/prod'));
    });

    test('TERRADART_ENV names the env without --env', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs, defaultEnv: 'dev'),
      );
      final r = await project.run(
        ['plan'],
        runner,
        env: {'TERRADART_ENV': 'stg'},
      );
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.args, [
        'run',
        'bin/infra.dart',
        '--env',
        'stg',
      ]);
      expect(r.out, contains('env: stg (TERRADART_ENV)'));
      expect(runner.calls.last.workingDirectory, project.path('tf-out/stg'));
    });

    test('an unknown TERRADART_ENV says where the name came from', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs),
      );
      final r = await project.run(
        ['plan'],
        runner,
        env: {'TERRADART_ENV': 'staging'},
      );
      expect(r.code, 64);
      expect(r.err, contains('(--env staging comes from TERRADART_ENV)'));
    });

    test('the defaultEnv of runEnvironments, without either', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs, defaultEnv: 'dev'),
      );
      final r = await project.run(['plan'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.calls.first.args, ['run', 'bin/infra.dart']);
      expect(r.out, contains('env: dev (default)'));
      expect(runner.calls.last.workingDirectory, project.path('tf-out/dev'));
    });

    test('the only environment, without either', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, ['dev']),
        outputs: {'dart_defines': defines},
      );
      final r = await project.run(['apply'], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('env: dev (only environment)'));
      expect(r.out, isNot(contains('Only "yes" is accepted')));
    });

    test('TERRADART_ENV is ignored by an entry point without envs', () async {
      final project = TestProject.create();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(
        ['apply'],
        runner,
        env: {'TERRADART_ENV': 'dev'},
      );
      expect(r.code, 0, reason: r.err);
      expect(
        r.out,
        contains(
          'TERRADART_ENV=dev ignored: bin/infra.dart declares no '
          'environments.',
        ),
      );
      expect(runner.calls.last.workingDirectory, project.path('tf-out'));
    });

    group('apply and destroy confirm an env the command line did not name', () {
      FakeRunner runner() => FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs, defaultEnv: 'dev'),
        outputs: {'dart_defines': defines},
      );

      for (final command in ['apply', 'destroy']) {
        test('$command runs on "yes" (default)', () async {
          final project = TestProject.create();
          final fake = runner();
          final r = await project.run([command], fake, input: ['yes']);
          expect(r.code, 0, reason: r.err);
          expect(
            r.out,
            contains(
              '${command[0].toUpperCase()}${command.substring(1)} environment '
              '"dev" (default)? Only "yes" is accepted:',
            ),
          );
          expect(fake.engineCalls, contains(startsWith(command)));
        });

        test('$command stops on any other answer (TERRADART_ENV)', () async {
          final project = TestProject.create();
          final fake = runner();
          final r = await project.run(
            [command],
            fake,
            env: {'TERRADART_ENV': 'prod'},
            input: ['y'],
          );
          expect(r.code, 1);
          expect(
            r.err,
            contains('Cancelled: did not $command environment "prod".'),
          );
          expect(fake.engineCalls, isEmpty);
        });

        test('$command without input fails before the engine', () async {
          final project = TestProject.create();
          final fake = runner();
          final r = await project.run([command], fake);
          expect(r.code, 1);
          expect(r.err, contains('pass --env dev, or --auto-approve'));
          expect(fake.engineCalls, isEmpty);
        });

        test('$command --auto-approve does not ask', () async {
          final project = TestProject.create();
          final fake = runner();
          final r = await project.run(
            [command, '--auto-approve'],
            fake,
            env: {'TERRADART_ENV': 'stg'},
          );
          expect(r.code, 0, reason: r.err);
          expect(r.out, isNot(contains('Only "yes" is accepted')));
          expect(fake.engineCalls, contains('$command -auto-approve'));
        });

        test('$command --env does not ask', () async {
          final project = TestProject.create();
          final fake = runner();
          final r = await project.run([command, '--env', 'dev'], fake);
          expect(r.code, 0, reason: r.err);
          expect(r.out, isNot(contains('Only "yes" is accepted')));
        });
      }
    });

    test('a migrated entry point of its own finds envs/<dir>', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (_) => plainEntry({
          'tf-out/envs/dev': mainTf(),
          'tf-out/envs/prod-eu': mainTf(),
        }),
      );
      final r = await project.run(['plan', '--env', 'prodEu'], runner);
      expect(r.code, 0, reason: r.err);
      expect(
        runner.calls.last.workingDirectory,
        project.path(p.join('tf-out', 'envs', 'prod-eu')),
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

    test('--engine replaces the engine_path of pubspec.yaml', () async {
      final project = TestProject.create(
        engines: ['tofu'],
        terradart: '  engine_path: tools/terraform\n',
      );
      Directory(project.path('tools')).createSync();
      fakeExecutable(project.path('tools'), 'terraform');
      final r = await project.run(['engine', '--engine', 'tofu'], FakeRunner());
      expect(r.code, 0, reason: r.err);
      expect(r.out.trim(), project.engine('tofu'));
    });

    test('--engine-path takes its kind from the file name', () async {
      final project = TestProject.create(
        engines: ['tofu'],
        terradart: '  engine: tofu\n',
      );
      Directory(project.path('tools')).createSync();
      final path = fakeExecutable(project.path('tools'), 'terraform');
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan', '--engine-path', path], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('Using Terraform'));
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
          synth: (_) => runStackEntry(),
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

  group('an Appwrite Stack', () {
    FakeRunner appwrite() => FakeRunner(
      synth: (_) => plainEntry({
        'tf-out': {
          'terraform': {
            'required_providers': {
              'appwrite': {'source': 'appwrite/appwrite', 'version': '1.0.0'},
            },
          },
        },
      }),
    );

    test('runs Terraform on PATH, not the tofu before it', () async {
      final project = TestProject.create(engines: ['tofu', 'terraform']);
      final runner = appwrite();
      final r = await project.run(['plan'], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('the Stack uses appwrite/appwrite'));
      expect(runner.calls.last.executable, project.engine('terraform'));
    });

    test('fails before init when only tofu is on PATH', () async {
      final project = TestProject.create(engines: ['tofu']);
      final runner = appwrite();
      final r = await project.run(['apply'], runner);
      expect(r.code, 1);
      expect(r.err, contains('Appwrite currently needs Terraform on PATH'));
      expect(r.err, contains('--engine terraform'));
      expect(runner.engineCalls, isEmpty);
    });

    test('fails before init when nothing is on PATH', () async {
      final project = TestProject.create(engines: []);
      final runner = appwrite();
      final r = await project.run(['plan'], runner);
      expect(r.code, 1);
      expect(r.err, contains('no terraform is on PATH'));
      expect(runner.engineCalls, isEmpty);
    });

    for (final (how, args, pubspec) in [
      ('--engine tofu', ['--engine', 'tofu'], ''),
      ('engine: tofu', <String>[], '  engine: tofu\n'),
    ]) {
      test('fails before init with $how', () async {
        final project = TestProject.create(
          engines: ['tofu', 'terraform'],
          terradart: pubspec,
        );
        final runner = appwrite();
        final r = await project.run(['plan', ...args], runner);
        expect(r.code, 1);
        expect(r.err, contains('the engine is set to tofu'));
        expect(r.err, contains('terradart.engine: terraform'));
        expect(runner.engineCalls, isEmpty);
      });
    }

    test('fails before init with a tofu engine_path', () async {
      final project = TestProject.create(engines: ['terraform']);
      Directory(project.path('tools')).createSync();
      final path = fakeExecutable(project.path('tools'), 'tofu');
      final runner = appwrite();
      final r = await project.run(['plan', '--engine-path', path], runner);
      expect(r.code, 1);
      expect(r.err, contains('is OpenTofu'));
      expect(runner.engineCalls, isEmpty);
    });

    test('names the registry address too', () {
      final dir = Directory.systemTemp.createTempSync('terradart_tf_');
      addTearDown(() => dir.deleteSync(recursive: true));
      File(p.join(dir.path, 'main.tf.json')).writeAsStringSync(
        jsonEncode({
          'terraform': [
            {
              'required_providers': {
                'aw': {'source': 'registry.terraform.io/Appwrite/appwrite'},
                'google': {'source': 'hashicorp/google'},
              },
            },
          ],
        }),
      );
      expect(terraformOnlyProviders(dir.path), ['appwrite/appwrite']);
    });
  });

  test('a usage error exits 64', () async {
    final project = TestProject.create();
    final r = await project.run(['apply', '--bogus'], FakeRunner());
    expect(r.code, 64);
  });
}
