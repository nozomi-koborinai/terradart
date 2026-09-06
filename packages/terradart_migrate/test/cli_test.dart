import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

const _fixtures = '../terradart_coverage/test/fixtures';

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
    expect(help.out, contains('--allow-todo'));
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
      expect(json['planDiffers'], isFalse);
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
      final leftover = File(
        p.join(out, 'tf-out/$leftoverFileName'),
      ).readAsStringSync();
      expect(
        leftover,
        contains('module "network" {\n  source = "./modules/network"\n}'),
      );
      expect(
        File(p.join(out, 'bin/infra.dart')).readAsStringSync(),
        contains("await NetworkStack().writeTo(r'tf-out/modules/network');"),
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

  test('--allow-todo writes TODOs and no sidecar', () async {
    final out = p.join(tmp.path, 'todo');
    final r = await _run([
      '--dir',
      '$_fixtures/real_plan_src',
      '--out',
      out,
      '--allow-todo',
    ]);
    expect(r.code, MigrateExitCodes.success, reason: r.err);
    expect(r.out, contains('--allow-todo'));
    expect(File(p.join(out, 'tf-out/$leftoverFileName')).existsSync(), isFalse);
    expect(
      File(p.join(out, 'lib/real_plan_src_stack.dart')).readAsStringSync(),
      contains(
        '// TODO(terradart-migrate): module.network: module calls stay in '
        'Terraform until ModuleCall (#665)',
      ),
    );
    expect(
      File(p.join(out, 'MIGRATION.md')).readAsStringSync(),
      contains('**`--allow-todo`**'),
    );
  });

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
