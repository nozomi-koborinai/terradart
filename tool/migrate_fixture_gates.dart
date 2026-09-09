/// Migrate fixture gate (#661): migrates the coverage fixtures `config_tree/`
/// (two environment roots sharing six local modules) and `real_plan_src/`
/// (a root with one child module) with `terradart_migrate`, writes the
/// generated package to a temp directory, analyzes and synthesizes it, and
/// runs `terraform init -backend=false && terraform validate` in every
/// Terraform directory of the mirrored `tf-out/` tree — each holding the
/// Stack's `main.tf.json` next to its leftover sidecar. Every kept block
/// must have landed in a sidecar file.
///
/// The inlined-locals gate (#672) migrates
/// `packages/terradart_migrate/test/fixtures/inline_locals/` twice, with and
/// without `--inline-locals`, and plans both with Terraform: a local that
/// became a Dart `final` must produce the value Terraform resolved from the
/// sidecar before, so the two plans are identical resource for resource.
///
/// The merged-environment gate (#668) migrates `config_tree/` a second time
/// with `--merge-envs`, and requires that the one `ConfigTreeStack(env: ...)`
/// synthesizes, per environment, exactly the JSON the two separate Stacks
/// did: same resources, same addresses, same values. That is the proof that
/// folding the roots together changes the Dart and nothing else.
///
///   dart tool/migrate_fixture_gates.dart [--skip-validate] [--keep]
///
/// `--skip-validate` stops before terraform (no terraform on PATH);
/// `--keep` leaves the generated packages in place. Exit 1 on any failure,
/// with the failing package kept for inspection.
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';

const _fixtures = ['config_tree', 'real_plan_src'];

/// The fixture whose environment roots `--merge-envs` folds together.
const _mergeFixture = 'config_tree';

/// The migrator's own fixture for `--inline-locals`, holding one `locals`
/// entry of every kind the flag has to tell apart.
const _localsFixture = 'inline_locals';

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
  ok = await _mergeEnvGate(
        repoRoot: repoRoot,
        skipValidate: skipValidate,
        keep: keep,
      ) &&
      ok;
  ok = await _rerunGate(repoRoot: repoRoot, keep: keep) && ok;
  ok = await _inlineLocalsGate(
        repoRoot: repoRoot,
        skipValidate: skipValidate,
        keep: keep,
      ) &&
      ok;
  stdout.writeln(
    ok ? 'migrate_fixture_gates: OK' : 'migrate_fixture_gates: FAILED',
  );
  exitCode = ok ? 0 : 1;
}

