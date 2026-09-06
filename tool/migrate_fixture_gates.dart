/// Migrate fixture gate (#661): migrates the coverage fixtures `config_tree/`
/// (two environment roots sharing six local modules) and `real_plan_src/`
/// (a root with one child module) with `terradart_migrate`, writes the
/// generated package to a temp directory, analyzes and synthesizes it, and
/// runs `terraform init -backend=false && terraform validate` in every
/// Terraform directory of the mirrored `tf-out/` tree — each holding the
/// Stack's `main.tf.json` next to its leftover sidecar. Every kept block
/// must have landed in a sidecar file.
///
///   dart tool/migrate_fixture_gates.dart [--skip-validate] [--keep]
///
/// `--skip-validate` stops before terraform (no terraform on PATH);
/// `--keep` leaves the generated packages in place. Exit 1 on any failure,
/// with the failing package kept for inspection.
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';

const _fixtures = ['config_tree', 'real_plan_src'];

const _terraformInit = [
  'terraform',
  'init',
  '-backend=false',
  '-input=false',
  '-no-color',
];

const _workspacePackages = [
  'terradart_core',
  'terradart_google',
  'terradart_google_beta',
  'terradart_appwrite',
  'terradart_cloudflare',
];

Future<void> main(List<String> args) async {
  final skipValidate = args.contains('--skip-validate');
  final keep = args.contains('--keep');
  final repoRoot = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
  var ok = true;
  for (final fixture in _fixtures) {
    final passed = await _gate(
      fixture,
      repoRoot: repoRoot,
      skipValidate: skipValidate,
      keep: keep,
    );
    ok = ok && passed;
  }
  stdout.writeln(
    ok ? 'migrate_fixture_gates: OK' : 'migrate_fixture_gates: FAILED',
  );
  exitCode = ok ? 0 : 1;
}

Future<bool> _gate(
  String fixture, {
  required String repoRoot,
  required bool skipValidate,
  required bool keep,
}) async {
  final input = Directory(
    p.join(repoRoot, 'packages/terradart_coverage/test/fixtures', fixture),
  );
  final temp = Directory.systemTemp.createTempSync(
    'terradart_migrate_fixture_',
  );
  final errors = <String>[];
  try {
    final tree = scanModuleTree(input);
    final project = migrateTree(tree, name: fixture);
    writeProject(project, temp);
    for (final m in project.modules) {
      for (final k in m.report.kept) {
        if (m.sidecar?.placements[k.address] == null) {
          errors.add(
            '${m.dir.relPath}: ${k.address} is kept (${k.reason}) but landed '
            'in no sidecar file',
          );
        }
      }
    }

    // The generated pubspec pins hosted lockstep versions; wire the checkout
    // in so the gate exercises this tree.
    final overrides = StringBuffer('\ndependency_overrides:\n');
    for (final pkg in _workspacePackages) {
      overrides
        ..writeln('  $pkg:')
        ..writeln('    path: ${p.join(repoRoot, 'packages', pkg)}');
    }
    File(
      p.join(temp.path, 'pubspec.yaml'),
    ).writeAsStringSync(overrides.toString(), mode: FileMode.append);

    final steps = <List<String>>[
      ['dart', 'pub', 'get', '--offline'],
      ['dart', 'analyze', '--fatal-infos', '--fatal-warnings', 'lib', 'bin'],
      ['dart', 'run', 'bin/infra.dart'],
    ];
    for (final step in steps) {
      final before = errors.length;
      var passed = await _run(step, temp, errors);
      if (!passed && step[1] == 'pub') {
        // A cold pub cache fails --offline: drop only that failure and retry
        // online, so an earlier error (a kept block that landed in no
        // sidecar file) still fails the gate.
        errors.removeRange(before, errors.length);
        passed = await _run(['dart', 'pub', 'get'], temp, errors);
      }
      if (!passed) return _finish(fixture, temp, errors, keep: keep);
    }
    final dirs = [for (final m in project.modules) m.terraformDir];
    for (final d in dirs) {
      if (!File(p.join(temp.path, d, 'main.tf.json')).existsSync()) {
        errors.add('$d: no main.tf.json after synth');
      }
    }
    if (!skipValidate && errors.isEmpty) {
      for (final d in dirs) {
        final dir = Directory(p.join(temp.path, d));
        if (!await _run(_terraformInit, dir, errors)) continue;
        await _run(['terraform', 'validate', '-no-color'], dir, errors);
      }
    }
    final validated = skipValidate
        ? ' (terraform validate skipped)'
        : ', ${dirs.length} directories validated';
    stdout.writeln(
      'migrate_fixture_gates: $fixture: ${project.modules.length} modules, '
      '${project.migratedCount} migrated, ${project.keptCount} kept'
      '$validated',
    );
  } on Object catch (e, st) {
    errors.add('$fixture: $e\n$st');
  }
  return _finish(fixture, temp, errors, keep: keep);
}

bool _finish(
  String fixture,
  Directory temp,
  List<String> errors, {
  required bool keep,
}) {
  if (errors.isEmpty) {
    if (keep) {
      stdout.writeln('migrate_fixture_gates: $fixture kept at ${temp.path}');
    } else {
      temp.deleteSync(recursive: true);
    }
    return true;
  }
  stderr.writeln(
    'migrate_fixture_gates: $fixture FAILED (package kept at ${temp.path}):',
  );
  for (final e in errors) {
    stderr.writeln('  $e');
  }
  return false;
}

Future<bool> _run(
  List<String> command,
  Directory cwd,
  List<String> errors,
) async {
  final r = await Process.run(
    command.first,
    command.sublist(1),
    workingDirectory: cwd.path,
  );
  if (r.exitCode == 0) return true;
  errors.add(
    '${p.basename(cwd.path)}: ${command.join(' ')} exited ${r.exitCode}:\n'
    '${r.stdout}${r.stderr}',
  );
  return false;
}
