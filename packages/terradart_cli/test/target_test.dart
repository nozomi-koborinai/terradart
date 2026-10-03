import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/cli_exception.dart';
import 'package:terradart_cli/src/config.dart';
import 'package:terradart_cli/src/manifest.dart';
import 'package:terradart_cli/src/target.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  late Directory root;

  setUp(() => root = Directory.systemTemp.createTempSync('target_test_'));
  tearDown(() => root.deleteSync(recursive: true));

  ProjectConfig config([String yaml = '']) =>
      ProjectConfig.parse(root.path, yaml.isEmpty ? null : loadYaml(yaml));

  void writeRoot(String rel) => File(p.join(root.path, rel, 'main.tf.json'))
    ..createSync(recursive: true)
    ..writeAsStringSync('{}');

  String abs(String rel) => p.normalize(p.join(root.path, rel));

  ManifestRoot mroot(
    String? env,
    String dir, {
    String? workspace,
    List<String> backendConfig = const [],
    List<String> dartDefines = const ['dart_defines'],
  }) => ManifestRoot(
    environment: env,
    dir: dir,
    workspace: workspace,
    backendConfig: backendConfig,
    dartDefines: dartDefines,
  );

  /// What runEnvironments writes with `--env` [selected].
  Manifest envs(List<String> names, String? selected) => Manifest(
    environments: names,
    selected: selected,
    roots: [
      for (final n in selected == null ? names : [selected])
        mroot(n, 'tf-out/$n'),
    ],
  );

  Matcher cliError(Object message, {int code = 1}) => throwsA(
    isA<CliException>()
        .having((e) => e.message, 'message', message)
        .having((e) => e.exitCode, 'exitCode', code),
  );

  group('Request', () {
    test('passes --env and --workspace to the entry point', () {
      expect(
        Request(config(), env: 'sandbox', entryArgs: ['--verbose']).entryArgs,
        ['--env', 'sandbox', '--verbose'],
      );
      expect(Request(config(), workspace: 'eu').entryArgs, [
        '--workspace',
        'eu',
      ]);
    });

    test('rejects a name that cannot name a file', () {
      expect(
        () => Request(config(), env: 'qa/eu'),
        cliError(contains('--env "qa/eu"'), code: 64),
      );
    });
  });

  group('with a runEnvironments manifest', () {
    const names = ['qa', 'sandbox', 'prd'];

    test('picks the --env root', () {
      final t = Request(
        config(),
        env: 'sandbox',
      ).resolve(envs(names, 'sandbox'));
      expect(t.environment, 'sandbox');
      expect(t.dir, abs('tf-out/sandbox'));
      expect(t.defineOutput, 'dart_defines');
      expect(t.declaresDefineOutput, isTrue);
      expect(t.defineFile, abs('.terradart/dart_defines.sandbox.json'));
      expect(t.stateKey, 'env:sandbox');
    });

    test('lists the known envs for an unknown one', () {
      expect(
        () => Request(config(), env: 'staging').resolve(envs(names, null)),
        cliError(
          'Unknown environment "staging" (--env); known envs: qa, sandbox, prd.',
          code: 64,
        ),
      );
    });

    test('asks for --env when there are several', () {
      expect(
        () => Request(config()).resolve(envs(names, null)),
        cliError(
          contains(
            '--env is required: bin/infra.dart declares qa, sandbox, prd and '
            'no defaultEnv.',
          ),
          code: 64,
        ),
      );
      expect(
        Request(config()).resolve(envs(['prd'], null)).environment,
        'prd',
        reason: 'one environment needs no --env',
      );
    });

    test('--env, then TERRADART_ENV, then defaultEnv, then the only one', () {
      Manifest withDefault(String? d) => Manifest(
        environments: names,
        selected: null,
        defaultEnv: d,
        roots: [for (final n in names) mroot(n, 'tf-out/$n')],
      );
      final flag = Request(config(), env: 'prd').resolve(withDefault('qa'));
      expect(
        (flag.environment, flag.environmentSource),
        ('prd', EnvSource.flag),
      );
      final variable = Request(
        config(),
        env: 'sandbox',
        envSource: EnvSource.variable,
      ).resolve(withDefault('qa'));
      expect(
        (variable.environment, variable.environmentSource),
        ('sandbox', EnvSource.variable),
      );
      final byDefault = Request(config()).resolve(withDefault('qa'));
      expect(
        (byDefault.environment, byDefault.environmentSource),
        ('qa', EnvSource.defaultEnv),
      );
      expect(byDefault.dir, abs('tf-out/qa'));
      final only = Request(config()).resolve(envs(['prd'], null));
      expect(only.environmentSource, EnvSource.only);
      expect(
        [for (final s in EnvSource.values) s.confirms],
        [false, true, true, false, false],
      );
    });

    test('an unknown TERRADART_ENV names the variable', () {
      expect(
        () => Request(
          config(),
          env: 'stg',
          envSource: EnvSource.variable,
        ).resolve(envs(names, null)),
        cliError(contains('"stg" (TERRADART_ENV)'), code: 64),
      );
      expect(
        () => Request(config(), env: 'a b', envSource: EnvSource.variable),
        cliError(startsWith('TERRADART_ENV "a b"'), code: 64),
      );
    });

    test('TERRADART_ENV does not apply to runStack', () {
      final t = Request(config(), env: 'dev', envSource: EnvSource.variable)
          .resolve(
            Manifest(
              environments: null,
              selected: null,
              roots: [mroot(null, 'tf-out')],
            ),
          );
      expect(t.environment, isNull);
      expect(t.ignoredEnv, 'dev');
      expect(t.dir, abs('tf-out'));
    });

    test('takes the workspace and backend config the entry point gives', () {
      final t = Request(config(), env: 'prd', backendConfig: ['prefix=app'])
          .resolve(
            Manifest(
              environments: names,
              selected: 'prd',
              roots: [
                mroot(
                  'prd',
                  'tf-out',
                  workspace: 'prd',
                  backendConfig: ['backend/prd.gcs.tfbackend'],
                ),
              ],
            ),
          );
      expect(t.dir, abs('tf-out'));
      expect(t.workspace, 'prd');
      expect(t.backendConfigArgs, [
        '-backend-config=${abs('backend/prd.gcs.tfbackend')}',
        '-backend-config=prefix=app',
      ]);
      expect(t.stateKey, 'env:prd workspace:prd');
      expect(
        Request(config(), env: 'prd', workspace: 'other')
            .resolve(
              Manifest(
                environments: names,
                selected: 'prd',
                roots: [mroot('prd', 'tf-out', workspace: 'prd')],
              ),
            )
            .workspace,
        'other',
      );
    });

    test('names the define file after the environment', () {
      Target t(String env, {String yaml = '', String? output}) => Request(
        config(yaml),
        env: env,
        defineOutput: output,
      ).resolve(envs(['eu-west.1', 'qa'], env));
      expect(
        t('eu-west.1').defineFile,
        abs('.terradart/dart_defines.eu-west.1.json'),
      );
      expect(
        t('qa', output: 'mobile_defines').defineFile,
        abs('.terradart/mobile_defines.qa.json'),
      );
      expect(t('qa', output: 'mobile_defines').declaresDefineOutput, isFalse);
      expect(
        t(
          'qa',
          yaml: 'dart_defines:\n  file: ../app/defines.json\n',
        ).defineFile,
        abs('../app/defines.qa.json'),
      );
    });

    test('picks the define output the Stack declares', () {
      Target t(List<String> defines) => Request(config()).resolve(
        Manifest(
          environments: null,
          selected: null,
          roots: [mroot(null, 'tf-out', dartDefines: defines)],
        ),
      );
      expect(t(['mobile_defines']).defineOutput, 'mobile_defines');
      expect(t(['web', 'dart_defines']).defineOutput, 'dart_defines');
      expect(t([]).defineOutput, isNull);
      expect(t([]).defineFile, isNull);
      expect(t(['web']).defineFile, abs('.terradart/web.json'));
    });
  });

  group('with a runStack manifest', () {
    final manifest = Manifest(
      environments: null,
      selected: null,
      roots: [mroot(null, 'infra/out')],
    );

    test('runs in its directory', () {
      final t = Request(config()).resolve(manifest);
      expect(t.dir, abs('infra/out'));
      expect(t.environment, isNull);
      expect(t.defineFile, abs('.terradart/dart_defines.json'));
      expect(t.stateKey, 'infra/out');
    });

    test('rejects --env', () {
      expect(
        () => Request(config(), env: 'qa').resolve(manifest),
        cliError(contains('declares no environments'), code: 64),
      );
    });
  });

  group('without a manifest', () {
    test('is tf-out without --env', () {
      writeRoot('tf-out');
      final t = Request(config()).resolve(null);
      expect(t.dir, abs('tf-out'));
      expect(t.declaresDefineOutput, isNull);
    });

    test('asks for --env when only environment roots exist', () {
      writeRoot('tf-out/envs/qa');
      writeRoot('tf-out/envs/sandbox');
      expect(
        () => Request(config()).resolve(null),
        cliError(
          allOf(contains('--env is required'), contains('sandbox')),
          code: 64,
        ),
      );
    });

    test('finds the directory a migrated Env member names', () {
      writeRoot('tf-out/envs/qa');
      writeRoot('tf-out/envs/prod-eu');
      writeRoot('tf-out/modules/network');
      expect(
        Request(config(), env: 'prodEu').resolve(null).dir,
        abs('tf-out/envs/prod-eu'),
      );
      expect(
        Request(config(), env: 'qa').resolve(null).defineFile,
        abs('.terradart/dart_defines.qa.json'),
      );
    });

    test('points at runEnvironments when it cannot tell', () {
      writeRoot('tf-out/web/qa');
      writeRoot('tf-out/api/qa');
      expect(
        () => Request(config(), env: 'qa').resolve(null),
        cliError(contains('Declare the environments with runEnvironments')),
      );
      expect(
        () => Request(config(), env: 'sandbox').resolve(null),
        cliError(contains('No Terraform directory for environment "sandbox"')),
      );
    });
  });
}