/// `--merge-envs` on [_mergeFixture]: one Stack for both environment roots,
/// synthesizing per environment exactly what one Stack each did.
Future<bool> _mergeEnvGate({
  required String repoRoot,
  required bool skipValidate,
  required bool keep,
}) async {
  final input = Directory(
    p.join(
      repoRoot,
      'packages/terradart_coverage/test/fixtures',
      _mergeFixture,
    ),
  );
  final plain = Directory.systemTemp.createTempSync('terradart_merge_plain_');
  final temp = Directory.systemTemp.createTempSync('terradart_merge_envs_');
  final errors = <String>[];
  try {
    final tree = scanModuleTree(input);
    writeProject(migrateTree(tree, name: _mergeFixture), plain);
    final project = migrateTree(tree, name: _mergeFixture, mergeEnvs: true);
    writeProject(project, temp);

    final merged = project.merged.where((m) => m.isMerged).toList();
    if (merged.length != project.merged.length) {
      for (final m in project.merged) {
        if (m.isMerged) continue;
        errors.add('${m.group}: the roots did not merge — ${m.refusal}');
      }
    }
    if (merged.isEmpty) {
      errors.add('--merge-envs folded no environment group');
      return _finish('$_mergeFixture --merge-envs', temp, errors, keep: keep);
    }
    for (final step in [plain, temp]) {
      if (!await _build(step, repoRoot, errors)) {
        return _finish('$_mergeFixture --merge-envs', temp, errors, keep: keep);
      }
    }

    // The proof: every environment's synth is the one the separate Stacks
    // wrote, key for key.
    final dirs = [for (final m in project.modules) m.terraformDir];
    for (final dir in dirs) {
      final before = File(p.join(plain.path, dir, 'main.tf.json'));
      final after = File(p.join(temp.path, dir, 'main.tf.json'));
      if (!before.existsSync() || !after.existsSync()) {
        errors.add('$dir: no main.tf.json after synth');
        continue;
      }
      final diffs = <String>[];
      _diff(
        jsonDecode(before.readAsStringSync()),
        jsonDecode(after.readAsStringSync()),
        r'$',
        diffs,
      );
      if (diffs.isNotEmpty) {
        errors.add(
          '$dir: the merged Stack synthesizes differently '
          '(${diffs.length} difference${diffs.length == 1 ? '' : 's'}):\n'
          '${diffs.take(8).map((d) => '      $d').join('\n')}',
        );
      }
    }
    if (!skipValidate && errors.isEmpty) {
      for (final d in dirs) {
        final dir = Directory(p.join(temp.path, d));
        if (!await _run(_terraformInit, dir, errors)) continue;
        await _run(['terraform', 'validate', '-no-color'], dir, errors);
      }
    }
    final envs = [for (final m in merged) ...m.envs];
    stdout.writeln(
      'migrate_fixture_gates: $_mergeFixture --merge-envs: '
      '${envs.length} environments '
      '(${envs.map((e) => e.path).join(', ')}) → '
      '${merged.map((m) => m.stackClass).join(', ')}, '
      '${_count(merged.fold(0, (n, m) => n + m.fields.length), 'constant')}, '
      '${_count(merged.fold(0, (n, m) => n + m.guards.length), 'flag')}; '
      'per-environment synth identical'
      '${skipValidate ? ' (terraform validate skipped)' : ', validated'}',
    );
  } on Object catch (e, st) {
    errors.add('$_mergeFixture --merge-envs: $e\n$st');
  }
  if (errors.isEmpty && !keep) plain.deleteSync(recursive: true);
  return _finish('$_mergeFixture --merge-envs', temp, errors, keep: keep);
}

