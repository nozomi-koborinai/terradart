// ignore_for_file: avoid_print

/// The only writer of a coverage stack (`examples/<slug>_quickstart`). It
/// renders the lane's stack, proves it with the engine and commands required
/// CI runs on it, learns into `tool/coverage_dummies/<lane>.yaml` each value
/// the provider asks for, and leaves out a factory no value satisfies.
///
///     dart tool/coverage_stack.dart --lane <name> [--out <verdict.json>]
///
/// Exit 0: a verdict was written, green or broken. 64: usage. Anything else
/// is a crash, which leaves no verdict and the files as they were found.
library;

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';

import 'bump_plan.dart' show parseBumpLanes;
import 'coverage_dummies.dart';
import 'coverage_verdict.dart';
import 'example_synth_gates.dart' show synthExample;
import 'generate_appwrite_leftover_example.dart' show appwriteLeftoverStack;
import 'generate_aws_leftover_example.dart' show awsLeftoverStack;
import 'generate_azure_leftover_example.dart' show azureLeftoverStack;
import 'generate_cloudflare_leftover_example.dart' show cloudflareLeftoverStack;
import 'generate_data_source_leftover_example.dart' show googleDataSourceStack;
import 'provider_diagnostics.dart';
import 'validate_engine.dart'
    show kValidateLeg, providersNotOnOpenTofu, resolveOpenTofu;
import 'wrap_lanes.dart' show providersPath;

/// One lane's coverage stack generator: catalog sources and the ledger in,
/// Dart source out.
abstract interface class CoverageStackGenerator {
  /// `aws_leftover`; the stack is `examples/<slug>_quickstart`.
  String get slug;

  /// Names the stack's preamble declares, which a ledger value may read with
  /// `${name}`.
  Set<String> get bindings;

  /// The stack's `lib/main.dart`, unformatted, without the classes in
  /// [exclude].
  RenderedStack render(CoverageDummies dummies, {required Set<String> exclude});
}

final class RenderedStack {
  const RenderedStack(this.source, {this.unplaceable = const {}});

  final String source;

  /// Factories the generator could not construct, with why.
  final Map<String, String> unplaceable;
}

/// `tool/providers.yaml` `bump.exampleGenerator` path to its generator.
/// `tool/coverage_stack_test.dart` fails when the two disagree.
const Map<String, CoverageStackGenerator> kCoverageStacks = {
  'tool/generate_data_source_leftover_example.dart': googleDataSourceStack,
  'tool/generate_aws_leftover_example.dart': awsLeftoverStack,
  'tool/generate_cloudflare_leftover_example.dart': cloudflareLeftoverStack,
  'tool/generate_appwrite_leftover_example.dart': appwriteLeftoverStack,
  'tool/generate_azure_leftover_example.dart': azureLeftoverStack,
};

/// Everything one lane's run needs, read and validated at the boundary.
final class CoverageLane {
  CoverageLane({
    required this.name,
    required this.generator,
    required this.manifest,
    required this.dummies,
    required this.debtListed,
    String? stackPath,
  }) : stackPath =
           stackPath ?? 'examples/${generator.slug}_quickstart/lib/main.dart';

  /// The lane [name] of `tool/providers.yaml`, its migration manifest, its
  /// ledger, and the classes `tool/example_debt.yaml` lists. The synth gate
  /// forbids a listed class in synth output, so those are always left out.
  static CoverageLane read(String name) {
    final bump =
        parseBumpLanes(
          File(providersPath).readAsStringSync(),
        ).where((l) => l.lane.name == name).firstOrNull ??
        (throw ArgumentError.value(name, 'lane', 'no bump lane'));
    final generator =
        kCoverageStacks[bump.exampleGenerator] ??
        (throw ArgumentError.value(name, 'lane', 'no coverage stack'));
    final manifest =
        manifestForPackage(p.basename(bump.lane.outputPackage)) ??
        (throw StateError('no migration manifest for ${bump.lane.name}'));
    return CoverageLane(
      name: name,
      generator: generator,
      manifest: manifest,
      dummies: CoverageDummies.load(
        name,
        manifest: manifest,
        bindings: generator.bindings,
      ),
      debtListed: _debtListed(File('tool/example_debt.yaml')),
    );
  }

