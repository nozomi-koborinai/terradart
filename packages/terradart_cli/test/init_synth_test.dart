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

  test('one storage account uses one resource group', () async {
    await terradart([
      'init',
      'app',
      '--no-pub-get',
      '--provider',
      'google',
      '--env',
      'dev,prd',
      '--backend',
      'azurerm',
      '--state-bucket',
      'sharedacct',
    ], cwd: root);
    final app = p.join(root, 'app');
    overrideWorkspacePackages(app);
    await terradart(['synth'], cwd: app);
    Map<dynamic, dynamic> azurerm(String env) =>
        ((mainTf(app, env)['terraform'] as Map)['backend'] as Map)['azurerm']
            as Map;
    final dev = azurerm('dev');
    final prd = azurerm('prd');
    expect(dev['storage_account_name'], 'sharedacct');
    expect(prd['storage_account_name'], 'sharedacct');
    expect(dev['resource_group_name'], 'app-tfstate');
    expect(prd['resource_group_name'], dev['resource_group_name']);
  }, timeout: const Timeout(Duration(minutes: 3)));

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

  test(
    'an Azure Flutter app still reads outputs with fromDartDefine',
    () async {
      File(p.join(root, 'pubspec.yaml')).writeAsStringSync(
        'name: shop\ndependencies:\n  flutter:\n    sdk: flutter\n',
      );
      await terradart([
        'init',
        '--provider',
        'azure',
        '--defaults',
        '--no-pub-get',
      ], cwd: root);
      final infra = p.join(root, 'infra');
      overrideWorkspacePackages(infra);
      await terradart(['synth', '--env', 'dev'], cwd: infra);
      final reader = File(p.join(root, 'lib', 'generated', 'infra.g.dart'));
      expect(
        reader.readAsStringSync(),
        contains('ShopInfraStackOutputs.fromDartDefine'),
      );
      expect(
        File(p.join(infra, 'lib', 'stack.dart')).readAsStringSync(),
        contains('addDartDefineOutput();'),
      );
      expect((mainTf(infra, 'dev')['output'] as Map).keys, [
        'resource_group_id',
        'dart_defines',
      ]);
    },
    timeout: const Timeout(Duration(minutes: 3)),
  );
}