/// `--update` on [_mergeFixture] (#669): the catalog wave, simulated.
///
/// Migrate the fixture against a catalog with one factory missing, so the
/// sidecar holds real blocks. Re-run against the full catalog: what the
/// wave added must come back as snippets, the sidecar must shrink, and the
/// Stack with the snippet pasted must synthesize exactly what a one-shot
/// migration of the whole tree does. Nothing the first run wrote may change.
Future<bool> _rerunGate({
  required String repoRoot,
  required bool keep,
}) async {
  const missing = 'google_storage_bucket';
  final input = Directory(
    p.join(
      repoRoot,
      'packages/terradart_coverage/test/fixtures',
      _mergeFixture,
    ),
  );
  final before = Directory.systemTemp.createTempSync('terradart_rerun_before_');
  final after = Directory.systemTemp.createTempSync('terradart_rerun_after_');
  final errors = <String>[];
  try {
    final tree = scanModuleTree(input);
    writeProject(
      migrateTree(
        tree,
        name: _mergeFixture,
        manifests: _catalogWithout(missing),
      ),
      before,
    );
    // What the first run wrote, so the re-run can be shown not to touch it.
    final untouched = {
      for (final f in before.listSync(recursive: true).whereType<File>())
        p.relative(f.path, from: before.path): f.readAsStringSync(),
    };

    final rerun = rerunProject(before);
    writeRerun(rerun, before);
    for (final entry in untouched.entries) {
      final now = File(p.join(before.path, entry.key));
      if (now.readAsStringSync() != entry.value) {
        errors.add('${entry.key}: the re-run overwrote a file it did not own');
      }
    }
    if (rerun.changed.isEmpty) {
      errors.add('the re-run found nothing to translate');
      return _finish('$_mergeFixture --update', before, errors, keep: keep);
    }
    for (final m in rerun.changed) {
      final next = File(
        p.join(before.path, m.terraformDir, nextLeftoverFileName),
      ).readAsStringSync();
      for (final t in m.translated) {
        if (next.contains('"${t.address.split('.').last}"')) {
          errors.add(
            '${m.terraformDir}: ${t.address} translates but is still in '
            'terradart_leftover.next.tf',
          );
        }
      }
    }

    // Pasting, mechanically: the snippet is an extension on `Stack`, so
    // calling it on the Stack runs exactly the statements its body holds.
    final imports = StringBuffer("import 'dart:convert';\nimport 'dart:io';\n");
    final calls = StringBuffer();
    for (final m in rerun.changed) {
      final stack = m.stackFile;
      if (stack == null) {
        errors.add('${m.terraformDir}: no Stack file for the snippets');
        continue;
      }
      final lib = p.basenameWithoutExtension(stack);
      imports
        ..writeln("import 'package:$_mergeFixture/$lib.dart';")
        ..writeln("import 'package:$_mergeFixture/$lib.snippets.dart';");
      calls.writeln(
        "  File('pasted-${p.basename(m.terraformDir)}.json').writeAsStringSync("
        'jsonEncode((${m.stackClass}()..${m.methodName}()).synth().tfJson));',
      );
    }
    File(p.join(before.path, 'bin', 'rerun_check.dart'))
      ..createSync(recursive: true)
      ..writeAsStringSync('$imports\nvoid main() {\n$calls}\n');

    // The snippets must compile where they sit, and the pasted Stack must
    // synthesize what a one-shot migration of the whole tree does.
    writeProject(migrateTree(tree, name: _mergeFixture), after);
    if (!await _build(before, repoRoot, errors) ||
        !await _build(after, repoRoot, errors) ||
        !await _run(['dart', 'run', 'bin/rerun_check.dart'], before, errors)) {
      return _finish('$_mergeFixture --update', before, errors, keep: keep);
    }
    for (final m in rerun.changed) {
      final env = p.basename(m.terraformDir);
      final pasted = File(p.join(before.path, 'pasted-$env.json'));
      final oneShot = File(p.join(after.path, m.terraformDir, 'main.tf.json'));
      if (!pasted.existsSync() || !oneShot.existsSync()) {
        errors.add('$env: no synth output to compare');
        continue;
      }
      final diffs = <String>[];
      _diff(
        jsonDecode(oneShot.readAsStringSync()),
        jsonDecode(pasted.readAsStringSync()),
        r'$',
        diffs,
      );
      if (diffs.isNotEmpty) {
        errors.add(
          '$env: the pasted snippet does not round-trip '
          '(${diffs.length} difference${diffs.length == 1 ? '' : 's'}):\n'
          '${diffs.take(8).map((d) => '      $d').join('\n')}',
        );
      }
    }

    // A package with nothing left in Terraform has nothing to re-run — and
    // proves the re-run reads the sidecar, never the main.tf.json a Stack
    // writes, which would otherwise re-migrate the whole configuration.
    final quiet = rerunProject(after);
    if (!quiet.isEmpty) {
      errors.add(
        're-running a fully migrated package found '
        '${quiet.translatedCount} block(s) to translate; it must find none',
      );
    }

    final blocks = rerun.modules.fold(0, (n, m) => n + m.sidecarBlocks);
    stdout.writeln(
      'migrate_fixture_gates: $_mergeFixture --update: "$missing" curated → '
      '${rerun.translatedCount} of $blocks sidecar block(s) translate across '
      '${rerun.changed.length} directories, pasted synth identical, '
      'nothing overwritten',
    );
  } on Object catch (e, st) {
    errors.add('$_mergeFixture --update: $e\n$st');
  }
  if (errors.isEmpty && !keep) after.deleteSync(recursive: true);
  return _finish('$_mergeFixture --update', before, errors, keep: keep);
}