  final String name;
  final CoverageStackGenerator generator;
  final MigrateManifest manifest;
  final CoverageDummies dummies;
  final Set<String> debtListed;
  final String stackPath;

  /// The factory the block [address] instantiates.
  FactoryRef? factoryAt(TfAddress address) {
    final entry = manifest.entryFor(
      address.type,
      address.dataSource ? CatalogKind.dataSource : CatalogKind.resource,
    );
    return entry == null ? null : FactoryRef._(entry);
  }

  /// The factory class [className].
  FactoryRef factoryNamed(String className) => FactoryRef._(
    manifest.entries.where((e) => e.className == className).firstOrNull ??
        (throw StateError('$className is not in the $name manifest')),
  );
}

final class FactoryRef {
  FactoryRef._(MigrateEntry entry)
    : className = entry.className,
      tfType = entry.tfType,
      kind = entry.kind == CatalogKind.dataSource
          ? FactoryKind.dataSource
          : FactoryKind.resource;

  final String className;
  final String tfType;
  final FactoryKind kind;

  ExcludedFactory excluded(ExclusionCause cause) => ExcludedFactory(
    className: className,
    tfType: tfType,
    kind: kind,
    cause: cause,
  );
}

Set<String> _debtListed(File debt) => {
  if (debt.existsSync())
    for (final line in debt.readAsLinesSync())
      if (RegExp(r'^(\w+):').firstMatch(line) case final m?) m[1]!,
};

/// What required CI says about one example.
abstract interface class Oracle {
  /// Synths `examples/<slug>_quickstart`, runs `kValidateLeg` in its
  /// `tf-out` (`validate -json`), then `dart analyze` on the example.
  Future<OracleRun> run(String slug);

  /// `validate -json` alone on [mainTfJson] in the initialized `tf-out`.
  Future<List<Rejection>> revalidate(String slug, String mainTfJson);
}

sealed class OracleRun {
  const OracleRun();
}

final class OracleGreen extends OracleRun {
  const OracleGreen(this.engine, this.providers);

  /// `tofu 1.13.1`.
  final String engine;

  /// `hashicorp/aws` → `6.68.0`.
  final Map<String, String> providers;
}

/// `validate` reported errors.
final class OracleRejected extends OracleRun {
  const OracleRejected(this.rejections, this.mainTfJson);

  final List<Rejection> rejections;

  /// The `tf-out/main.tf.json` the rejections point into.
  final String mainTfJson;
}

final class OracleBroken extends OracleRun {
  const OracleBroken(this.stage, this.log);

  final OracleStage stage;
  final String log;
}

/// Passes that may learn values. Later passes only leave factories out, so
/// the run ends.
const kLearnPasses = 3;

/// Trial rounds one search may spend, and the wall time it may take.
const kMaxRounds = 6;
const kSearchBudget = Duration(minutes: 20);

