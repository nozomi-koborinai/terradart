import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

const _fixtures = 'test/fixtures';

Future<({int code, String out, String err})> _run(List<String> args) async {
  final out = StringBuffer();
  final err = StringBuffer();
  final code = await runMigrateCli(args, out: out, err: err);
  return (code: code, out: out.toString(), err: err.toString());
}

void main() {
  late Directory tmp;
  setUp(() {
    tmp = Directory.systemTemp.createTempSync('terradart_migrate_cli_');
  });
  tearDown(() => tmp.deleteSync(recursive: true));

  test('--help and --version', () async {
    final help = await _run(['--help']);
    expect(help.code, MigrateExitCodes.success);
    expect(help.out, contains('Usage: terradart-migrate --dir'));
    expect(help.out, contains('--report'));
    expect(help.out, contains('--merge-envs'));
    expect(help.out, contains('--lift-workspace'));
    final version = await _run(['--version']);
    expect(version.code, MigrateExitCodes.success);
    expect(version.out.trim(), 'terradart-migrate $packageVersion');
  });

  test('usage errors exit 64', () async {
    expect((await _run([])).code, MigrateExitCodes.usage);
    expect((await _run(['--dir', 'x'])).code, MigrateExitCodes.usage);
    final bogus = await _run(['--bogus']);
    expect(bogus.code, MigrateExitCodes.usage);
    expect(bogus.err, contains('Usage:'));
    for (final retired in [
      ['--update', tmp.path],
      ['--in-place'],
      ['--allow-todo'],
      ['--inline-locals'],
    ]) {
      final r = await _run([
        '--dir',
        '$_fixtures/real_plan_src',
        '--out',
        p.join(tmp.path, 'out'),
        ...retired,
      ]);
      expect(r.code, MigrateExitCodes.usage, reason: retired.first);
    }
    expect(Directory(p.join(tmp.path, 'out')).existsSync(), isFalse);
  });

  test('a missing or empty input exits 65', () async {
    final missing = await _run([
      '--dir',
      p.join(tmp.path, 'nope'),
      '--out',
      p.join(tmp.path, 'out'),
    ]);
    expect(missing.code, MigrateExitCodes.dataError);
    final empty = await _run([
      '--dir',
      tmp.path,
      '--out',
      p.join(tmp.path, 'out'),
    ]);
    expect(empty.code, MigrateExitCodes.dataError);
    expect(empty.err, contains('no *.tf'));
    expect(Directory(p.join(tmp.path, 'out')).existsSync(), isFalse);
  });

  test(
    'migrates real_plan_src into a package with a mirrored tf-out',
    () async {
      final out = p.join(tmp.path, 'out');
      final r = await _run([
        '--dir',
        '$_fixtures/real_plan_src',
        '--out',
        out,
        '--json',
      ]);
      expect(r.code, MigrateExitCodes.success, reason: r.err);
      final json = jsonDecode(r.out) as Map<String, dynamic>;
      expect(json['package'], 'real_plan_src');
      expect(json['complete'], isFalse);
      final modules = json['modules'] as List;
      expect(modules, hasLength(2));
      expect((modules[0] as Map)['directory'], '.');
      expect((modules[0] as Map)['terraformDir'], 'tf-out');
      expect((modules[1] as Map)['directory'], 'modules/network');
      expect((modules[1] as Map)['role'], 'child');
      expect((modules[1] as Map)['terraformDir'], 'tf-out/modules/network');
      for (final f in [
        'pubspec.yaml',
        'bin/infra.dart',
        'lib/real_plan_src_stack.dart',
        'lib/network_stack.dart',
        'tf-out/$leftoverFileName',
        'MIGRATION.md',
      ]) {
        expect(File(p.join(out, f)).existsSync(), isTrue, reason: f);
      }
      // The call became `addModule(...)`; the child directory stays where it
      // is, so `source` still resolves from `tf-out/`. The module declares
      // neither a variable nor an output, so there is no typed wrapper.
      expect(
        File(p.join(out, 'lib/real_plan_src_stack.dart')).readAsStringSync(),
        contains(
          "addModule(ModuleCall(localName: 'network', "
          "source: './modules/network'));",
        ),
      );
      expect(
        File(p.join(out, 'lib/network_module.dart')).existsSync(),
        isFalse,
      );
      expect(
        File(p.join(out, 'bin/infra.dart')).readAsStringSync(),
        contains("await NetworkStack().writeTo('tf-out/modules/network');"),
      );

      // Non-destructive: a non-empty --out is refused without --force.
      final again = await _run([
        '--dir',
        '$_fixtures/real_plan_src',
        '--out',
        out,
      ]);
      expect(again.code, MigrateExitCodes.cannotCreate);
      expect(again.err, contains('--force'));
      final forced = await _run([
        '--dir',
        '$_fixtures/real_plan_src',
        '--out',
        out,
        '--force',
        '--name',
        'dogfood',
      ]);
      expect(forced.code, MigrateExitCodes.success, reason: forced.err);
      expect(forced.out, contains('(dogfood)'));
      expect(File(p.join(out, 'lib/dogfood_stack.dart')).existsSync(), isTrue);
    },
  );

  test(
    'tfvars and the lockfile are copied; other var files are listed',
    () async {
      final input = Directory(p.join(tmp.path, 'infra'))..createSync();
      File(p.join(input.path, 'main.tf')).writeAsStringSync(
        'variable "name" { type = string }\n'
        'resource "google_pubsub_topic" "t" { name = var.name }\n',
      );
      File(
        p.join(input.path, 'terraform.tfvars'),
      ).writeAsStringSync('name = "t"\n');
      File(p.join(input.path, 'extra.auto.tfvars')).writeAsStringSync('');
      File(p.join(input.path, 'staging.tfvars')).writeAsStringSync('');
      File(
        p.join(input.path, '.terraform.lock.hcl'),
      ).writeAsStringSync('# lock\n');
      final out = p.join(tmp.path, 'out');
      final r = await _run(['--dir', input.path, '--out', out, '--json']);
      expect(r.code, MigrateExitCodes.success, reason: r.err);
      final json = jsonDecode(r.out) as Map<String, dynamic>;
      final module = (json['modules'] as List).single as Map;
      expect(module['copied'], [
        '.terraform.lock.hcl',
        'extra.auto.tfvars',
        'terraform.tfvars',
      ]);
      expect(module['varFilesNotCopied'], ['staging.tfvars']);
      expect(
        File(p.join(out, 'tf-out/terraform.tfvars')).readAsStringSync(),
        'name = "t"\n',
      );
      expect(
        File(p.join(out, 'tf-out/.terraform.lock.hcl')).existsSync(),
        isTrue,
      );
      expect(File(p.join(out, 'tf-out/staging.tfvars')).existsSync(), isFalse);
      expect(
        File(p.join(out, 'MIGRATION.md')).readAsStringSync(),
        contains('`-var-file`'),
      );
    },
  );

  test('a child where nothing translates stays Terraform, no Stack', () async {
    final input = Directory(p.join(tmp.path, 'infra'))..createSync();
    // `count` on the call is a blocker (its instances are addressed
    // `module.m[0]`), so the call itself stays in Terraform too.
    File(p.join(input.path, 'main.tf')).writeAsStringSync(
      'resource "google_pubsub_topic" "t" { name = "t" }\n'
      'module "m" {\n  source = "./modules/m"\n  count  = 2\n}\n',
    );
    Directory(p.join(input.path, 'modules/m')).createSync(recursive: true);
    File(p.join(input.path, 'modules/m/main.tf')).writeAsStringSync(
      'resource "azurerm_resource_group" "logs" { name = "logs" }\n',
    );
    final out = p.join(tmp.path, 'out');
    final r = await _run(['--dir', input.path, '--out', out, '--json']);
    expect(r.code, MigrateExitCodes.success, reason: r.err);
    final json = jsonDecode(r.out) as Map<String, dynamic>;
    final modules = json['modules'] as List;
    expect((modules[0] as Map)['hasStack'], isTrue);
    final child = modules[1] as Map;
    expect(child['directory'], 'modules/m');
    expect(child['hasStack'], isFalse);
    expect(child['stackClass'], isNull);
    expect(
      Directory(p.join(out, 'lib')).listSync().map((f) => p.basename(f.path)),
      ['infra_stack.dart'],
    );
    final infra = File(p.join(out, 'bin/infra.dart')).readAsStringSync();
    expect(infra, contains("InfraStack().writeTo('tf-out')"));
    expect(infra, isNot(contains('MStack')));
    expect(
      File(
        p.join(out, 'tf-out/modules/m/$leftoverFileName'),
      ).readAsStringSync(),
      contains('resource "azurerm_resource_group" "logs"'),
    );
    expect(
      File(p.join(out, 'MIGRATION.md')).readAsStringSync(),
      contains('Stack: none'),
    );
  });

  test('writeProject refuses a path that resolves outside --out', () {
    final project = MigratedProject(
      name: 'x',
      packageName: 'x',
      inputPath: '.',
      modules: const [],
      environments: const [],
      files: {'ok.txt': '', '../escape.txt': ''},
      copies: const [],
    );
    final out = Directory(p.join(tmp.path, 'out'));
    expect(
      () => writeProject(project, out),
      throwsA(
        isA<FileSystemException>().having(
          (e) => e.path,
          'path',
          p.join(tmp.path, 'escape.txt'),
        ),
      ),
    );
    // Refused before anything is written.
    expect(File(p.join(tmp.path, 'escape.txt')).existsSync(), isFalse);
    expect(out.existsSync(), isFalse);
  });

  test('a directory name with backslashes stays inside --out', () async {
    if (Platform.isWindows) return;
    const weird = r'a\..\..\..\escape';
    final input = Directory(p.join(tmp.path, 'infra'))..createSync();
    File(
      p.join(input.path, 'main.tf'),
    ).writeAsStringSync('resource "google_pubsub_topic" "t" { name = "t" }\n');
    Directory(p.join(input.path, weird)).createSync();
    File(p.join(input.path, weird, 'main.tf')).writeAsStringSync(
      'resource "azurerm_resource_group" "logs" { name = "logs" }\n',
    );
    final out = p.join(tmp.path, 'out');
    final r = await _run(['--dir', input.path, '--out', out, '--json']);
    expect(r.code, MigrateExitCodes.success, reason: r.err);
    final modules = (jsonDecode(r.out) as Map<String, dynamic>)['modules'];
    expect(((modules as List)[1] as Map)['terraformDir'], 'tf-out/$weird');
    expect(
      File(p.join(out, 'tf-out', weird, leftoverFileName)).existsSync(),
      isTrue,
    );
    // Before the name was kept literal, this resolved to <tmp>/escape/.
    expect(Directory(p.join(tmp.path, 'escape')).existsSync(), isFalse);
  });

  test('the bin entry point runs', () async {
    final result = await Process.run('dart', [
      'run',
      'bin/terradart_migrate.dart',
      '--help',
    ]);
    expect(result.exitCode, 0, reason: result.stderr.toString());
    expect(result.stdout, contains('Usage: terradart-migrate'));
  });
}
