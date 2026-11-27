// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/lint_override_command.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/sealed_name_debt.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:yaml/yaml.dart';

import 'fetch_discovery_enums.dart' show staleDiscovery;
import 'migrate_fixture_pins.dart';
import 'refresh_migrating_cells.dart';
import 'retire_removed_overrides.dart';
import 'self_heal_overrides.dart';

const providersPath = 'tool/providers.yaml';

const sealedNameDebtPath = 'tool/sealed_name_debt.yaml';

const codegenDir = 'packages/terradart_codegen';

const mmSourcesFile = 'mm_sources.yaml';

typedef MmSync = ({String providerRepo, String servicesDir});

const referenceTargetsPath = 'tool/reference_targets.yaml';

enum ReferenceMode { check, typed }

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
    this.mmGroups = false,
    this.discovery = false,
    this.mmSync,
    this.hintsRepo,
    this.references,
    this.referenceLane,
    this.requiredApis,
    this.typePrefix,
    this.siteTitle,
    this.providerGuide,
  });

  final String name;
  final String source;
  final String schemaDir;
  final String outputPackage;
  final String overridesRoot;
  final String barrelsManifest;
  final String? resourceProvider;
  final String migrateManifest;
  final bool providerEnums;
  final bool mmHints;
  final bool mmGroups;
  final bool discovery;
  final MmSync? mmSync;
  final String? hintsRepo;
  final ReferenceMode? references;
  final WrapLane? referenceLane;
  final String? requiredApis;
  final String? typePrefix;
  final String? siteTitle;
  final String? providerGuide;

  WrapLane _withReferenceLane(WrapLane lane) => WrapLane(
    name: name,
    source: source,
    schemaDir: schemaDir,
    outputPackage: outputPackage,
    overridesRoot: overridesRoot,
    barrelsManifest: barrelsManifest,
    resourceProvider: resourceProvider,
    migrateManifest: migrateManifest,
    providerEnums: providerEnums,
    mmHints: mmHints,
    mmGroups: mmGroups,
    discovery: discovery,
    mmSync: mmSync,
    hintsRepo: hintsRepo,
    references: references,
    referenceLane: lane,
    requiredApis: requiredApis,
    typePrefix: typePrefix,
    siteTitle: siteTitle,
    providerGuide: providerGuide,
  );

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
        if (lane.mmGroups) '--mm-groups',
        if (lane.discovery) '--discovery-enums',
        if (lane.references case final mode?) ...[
          '--reference-targets',
          rel(referenceTargetsPath),
          if (mode == ReferenceMode.typed) '--typed-references',
          if (lane.referenceLane case final other?) ...[
            '--reference-lane',
            '${rel(other.schemaDir)}='
                '${rel(p.join(other.outputPackage, 'lib', 'src'))}',
          ],
        ],
        if (lane.requiredApis case final ledger?) ...[
          '--required-apis',
          rel(ledger),
        ],
        '--migrate-manifest',
        rel(lane.migrateManifest),
        '--sealed-name-debt',
        rel(sealedNameDebtPath),
        if (this == WrapGate.wrap) '--check',
      ],
      WrapGate.lint => [
        'lint-override',
        '--dir',
        rel(lane.overridesRoot),
        '--mm-dir',
        rel(p.join(lane.schemaDir, 'mm')),
        '--generated',
        rel(p.join(lane.outputPackage, 'lib', 'src')),
      ],
    };
  }
}