/// Renders [lane]'s coverage stack, proves it with [oracle], learns the
/// values the provider asks for, leaves out what it cannot place, and writes
/// the stack and the ledger. Afterwards the files hold either what the run
/// found or a green stack.
Future<CoverageVerdict> runCoverageStack(
  CoverageLane lane, {
  Oracle? oracle,
  Future<void> Function(String path) format = formatStack,
}) async {
  oracle ??= ProcessOracle();
  final slug = lane.generator.slug;
  final stack = File(lane.stackPath);
  final ledger = File(lane.dummies.path);
  final before = (
    stack: stack.existsSync() ? stack.readAsStringSync() : null,
    ledger: ledger.readAsStringSync(),
  );
  void restore() {
    if (before.stack case final s?) {
      stack.writeAsStringSync(s);
    } else if (stack.existsSync()) {
      stack.deleteSync();
    }
    ledger.writeAsStringSync(before.ledger);
  }

  final exclude = {...lane.debtListed};
  final excluded = <String, ExcludedFactory>{};
  final learned = <DummyKey, (LearnedDummy, ValueRejection)>{};
  try {
    for (var pass = 1; ; pass++) {
      final dummies = lane.dummies.revised({
        for (final MapEntry(:key, :value) in learned.entries) key: value.$1,
      });
      try {
        var rendered = lane.generator.render(dummies, exclude: exclude);
        while (rendered.unplaceable.isNotEmpty) {
          for (final MapEntry(key: className, value: why)
              in rendered.unplaceable.entries) {
            if (!exclude.add(className)) {
              throw StateError('the generator rendered excluded $className');
            }
            excluded[className] = lane
                .factoryNamed(className)
                .excluded(GeneratorCannotPlace(why));
          }
          rendered = lane.generator.render(dummies, exclude: exclude);
        }
        stack
          ..createSync(recursive: true)
          ..writeAsStringSync(rendered.source);
        await format(stack.path);
      } on Object catch (e) {
        restore();
        return CoverageBroken(
          slug: slug,
          stage: OracleStage.render,
          logExcerpt: _excerpt('$e'),
        );
      }

      switch (await oracle.run(slug)) {
        case OracleGreen(:final engine, :final providers):
          final pruned = [for (final k in lane.dummies.stale) k.value]..sort();
          if (learned.isNotEmpty || pruned.isNotEmpty) dummies.save();
          return CoverageGreen(
            slug: slug,
            engine: engine,
            providers: providers,
            learned: [
              for (final MapEntry(:key, value: (l, r)) in learned.entries)
                LearnedEntry(
                  key: key.value,
                  value: l.candidate.value.json,
                  source: l.candidate.source,
                  rejected: r.rejected,
                  at: r.at,
                  detail: r.message,
                ),
            ],
            excluded: excluded.values.toList(),
            pruned: pruned,
          );
        case OracleBroken(:final stage, :final log):
          restore();
          return CoverageBroken(
            slug: slug,
            stage: stage,
            logExcerpt: _excerpt(log),
          );
        case OracleRejected(:final rejections, :final mainTfJson):
          final stackLevel = rejections.whereType<StackRejection>().toList();
          final outside = [
            for (final r in rejections)
              if (_addressOf(r) case final a? when lane.factoryAt(a) == null) r,
          ];
          if (stackLevel.isNotEmpty || outside.isNotEmpty) {
            restore();
            return CoverageBroken(
              slug: slug,
              stage: OracleStage.validate,
              logExcerpt: _excerpt(
                [...stackLevel, ...outside].map(_describe).join('\n'),
              ),
            );
          }
          var progressed = false;
          void leaveOut(TfAddress address, ProviderRejected cause) {
            final factory = lane.factoryAt(address)!;
            if (exclude.add(factory.className)) {
              excluded[factory.className] = factory.excluded(cause);
              progressed = true;
            }
          }

          final groups = <DummyKey, List<ValueRejection>>{};
          for (final r in rejections) {
            switch (r) {
              case ValueRejection():
                final key = dummies.keyAt(r.address, r.path);
                if (pass <= kLearnPasses &&
                    key != null &&
                    !learned.containsKey(key)) {
                  (groups[key] ??= []).add(r);
                } else {
                  learned.remove(key);
                  leaveOut(r.address, _cause(r));
                }
              case BlockRejection():
                leaveOut(r.address, _cause(r));
              case StackRejection():
            }
          }
          final found = await search(slug, groups, mainTfJson, dummies, oracle);
          for (final MapEntry(key: key, value: at) in groups.entries) {
            if (found[key] case final l?) {
              learned[key] = (l, at.first);
              progressed = true;
            } else {
              for (final r in at) {
                leaveOut(r.address, _cause(r));
              }
            }
          }
          if (!progressed) {
            throw StateError(
              'pass $pass neither learned a value nor left a factory out:\n'
              '${rejections.map(_describe).join('\n')}',
            );
          }
      }
    }
  } catch (_) {
    restore();
    rethrow;
  }
}

