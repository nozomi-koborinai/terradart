@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

import 'init_support.dart';

/// The real loop on the host OS: the pinned OpenTofu downloaded into an
/// empty cache, a Stack per environment synthesized by `runEnvironments`
/// in `dart run`, then init, apply (a local-state `time_sleep`, no cloud),
/// outputs and destroy. The environment enum mixes a local backend with a
/// GCS one, which is only synthesized and validated.
void main() {
  final packages = p.normalize(p.join(Directory.current.path, '..'));

  test('apply, outputs and destroy with the managed OpenTofu', () async {
    final root = Directory.systemTemp.createTempSync('terradart_cli_e2e_');
    addTearDown(() => root.deleteSync(recursive: true));
    _project(root.path, packages);

    final environment = {
      ...Platform.environment,
      'TERRADART_CACHE_DIR': p.join(root.path, '.cache'),
    };
    final log = StringBuffer();
    Future<void> terradart(List<String> args) async {
      final code = await runTerradart(
        [...args, '--engine', 'tofu', '--project', root.path],
        workingDirectory: root.path,
        environment: environment,
        console: Console(
          out: (m) {
            log.writeln(m);
            stdout.writeln(m);
          },
          err: (m) {
            log.writeln(m);
            stderr.writeln(m);
          },
        ),
      );
      expect(code, 0, reason: '$log');
    }

    final unknown = await runTerradart(
      ['plan', '--env', 'staging', '--project', root.path],
      workingDirectory: root.path,
      environment: environment,
      console: Console(out: log.writeln, err: log.writeln),
    );
    expect(unknown, 64);

    await terradart(['synth', '--env', 'prd']);
    final prd =
        jsonDecode(
              File(
                p.join(root.path, 'tf-out', 'prd', 'main.tf.json'),
              ).readAsStringSync(),
            )
            as Map;
    expect((prd['terraform'] as Map)['backend'], {
      'gcs': {'bucket': 'acme-prd-state', 'prefix': 'hello'},
    });

    await terradart(['validate', '--env', 'prd', '--no-synth']);
    final broken = File(p.join(root.path, 'tf-out', 'prd', 'broken.tf.json'))
      ..writeAsStringSync(
        jsonEncode({
          'output': {
            'missing': {'value': r'${time_sleep.missing.id}'},
          },
        }),
      );
    final invalid = await runTerradart(
      [
        'validate',
        '--env',
        'prd',
        '--no-synth',
        '--engine',
        'tofu',
        '--project',
        root.path,
      ],
      workingDirectory: root.path,
      environment: environment,
      console: Console(out: log.writeln, err: log.writeln),
    );
    expect(invalid, isNot(0));
    expect(log.toString(), contains('tofu validate exited'));
    broken.deleteSync();

    await terradart(['apply', '--env', 'qa', '--auto-approve']);
    final defines = File(
      p.join(root.path, '.terradart', 'dart_defines.qa.json'),
    );
    final values = jsonDecode(defines.readAsStringSync()) as Map;
    expect(values['GREETING'], 'hello qa');
    expect(values['WAITED_ID'], isNotEmpty);
    expect(
      File(p.join(root.path, 'tf-out', 'qa', 'qa.tfstate')).existsSync(),
      isTrue,
    );
    expect(log.toString(), contains('Using OpenTofu $kOpenTofuVersion'));

    defines.deleteSync();
    await terradart(['outputs', '--env', 'qa', '--no-synth', '--no-init']);
    expect(jsonDecode(defines.readAsStringSync()), values);

    await terradart(['destroy', '--env', 'qa', '--auto-approve']);
    final engines = jsonDecode(
      File(p.join(root.path, '.terradart', 'engines.json')).readAsStringSync(),
    );
    expect(engines, {
      'env:qa': {'engine': 'tofu', 'version': kOpenTofuVersion},
    });
  }, timeout: const Timeout(Duration(minutes: 10)));

  group('init scaffolds validate with the managed OpenTofu', () {
    late String cache;
    setUpAll(() {
      cache = Directory.systemTemp.createTempSync('terradart_cli_e2e_').path;
    });
    tearDownAll(() => Directory(cache).deleteSync(recursive: true));

    for (final MapEntry(key: name, value: s) in scaffolds.entries) {
      // appwrite/appwrite is published to registry.terraform.io only;
      // registry.opentofu.org has no such provider.
      if (name == 'appwrite') continue;
      test(name, () async {
        final root = Directory.systemTemp.createTempSync('terradart_init_');
        addTearDown(() => root.deleteSync(recursive: true));
        final environment = {
          ...Platform.environment,
          'TERRADART_CACHE_DIR': cache,
        };
        await terradart([
          'init',
          'app',
          '--no-pub-get',
          ...s.args,
        ], cwd: root.path);
        final app = p.join(root.path, 'app');
        overrideWorkspacePackages(app);
        final log = await terradart(
          ['validate', '--env', 'dev', '--engine', 'tofu'],
          cwd: app,
          environment: environment,
        );
        expect(log, contains('OpenTofu'));
      }, timeout: const Timeout(Duration(minutes: 10)));
    }
  });
}

void _project(String root, String packages) {
  void write(String rel, String text) => File(p.join(root, rel))
    ..createSync(recursive: true)
    ..writeAsStringSync(text);
  final deps = ['terradart_core', 'terradart_time'];
  write('pubspec.yaml', '''
name: e2e_app
publish_to: none
environment:
  sdk: ^3.10.0
dependencies:
${[for (final d in deps) '  $d: any'].join('\n')}
dependency_overrides:
${[for (final d in deps) '  $d:\n    path: ${jsonEncode(p.join(packages, d))}'].join('\n')}
''');
  write('lib/env.dart', '''
enum Env {
  qa(stateBucket: null),
  sandbox(stateBucket: null),
  prd(stateBucket: 'acme-prd-state');

  const Env({required this.stateBucket});

  final String? stateBucket;
}
''');
  write('lib/hello_stack.dart', r'''
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_time/terradart_time.dart';

import 'env.dart';

final class HelloStack extends Stack {
  HelloStack({required Env env})
    : super(
        providers: const [TimeProvider()],
        backend: switch (env.stateBucket) {
          final bucket? => GcsBackend(bucket: bucket, prefix: 'hello'),
          null => LocalBackend(path: '${env.name}.tfstate'),
        },
      ) {
    final wait = add(
      TimeSleep('wait', createDuration: .duration(const Duration(seconds: 1))),
    );
    addOutput('greeting', TfArg.literal('hello ${env.name}'));
    addOutput('waited_id', wait.id);
    addDartDefineOutput();
  }
}
''');
  write('bin/infra.dart', '''
import 'package:e2e_app/env.dart';
import 'package:e2e_app/hello_stack.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runEnvironments(args, Env.values, (env) => HelloStack(env: env));
''');
}
