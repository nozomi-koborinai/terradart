// wrap_lanes.dart — runs the per-provider generation gates from
// tool/providers.yaml, so a lane is declared once instead of hand-copied
// into agent_verify.sh and ci.yml.
//
// Usage (from repo root):
//   dart tool/wrap_lanes.dart                    # every gate, every lane
//   dart tool/wrap_lanes.dart --gate wrap        # terradart wrap --check only
//   dart tool/wrap_lanes.dart --gate lint        # terradart lint-override only
//   dart tool/wrap_lanes.dart --lane cloudflare  # one lane
// exit: 0 every selected gate passed; 1 a gate failed, a lane path is
//       missing, or the arguments / providers.yaml are invalid.
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/lint_override_command.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:yaml/yaml.dart';

const providersPath = 'tool/providers.yaml';

/// The package whose `bin/terradart.dart` runs every gate; lane paths are
/// repo-relative in providers.yaml and rebased onto it.
const codegenDir = 'packages/terradart_codegen';

/// One `providers:` entry, reduced to the fields the gates read.
class WrapLane {
  const WrapLane({
    required this.name,
    required this.source,
    required this.schemaDir,
    required this.outputPackage,
    required this.overridesRoot,
    required this.barrelsManifest,
    required this.resourceProvider,
    required this.migrateManifest,
  });

  final String name;
  final String source;
  final String schemaDir;
  final String outputPackage;
  final String overridesRoot;
  final String barrelsManifest;
  final String? resourceProvider;
  final String migrateManifest;

  /// Paths that must exist before any gate can say something meaningful.
  /// The migration manifest is absent until the lane's first wrap, so it is
  /// left to `wrap --check` to report.
  Map<String, String> get requiredPaths => {
        'schemaDir': schemaDir,
        'outputPackage': outputPackage,
        'overridesRoot': overridesRoot,
        'barrelsManifest': barrelsManifest,
      };
}

enum WrapGate {
  wrap('terradart wrap --check'),
  lint('terradart lint-override');

  const WrapGate(this.label);

  final String label;

  /// `bin/terradart.dart` arguments, with paths relative to [codegenDir].
  List<String> args(WrapLane lane) {
    String rel(String repoPath) => p.relative(repoPath, from: codegenDir);
    return switch (this) {
      WrapGate.wrap => [
          'wrap',
          '--provider',
          lane.source,
          '--source',
          rel(lane.schemaDir),
          '--output',
          rel(p.join(lane.outputPackage, 'lib', 'src')),
          '--overrides-root',
          rel(lane.overridesRoot),
          '--barrels-manifest',
          rel(lane.barrelsManifest),
          if (lane.resourceProvider case final provider?) ...[
            '--resource-provider',
            provider,
          ],
          '--migrate-manifest',
          rel(lane.migrateManifest),
          '--check',
        ],
      // wrap reads MM YAML from <schemaDir>/mm; lint reads the same place.
      WrapGate.lint => [
          'lint-override',
          '--dir',
          rel(lane.overridesRoot),
          '--mm-dir',
          rel(p.join(lane.schemaDir, 'mm')),
        ],
    };
  }
}

/// Parses providers.yaml. Throws [FormatException] naming the lane and field
/// when an entry is not a lane the gates can run.
List<WrapLane> parseWrapLanes(String yamlText) {
  final doc = loadYaml(yamlText);
  final providers = doc is YamlMap ? doc['providers'] : null;
  if (providers is! YamlMap || providers.isEmpty) {
    throw const FormatException('$providersPath has no providers: entries');
  }
  return [
    for (final MapEntry(:key, :value) in providers.entries)
      _parseLane('$key', value),
  ];
}

WrapLane _parseLane(String name, Object? entry) {
  if (entry is! YamlMap) {
    throw FormatException('lane $name: entry is not a map');
  }
  String field(String key) {
    final value = entry[key];
    if (value is String && value.isNotEmpty) return value;
    throw FormatException('lane $name: missing $key');
  }

  final resourceProvider = entry['resourceProvider'];
  if (resourceProvider != null && resourceProvider is! String) {
    throw FormatException('lane $name: resourceProvider must be a string');
  }
  return WrapLane(
    name: name,
    source: field('source'),
    schemaDir: field('schemaDir'),
    outputPackage: field('outputPackage'),
    overridesRoot: field('overridesRoot'),
    barrelsManifest: field('barrelsManifest'),
    resourceProvider: resourceProvider as String?,
    migrateManifest: field('migrateManifest'),
  );
}

/// `lane <name>: missing <field> <path>` for every required path that does
/// not exist under [repoRoot].
List<String> missingLanePaths(List<WrapLane> lanes, String repoRoot) => [
      for (final lane in lanes)
        for (final MapEntry(key: field, value: path)
            in lane.requiredPaths.entries)
          if (FileSystemEntity.typeSync(p.join(repoRoot, path)) ==
              FileSystemEntityType.notFound)
            'lane ${lane.name}: missing $field $path',
    ];

