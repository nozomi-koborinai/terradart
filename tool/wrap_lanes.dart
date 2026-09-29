// wrap_lanes.dart — runs the per-provider generation gates from
// tool/providers.yaml, so a lane is declared once instead of hand-copied
// into agent_verify.sh and ci.yml.
//
// Usage (from repo root):
//   dart tool/wrap_lanes.dart                    # every gate, every lane
//   dart tool/wrap_lanes.dart --gate wrap        # terradart wrap --check only
//   dart tool/wrap_lanes.dart --gate lint        # terradart lint-override only
//   dart tool/wrap_lanes.dart --gate regen --lane aws  # terradart wrap (writes)
//   dart tool/wrap_lanes.dart --lane cloudflare  # one lane
// `regen` rewrites the lane's generated files (the schema bump runs it after
// refreshing a fixture), so it only runs when named. On a `providerEnums`
// lane whose hints were extracted at another provider version than
// `<schemaDir>/provider_version.txt`, regen first re-extracts them from the
// `bump.repo` source (tool/extract_provider_hints.dart, network). On an
// `mmSync` lane whose `<schemaDir>/mm_sources.yaml` no longer matches the
// fixture ([staleMmSync]), regen first re-syncs the Magic Modules YAML
// (tool/sync_lane_mm_yaml.dart, network); the wrap gate fails on a stale
// sync instead, so a fixture change never ships without its MM hints.
// exit: 0 every selected gate passed; 1 a gate failed, a lane path is
//       missing, or the arguments / providers.yaml are invalid.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/lint_override_command.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:yaml/yaml.dart';

const providersPath = 'tool/providers.yaml';

/// The package whose `bin/terradart.dart` runs every gate; lane paths are
/// repo-relative in providers.yaml and rebased onto it.
const codegenDir = 'packages/terradart_codegen';

/// The record tool/sync_lane_mm_yaml.dart writes beside an `mmSync` lane's
/// `mm/` directory.
const mmSourcesFile = 'mm_sources.yaml';

