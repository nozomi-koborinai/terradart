import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';

import 'lane_surface.dart';
import 'migrate_fixture_pins.dart';
import 'wrap_lanes.dart';

const _treeFixtures = ['config_tree', 'real_plan_src'];

const _sharedLaneFixtures = [
  'lanes/time',
  'lanes/google_cloudflare',
  'lanes/aws_cloudflare',
  'lanes/azure_cloudflare',
  'lanes/google_google_beta',
  'lanes/google_azure',
  'lanes/aliased',
];

final class FixturePlan {
  const FixturePlan({required this.run, required this.failures});

  final List<String> run;
  final List<String> failures;
}

@visibleForTesting
FixturePlan planFixtures({
  required List<WrapLane> lanes,
  required Set<String> onDisk,
}) {
  final run = [
    ..._treeFixtures,
    for (final lane in lanes) 'lanes/${lane.name.replaceAll('-', '_')}',
    ..._sharedLaneFixtures,
  ];
  final failures = <String>[];
  final seen = <String>{};
  for (final path in run) {
    if (!seen.add(path)) {
      failures.add(
        '$path: listed twice; a tool/providers.yaml lane owns it now, '
        'so drop it from _sharedLaneFixtures',
      );
    }
  }
  for (final path in seen) {
    if (!onDisk.contains(path)) {
      failures.add(
        '$path: the gate migrates this fixture but the directory is '
        "missing (every tool/providers.yaml lane needs lanes/<lane> with "
        "'-' as '_'; every other entry needs its directory)",
      );
    }
  }
  final unlisted = [
    for (final path in onDisk)
      if (path.startsWith('lanes/') && !seen.contains(path)) path,
  ]..sort();
  for (final path in unlisted) {
    failures.add(
      '$path: a fixture directory the gate never migrates; add it to '
      '_sharedLaneFixtures in tool/migrate_fixture_gates.dart',
    );
  }
  return FixturePlan(run: run, failures: failures);
}

Set<String> _fixturesOnDisk(String fixturesRoot) {
  final root = Directory(fixturesRoot);
  if (!root.existsSync()) return {};
  final names = <String>{};
  for (final entity in root.listSync()) {
    if (entity is! Directory) continue;
    final name = p.basename(entity.path);
    if (name == 'lanes') {
      for (final child in Directory(entity.path).listSync()) {
        if (child is Directory) names.add('lanes/${p.basename(child.path)}');
      }
    } else {
      names.add(name);
    }
  }
  return names;
}

@visibleForTesting
List<String> pinDrift(
  String fixture,
  List<({String relPath, TfModule module, String synthesized})> modules,
) {
  final failures = <String>[];
  var readable = 0;
  for (final module in modules) {
    final where = module.relPath == '.'
        ? fixture
        : '$fixture/${module.relPath}';
    final emitted = _emittedPins(module.synthesized, where, failures);
    for (final expr in module.module.requiredProviders.values) {
      final pin = _fixturePin(expr);
      if (pin.unreadableVersion) {
        failures.add(
          '$where: required_providers source "${pin.source}" version is '
          'not a literal string',
        );
        continue;
      }
      final version = pin.version;
      final source = pin.source;
      if (version == null || source == null) continue;
      readable++;
      if (emitted.bad.contains(source)) continue;
      final emittedVersion = emitted.versions[source];
      if (emittedVersion == null) {
        failures.add(
          '$where: required_providers source "$source" pins "$version"; '
          'the synthesized main.tf.json has no provider with that source',
        );
      } else if (emittedVersion != version) {
        failures.add(
          '$where: required_providers source "$source" pins "$version"; '
          'the Stack emits "$emittedVersion", the version terraform '
          'validate installs',
        );
      }
    }
  }
  if (fixture.startsWith('lanes/') && readable == 0) {
    failures.add('$fixture: no readable required_providers pin');
  }
  return failures;
}

({String? source, String? version, bool unreadableVersion}) _fixturePin(
  Expr expr,
) {
  if (expr is! ObjectExpr) {
    return (source: null, version: null, unreadableVersion: false);
  }
  final source = expr.item('source')?.value.constantString;
  if (source == null) {
    return (source: null, version: null, unreadableVersion: false);
  }
  final versionExpr = expr.item('version')?.value;
  final version = versionExpr?.constantString;
  if (versionExpr != null && version == null) {
    return (source: source, version: null, unreadableVersion: true);
  }
  return (source: source, version: version, unreadableVersion: false);
}