/// Candidates for one rejected key, best first: what the messages name, then
/// what other ledger entries give a parameter of the same name. The rejected
/// values and repeats are dropped.
List<Candidate> candidatesFor(
  DummyKey key,
  List<ValueRejection> at,
  CoverageDummies dummies,
) {
  final rejected = {for (final r in at) r.rejected};
  final seen = <LiteralDummy>{};
  return [
    for (final c in [
      for (final r in at) ...shapesNamedBy(r.message),
      ...dummies.siblingsOf(key),
    ])
      if (!rejected.contains(c.value.json) && seen.add(c.value)) c,
  ];
}

/// Trial rounds at the Terraform layer: each round patches every unresolved
/// key's next candidate into [mainTfJson] and revalidates once. A key none
/// of whose blocks draws a rejection is learned. Stops when every queue is
/// empty, after [kMaxRounds], or past [kSearchBudget].
Future<Map<DummyKey, LearnedDummy>> search(
  String slug,
  Map<DummyKey, List<ValueRejection>> groups,
  String mainTfJson,
  CoverageDummies dummies,
  Oracle oracle,
) async {
  final queues = {
    for (final MapEntry(:key, value: at) in groups.entries)
      key: candidatesFor(key, at, dummies),
  };
  final learned = <DummyKey, LearnedDummy>{};
  final clock = Stopwatch()..start();
  for (var round = 0; round < kMaxRounds; round++) {
    if (clock.elapsed > kSearchBudget) break;
    final trial = {
      for (final MapEntry(:key, value: q) in queues.entries)
        if (q.isNotEmpty) key: q.removeAt(0),
    };
    if (trial.isEmpty) break;
    final chosen = trialPatches({
      for (final MapEntry(:key, value: c) in trial.entries)
        key.value: (
          json: c.value.json,
          paths: [for (final r in groups[key]!) r.jsonPath],
        ),
    });
    for (final MapEntry(:key, value: c) in trial.entries) {
      if (chosen.deferred.contains(key.value)) queues[key]!.insert(0, c);
    }
    if (chosen.patches.isEmpty) break;
    final left = await oracle.revalidate(
      slug,
      patchJson(mainTfJson, {
        for (final (path, json) in chosen.patches) path: json,
      }),
    );
    for (final MapEntry(:key, value: c) in trial.entries) {
      if (chosen.deferred.contains(key.value)) continue;
      final at = groups[key]!;
      final paths = {for (final r in at) r.at};
      final blocks = {for (final r in at) r.address};
      final still = left.any(
        (r) => switch (r) {
          ValueRejection() => paths.contains(r.at),
          BlockRejection() => blocks.contains(r.address),
          StackRejection() => true,
        },
      );
      if (still) continue;
      final r = at.first;
      learned[key] = LearnedDummy(
        c,
        '${r.at} rejected ${r.rejected}: ${_firstLine(r.message)} '
        '(${c.source})',
      );
      queues.remove(key);
    }
  }
  return learned;
}

({List<(List<Object> path, Object json)> patches, Set<String> deferred})
trialPatches(Map<String, ({Object json, List<List<Object>> paths})> trial) {
  final patches = <(List<Object>, Object)>[];
  final deferred = <String>{};
  bool overlaps(List<Object> path) =>
      patches.any((kept) => _pathsOverlap(kept.$1, path));
  final entries = trial.entries.toList()
    ..sort((a, b) {
      int longest(List<List<Object>> paths) =>
          paths.fold<int>(0, (n, p) => p.length > n ? p.length : n);
      return longest(b.value.paths).compareTo(longest(a.value.paths));
    });
  for (final MapEntry(:key, :value) in entries) {
    final specific = _uniquePaths(_specificPaths(value.paths));
    if (specific.isEmpty || specific.any(overlaps)) {
      deferred.add(key);
      continue;
    }
    for (final path in specific) {
      patches.add((path, value.json));
    }
  }
  if (patches.isEmpty && entries.isNotEmpty) {
    final first = entries.first;
    final longest = first.value.paths.reduce(
      (a, b) => a.length >= b.length ? a : b,
    );
    return (
      patches: [(longest, first.value.json)],
      deferred: {for (final e in entries.skip(1)) e.key},
    );
  }
  return (patches: patches, deferred: deferred);
}

