import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'support.dart';

void main() {
  const envs = ['dev', 'stg'];
  const defines = {'API_URL': 'https://api.example', 'KEY': 'k'};

  FakeRunner runner({List<List<String>> planChanges = const []}) => FakeRunner(
    synth: (args) => runEnvironmentsEntry(args, envs),
    planChanges: planChanges,
    outputs: {'dart_defines': defines},
  );

  group('apply --dry-run', () {
    test('plans and stops: no apply, no define file, no question', () async {
      final project = TestProject.create();
      final fake = runner();
      final r = await project.run(['apply', '--env', 'dev', '--dry-run'], fake);
      expect(r.code, 0, reason: r.err);
      expect(fake.engineCalls.where((c) => !c.startsWith('version')), [
        'init -input=false',
        'plan -input=false',
      ]);
      expect(r.out, contains('Dry run: nothing was applied.'));
      expect(
        File(project.path('.terradart/dart_defines.dev.json')).existsSync(),
        isFalse,
      );
      expect(
        File(project.path('.terradart/engines.json')).existsSync(),
        isFalse,
      );
    });

    test('--json counts the changes and suggests the apply', () async {
      final project = TestProject.create();
      final r = await project.run(
        ['apply', '--env', 'dev', '--dry-run', '--json'],
        runner(
          planChanges: [
            ['create'],
          ],
        ),
      );
      expect(r.code, 0, reason: r.err);
      final json = jsonDecode(r.out) as Map<String, Object?>;
      expect(json['command'], 'apply');
      expect(json['dryRun'], true);
      expect(json['plan'], {'add': 1, 'change': 0, 'destroy': 0, 'replace': 0});
      expect(json['next'], ['terradart apply --env dev']);
    });

    test('still checks the define output before anything runs', () async {
      final project = TestProject.create();
      final fake = runner();
      final r = await project.run([
        'apply',
        '--env',
        'dev',
        '--dry-run',
        '--define-output',
        'missing',
      ], fake);
      expect(r.code, 65);
      expect(fake.engineCalls, isEmpty);
    });
  });

  test('destroy --dry-run plans the destroy and stops', () async {
    final project = TestProject.create();
    final fake = runner();
    final r = await project.run(['destroy', '--env', 'dev', '--dry-run'], fake);
    expect(r.code, 0, reason: r.err);
    expect(fake.engineCalls.where((c) => !c.startsWith('version')), [
      'init -input=false',
      'plan -input=false -destroy',
    ]);
    expect(r.out, contains('Dry run: nothing was destroyed.'));
  });

  group('outputs --dry-run', () {
    test('names the file and the keys, and writes nothing', () async {
      final project = TestProject.create();
      final r = await project.run([
        'outputs',
        '--env',
        'dev',
        '--dry-run',
      ], runner());
      expect(r.code, 0, reason: r.err);
      expect(
        r.out,
        contains(
          'Would write 2 dart-defines to .terradart/dart_defines.dev.json: '
          'API_URL, KEY',
        ),
      );
      expect(r.out, isNot(contains('api.example')));
      expect(
        Directory(project.path('.terradart')).listSync(),
        isNot(
          contains(
            predicate<FileSystemEntity>(
              (f) => f.path.endsWith('dart_defines.dev.json'),
            ),
          ),
        ),
      );
    });

    test('--json has the file and the keys, never the values', () async {
      final project = TestProject.create();
      final r = await project.run([
        'outputs',
        '--env',
        'dev',
        '--dry-run',
        '--json',
      ], runner());
      expect(r.code, 0, reason: r.err);
      final json = jsonDecode(r.out) as Map<String, Object?>;
      expect(json['dryRun'], true);
      expect(json['defineFile'], '.terradart/dart_defines.dev.json');
      expect(json['keys'], ['API_URL', 'KEY']);
      expect(json['next'], ['terradart outputs --env dev']);
      expect(r.out, isNot(contains('api.example')));
    });
  });
}