/// `mmSync:` — where tool/sync_lane_mm_yaml.dart resolves each fixture
/// resource to its Magic Modules YAML: the provider repo whose release tag
/// carries the generated Go source, and the services directory in it.
typedef MmSync = ({String providerRepo, String servicesDir});

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
    this.providerEnums = false,
    this.mmHints = false,
    this.mmSync,
    this.hintsRepo,
  });

  final String name;
  final String source;
  final String schemaDir;
  final String outputPackage;
  final String overridesRoot;
  final String barrelsManifest;
  final String? resourceProvider;
  final String migrateManifest;

  /// `wrap --provider-enums`: type enum-valued inputs from `<schemaDir>/hints`
  /// and the `Available values:` description dialect.
  final bool providerEnums;

  /// `wrap --mm-hints`: type enum-valued inputs and seal `exactly_one_of`
  /// groups from the Magic Modules YAML in `<schemaDir>/mm`.
  final bool mmHints;

  /// `mmSync:`, or null when the lane's MM YAML (if any) is synced from a
  /// hand-kept manifest (google, tool/mm_yaml_sources.yaml).
  final MmSync? mmSync;

  /// `bump.repo`: the GitHub repo regen re-extracts stale hints from.
  final String? hintsRepo;

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
  lint('terradart lint-override'),
  regen('terradart wrap');

  const WrapGate(this.label);

  final String label;

  /// `bin/terradart.dart` arguments, with paths relative to [codegenDir].
  List<String> args(WrapLane lane) {
    String rel(String repoPath) => p.relative(repoPath, from: codegenDir);
    return switch (this) {
      WrapGate.wrap || WrapGate.regen => [
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
        if (lane.providerEnums) '--provider-enums',
        if (lane.mmHints) '--mm-hints',
        '--migrate-manifest',
        rel(lane.migrateManifest),
        if (this == WrapGate.wrap) '--check',
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
  final providerEnums = entry['providerEnums'] ?? false;
  if (providerEnums is! bool) {
    throw FormatException('lane $name: providerEnums must be a bool');
  }
  final mmHints = entry['mmHints'] ?? false;
  if (mmHints is! bool) {
    throw FormatException('lane $name: mmHints must be a bool');
  }
  if (mmHints && providerEnums) {
    throw FormatException(
      'lane $name: mmHints and providerEnums are exclusive hint sources',
    );
  }
  MmSync? mmSync;
  switch (entry['mmSync']) {
    case null:
      break;
    case {
      'providerRepo': final String providerRepo,
      'servicesDir': final String servicesDir,
    }:
      mmSync = (providerRepo: providerRepo, servicesDir: servicesDir);
    default:
      throw FormatException(
        'lane $name: mmSync needs providerRepo and servicesDir strings',
      );
  }
  final bump = entry['bump'];
  final hintsRepo = bump is YamlMap ? bump['repo'] : null;
  return WrapLane(
    name: name,
    source: field('source'),
    schemaDir: field('schemaDir'),
    outputPackage: field('outputPackage'),
    overridesRoot: field('overridesRoot'),
    barrelsManifest: field('barrelsManifest'),
    resourceProvider: resourceProvider as String?,
    migrateManifest: field('migrateManifest'),
    providerEnums: providerEnums,
    mmHints: mmHints,
    mmSync: mmSync,
    hintsRepo: hintsRepo is String ? hintsRepo : null,
  );
}

/// The `provider_version` of every `<schemaDir>/hints/*.yaml` that differs
/// from `<schemaDir>/provider_version.txt`, as `file: version`. Empty when
/// the hints match the fixture or the lane has none yet.
List<String> staleHints(String schemaDir) {
  final hints = Directory(p.join(schemaDir, 'hints'));
  final versionFile = File(p.join(schemaDir, 'provider_version.txt'));
  if (!hints.existsSync() || !versionFile.existsSync()) return const [];
  final version = versionFile.readAsStringSync().trim();
  return [
    for (final file in hints.listSync().whereType<File>())
      if (file.path.endsWith('.yaml'))
        if (loadYaml(file.readAsStringSync()) case final doc
            when doc is! YamlMap || '${doc['provider_version']}' != version)
          '${p.basename(file.path)}: '
              '${doc is YamlMap ? doc['provider_version'] : null}',
  ]..sort();
}

/// Why [schemaDir]'s MM sync no longer matches its fixture: empty when
/// `mm_sources.yaml` records the fixture's `provider_version.txt` and lists
/// exactly the resources of `schema.json`.
List<String> staleMmSync(String schemaDir) {
  final record = File(p.join(schemaDir, mmSourcesFile));
  if (!record.existsSync()) return ['$mmSourcesFile is missing'];
  final doc = loadYaml(record.readAsStringSync());
  if (doc is! YamlMap || doc['files'] is! YamlMap) {
    return ['$mmSourcesFile is malformed'];
  }
  final version = File(
    p.join(schemaDir, 'provider_version.txt'),
  ).readAsStringSync().trim();
  final recorded = '${doc['provider_version']}';
  final schema =
      jsonDecode(File(p.join(schemaDir, 'schema.json')).readAsStringSync())
          as Map<String, dynamic>;
  final resources = <String>{
    for (final provider
        in (schema['provider_schemas'] as Map<String, dynamic>).values)
      ...((provider as Map<String, dynamic>)['resource_schemas']
                  as Map<String, dynamic>? ??
              const {})
          .keys,
  };
  final listed = {for (final k in (doc['files'] as YamlMap).keys) '$k'};
  final added = resources.difference(listed).toList()..sort();
  final removed = listed.difference(resources).toList()..sort();
  return [
    if (recorded != version)
      '$mmSourcesFile records provider $recorded, the fixture is $version',
    if (added.isNotEmpty) '$mmSourcesFile lacks ${added.join(', ')}',
    if (removed.isNotEmpty)
      '$mmSourcesFile lists ${removed.join(', ')}, absent from schema.json',
  ];
}

/// `lane <name>: missing <field> <path>` for every required path that does
/// not exist under [repoRoot].
List<String> missingLanePaths(List<WrapLane> lanes, String repoRoot) => [
  for (final lane in lanes)
    for (final MapEntry(key: field, value: path) in lane.requiredPaths.entries)
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
) => [
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
      ...loadWrapperOverrides(
        rootDir: p.join(repoRoot, lane.overridesRoot),
      ).asLintMap().keys,
  };
  return [
    ...failures,
    ...unownedLedgerEntries({
      for (final file in lintDebtLedgerFileNames)
        'tool/$file': loadLintDebtLedger(p.join(toolDir, file)).keys,
    }, names),
  ];
}

Future<int> _reextractHints(WrapLane lane, String repoRoot) async {
  final repo = lane.hintsRepo;
  if (repo == null) {
    print(
      'wrap_lanes: lane ${lane.name}: stale hints and no bump.repo to '
      're-extract them from',
    );
    return 1;
  }
  final schemaDir = p.join(repoRoot, lane.schemaDir);
  final version = File(
    p.join(schemaDir, 'provider_version.txt'),
  ).readAsStringSync().trim();
  print('>> extract_provider_hints ($repo $version)');
  final process = await Process.start(
    Platform.resolvedExecutable,
    [
      'run',
      'tool/extract_provider_hints.dart',
      '--repo=$repo',
      '--version=$version',
      '--schema-dir=${lane.schemaDir}',
    ],
    workingDirectory: repoRoot,
    mode: ProcessStartMode.inheritStdio,
  );
  return process.exitCode;
}

Future<int> _resyncMm(WrapLane lane, String repoRoot) async {
  print('>> sync_lane_mm_yaml (${lane.name})');
  final process = await Process.start(
    Platform.resolvedExecutable,
    ['run', 'tool/sync_lane_mm_yaml.dart', '--lane=${lane.name}'],
    workingDirectory: repoRoot,
    mode: ProcessStartMode.inheritStdio,
  );
  return process.exitCode;
}

Never _usage(String message) {
  print('wrap_lanes: $message');
  print(
    'usage: dart tool/wrap_lanes.dart [--gate wrap|lint|regen] [--lane NAME]',
  );
  exit(1);
}

Future<void> main(List<String> args) async {
  var gates = const [WrapGate.wrap, WrapGate.lint];
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

  final repoRoot = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
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
    _usage(
      'unknown lane $only (known: '
      '${allLanes.map((l) => l.name).join(', ')})',
    );
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
      if (gate == WrapGate.regen &&
          lane.providerEnums &&
          staleHints(p.join(repoRoot, lane.schemaDir)).isNotEmpty) {
        final code = await _reextractHints(lane, repoRoot);
        if (code != 0) {
          failed.add('${lane.name} (hints, exit $code)');
          continue;
        }
      }
      if (gate != WrapGate.lint && lane.mmSync != null) {
        final stale = staleMmSync(p.join(repoRoot, lane.schemaDir));
        if (stale.isNotEmpty && gate == WrapGate.wrap) {
          for (final reason in stale) {
            print('wrap_lanes: lane ${lane.name}: $reason');
          }
          print(
            'wrap_lanes: lane ${lane.name}: stale MM YAML; run '
            'dart tool/wrap_lanes.dart --lane ${lane.name} --gate regen',
          );
          failed.add('${lane.name} (mm sync)');
          continue;
        }
        if (stale.isNotEmpty) {
          final code = await _resyncMm(lane, repoRoot);
          if (code != 0) {
            failed.add('${lane.name} (mm sync, exit $code)');
            continue;
          }
        }
      }
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