List<List<Object>> _specificPaths(List<List<Object>> paths) => [
  for (final path in paths)
    if (!paths.any(
      (other) => other.length > path.length && _pathsOverlap(path, other),
    ))
      path,
];

List<List<Object>> _uniquePaths(List<List<Object>> paths) {
  final kept = <List<Object>>[];
  for (final path in paths) {
    if (kept.any((other) => _pathsOverlap(path, other))) continue;
    kept.add(path);
  }
  return kept;
}

bool _pathsOverlap(List<Object> a, List<Object> b) {
  final n = a.length < b.length ? a.length : b.length;
  for (var i = 0; i < n; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

ProviderRejected _cause(Rejection r) => switch (r) {
  ValueRejection() => ProviderRejected(r.at, r.rejected, r.message),
  BlockRejection() => ProviderRejected('${r.address}', null, r.message),
  StackRejection() => ProviderRejected('', null, r.message),
};

TfAddress? _addressOf(Rejection r) => switch (r) {
  ValueRejection() => r.address,
  BlockRejection() => r.address,
  StackRejection() => null,
};

String _describe(Rejection r) => switch (r) {
  ValueRejection() => '${r.at}: ${r.message}',
  BlockRejection() => '${r.address}: ${r.message}',
  StackRejection() => r.message,
};

String _firstLine(String s) => s.split('\n').first.trim();

String _excerpt(String log) {
  final lines = log.trimRight().split('\n');
  final tail = lines.length > 60 ? lines.sublist(lines.length - 60) : lines;
  final text = tail.join('\n');
  return text.length > 6000 ? text.substring(text.length - 6000) : text;
}

/// Formats a written stack as CI expects it. `dart format` splits long
/// literals without the trailing commas `require_trailing_commas` wants, so
/// the fix runs between two format passes.
Future<void> formatStack(String path) async {
  for (final args in [
    ['format', path],
    ['fix', '--apply', '--code=require_trailing_commas', path],
    ['format', path],
  ]) {
    final r = await Process.run(Platform.resolvedExecutable, args);
    if (r.exitCode != 0) {
      throw ProcessException(
        'dart',
        args,
        '${r.stdout}${r.stderr}',
        r.exitCode,
      );
    }
  }
}

/// Synthesizes and validates with the engine `tool/validate_engine.dart`
/// picks, the commands of `kValidateLeg`, and `dart analyze` as the CI
/// example gates run it.
final class ProcessOracle implements Oracle {
  ProcessOracle();

  String? _engine;

  @override
  Future<OracleRun> run(String slug) async {
    final example = 'examples/${slug}_quickstart';
    final tfOut = '$example/tf-out';
    final errors = <String>[];
    final json = await synthExample('${slug}_quickstart', errors);
    if (json == null) return OracleBroken(OracleStage.synth, errors.join('\n'));
    final engine = _engine = await _pickEngine(json);
    final [fmt, init, validate] = kValidateLeg;
    for (final (stage, args) in [
      (OracleStage.fmt, fmt),
      (OracleStage.init, init),
    ]) {
      final r = await Process.run(engine, args, workingDirectory: tfOut);
      if (r.exitCode != 0) return OracleBroken(stage, '${r.stdout}${r.stderr}');
    }
    final mainTfJson = File('$tfOut/main.tf.json').readAsStringSync();
    final r = await Process.run(engine, [
      ...validate,
      '-json',
    ], workingDirectory: tfOut);
    final rejections = _rejections(r, mainTfJson);
    if (rejections == null) {
      return OracleBroken(OracleStage.validate, '${r.stdout}${r.stderr}');
    }
    if (rejections.isNotEmpty) return OracleRejected(rejections, mainTfJson);
    final analyze = await Process.run(Platform.resolvedExecutable, [
      'analyze',
      '--fatal-infos',
      '--fatal-warnings',
      example,
    ]);
    if (analyze.exitCode != 0) {
      return OracleBroken(
        OracleStage.analyze,
        '${analyze.stdout}${analyze.stderr}',
      );
    }
    final version = await Process.run(engine, [
      'version',
      '-json',
    ], workingDirectory: tfOut);
    final v = jsonDecode(version.stdout as String) as Map<String, Object?>;
    final selections = (v['provider_selections'] as Map? ?? const {})
        .cast<String, String>();
    return OracleGreen(
      '${p.basename(engine) == 'terraform' ? 'terraform' : 'tofu'} '
      '${v['terraform_version']}',
      {
        for (final MapEntry(:key, :value) in selections.entries)
          key.split('/').skip(key.split('/').length - 2).join('/'): value,
      },
    );
  }

  @override
  Future<List<Rejection>> revalidate(String slug, String mainTfJson) async {
    final tfOut = 'examples/${slug}_quickstart/tf-out';
    final file = File('$tfOut/main.tf.json');
    final synthesized = file.readAsStringSync();
    try {
      file.writeAsStringSync(mainTfJson);
      final r = await Process.run(_engine!, [
        ...kValidateLeg.last,
        '-json',
      ], workingDirectory: tfOut);
      return _rejections(r, mainTfJson) ??
          [StackRejection('validate -json failed', '${r.stdout}${r.stderr}')];
    } finally {
      file.writeAsStringSync(synthesized);
    }
  }

  /// The errors of a `validate -json` run, or null when it printed no report
  /// or reported invalid without an error.
  static List<Rejection>? _rejections(ProcessResult r, String mainTfJson) {
    try {
      final report = jsonDecode(r.stdout as String);
      if (report is Map && report['valid'] == true) return const [];
      final rejections = parseValidateJson(r.stdout as String, mainTfJson);
      return rejections.isEmpty ? null : rejections;
    } on FormatException {
      return null;
    }
  }

  static Future<String> _pickEngine(Map<String, dynamic> json) async {
    if (providersNotOnOpenTofu(json).isNotEmpty) return 'terraform';
    final tofu = await resolveOpenTofu();
    if (tofu != null) return tofu;
    stderr.writeln(
      'coverage_stack: validating with terraform on PATH; CI validates with '
      'OpenTofu.',
    );
    return 'terraform';
  }
}

Future<void> main(List<String> args) async {
  final parser = ArgParser()
    ..addOption('lane', help: 'tool/providers.yaml lane with a coverage stack')
    ..addOption('out', help: 'where to write the verdict JSON');
  final ArgResults flags;
  try {
    flags = parser.parse(args);
  } on FormatException catch (e) {
    stderr.writeln('${e.message}\n${parser.usage}');
    exit(64);
  }
  final name = flags.option('lane');
  if (name == null || flags.rest.isNotEmpty) {
    stderr.writeln(
      'usage: dart tool/coverage_stack.dart --lane <name> [--out <json>]\n'
      '${parser.usage}',
    );
    exit(64);
  }
  final CoverageLane lane;
  try {
    lane = CoverageLane.read(name);
  } on ArgumentError catch (e) {
    stderr.writeln('coverage_stack: ${e.message}: ${e.invalidValue}');
    exit(64);
  }
  final verdict = await runCoverageStack(lane);
  if (flags.option('out') case final out?) {
    File(out).writeAsStringSync(
      '${const JsonEncoder.withIndent('  ').convert(encodeVerdict(verdict))}\n',
    );
  }
  print(switch (verdict) {
    CoverageGreen(:final engine, :final learned, :final excluded) =>
      'coverage stack ${verdict.slug}: green ($engine), '
          '${learned.length} learned, ${excluded.length} left out',
    CoverageBroken(:final stage, :final logExcerpt) =>
      'coverage stack ${verdict.slug}: fails ${stage.name}\n$logExcerpt',
  });
}
