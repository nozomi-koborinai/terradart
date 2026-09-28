// bump_lane_gates.dart — the QA gates a weekly schema bump runs for one
// tool/providers.yaml lane after regenerating it; their exit code and log
// feed the drift report's gate section.
//
// Usage (from repo root):
//   dart tool/bump_lane_gates.dart --lane aws
//
// google (and its beta ride-along) runs the universal invariants, which
// include the beta/GA overlap gate. Every other lane runs its package's
// tests — the catalog-matches-fixture and credential checks live there —
// its `terradart lint-override`, and `dart analyze` over every example
// that depends on the package (a regenerated API can break them).
//
// exit: 0 every gate passed; 1 a gate failed; 64 usage error.
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'wrap_lanes.dart';

/// One gate: `dart <args>` run in [workingDirectory] (repo-relative).
@immutable
class LaneGate {
  const LaneGate(this.label, this.workingDirectory, this.args);

  final String label;
  final String workingDirectory;
  final List<String> args;

  @override
  String toString() =>
      '$label: (cd $workingDirectory && dart ${args.join(' ')})';
}

/// The examples/ packages whose pubspec depends on [package], sorted.
List<String> dependentExamples(String repoRoot, String package) {
  final dir = Directory(p.join(repoRoot, 'examples'));
  if (!dir.existsSync()) return const [];
  return [
    for (final e in dir.listSync().whereType<Directory>())
      if (File(p.join(e.path, 'pubspec.yaml')) case final pubspec
          when pubspec.existsSync() &&
              _dependsOn(pubspec.readAsStringSync(), package))
        p.join('examples', p.basename(e.path)),
  ]..sort();
}

bool _dependsOn(String pubspecYaml, String package) {
  final doc = loadYaml(pubspecYaml);
  if (doc is! YamlMap) return false;
  return [doc['dependencies'], doc['dev_dependencies']]
      .any((deps) => deps is YamlMap && deps.containsKey(package));
}

@visibleForTesting
List<LaneGate> laneGates(
  WrapLane lane, {
  List<String> examples = const [],
}) =>
    switch (lane.name) {
      'google' || 'google-beta' => const [
          LaneGate('universal QA gates', codegenDir, [
            'test',
            'test/codegen/universal_invariants_test.dart',
            '-r',
            'expanded',
          ]),
        ],
      _ => [
          LaneGate(
            '${p.basename(lane.outputPackage)} tests',
            lane.outputPackage,
            const ['test', '-r', 'expanded'],
          ),
          LaneGate('terradart lint-override', '.', [
            'tool/wrap_lanes.dart',
            '--lane',
            lane.name,
            '--gate',
            'lint',
          ]),
          if (examples.isNotEmpty)
            LaneGate('dependent examples analyze', '.', [
              'analyze',
              ...examples,
            ]),
        ],
    };

Future<void> main(List<String> args) async {
  final laneIndex = args.indexOf('--lane');
  if (laneIndex < 0 || laneIndex + 1 >= args.length) {
    print('usage: dart tool/bump_lane_gates.dart --lane NAME');
    exit(64);
  }
  final name = args[laneIndex + 1];
  final repoRoot =
      p.normalize(p.join(p.dirname(Platform.script.toFilePath()), '..'));
  final lanes = parseWrapLanes(
    File(p.join(repoRoot, providersPath)).readAsStringSync(),
  );
  final lane = lanes.where((l) => l.name == name).firstOrNull;
  if (lane == null) {
    print('bump_lane_gates: unknown lane $name '
        '(known: ${lanes.map((l) => l.name).join(', ')})');
    exit(64);
  }

  final failed = <String>[];
  final examples = dependentExamples(
    repoRoot,
    p.basename(lane.outputPackage),
  );
  for (final gate in laneGates(lane, examples: examples)) {
    print('>> $gate');
    final process = await Process.start(
      Platform.resolvedExecutable,
      gate.args,
      workingDirectory: p.join(repoRoot, gate.workingDirectory),
      mode: ProcessStartMode.inheritStdio,
    );
    final code = await process.exitCode;
    if (code != 0) failed.add('${gate.label} (exit $code)');
  }
  if (failed.isNotEmpty) {
    print('bump_lane_gates: FAILED ${failed.join(', ')}');
    exit(1);
  }
  print('bump_lane_gates: OK ($name)');
}