/// `<ledger>: <entry> names no override in any lane` for every entry of
/// [ledgers] (repo-relative ledger path to its entry names) outside
/// [overrideNames]. Each lane's lint validates only its own entries, so an
/// entry no lane owns is caught here or nowhere.
List<String> unownedLedgerEntries(
  Map<String, Iterable<String>> ledgers,
  Set<String> overrideNames,
) =>
    [
      for (final MapEntry(key: ledger, value: entries) in ledgers.entries)
        for (final entry in entries)
          if (!overrideNames.contains(entry))
            '$ledger: $entry names no override in any lane',
    ];

/// Ledger failures across every lane in [lanes]: a lane whose overrides
/// root does not resolve the shared ledgers under `<repoRoot>/tool`, and
/// [unownedLedgerEntries] over the override names of all lanes.
List<String> ledgerOwnershipFailures(List<WrapLane> lanes, String repoRoot) {
  final toolDir = p.normalize(p.absolute(repoRoot, 'tool'));
  final failures = <String>[
    for (final lane in lanes)
      if (lintDebtToolDirForOverrideRoot(p.join(repoRoot, lane.overridesRoot))
          case final resolved when resolved != toolDir)
        'lane ${lane.name}: overridesRoot ${lane.overridesRoot} resolves the '
            'lint ledgers to ${resolved ?? 'nothing'}, not $toolDir',
  ];
  final names = <String>{
    for (final lane in lanes)
      ...loadWrapperOverrides(rootDir: p.join(repoRoot, lane.overridesRoot))
          .asLintMap()
          .keys,
  };
  return [
    ...failures,
    ...unownedLedgerEntries(
      {
        for (final file in lintDebtLedgerFileNames)
          'tool/$file': loadLintDebtLedger(p.join(toolDir, file)).keys,
      },
      names,
    ),
  ];
}

Never _usage(String message) {
  print('wrap_lanes: $message');
  print('usage: dart tool/wrap_lanes.dart [--gate wrap|lint] [--lane NAME]');
  exit(1);
}

Future<void> main(List<String> args) async {
  var gates = WrapGate.values;
  String? only;
  for (var i = 0; i < args.length; i++) {
    final arg = args[i];
    if ((arg == '--gate' || arg == '--lane') && i + 1 >= args.length) {
      _usage('$arg needs a value');
    }
    switch (arg) {
      case '--gate':
        final name = args[++i];
        gates = [
          WrapGate.values.firstWhere(
            (g) => g.name == name,
            orElse: () => _usage('unknown gate $name'),
          ),
        ];
      case '--lane':
        only = args[++i];
      default:
        _usage('unknown argument $arg');
    }
  }

  final repoRoot =
      p.normalize(p.join(p.dirname(Platform.script.toFilePath()), '..'));
  final List<WrapLane> allLanes;
  try {
    allLanes = parseWrapLanes(
      File(p.join(repoRoot, providersPath)).readAsStringSync(),
    );
  } on FormatException catch (e) {
    print('wrap_lanes: ${e.message}');
    exit(1);
  }
  final lanes = [
    for (final lane in allLanes)
      if (only == null || lane.name == only) lane,
  ];
  if (lanes.isEmpty) {
    _usage('unknown lane $only (known: '
        '${allLanes.map((l) => l.name).join(', ')})');
  }

  final missing = missingLanePaths(lanes, repoRoot);
  if (missing.isNotEmpty) {
    missing.forEach(print);
    print('wrap_lanes: FAILED (fix the paths in $providersPath)');
    exit(1);
  }

  final failed = <String>[];
  for (final gate in gates) {
    for (final lane in lanes) {
      print('>> ${gate.label} (${lane.name})');
      final process = await Process.start(
        Platform.resolvedExecutable,
        ['run', 'bin/terradart.dart', ...gate.args(lane)],
        workingDirectory: p.join(repoRoot, codegenDir),
        mode: ProcessStartMode.inheritStdio,
      );
      final code = await process.exitCode;
      if (code != 0) failed.add('${lane.name} (${gate.name}, exit $code)');
    }
  }
  if (gates.contains(WrapGate.lint)) {
    print('>> lint ledgers (every entry names an override in some lane)');
    final ledgerFailures = ledgerOwnershipFailures(allLanes, repoRoot);
    ledgerFailures.forEach(print);
    if (ledgerFailures.isNotEmpty) failed.add('ledgers (lint)');
  }
  if (failed.isNotEmpty) {
    print('wrap_lanes: FAILED ${failed.join(', ')}');
    exit(1);
  }
  print('wrap_lanes: OK (${lanes.map((l) => l.name).join(', ')})');
}