({Map<String, String> versions, Set<String> bad}) _emittedPins(
  String synthesized,
  String where,
  List<String> failures,
) {
  final versions = <String, String>{};
  final bad = <String>{};
  final decoded = jsonDecode(synthesized);
  if (decoded is! Map<String, dynamic>) return (versions: versions, bad: bad);
  final terraform = decoded['terraform'];
  if (terraform is! Map<String, dynamic>) {
    return (versions: versions, bad: bad);
  }
  final providers = terraform['required_providers'];
  if (providers is! Map<String, dynamic>) {
    return (versions: versions, bad: bad);
  }
  for (final value in providers.values) {
    if (value is! Map<String, dynamic>) continue;
    final source = value['source'];
    final version = value['version'];
    if (source is! String) continue;
    if (version is! String) {
      bad.add(source);
      failures.add(
        '$where: required_providers source "$source" version is not a '
        'literal string',
      );
      continue;
    }
    versions[source] = version;
  }
  return (versions: versions, bad: bad);
}

const _mergeFixture = 'config_tree';

const _terraformInit = [
  'terraform',
  'init',
  '-backend=false',
  '-input=false',
  '-no-color',
];

final List<WrapLane> _lanes = parseWrapLanes(
  File(providersPath).readAsStringSync(),
);

final List<String> _workspacePackages = migrateGatePackages(_lanes);

final class _TerraformCacheSerializer {
  Future<void> _tail = Future<void>.value();

  Future<T> run<T>(Future<T> Function() action) async {
    final prev = _tail;
    final gate = Completer<void>();
    _tail = gate.future;
    await prev;
    try {
      return await action();
    } finally {
      gate.complete();
    }
  }
}

final _terraformCacheSerializer = _TerraformCacheSerializer();

Future<bool> _initAndValidateTerraform(Directory dir, List<String> errors) =>
    _terraformCacheSerializer.run(() async {
      if (!await _run(_terraformInit, dir, errors)) return false;
      return _run(['terraform', 'validate', '-no-color'], dir, errors);
    });

Future<void> main(List<String> args) async {
  final skipValidate = args.contains('--skip-validate');
  final keep = args.contains('--keep');
  final repoRoot = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
  final plan = planFixtures(
    lanes: _lanes,
    onDisk: _fixturesOnDisk(p.join(repoRoot, migrateFixturesRoot)),
  );
  if (plan.failures.isNotEmpty) {
    for (final failure in plan.failures) {
      stderr.writeln('migrate_fixture_gates: $failure');
    }
    stdout.writeln('migrate_fixture_gates: FAILED');
    exitCode = 1;
    return;
  }
  final tasks = <Future<({bool ok, String out, String err})> Function()>[
    for (final fixture in plan.run)
      () => _gate(
        fixture,
        repoRoot: repoRoot,
        skipValidate: skipValidate,
        keep: keep,
      ),
    () => _mergeEnvGate(
      repoRoot: repoRoot,
      skipValidate: skipValidate,
      keep: keep,
    ),
  ];
  final results = List<({bool ok, String out, String err})?>.filled(
    tasks.length,
    null,
  );
  final workers = Platform.numberOfProcessors.clamp(1, tasks.length);
  var next = 0;
  Future<void> worker() async {
    while (true) {
      final i = next++;
      if (i >= tasks.length) return;
      results[i] = await tasks[i]();
    }
  }

  await Future.wait([for (var w = 0; w < workers; w++) worker()]);
  var ok = true;
  for (final r in results) {
    final result = r!;
    if (result.out.isNotEmpty) stdout.write(result.out);
    if (result.err.isNotEmpty) stderr.write(result.err);
    ok = ok && result.ok;
  }
  stdout.writeln(
    ok ? 'migrate_fixture_gates: OK' : 'migrate_fixture_gates: FAILED',
  );
  exitCode = ok ? 0 : 1;
}

Future<({bool ok, String out, String err})> _mergeEnvGate({
  required String repoRoot,
  required bool skipValidate,
  required bool keep,
}) async {
  final input = Directory(p.join(repoRoot, migrateFixturesRoot, _mergeFixture));
  final plain = Directory.systemTemp.createTempSync('terradart_merge_plain_');
  final temp = Directory.systemTemp.createTempSync('terradart_merge_envs_');
  final errors = <String>[];
  final out = StringBuffer();
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
      return _finish(
        '$_mergeFixture --merge-envs',
        temp,
        errors,
        out,
        keep: keep,
      );
    }
    final built = await Future.wait([
      _build(plain, repoRoot, errors),
      _build(temp, repoRoot, errors),
    ]);
    if (built.any((ok) => !ok)) {
      return _finish(
        '$_mergeFixture --merge-envs',
        temp,
        errors,
        out,
        keep: keep,
      );
    }

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
        await _initAndValidateTerraform(dir, errors);
      }
    }
    final envs = [for (final m in merged) ...m.envs];
    out.writeln(
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
  return _finish('$_mergeFixture --merge-envs', temp, errors, out, keep: keep);
}