/// `--inline-locals` on [_localsFixture]: the same plan, from a Stack that
/// declares the literal locals instead of reading them from the sidecar.
///
/// Terraform is the judge here, not the migrator: both packages are planned
/// and their `resource_changes` compared. A local the flag inlined wrongly
/// shows up as a different value on the resource that reads it.
Future<bool> _inlineLocalsGate({
  required String repoRoot,
  required bool skipValidate,
  required bool keep,
}) async {
  final input = Directory(
    p.join(
      repoRoot,
      'packages/terradart_migrate/test/fixtures',
      _localsFixture,
    ),
  );
  final plain = Directory.systemTemp.createTempSync('terradart_locals_plain_');
  final temp = Directory.systemTemp.createTempSync('terradart_locals_inline_');
  final errors = <String>[];
  try {
    final tree = scanModuleTree(input);
    final before = migrateTree(tree, name: _localsFixture);
    final after = migrateTree(tree, name: _localsFixture, inlineLocals: true);
    writeProject(before, plain);
    writeProject(after, temp);

    // Without the flag every local stays; with it, the literal ones move and
    // the rest keep their entry. A run that inlines nothing proves nothing.
    final moved = [
      for (final m in after.modules.single.report.migrated)
        if (m.address.startsWith('local.'))
          m.address.substring('local.'.length),
    ];
    if (moved.isEmpty) {
      errors.add('--inline-locals moved no local out of the sidecar');
    }
    final keptBefore = {
      for (final k in before.modules.single.report.kept)
        if (k.address.startsWith('local.')) k.address,
    };
    final keptAfter = {
      for (final k in after.modules.single.report.kept)
        if (k.address.startsWith('local.')) k.address,
    };
    if (!keptBefore.containsAll(keptAfter) ||
        keptAfter.length >= keptBefore.length) {
      errors.add(
        'the sidecar did not shrink: $keptBefore before, $keptAfter after',
      );
    }
    // A local something still in Terraform reads may never leave, whatever
    // its value looks like.
    if (!keptAfter.contains('local.retention')) {
      errors.add(
        'local.retention left the sidecar, but the kept '
        'google_pubsub_topic.shards still reads it',
      );
    }
    if (errors.isNotEmpty) {
      return _finish(
        '$_localsFixture --inline-locals',
        temp,
        errors,
        keep: keep,
      );
    }

    for (final pkg in [plain, temp]) {
      if (!await _build(pkg, repoRoot, errors)) {
        return _finish(
          '$_localsFixture --inline-locals',
          temp,
          errors,
          keep: keep,
        );
      }
    }
    if (skipValidate) {
      stdout.writeln(
        'migrate_fixture_gates: $_localsFixture --inline-locals: '
        '${_count(moved.length, 'local')} inlined (${moved.join(', ')}), '
        'plan comparison skipped',
      );
      if (!keep) plain.deleteSync(recursive: true);
      return _finish(
        '$_localsFixture --inline-locals',
        temp,
        errors,
        keep: keep,
      );
    }

    final plans = <Map<String, Object?>>[];
    for (final pkg in [plain, temp]) {
      final dir = Directory(p.join(pkg.path, 'tf-out'));
      final plan = await _plan(dir, errors);
      if (plan == null) {
        return _finish(
          '$_localsFixture --inline-locals',
          temp,
          errors,
          keep: keep,
        );
      }
      plans.add(plan);
    }
    _diff(plans[0], plans[1], 'plan', errors);
    if (errors.isEmpty) {
      stdout.writeln(
        'migrate_fixture_gates: $_localsFixture --inline-locals: '
        '${_count(moved.length, 'local')} inlined (${moved.join(', ')}), '
        '${_count(keptAfter.length, 'local')} kept, '
        '${_count(plans[0].length, 'resource')} planned identically',
      );
    }
  } on Object catch (e, st) {
    errors.add('$_localsFixture --inline-locals: $e\n$st');
  }
  if (errors.isEmpty && !keep) plain.deleteSync(recursive: true);
  return _finish('$_localsFixture --inline-locals', temp, errors, keep: keep);
}

