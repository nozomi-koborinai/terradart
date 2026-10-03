import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

/// Runs `main` of an entry point with [body] after the shared declarations,
/// in a fresh directory, with `TERRADART_MANIFEST` set.
Future<({int code, String out, String err, Directory dir})> _run(
  String body,
  List<String> args, {
  bool manifest = true,
}) async {
  final dir = await Directory.systemTemp.createTemp('run_stacks_');
  addTearDown(() => dir.delete(recursive: true));
  final script = File('${dir.path}/infra.dart')
    ..writeAsStringSync('''
import 'package:terradart_core/terradart_core.dart';
import '${Directory('test/helpers').absolute.uri.resolve('fake_resources.dart')}';

enum Env { qa, sandbox, prd }

final class AppStack extends Stack {
  AppStack(Env env)
    : super(
        providers: const [
          FakeStackProvider(
            providerName: 'time',
            source: 'hashicorp/time',
            versionConstraint: '~> 0.13',
          ),
        ],
        backend: env == Env.prd
            ? const GcsBackend(bucket: 'acme-prd-state', prefix: 'app')
            : LocalBackend(path: 'state/\${env.name}.tfstate'),
      ) {
    addOutput('env_name', .literal(env.name));
    addDartDefineOutput();
  }
}

$body
''');
  final packages = await Isolate.packageConfig;
  final result = await Process.run(
    Platform.resolvedExecutable,
    ['--packages=${packages!.toFilePath()}', script.path, ...args],
    workingDirectory: dir.path,
    environment: {
      terradartManifestVariable: manifest ? '${dir.path}/manifest.json' : '',
    },
  );
  return (
    code: result.exitCode,
    out: result.stdout as String,
    err: result.stderr as String,
    dir: dir,
  );
}

Map<String, Object?> _json(Directory dir, String path) =>
    jsonDecode(File('${dir.path}/$path').readAsStringSync())
        as Map<String, Object?>;

const _main =
    'Future<void> main(List<String> args) => '
    'runEnvironments(args, Env.values, AppStack.new);';

