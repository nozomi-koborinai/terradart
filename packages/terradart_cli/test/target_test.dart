import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/cli_exception.dart';
import 'package:terradart_cli/src/config.dart';
import 'package:terradart_cli/src/target.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  late Directory root;

  setUp(() => root = Directory.systemTemp.createTempSync('target_test_'));
  tearDown(() => root.deleteSync(recursive: true));

  ProjectConfig config(String yaml) =>
      ProjectConfig.parse(root.path, yaml.isEmpty ? null : loadYaml(yaml));

  void writeRoot(String rel) => File(p.join(root.path, rel, 'main.tf.json'))
    ..createSync(recursive: true)
    ..writeAsStringSync('{}');

  String abs(String rel) => p.normalize(p.join(root.path, rel));

  group('--env', () {
    test('lists the known envs when the name is not declared', () {
      expect(
        () => Target.resolve(
          config('environments: [qa, sandbox, prd]'),
          env: 'staging',
        ),
        throwsA(
          isA<CliException>()
              .having(
                (e) => e.message,
                'message',
                'Unknown environment "staging"; known envs: qa, sandbox, prd.',
              )
              .having((e) => e.exitCode, 'exitCode', 64),
        ),
      );
    });

    test('tells how to declare one when none is', () {
      expect(
        () => Target.resolve(config(''), env: 'qa'),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('declares none'),
          ),
        ),
      );
    });

    test('passes --env <name> to the entry point by default', () {
      final t = Target.resolve(
        config('environments: [sandbox]'),
        env: 'sandbox',
        entryArgs: ['--verbose'],
      );
      expect(t.entryArgs, ['--env', 'sandbox', '--verbose']);
    });

    test('passes the configured args instead', () {
      final t = Target.resolve(
        config('environments:\n  prd:\n    args: [--stage, production]\n'),
        env: 'prd',
      );
      expect(t.entryArgs, ['--stage', 'production']);
    });

    test('adds --workspace for a workspace', () {
      final t = Target.resolve(
        config('environments:\n  qa:\n    workspace: qa-ws\n'),
        env: 'qa',
      );
      expect(t.entryArgs, ['--env', 'qa', '--workspace', 'qa-ws']);
      expect(t.workspace, 'qa-ws');
      expect(
        Target.resolve(
          config('environments:\n  qa:\n    workspace: qa-ws\n'),
          env: 'qa',
          workspace: 'other',
        ).workspace,
        'other',
      );
    });

    test('names the define file after the environment', () {
      final c = config('environments: [qa, sandbox, eu-west.1]');
      expect(Target.resolve(c).defineFile, abs('.terradart/dart_defines.json'));
      expect(
        Target.resolve(c, env: 'sandbox').defineFile,
        abs('.terradart/dart_defines.sandbox.json'),
      );
      expect(
        Target.resolve(c, env: 'eu-west.1').defineFile,
        abs('.terradart/dart_defines.eu-west.1.json'),
      );
      expect(
        Target.resolve(c, env: 'qa', defineOutput: 'mobile_defines').defineFile,
        abs('.terradart/mobile_defines.qa.json'),
      );
      expect(
        Target.resolve(
          config(
            'dart_defines:\n  file: ../app/defines.json\n'
            'environments: [qa]\n',
          ),
          env: 'qa',
        ).defineFile,
        abs('../app/defines.qa.json'),
      );
    });

    test('makes a backend config file absolute and keeps a pair', () {
      final t = Target.resolve(
        config(
          'environments:\n  qa:\n    backend_config: backend/qa.tfbackend\n',
        ),
        env: 'qa',
        backendConfig: ['prefix=app'],
      );
      expect(t.backendConfigArgs, [
        '-backend-config=${abs('backend/qa.tfbackend')}',
        '-backend-config=prefix=app',
      ]);
    });
  });

  group('resolveDir', () {
    test('is tf-out without --env', () {
      writeRoot('tf-out');
      expect(Target.resolve(config('')).resolveDir(), abs('tf-out'));
    });

    test('asks for --env when only environment roots exist', () {
      writeRoot('tf-out/envs/qa');
      writeRoot('tf-out/envs/sandbox');
      expect(
        () => Target.resolve(config('')).resolveDir(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            allOf(contains('Pass --env'), contains('envs/sandbox')),
          ),
        ),
      );
    });

    test('finds tf-out/<name> (one parameterized Stack)', () {
      writeRoot('tf-out/qa');
      writeRoot('tf-out/sandbox');
      final c = config('environments: [qa, sandbox]');
      expect(
        Target.resolve(c, env: 'sandbox').resolveDir(),
        abs('tf-out/sandbox'),
      );
    });

    test('finds the one directory named after it (environment roots)', () {
      writeRoot('tf-out/envs/qa');
      writeRoot('tf-out/envs/sandbox');
      writeRoot('tf-out/modules/network');
      final c = config('environments: [qa, sandbox]');
      expect(Target.resolve(c, env: 'qa').resolveDir(), abs('tf-out/envs/qa'));
    });

    test('fails when two directories carry the name', () {
      writeRoot('tf-out/web/qa');
      writeRoot('tf-out/api/qa');
      expect(
        () => Target.resolve(
          config('environments: [qa]'),
          env: 'qa',
        ).resolveDir(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('set terradart.environments.qa.dir'),
          ),
        ),
      );
    });

    test('takes the configured dir', () {
      writeRoot('tf-out/stacks/sandbox-eu');
      final c = config(
        'environments:\n  sandbox:\n    dir: tf-out/stacks/sandbox-eu\n',
      );
      expect(
        Target.resolve(c, env: 'sandbox').resolveDir(),
        abs('tf-out/stacks/sandbox-eu'),
      );
    });

    test('shares tf-out when the env selects its state', () {
      writeRoot('tf-out');
      final c = config(
        'environments:\n'
        '  qa:\n    backend_config: backend/qa.tfbackend\n'
        '  sandbox:\n    workspace: sandbox\n'
        '  prd:\n',
      );
      expect(Target.resolve(c, env: 'qa').resolveDir(), abs('tf-out'));
      expect(Target.resolve(c, env: 'sandbox').resolveDir(), abs('tf-out'));
      expect(
        () => Target.resolve(c, env: 'prd').resolveDir(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('No Terraform directory for environment "prd"'),
          ),
        ),
      );
    });
  });

  test('keys the engine record by environment and workspace', () {
    final c = config('environments:\n  qa:\n    workspace: qa\n');
    expect(Target.resolve(c).stateKey(abs('tf-out')), 'tf-out');
    expect(
      Target.resolve(c, env: 'qa').stateKey(abs('tf-out')),
      'env:qa workspace:qa',
    );
  });
}
