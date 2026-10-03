import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'init_support.dart';

/// `terradart init` for each provider, then `terradart synth` of what it
/// wrote against the workspace packages: the templates compile and
/// synthesize. `e2e_test.dart` also validates them with OpenTofu.
void main() {
  late String root;

  setUp(() {
    root = Directory.systemTemp.createTempSync('terradart_init_').path;
    addTearDown(() => Directory(root).deleteSync(recursive: true));
  });

  for (final MapEntry(key: name, value: s) in scaffolds.entries) {
    test('$name synthesizes every environment', () async {
      await terradart(['init', 'app', '--no-pub-get', ...s.args], cwd: root);
      final app = p.join(root, 'app');
      overrideWorkspacePackages(app);
      await terradart(['synth'], cwd: app);
      for (final env in ['dev', 'prd']) {
        final tf = mainTf(app, env);
        expect((tf['resource'] as Map).keys, contains(s.resource));
        expect(((tf['terraform'] as Map)['backend'] as Map).keys, [s.backend]);
        expect(tf['output'], isNotEmpty);
      }
    }, timeout: const Timeout(Duration(minutes: 3)));
  }

  test('a Flutter app gets infra/ and the generated reader', () async {
    File(p.join(root, 'pubspec.yaml')).writeAsStringSync(
      'name: shop\ndependencies:\n  flutter:\n    sdk: flutter\n',
    );
    await terradart([
      'init',
      '--provider',
      'google',
      '--env',
      'dev',
      '--backend',
      'local',
      '--no-pub-get',
    ], cwd: root);
    final infra = p.join(root, 'infra');
    overrideWorkspacePackages(infra);
    await terradart(['synth', '--env', 'dev'], cwd: infra);
    final reader = File(p.join(root, 'lib', 'generated', 'infra.g.dart'));
    expect(reader.readAsStringSync(), contains('class ShopInfraStackOutputs'));
    expect((mainTf(infra, 'dev')['output'] as Map).keys, [
      'events_topic_id',
      'dart_defines',
    ]);
  }, timeout: const Timeout(Duration(minutes: 3)));
}