void main() {
  group('runEnvironments', () {
    test('--env writes that environment to tf-out/<name>', () async {
      final r = await _run(_main, ['--env', 'sandbox']);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('synthesized tf-out/sandbox/main.tf.json'));
      expect(Directory('${r.dir.path}/tf-out').listSync(), hasLength(1));
      final tf = _json(r.dir, 'tf-out/sandbox/main.tf.json');
      expect((tf['terraform'] as Map)['backend'], {
        'local': {'path': 'state/sandbox.tfstate'},
      });
      expect(_json(r.dir, 'manifest.json'), {
        'version': 1,
        'environments': ['qa', 'sandbox', 'prd'],
        'selected': 'sandbox',
        'default': null,
        'roots': [
          {
            'environment': 'sandbox',
            'dir': 'tf-out/sandbox',
            'workspace': null,
            'backend_config': <String>[],
            'dart_defines': ['dart_defines'],
          },
        ],
      });
    });

    test('mixes backends per environment', () async {
      final r = await _run(_main, ['--env=prd']);
      expect(r.code, 0, reason: r.err);
      final tf = _json(r.dir, 'tf-out/prd/main.tf.json');
      expect((tf['terraform'] as Map)['backend'], {
        'gcs': {'bucket': 'acme-prd-state', 'prefix': 'app'},
      });
    });

    test('without --env writes every environment', () async {
      final r = await _run(_main, []);
      expect(r.code, 0, reason: r.err);
      for (final env in ['qa', 'sandbox', 'prd']) {
        expect(
          File('${r.dir.path}/tf-out/$env/main.tf.json').existsSync(),
          isTrue,
        );
      }
      final manifest = _json(r.dir, 'manifest.json');
      expect(manifest['selected'], isNull);
      expect(manifest['roots'], hasLength(3));
    });

    test('an unknown --env lists the known envs and exits 64', () async {
      final r = await _run(_main, ['--env', 'staging']);
      expect(r.code, 64);
      expect(
        r.err,
        contains(
          'unknown environment "staging"; known envs: qa, sandbox, prd.',
        ),
      );
      expect(Directory('${r.dir.path}/tf-out').existsSync(), isFalse);
    });

    test('shares a directory by workspace', () async {
      const body = '''
Future<void> main(List<String> args) => runEnvironments(
  args,
  Env.values,
  AppStack.new,
  dir: (_) => 'tf-out',
  workspace: (env) => 'app-\${env.name}',
);''';
      final all = await _run(body, []);
      expect(all.code, 64);
      expect(all.err, contains('environments share tf-out (qa, sandbox, prd)'));

      final one = await _run(body, ['--env', 'qa']);
      expect(one.code, 0, reason: one.err);
      final root = (_json(one.dir, 'manifest.json')['roots'] as List).single;
      expect(root, containsPair('dir', 'tf-out'));
      expect(root, containsPair('workspace', 'app-qa'));
    });

    test('records the partial backend configuration', () async {
      final r = await _run(
        '''
Future<void> main(List<String> args) => runEnvironments(
  args,
  Env.values,
  AppStack.new,
  dir: (_) => 'tf-out',
  backendConfig: (env) => ['backend/\${env.name}.tfbackend', 'prefix=app'],
);''',
        ['--env', 'prd'],
      );
      expect(r.code, 0, reason: r.err);
      final root = (_json(r.dir, 'manifest.json')['roots'] as List).single;
      expect(
        root,
        containsPair('backend_config', ['backend/prd.tfbackend', 'prefix=app']),
      );
    });

    test('rejects a shared directory nothing tells apart', () async {
      final r = await _run(
        '''
Future<void> main(List<String> args) => runEnvironments(
  args,
  Env.values,
  AppStack.new,
  dir: (env) => env == Env.qa ? 'tf-out/qa' : 'tf-out/shared',
  workspace: (env) => env == Env.prd ? 'prd' : null,
);''',
        ['--env', 'qa'],
      );
      expect(r.code, isNot(0));
      expect(
        r.err,
        contains(
          'Environments sandbox, prd all write tf-out/shared, but sandbox has '
          'no workspace or backendConfig',
        ),
      );
    });

    test('records defaultEnv and still writes every environment', () async {
      final r = await _run(
        'Future<void> main(List<String> args) => '
        'runEnvironments(args, Env.values, AppStack.new, '
        'defaultEnv: Env.sandbox);',
        [],
      );
      expect(r.code, 0, reason: r.err);
      final manifest = _json(r.dir, 'manifest.json');
      expect(manifest['default'], 'sandbox');
      expect(manifest['selected'], isNull);
      expect(manifest['roots'], hasLength(3));
    });

    test(
      'writes only defaultEnv when environments share a directory',
      () async {
        final r = await _run('''
Future<void> main(List<String> args) => runEnvironments(
  args,
  Env.values,
  AppStack.new,
  dir: (_) => 'tf-out',
  workspace: (env) => 'app-\${env.name}',
  defaultEnv: Env.qa,
);''', []);
        expect(r.code, 0, reason: r.err);
        final manifest = _json(r.dir, 'manifest.json');
        expect(manifest['default'], 'qa');
        final root = (manifest['roots'] as List).single;
        expect(root, containsPair('environment', 'qa'));
        expect(root, containsPair('workspace', 'app-qa'));
      },
    );

    test('rejects a defaultEnv that is not an environment', () async {
      final r = await _run(
        'Future<void> main(List<String> args) => runEnvironments(args, '
        '[Env.qa, Env.prd], AppStack.new, defaultEnv: Env.sandbox);',
        [],
      );
      expect(r.code, isNot(0));
      expect(r.err, contains('defaultEnv'));
    });

    test('writes no manifest outside terradart', () async {
      final r = await _run(_main, ['--env', 'qa'], manifest: false);
      expect(r.code, 0, reason: r.err);
      expect(File('${r.dir.path}/manifest.json').existsSync(), isFalse);
    });
  });

  test('runStack writes tf-out and its manifest', () async {
    final r = await _run(
      'Future<void> main(List<String> args) => '
      'runStack(args, () => AppStack(Env.qa));',
      [],
    );
    expect(r.code, 0, reason: r.err);
    expect(File('${r.dir.path}/tf-out/main.tf.json').existsSync(), isTrue);
    expect(_json(r.dir, 'manifest.json'), {
      'version': 1,
      'environments': null,
      'selected': null,
      'default': null,
      'roots': [
        {
          'environment': null,
          'dir': 'tf-out',
          'workspace': null,
          'backend_config': <String>[],
          'dart_defines': ['dart_defines'],
        },
      ],
    });
  });
}
