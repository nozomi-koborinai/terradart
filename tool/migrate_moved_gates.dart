/// Migrate moved gate (#663): the acceptance check for `count` / `for_each`
/// unrolling. Migrates `packages/terradart_migrate/test/fixtures/moved_state/`
/// — a module with a `count` resource, a `for_each` resource, references to
/// their instances, an output over them and a `moved` block of its own —
/// with `terradart_migrate`, synthesizes the generated Stack, puts the
/// fixture's `state.json` (a `terraform.tfstate` of the indexed instances as
/// Terraform recorded them; the name keeps it out of the `*.tfstate` ignore
/// rule) next to the synth output, and runs `terraform plan -refresh=false`:
/// the plan must be moves only — every resource change a `no-op`, every
/// unrolled instance reported under its previous address, nothing created,
/// changed or destroyed.
///
///   dart tool/migrate_moved_gates.dart [--keep]
///
/// `--keep` leaves the generated package in place. Exit 1 on any failure,
/// with the package kept for inspection. The plan configures the google
/// provider but makes no API call (`-refresh=false`, nothing to change), so
/// a placeholder access token is enough — no credentials, no network beyond
/// `terraform init`.
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';

const _fixture = 'moved_state';

/// Every move the plan must report: `previous_address` → `address`.
const _expectedMoves = <String, String>{
  'google_pubsub_topic.t[0]': 'google_pubsub_topic.t_0',
  'google_pubsub_topic.t[1]': 'google_pubsub_topic.t_1',
  'google_pubsub_topic.region["eu"]': 'google_pubsub_topic.region_eu',
  'google_pubsub_topic.region["us"]': 'google_pubsub_topic.region_us',
  'google_pubsub_topic.old': 'google_pubsub_topic.single',
};

const _workspacePackages = [
  'terradart_core',
  'terradart_google',
  'terradart_google_beta',
  'terradart_appwrite',
  'terradart_cloudflare',
];

Future<void> main(List<String> args) async {
  final keep = args.contains('--keep');
  final repoRoot = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
  final ok = await _gate(repoRoot: repoRoot, keep: keep);
  stdout
      .writeln(ok ? 'migrate_moved_gates: OK' : 'migrate_moved_gates: FAILED');
  exitCode = ok ? 0 : 1;
}

