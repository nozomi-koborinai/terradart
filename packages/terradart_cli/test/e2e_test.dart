@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

/// The real loop on the host OS: the pinned OpenTofu downloaded into an
/// empty cache, a Stack per environment synthesized by `dart run`, then
/// init, apply (a local-state `time_sleep`, no cloud), outputs and destroy.
void main() {
  final packages = p.normalize(p.join(Directory.current.path, '..'));

  test(
    'apply, outputs and destroy with the managed OpenTofu',
    () async {
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

      await terradart(['apply', '--env', 'qa', '--auto-approve']);
      final defines = File(p.join(root.path, '.terradart', 'dart_defines.qa.json'));
      final values = jsonDecode(defines.readAsStringSync()) as Map;
      expect(values['GREETING'], 'hello qa');
      expect(values['WAITED_ID'], isNotEmpty);
      expect(
        File(p.join(root.path, 'tf-out', 'qa', 'terraform.tfstate')).existsSync(),
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
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
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
terradart:
  environments: [qa, sandbox]
''');
  write('lib/hello_stack.dart', r'''
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_time/terradart_time.dart';

final class HelloStack extends Stack {
  HelloStack({required String env})
    : super(providers: const [TimeProvider()]) {
    final wait = add(
      TimeSleep('wait', createDuration: .duration(const Duration(seconds: 1))),
    );
    addOutput('greeting', TfArg.literal('hello $env'));
    addOutput('waited_id', wait.id);
    addDartDefineOutput();
  }
}
''');
  write('bin/infra.dart', r'''
import 'package:e2e_app/hello_stack.dart';

Future<void> main(List<String> args) async {
  final i = args.indexOf('--env');
  final env = i >= 0 ? args[i + 1] : 'qa';
  await HelloStack(env: env).writeTo('tf-out/$env');
}
''');
}