/// `terraform plan` in [dir], as address → the values the plan would write.
///
/// No credentials and no network beyond `terraform init`: nothing exists yet,
/// so the plan creates and reads nothing back.
Future<Map<String, Object?>?> _plan(Directory dir, List<String> errors) async {
  const init = ['terraform', 'init', '-input=false', '-no-color'];
  if (!await _run(init, dir, errors)) return null;
  const env = {'GOOGLE_OAUTH_ACCESS_TOKEN': 'terradart-migrate-gate'};
  // Exit 2 is "succeeded, with a non-empty plan" — creating everything is one.
  final plan = await Process.run(
    'terraform',
    const [
      'plan',
      '-refresh=false',
      '-input=false',
      '-no-color',
      '-detailed-exitcode',
      '-out=plan.out',
    ],
    workingDirectory: dir.path,
    environment: env,
  );
  if (plan.exitCode != 0 && plan.exitCode != 2) {
    errors.add(
      '${p.basename(dir.parent.path)}: terraform plan exited '
      '${plan.exitCode}:\n${plan.stdout}${plan.stderr}',
    );
    return null;
  }
  final show = await Process.run(
    'terraform',
    const ['show', '-json', 'plan.out'],
    workingDirectory: dir.path,
    environment: env,
  );
  if (show.exitCode != 0) {
    errors.add(
      '${p.basename(dir.parent.path)}: terraform show exited '
      '${show.exitCode}:\n${show.stderr}',
    );
    return null;
  }
  final json = jsonDecode(show.stdout as String) as Map<String, dynamic>;
  return {
    for (final change in (json['resource_changes'] as List? ?? const [])
        .cast<Map<String, dynamic>>())
      change['address'] as String: change['change'],
  };
}

/// The curated catalogs with [tfType] removed: the world before the wave
/// that added it.
List<MigrateManifest> _catalogWithout(String tfType) => [
      for (final m in allMigrateManifests)
        MigrateManifest(
          package: m.package,
          entries: [
            for (final e in m.entries)
              if (e.tfType != tfType) e,
          ],
          helpers: m.helpers,
          enums: m.enums,
        ),
    ];

String _count(int n, String what) => '$n $what${n == 1 ? '' : 's'}';

/// `pub get`, `analyze` and `run bin/infra.dart` in a generated package.
Future<bool> _build(
  Directory temp,
  String repoRoot,
  List<String> errors,
) async {
  final overrides = StringBuffer('\ndependency_overrides:\n');
  for (final pkg in _workspacePackages) {
    overrides
      ..writeln('  $pkg:')
      ..writeln('    path: ${p.join(repoRoot, 'packages', pkg)}');
  }
  File(
    p.join(temp.path, 'pubspec.yaml'),
  ).writeAsStringSync(overrides.toString(), mode: FileMode.append);
  for (final step in const [
    ['dart', 'pub', 'get', '--offline'],
    ['dart', 'analyze', '--fatal-infos', '--fatal-warnings', 'lib', 'bin'],
    ['dart', 'run', 'bin/infra.dart'],
  ]) {
    final before = errors.length;
    var passed = await _run(step, temp, errors);
    if (!passed && step[1] == 'pub') {
      errors.removeRange(before, errors.length);
      passed = await _run(['dart', 'pub', 'get'], temp, errors);
    }
    if (!passed) return false;
  }
  return true;
}

/// Deep JSON comparison, as the round-trip gate does it.
void _diff(Object? a, Object? b, String path, List<String> out) {
  if (a is Map && b is Map) {
    for (final key in {...a.keys, ...b.keys}) {
      if (!a.containsKey(key)) {
        out.add('$path.$key: only after the merge');
      } else if (!b.containsKey(key)) {
        out.add('$path.$key: only before the merge');
      } else {
        _diff(a[key], b[key], '$path.$key', out);
      }
    }
    return;
  }
  if (a is List && b is List) {
    if (a.length != b.length) {
      out.add('$path: ${a.length} entries before, ${b.length} after');
      return;
    }
    for (var i = 0; i < a.length; i++) {
      _diff(a[i], b[i], '$path[$i]', out);
    }
    return;
  }
  if (jsonEncode(a) != jsonEncode(b)) {
    out.add('$path: ${jsonEncode(a)} before, ${jsonEncode(b)} after');
  }
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