Future<bool> _gate({required String repoRoot, required bool keep}) async {
  final input = Directory(
    p.join(repoRoot, 'packages/terradart_migrate/test/fixtures', _fixture),
  );
  final temp = Directory.systemTemp.createTempSync('terradart_migrate_moved_');
  final errors = <String>[];
  try {
    final tree = scanModuleTree(input);
    final project = migrateTree(tree, name: _fixture);
    writeProject(project, temp);
    final module = project.modules.single;
    final report = module.report;
    // The splat output stays in outputs.tf on purpose (an export is one
    // attribute): the sidecar rewrite must point it at the new addresses,
    // which the plan below checks. Anything else kept is a failure.
    for (final k in report.kept) {
      if (k.address.startsWith('output.')) continue;
      errors.add('${k.address} stays in Terraform: ${k.reason}');
    }
    final unrolled = {for (final e in report.expanded) e.address};
    for (final address in [
      'google_pubsub_topic.t',
      'google_pubsub_topic.region',
    ]) {
      if (!unrolled.contains(address)) {
        errors.add('$address was not unrolled (report.expanded: $unrolled)');
      }
    }
    if (errors.isNotEmpty) return _finish(temp, errors, keep: keep);

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
        // A cold pub cache fails --offline: retry online.
        errors.removeRange(before, errors.length);
        passed = await _run(['dart', 'pub', 'get'], temp, errors);
      }
      if (!passed) return _finish(temp, errors, keep: keep);
    }

    final dir = Directory(p.join(temp.path, module.terraformDir));
    final synth = File(p.join(dir.path, 'main.tf.json'));
    if (!synth.existsSync()) {
      errors.add('${module.terraformDir}: no main.tf.json after synth');
      return _finish(temp, errors, keep: keep);
    }
    final moved = (jsonDecode(synth.readAsStringSync()) as Map)['moved'];
    if (moved is! List || moved.length != _expectedMoves.length) {
      errors.add(
        'main.tf.json declares ${moved is List ? moved.length : 0} moved '
        'entries, expected ${_expectedMoves.length}: $moved',
      );
      return _finish(temp, errors, keep: keep);
    }

    // The state Terraform recorded for the module as written, next to the
    // synth output and its sidecar files (committed as state.json: the
    // repository ignores *.tfstate).
    File(
      p.join(input.path, 'state.json'),
    ).copySync(p.join(dir.path, 'terraform.tfstate'));

    if (!await _run(
      ['terraform', 'init', '-input=false', '-no-color'],
      dir,
      errors,
    )) {
      return _finish(temp, errors, keep: keep);
    }
    // Exit 2 is "succeeded with a non-empty plan" — moves alone count as one.
    final plan = await Process.run(
      'terraform',
      [
        'plan',
        '-refresh=false',
        '-input=false',
        '-no-color',
        '-detailed-exitcode',
        '-out=plan.out',
      ],
      workingDirectory: dir.path,
      environment: {'GOOGLE_OAUTH_ACCESS_TOKEN': 'terradart-migrate-gate'},
    );
    if (plan.exitCode != 0 && plan.exitCode != 2) {
      errors.add(
        'terraform plan exited ${plan.exitCode}:\n${plan.stdout}${plan.stderr}',
      );
      return _finish(temp, errors, keep: keep);
    }
    final show = await Process.run(
      'terraform',
      ['show', '-json', 'plan.out'],
      workingDirectory: dir.path,
    );
    if (show.exitCode != 0) {
      errors.add('terraform show exited ${show.exitCode}:\n${show.stderr}');
      return _finish(temp, errors, keep: keep);
    }
    final planJson = jsonDecode(show.stdout as String) as Map<String, dynamic>;
    final moves = <String, String>{};
    for (final change in (planJson['resource_changes'] as List? ?? const [])
        .cast<Map<String, dynamic>>()) {
      final address = change['address'] as String;
      final actions =
          ((change['change'] as Map)['actions'] as List).cast<String>();
      if (actions.length != 1 || actions.single != 'no-op') {
        errors.add('$address: ${actions.join(', ')} (expected no-op)');
      }
      final previous = change['previous_address'] as String?;
      if (previous != null) moves[previous] = address;
    }
    for (final e in _expectedMoves.entries) {
      final actual = moves[e.key];
      if (actual != e.value) {
        errors.add(
          'expected ${e.key} to move to ${e.value}, plan says '
          '${actual ?? 'no move'}',
        );
      }
    }
    for (final e in moves.entries) {
      if (!_expectedMoves.containsKey(e.key)) {
        errors.add('unexpected move ${e.key} → ${e.value}');
      }
    }
    for (final e in (planJson['output_changes'] as Map? ?? const {}).entries) {
      final actions = ((e.value as Map)['actions'] as List).cast<String>();
      if (actions.length != 1 || actions.single != 'no-op') {
        errors.add('output ${e.key}: ${actions.join(', ')} (expected no-op)');
      }
    }
    if (errors.isEmpty) {
      stdout.writeln(
        'migrate_moved_gates: $_fixture: ${report.migrated.length} migrated, '
        '${report.expanded.length} blocks unrolled, ${moves.length} moves, '
        'plan is moves only (0 to add, 0 to change, 0 to destroy)',
      );
    }
  } on Object catch (e, st) {
    errors.add('$_fixture: $e\n$st');
  }
  return _finish(temp, errors, keep: keep);
}

bool _finish(Directory temp, List<String> errors, {required bool keep}) {
  if (errors.isEmpty) {
    if (keep) {
      stdout.writeln('migrate_moved_gates: package kept at ${temp.path}');
    } else {
      temp.deleteSync(recursive: true);
    }
    return true;
  }
  stderr.writeln(
    'migrate_moved_gates: $_fixture FAILED (package kept at ${temp.path}):',
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