List<WrapLane> parseWrapLanes(String yamlText) {
  final doc = loadYaml(yamlText);
  final providers = doc is YamlMap ? doc['providers'] : null;
  if (providers is! YamlMap || providers.isEmpty) {
    throw const FormatException('$providersPath has no providers: entries');
  }
  final lanes = {
    for (final MapEntry(:key, :value) in providers.entries)
      '$key': _parseLane('$key', value),
  };
  return [
    for (final MapEntry(key: name, value: lane) in lanes.entries)
      switch ((providers[name] as YamlMap)['referencesFrom']) {
        null => lane,
        final String from when lanes[from] != null && lane.references != null =>
          lane._withReferenceLane(lanes[from]!),
        final from => throw FormatException(
          'lane $name: referencesFrom must name another lane and needs '
          'references: ($from)',
        ),
      },
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
  final mmGroups = entry['mmGroups'] ?? false;
  if (mmGroups is! bool) {
    throw FormatException('lane $name: mmGroups must be a bool');
  }
  if ([mmHints, mmGroups, providerEnums].where((f) => f).length > 1) {
    throw FormatException(
      'lane $name: mmHints, mmGroups and providerEnums are exclusive hint '
      'sources',
    );
  }
  final discovery = entry['discovery'] ?? false;
  if (discovery is! bool || (discovery && !mmHints && !mmGroups)) {
    throw FormatException(
      'lane $name: discovery must be a bool and needs mmHints or mmGroups',
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
  final references = switch (entry['references']) {
    null => null,
    final String mode when ReferenceMode.values.any((m) => m.name == mode) =>
      ReferenceMode.values.byName(mode),
    _ => throw FormatException('lane $name: references must be check or typed'),
  };
  final bump = entry['bump'];
  final hintsRepo = bump is YamlMap ? bump['repo'] : null;
  String? optionalString(String key) {
    final value = entry[key];
    if (value == null) return null;
    if (value is String && value.isNotEmpty) return value;
    throw FormatException('lane $name: $key must be a non-empty string');
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
    providerEnums: providerEnums,
    mmHints: mmHints,
    mmGroups: mmGroups,
    discovery: discovery,
    mmSync: mmSync,
    hintsRepo: hintsRepo is String ? hintsRepo : null,
    references: references,
    requiredApis: optionalString('requiredApis'),
    typePrefix: optionalString('typePrefix'),
    siteTitle: optionalString('siteTitle'),
    providerGuide: optionalString('providerGuide'),
  );
}

List<String> staleHints(String schemaDir) {
  final versionFile = File(p.join(schemaDir, 'provider_version.txt'));
  if (!versionFile.existsSync()) return const [];
  final version = versionFile.readAsStringSync().trim();
  final stale = <String>[];
  for (final kind in WrapperOverrideKind.values) {
    final hints = Directory(providerHintsDir(schemaDir, kind));
    if (!hints.existsSync()) continue;
    final prefix = switch (kind) {
      WrapperOverrideKind.resource => '',
      WrapperOverrideKind.dataSource => 'data/',
    };
    for (final file in hints.listSync().whereType<File>()) {
      if (!file.path.endsWith('.yaml')) continue;
      final doc = loadYaml(file.readAsStringSync());
      final found = doc is YamlMap ? doc['provider_version'] : null;
      if ('$found' != version) {
        stale.add('$prefix${p.basename(file.path)}: $found');
      }
    }
  }
  return stale..sort();
}

List<String> dataSourceDerivationGaps(
  String schemaDir,
  String overridesRoot, {
  bool providerEnums = false,
}) {
  final hints = hasDataSourceHints(schemaDir);
  if (!hints && !providerEnums) return const [];
  return [
    for (final MapEntry(key: type, value: o) in YamlOverrideLoader(
      rootDir: overridesRoot,
    ).load().dataSources.entries)
      for (final (flag, set) in [
        ('deriveEnums', o.deriveEnums),
        if (hints) ('deriveExactlyOne', o.deriveExactlyOne),
      ])
        if (!set)
          '${overrideFileStem(terraformType: type, kind: .dataSource)}.yaml: '
              '$flag',
  ]..sort();
}

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

List<String> missingLanePaths(List<WrapLane> lanes, String repoRoot) => [
  for (final lane in lanes)
    for (final MapEntry(key: field, value: path) in lane.requiredPaths.entries)
      if (FileSystemEntity.typeSync(p.join(repoRoot, path)) ==
          FileSystemEntityType.notFound)
        'lane ${lane.name}: missing $field $path',
];

List<String> unownedLedgerEntries(
  Map<String, Iterable<String>> ledgers,
  Set<String> overrideNames,
) => [
  for (final MapEntry(key: ledger, value: entries) in ledgers.entries)
    for (final entry in entries)
      if (!overrideNames.contains(entry))
        '$ledger: $entry names no override in any lane',
];

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
  final sealedDebt = File(p.join(repoRoot, sealedNameDebtPath));
  return [
    ...failures,
    ...unownedLedgerEntries({
      for (final file in lintDebtLedgerFileNames)
        'tool/$file': loadLintDebtLedger(p.join(toolDir, file)).keys,
      if (sealedDebt.existsSync())
        sealedNameDebtPath: parseSealedNameDebt(
          sealedDebt.readAsStringSync(),
          path: sealedNameDebtPath,
        ).keys,
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

Future<int> _refetchDiscovery(WrapLane lane, String repoRoot) async {
  print('>> fetch_discovery_enums (${lane.name})');
  final process = await Process.start(
    Platform.resolvedExecutable,
    ['run', 'tool/fetch_discovery_enums.dart', '--lane=${lane.name}'],
    workingDirectory: repoRoot,
    mode: ProcessStartMode.inheritStdio,
  );
  return process.exitCode;
}

Future<int> _recordProseSources(String repoRoot) async {
  print('>> google_enum_sources --fix');
  final process = await Process.start(
    Platform.resolvedExecutable,
    ['run', 'tool/google_enum_sources.dart', '--fix'],
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

String? _staleCheckFailure(
  WrapLane lane,
  String repoRoot,
  void Function(String) log,
) {
  if (lane.mmSync != null) {
    final stale = staleMmSync(p.join(repoRoot, lane.schemaDir));
    if (stale.isNotEmpty) {
      for (final reason in stale) {
        log('wrap_lanes: lane ${lane.name}: $reason');
      }
      log(
        'wrap_lanes: lane ${lane.name}: stale MM YAML; run '
        'dart tool/wrap_lanes.dart --lane ${lane.name} --gate regen',
      );
      return '${lane.name} (mm sync)';
    }
  }
  if (lane.discovery) {
    final stale = staleDiscovery(lane, repoRoot);
    if (stale.isNotEmpty) {
      for (final reason in stale) {
        log('wrap_lanes: lane ${lane.name}: $reason');
      }
      log(
        'wrap_lanes: lane ${lane.name}: stale Discovery copy; run '
        'dart tool/wrap_lanes.dart --lane ${lane.name} --gate regen',
      );
      return '${lane.name} (discovery)';
    }
  }
  return null;
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

  final codegen = p.join(repoRoot, codegenDir);
  final packageConfig = p.join(repoRoot, '.dart_tool', 'package_config.json');
  Directory? snapshotDir;
  String? snapshotPath;
  if (lanes.length * gates.length > 1) {
    snapshotDir = Directory.systemTemp.createTempSync('wrap_lanes_dill_');
    snapshotPath = p.join(snapshotDir.path, 'terradart.dill');
    final compile = await Process.run(Platform.resolvedExecutable, [
      'compile',
      'kernel',
      'bin/terradart.dart',
      '-o',
      snapshotPath,
    ], workingDirectory: codegen);
    if (compile.exitCode != 0) {
      snapshotDir.deleteSync(recursive: true);
      stderr.writeln(
        'wrap_lanes: failed to compile bin/terradart.dart kernel snapshot:\n'
        '${compile.stdout}${compile.stderr}',
      );
      exit(compile.exitCode);
    }
  }

  List<String> cliDartArgs(List<String> cliArgs) => snapshotPath != null
      ? ['--packages=$packageConfig', snapshotPath, ...cliArgs]
      : ['run', 'bin/terradart.dart', ...cliArgs];

  final failed = <String>[];
  try {
    for (final gate in gates) {
      if (gate != WrapGate.regen && lanes.length > 1) {
        final ordered = [...lanes]
          ..sort((a, b) {
            int sizeOf(WrapLane l) {
              final f = File(p.join(repoRoot, l.schemaDir, 'schema.json'));
              return f.existsSync() ? f.lengthSync() : 0;
            }

            return sizeOf(b).compareTo(sizeOf(a));
          });
        final results = <String, ({String output, String? failure})>{};
        final workers = Platform.numberOfProcessors.clamp(1, ordered.length);
        var next = 0;
        Future<void> worker() async {
          while (true) {
            final i = next++;
            if (i >= ordered.length) return;
            final lane = ordered[i];
            final buf = StringBuffer();
            if (gate == WrapGate.wrap) {
              final staleFailure = _staleCheckFailure(
                lane,
                repoRoot,
                buf.writeln,
              );
              if (staleFailure != null) {
                results[lane.name] = (
                  output: buf.toString(),
                  failure: staleFailure,
                );
                continue;
              }
            }
            buf.writeln('>> ${gate.label} (${lane.name})');
            final run = await _runDartBuffered(
              cliDartArgs(gate.args(lane)),
              codegen,
            );
            buf.write(run.log);
            results[lane.name] = (
              output: buf.toString(),
              failure: run.code == 0
                  ? null
                  : '${lane.name} (${gate.name}, exit ${run.code})',
            );
          }
        }

        await Future.wait([for (var w = 0; w < workers; w++) worker()]);
        for (final lane in lanes) {
          final r = results[lane.name]!;
          stdout.write(r.output);
          if (r.failure case final f?) failed.add(f);
        }
        continue;
      }

      for (final lane in lanes) {
        if (gate == WrapGate.wrap) {
          final staleFailure = _staleCheckFailure(lane, repoRoot, print);
          if (staleFailure != null) {
            failed.add(staleFailure);
            continue;
          }
        }
        if (gate == WrapGate.regen &&
            lane.providerEnums &&
            staleHints(p.join(repoRoot, lane.schemaDir)).isNotEmpty) {
          final code = await _reextractHints(lane, repoRoot);
          if (code != 0) {
            failed.add('${lane.name} (hints, exit $code)');
            continue;
          }
        }
        if (gate == WrapGate.regen && lane.mmSync != null) {
          final stale = staleMmSync(p.join(repoRoot, lane.schemaDir));
          if (stale.isNotEmpty) {
            final code = await _resyncMm(lane, repoRoot);
            if (code != 0) {
              failed.add('${lane.name} (mm sync, exit $code)');
              continue;
            }
          }
        }
        if (gate == WrapGate.regen && lane.discovery) {
          final stale = staleDiscovery(lane, repoRoot);
          if (stale.isNotEmpty) {
            final code = await _refetchDiscovery(lane, repoRoot);
            if (code != 0) {
              failed.add('${lane.name} (discovery, exit $code)');
              continue;
            }
          }
        }
        if (gate == WrapGate.regen) {
          final schemaDir = p.join(repoRoot, lane.schemaDir);
          final retired = retireRemovedOverrides(
            schemaPath: p.join(schemaDir, 'schema.json'),
            overridesRoot: p.join(repoRoot, lane.overridesRoot),
            barrelsManifest: p.join(repoRoot, lane.barrelsManifest),
          );
          if (!retired.isEmpty) {
            print(
              '>> retire removed overrides (${lane.name}): '
              'resources ${retired.resources} '
              'data sources ${retired.dataSources} '
              'barrels ${retired.barrels} '
              'hints ${retired.hints}',
            );
          }
        }
        print('>> ${gate.label} (${lane.name})');
        final args = cliDartArgs(gate.args(lane));
        final capture = gate == WrapGate.regen;
        final manifestFile = File(p.join(repoRoot, lane.migrateManifest));
        final beforeManifest = capture && manifestFile.existsSync()
            ? manifestFile.readAsStringSync()
            : null;
        var run = await _runDart(args, codegen, captureLog: capture);
        if (capture) {
          const maxSelfHealPasses = 5;
          for (var pass = 1; pass <= maxSelfHealPasses; pass++) {
            final fixes = parseMechanicalWrapFixes(run.log);
            if (fixes.isEmpty) break;
            final applied = applyMechanicalOverrideFixes(
              p.join(repoRoot, lane.overridesRoot),
              fixes,
            );
            if (applied.isEmpty) break;
            print(
              '>> self-heal overrides (${lane.name}, pass $pass): '
              '${applied.join('; ')}',
            );
            print('>> ${gate.label} (${lane.name}) retry $pass');
            run = await _runDart(args, codegen, captureLog: true);
          }
        }
        if (run.code != 0) {
          failed.add('${lane.name} (${gate.name}, exit ${run.code})');
        } else if (gate == WrapGate.regen) {
          final version = File(
            p.join(repoRoot, lane.schemaDir, 'provider_version.txt'),
          ).readAsStringSync().trim();
          final moved = repinLaneFixtures(
            repoRoot,
            source: lane.source,
            version: version,
          );
          if (moved.isNotEmpty) {
            print(
              '>> repin migrate lane fixtures (${lane.name}): '
              '${moved.join(', ')}',
            );
          }
          if (beforeManifest != null && manifestFile.existsSync()) {
            final afterManifest = manifestFile.readAsStringSync();
            if (afterManifest != beforeManifest) {
              final renames = deriveGeneratedTypeRenames(
                parseManifestSourceSnapshot(beforeManifest),
                parseManifestSourceSnapshot(afterManifest),
              );
              if (!renames.isEmpty) {
                final outcome = await refreshAndVerifyMigratingMd(
                  repoRoot,
                  renames,
                );
                if (outcome.written) {
                  print(
                    '>> refresh MIGRATING.md After cells (${lane.name}): '
                    '${outcome.replacements.join('; ')}',
                  );
                } else if (outcome.reason != null) {
                  print(
                    '>> skipped MIGRATING.md After-cell refresh (${lane.name}): '
                    '${outcome.reason}',
                  );
                }
              }
            }
          }
          if (lane.discovery) {
            final code = await _recordProseSources(repoRoot);
            if (code != 0) {
              failed.add('${lane.name} (prose sources, exit $code)');
            }
          }
        }
      }
    }
  } finally {
    if (snapshotDir != null && snapshotDir.existsSync()) {
      snapshotDir.deleteSync(recursive: true);
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

// Drain stdout/stderr while the subprocess runs to avoid OS pipe buffer deadlock.
Future<({int code, String log})> _runDart(
  List<String> args,
  String workingDirectory, {
  required bool captureLog,
}) async {
  if (!captureLog) {
    final process = await Process.start(
      Platform.resolvedExecutable,
      args,
      workingDirectory: workingDirectory,
      mode: ProcessStartMode.inheritStdio,
    );
    return (code: await process.exitCode, log: '');
  }
  final process = await Process.start(
    Platform.resolvedExecutable,
    args,
    workingDirectory: workingDirectory,
  );
  final log = StringBuffer();
  final stdoutDone = process.stdout.transform(utf8.decoder).forEach((chunk) {
    stdout.write(chunk);
    log.write(chunk);
  });
  final stderrDone = process.stderr.transform(utf8.decoder).forEach((chunk) {
    stderr.write(chunk);
    log.write(chunk);
  });
  final code = await process.exitCode;
  await stdoutDone;
  await stderrDone;
  return (code: code, log: log.toString());
}

Future<({int code, String log})> _runDartBuffered(
  List<String> args,
  String workingDirectory,
) async {
  final result = await Process.run(
    Platform.resolvedExecutable,
    args,
    workingDirectory: workingDirectory,
  );
  final log = StringBuffer()
    ..write(result.stdout)
    ..write(result.stderr);
  return (code: result.exitCode, log: log.toString());
}