String _count(int n, String what) => '$n $what${n == 1 ? '' : 's'}';

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

Future<({bool ok, String out, String err})> _gate(
  String fixture, {
  required String repoRoot,
  required bool skipValidate,
  required bool keep,
}) async {
  final input = Directory(p.join(repoRoot, migrateFixturesRoot, fixture));
  final temp = Directory.systemTemp.createTempSync(
    'terradart_migrate_fixture_',
  );
  final errors = <String>[];
  final out = StringBuffer();
  try {
    final tree = scanModuleTree(input);
    final project = migrateTree(tree, name: fixture);
    writeProject(project, temp);
    for (final m in project.modules) {
      for (final k in m.report.kept) {
        if (m.sidecar.placements[k.address] == null) {
          errors.add(
            '${m.dir.relPath}: ${k.address} is kept (${k.reason}) but landed '
            'in no sidecar file',
          );
        }
      }
    }

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
        errors.removeRange(before, errors.length);
        passed = await _run(['dart', 'pub', 'get'], temp, errors);
      }
      if (!passed) return _finish(fixture, temp, errors, out, keep: keep);
    }
    final dirs = [for (final m in project.modules) m.terraformDir];
    for (final d in dirs) {
      if (!File(p.join(temp.path, d, 'main.tf.json')).existsSync()) {
        errors.add('$d: no main.tf.json after synth');
      }
    }
    if (_treeContains(input, 'user_project_override') &&
        !_treeContains(
          Directory(p.join(temp.path, 'tf-out')),
          'user_project_override',
        )) {
      errors.add(
        '$fixture: user_project_override was dropped; it is in neither the '
        'synthesized JSON nor the sidecar',
      );
    }
    if (errors.isNotEmpty) {
      return _finish(fixture, temp, errors, out, keep: keep);
    }
    errors.addAll(
      pinDrift(fixture, [
        for (final m in project.modules)
          (
            relPath: m.dir.relPath,
            module: m.dir.module,
            synthesized: File(
              p.join(temp.path, m.terraformDir, 'main.tf.json'),
            ).readAsStringSync(),
          ),
      ]),
    );
    var validatedDirs = dirs.length;
    if (!skipValidate) {
      validatedDirs = 0;
      for (final d in dirs) {
        final dir = Directory(p.join(temp.path, d));
        final mainJson = File(p.join(dir.path, 'main.tf.json'));
        if (mainJson.existsSync() &&
            mainJson.readAsStringSync().contains('"configuration_aliases"')) {
          // Terraform cannot validate a configuration_aliases child module standalone; root validate covers it.
          continue;
        }
        if (await _initAndValidateTerraform(dir, errors)) {
          validatedDirs++;
        }
      }
    }
    final validated = skipValidate
        ? ' (terraform validate skipped)'
        : ', $validatedDirs directories validated';
    out.writeln(
      'migrate_fixture_gates: $fixture: ${project.modules.length} modules, '
      '${project.migratedCount} migrated, ${project.keptCount} kept'
      '$validated',
    );
  } on Object catch (e, st) {
    errors.add('$fixture: $e\n$st');
  }
  return _finish(fixture, temp, errors, out, keep: keep);
}

({bool ok, String out, String err}) _finish(
  String fixture,
  Directory temp,
  List<String> errors,
  StringBuffer out, {
  required bool keep,
}) {
  final err = StringBuffer();
  if (errors.isEmpty) {
    if (keep) {
      out.writeln('migrate_fixture_gates: $fixture kept at ${temp.path}');
    } else {
      temp.deleteSync(recursive: true);
    }
    return (ok: true, out: out.toString(), err: '');
  }
  err.writeln(
    'migrate_fixture_gates: $fixture FAILED (package kept at ${temp.path}):',
  );
  for (final e in errors) {
    err.writeln('  $e');
  }
  return (ok: false, out: out.toString(), err: err.toString());
}

bool _treeContains(Directory dir, String needle) {
  if (!dir.existsSync()) return false;
  for (final entity in dir.listSync(recursive: true)) {
    if (entity is File && entity.readAsStringSync().contains(needle)) {
      return true;
    }
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
