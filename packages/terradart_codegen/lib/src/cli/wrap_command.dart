import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

import '../codegen/barrels/barrel_emitter.dart';
import '../codegen/barrels/barrel_manifest.dart';
import '../codegen/catalog_entry_builder.dart';
import '../codegen/catalog_metadata_emitter.dart';
import '../codegen/data_source_wrapper_emitter.dart';
import '../codegen/exactly_one_derivation.dart';
import '../codegen/exactly_one_types.dart';
import '../codegen/generated_file_header.dart';
import '../codegen/migrate/migrate_entry_builder.dart';
import '../codegen/migrate/migrate_manifest_emitter.dart';
import '../codegen/provider_enums.dart';
import '../codegen/provider_version_emitter.dart';
import '../codegen/references/reference_targets.dart';
import '../codegen/sealed_name_debt.dart';
import '../codegen/wrapper_emitter.dart';
import '../codegen/wrapper_overrides/_registry.dart';
import '../codegen/wrapper_overrides/yaml_loader.dart';
import '../parser/ir_merger.dart';
import '../parser/mm_yaml_parser.dart';
import '../parser/schema_parser.dart';
import 'exit_codes.dart';
import 'wrap_cli_common.dart';

/// The `terradart wrap` subcommand: emits Layer 2 factory wrappers (+ data
/// source Layer 1) from override YAML.
///
/// Phase 4.1 Wave 1b shipped the skeleton (args parsing + validation). Wave
/// 2a Task 14 fills in the run pipeline: load `schema.json`, resolve the
/// override YAML root from `package:terradart_codegen/`, fan each override
/// out through the appropriate emitter, then materialise the in-memory
/// buffer to disk under `<output>/<outputDir>/`.
class WrapCommand extends Command<int> {
  WrapCommand() {
    argParser
      ..addOption(
        'provider',
        abbr: 'p',
        help: 'Terraform provider id, e.g. "hashicorp/google". Required.',
        valueHelp: 'NAMESPACE/NAME',
      )
      ..addOption(
        'source',
        help: 'Path to a local schema/MM YAML checkout used as input.',
        valueHelp: 'DIR',
      )
      ..addOption(
        'output',
        abbr: 'o',
        help: 'Output directory for generated wrapper files.',
        valueHelp: 'DIR',
      )
      ..addFlag(
        'check',
        negatable: false,
        help:
            'CI gate mode: fail (E301) if any emitted file differs from '
            'its on-disk counterpart. Implies no writes.',
      )
      ..addFlag(
        'force',
        negatable: false,
        help:
            'Overwrite files that are missing or have a non-TerraDart '
            'generated-file header (E401 is suppressed).',
      )
      ..addOption(
        'migrate-manifest',
        help:
            'Also emit the migration manifest (the machine-readable '
            'HCL → Dart recipe `terradart migrate` follows) to this file — '
            'in terradart_migrate, `lib/src/manifest/<registry>.g.dart`. '
            'Whole-registry artifact: skipped under --only. `--check` '
            'verifies it like every other generated file.',
        valueHelp: 'FILE',
      )
      ..addOption(
        'migrate-package',
        help:
            'Dart package name recorded in the migration manifest '
            '(`terradart_google`). Defaults to the `name:` of the pubspec '
            'two levels above --output (`<output>/../../pubspec.yaml`).',
        valueHelp: 'NAME',
      )
      ..addOption(
        'only',
        help:
            'Regenerate only this Terraform type (and its data_<type> '
            'twin when present). Skips every other yaml override under '
            'the registry — useful when a sibling yaml has unstripped '
            '`wrap-promote` markers that would otherwise break the '
            'full-registry load.',
        valueHelp: 'TERRAFORM_TYPE',
      )
      ..addOption(
        'overrides-root',
        help:
            'Directory of wrapper-override YAMLs. Defaults to the '
            'committed google registry '
            '(src/codegen/wrapper_overrides/yaml/); other providers pass '
            'their own root.',
        valueHelp: 'DIR',
      )
      ..addOption(
        'barrels-manifest',
        help:
            'Authored barrels manifest. Defaults to the committed google '
            'manifest (src/codegen/barrels/barrels.yaml); other providers '
            'pass their own (its umbrellaFile axis names the umbrella).',
        valueHelp: 'FILE',
      )
      ..addOption(
        'resource-provider',
        help:
            'Pin every emitted wrapper\'s Terraform provider '
            'meta-argument (e.g. "google-beta"). Required for providers '
            'that share the default provider\'s type prefix; omit for the '
            'implied default.',
        valueHelp: 'NAME',
      )
      ..addOption(
        'sealed-name-debt',
        help:
            'The sealed-name ledger (tool/sealed_name_debt.yaml): the '
            'sealed groups no rule names, which fall back to an `Or` name. '
            'wrap records this registry\'s fallbacks there and drops its '
            'stale entries; --check fails on either instead. Skipped under '
            '--only.',
        valueHelp: 'FILE',
      )
      ..addFlag(
        'provider-enums',
        negatable: false,
        help:
            'Type enum-valued inputs from provider-sourced value sets: '
            '<source>/hints/*.yaml (extracted from the provider source) and '
            'the `Available values:` description dialect. Off for lanes '
            'whose schema carries that dialect without a validator behind it.',
      )
      ..addFlag(
        'mm-hints',
        negatable: false,
        help:
            'The --provider-enums gate with the Magic Modules YAML of '
            '<source>/mm as the hint source: its enum_values type the '
            '`deriveEnums` inputs and its exactly_one_of groups feed '
            '`deriveExactlyOne`. Exclusive with --provider-enums.',
      )
      ..addFlag(
        'mm-groups',
        negatable: false,
        help:
            'Only the exactly_one_of / conflicts / at_least_one_of groups of '
            '--mm-hints feed `deriveExactlyOne`; enum typing stays the '
            'merged IR\'s. Exclusive with --mm-hints and --provider-enums.',
      )
      ..addOption(
        'reference-targets',
        help:
            'Reference-target ledger (tool/reference_targets.yaml): which '
            'string inputs name another curated resource. wrap fails on an '
            'entry that no longer matches the schema.',
        valueHelp: 'FILE',
      )
      ..addOption(
        'reference-lane',
        help:
            'Another lane whose resources the ledger\'s `inherit:` rules '
            'target, as `<source dir>=<wrapper output>` (the google GA '
            'schema and `packages/terradart_google/lib/src` for google-beta). '
            'Its schema checks the attributes; its package is imported.',
        valueHelp: 'DIR=DIR',
      )
      ..addFlag(
        'typed-references',
        negatable: false,
        help:
            'Type the inputs --reference-targets matches as `RefTo<Target>` '
            '(`TfArg<List<RefTo<Target>>>` for a list).',
      );
  }

  @override
  String get name => 'wrap';

  @override
  String get description =>
      'Emit Layer 2 factory wrappers (+ data source Layer 1) from override YAML.';

  @override
  Future<int> run() async {
    final results = argResults!;

    final provider = results['provider'] as String?;
    if (provider == null || provider.isEmpty) {
      usageException('--provider is required.');
    }
    if (!providerIdPattern.hasMatch(provider)) {
      usageException(
        'Invalid --provider "$provider". Expected "namespace/name".',
      );
    }

    final source = results['source'] as String?;
    if (source == null || source.isEmpty) {
      stderr.writeln('terradart wrap: --source is required.');
      return CliExitCodes.dataError;
    }

    final output = results['output'] as String?;
    if (output == null || output.isEmpty) {
      stderr.writeln('terradart wrap: --output is required.');
      return CliExitCodes.dataError;
    }

    final check = results['check'] as bool;
    final force = results['force'] as bool;
    final only = results['only'] as String?;
    final migrateManifestPath = results['migrate-manifest'] as String?;
    final migrateManifest = migrateManifestPath != null;
    String? migratePackage;
    if (migrateManifest) {
      migratePackage =
          (results['migrate-package'] as String?) ?? _pubspecName(output);
      if (migratePackage == null) {
        stderr.writeln(
          'terradart wrap: --migrate-manifest needs --migrate-package '
          '(no pubspec.yaml two levels above --output "$output").',
        );
        return CliExitCodes.dataError;
      }
    }

    // 1. Load schema.json from <source>/schema.json. The parser is tolerant
    //    of missing data_source_schemas / resource_schemas keys (returns an
    //    empty map), so callers can ship resource-only or data-source-only
    //    schemas without surgery.
    final schemaFile = File(p.join(source, 'schema.json'));
    if (!schemaFile.existsSync()) {
      stderr.writeln(
        'terradart wrap: schema.json not found in --source "$source".',
      );
      return CliExitCodes.dataError;
    }
    final schemaSrc = schemaFile.readAsStringSync();
    final baseIr = const SchemaJsonParser().parseString(
      schemaSrc,
      providerVersion: readProviderVersion(source),
    );

    // 1b. Load MM YAML overrides from <source>/mm/ and merge them into the
    //     schema IR so that enumValues (and other MM-derived constraints) are
    //     available to the WrapperEmitter's `deriveEnums` gate.
    //
    //     The mm/ directory is optional: if it doesn't exist (e.g. a
    //     schema-only fixture), we skip merging and use the bare schema IR.
    //     For each resource in the registry we attempt to read
    //     `mm/<terraform_type>.yaml`; missing files are silently skipped
    //     (not every curated resource has a corresponding MM file).
    final mmDir = Directory(p.join(source, 'mm'));
    final mmOverrides = <String, MmResourceOverrides>{};
    if (mmDir.existsSync()) {
      // Insertion order is irrelevant: `mmOverrides` is consumed by keyed
      // lookup in `IrMerger.merge`, so no `..sort()` is needed (unlike
      // `yaml_loader`, whose registry order is observable).
      for (final entity in mmDir.listSync()) {
        if (entity is! File) continue;
        final basename = p.basename(entity.path);
        if (!basename.endsWith('.yaml')) continue;
        final resourceType = basename.substring(0, basename.length - 5);
        try {
          mmOverrides[resourceType] = const MmYamlParser().parseString(
            entity.readAsStringSync(),
          );
        } catch (e) {
          // Surface malformed MM YAML rather than silently dropping it: a
          // dropped file would make the `deriveEnums` gate emit nothing,
          // which is a confusing failure. Mirror the bracketed E-code
          // convention used by the other input-error paths in this command.
          stderr.writeln(
            '[E405] terradart wrap: malformed MM YAML ${entity.path}: $e',
          );
          return CliExitCodes.dataError;
        }
      }
    }
    final mergedIr = mmOverrides.isEmpty
        ? baseIr
        : const IrMerger().merge(base: baseIr, overrides: mmOverrides);

    // 1c. `--provider-enums`: hints + the `Available values:` dialect;
    //     `--mm-hints`: the MM YAML loaded above as the hints;
    //     `--mm-groups`: only its sealable groups.
    ProviderEnums providerEnums;
    final hintFlags = [
      'mm-hints',
      'mm-groups',
      'provider-enums',
    ].where((f) => results[f] as bool).toList();
    if (hintFlags.length > 1) {
      stderr.writeln(
        'terradart wrap: ${hintFlags.map((f) => '--$f').join(' and ')} '
        'are exclusive.',
      );
      return CliExitCodes.dataError;
    }
    if (results['mm-groups'] as bool) {
      providerEnums = ProviderEnums.mmGroups(mmOverrides);
    } else if (results['mm-hints'] as bool) {
      providerEnums = ProviderEnums.fromMm(mmOverrides);
    } else if (results['provider-enums'] as bool) {
      try {
        providerEnums = ProviderEnums.load(
          source,
          providerVersion: readProviderVersion(source),
        );
      } on FormatException catch (e) {
        stderr.writeln('[E405] terradart wrap: malformed provider hints: $e');
        return CliExitCodes.dataError;
      }
    } else {
      providerEnums = ProviderEnums.off;
    }
    providerEnums = providerEnums.withinSchema(
      mergedIr.resources,
      dropped: (g) => stderr.writeln(
        'terradart wrap: exclusive group names no schema input: $g',
      ),
    );
    final ir = providerEnums.enrich(mergedIr);

    // 2. Resolve the YAML override root: the --overrides-root flag when
    //    given (non-google providers carry their own registry), else the
    //    committed google registry via package URI. In `dart test` the
    //    package_config is provided by the runner, so
    //    `Isolate.resolvePackageUri` succeeds. Production CLI invocations
    //    (`dart run` / `dart compile exe`) also have a package config
    //    available. Compile-time AOT snapshots are the one mode where this
    //    can fail; surface a clear software error.
    final overridesRootArg = argResults?['overrides-root'] as String?;
    final String yamlRootPath;
    if (overridesRootArg != null) {
      yamlRootPath = overridesRootArg;
    } else {
      final yamlRootUri = await Isolate.resolvePackageUri(
        Uri.parse(
          'package:terradart_codegen/src/codegen/wrapper_overrides/yaml/',
        ),
      );
      if (yamlRootUri == null) {
        stderr.writeln(
          'terradart wrap: failed to resolve '
          'package:terradart_codegen yaml root.',
        );
        return CliExitCodes.software;
      }
      yamlRootPath = yamlRootUri.toFilePath();
    }
    final LoadedOverrides loaded;
    try {
      loaded = loadWrapperOverrides(rootDir: yamlRootPath, only: only);
    } on StateError catch (e) {
      stderr.writeln('terradart wrap: $e');
      return CliExitCodes.dataError;
    }
    final typedOverrides = providerEnums.typeDerivedEnums(
      loaded.resources,
      ir.resources,
    );

    // 3. Emit every override into an in-memory map keyed by repo-relative
    //    output path. Doing this before any filesystem mutation lets the
    //    `--force` check (and the future `--check` diff) consider the
    //    whole batch atomically.
    //
    //    Plan 5.X (v0.5.0-dev): Layer 1 schema-carrier emission
    //    (`generated/<type>.schema.dart` and
    //    `generated/data_<type>.schema.dart`) is retired along with the
    //    schemantic `build_runner` Layer 2 step. Only Layer 2 factory
    //    wrappers are emitted now, and the wrapper itself carries its
    //    file-private `_<r>Sensitive` const inline (see
    //    `WrapperEmitter`).
    final buffer = <String, String>{};
    // Static catalog accumulator: one CatalogEntry per curated resource +
    // data source. Built alongside each wrapper so the entry's `nestedTypes`
    // can be scanned from the just-emitted, formatted Dart source (the only
    // drift-proof source for the resource-specific helper-type names) and
    // `sensitiveFields` / `constructorParams` are computed from the SAME
    // helpers the wrapper emitter uses (zero drift by construction).
    final catalogEntries = <CatalogEntryData>[];
    // Migration-manifest inputs (`--migrate-manifest` only): one per curated
    // resource + data source, carrying the SAME IR / override / raw-schema
    // inputs the wrapper emitters consume plus the just-emitted source, so
    // the recipe cannot drift from the generated Dart API (same zero-drift
    // argument as the catalog). Built after the loops so helper classes one
    // wrapper file declares resolve from every other file.
    final migrateInputs = <MigrateEntryInput>[];
    // `deriveNestedTypes` needs the RAW schema.json `block` shape
    // (`block_types` / `nesting_mode` / `min_items`, ...), which `baseIr`
    // above no longer carries once `SchemaJsonParser` has flattened it into
    // the IR. Decoding schema.json a second time only when at least one
    // loaded override actually sets the gate keeps today's (dark) run
    // exactly as cheap as before this gate existed — every committed
    // override currently leaves `deriveNestedTypes` at its `false` default.
    final needsRawResourceSchemas = typedOverrides.values.any(
      (o) => o.deriveNestedTypes,
    );
    final needsRawDataSourceSchemas = loaded.dataSources.values.any(
      (o) => o.deriveNestedTypes,
    );
    final rawResourceSchemas = needsRawResourceSchemas
        ? _rawSchemaBlocks(schemaSrc, schemasKey: 'resource_schemas')
        : const <String, Map<String, dynamic>>{};
    final rawDataSourceSchemas = needsRawDataSourceSchemas
        ? _rawSchemaBlocks(schemaSrc, schemasKey: 'data_source_schemas')
        : const <String, Map<String, dynamic>>{};
    // `--reference-targets`: the ledger is checked against the schema on
    // every run; `--typed-references` also types what it matches.
    final referenceLedger = results['reference-targets'] as String?;
    final typedReferences = results['typed-references'] as bool;
    if (typedReferences && referenceLedger == null) {
      stderr.writeln(
        'terradart wrap: --typed-references needs --reference-targets.',
      );
      return CliExitCodes.dataError;
    }
    var references = const <String, Map<String, ResolvedReference>>{};
    var dataReferences = const <String, Map<String, ResolvedReference>>{};
    if (referenceLedger != null) {
      final List<ReferenceRule> rules;
      try {
        rules = loadReferenceRules(referenceLedger, provider);
      } on FormatException catch (e) {
        stderr.writeln('[E406] terradart wrap: ${e.message}');
        return CliExitCodes.dataError;
      }
      final dataSchemas = _rawSchemaBlocks(
        schemaSrc,
        schemasKey: 'data_source_schemas',
      );
      ExternalTargets? external;
      if (results['reference-lane'] case final String lane) {
        final [laneSource, laneOutput, ...] = [...lane.split('='), '', ''];
        final laneSchema = File(p.join(laneSource, 'schema.json'));
        final package = _pubspecName(laneOutput);
        if (laneOutput.isEmpty || !laneSchema.existsSync() || package == null) {
          stderr.writeln(
            'terradart wrap: --reference-lane "$lane" needs '
            '<source>/schema.json and <output>/../../pubspec.yaml.',
          );
          return CliExitCodes.dataError;
        }
        final laneSrc = laneSchema.readAsStringSync();
        external = (
          resourceSchemas: _rawSchemaBlocks(
            laneSrc,
            schemasKey: 'resource_schemas',
          ),
          dataSourceSchemas: _rawSchemaBlocks(
            laneSrc,
            schemasKey: 'data_source_schemas',
          ),
          dirs: _generatedResourceDirs(laneOutput),
          package: package,
        );
      }
      final resolution = resolveReferences(
        rules: rules,
        external: external,
        resourceSchemas: _rawSchemaBlocks(
          schemaSrc,
          schemasKey: 'resource_schemas',
        ),
        curated: typedOverrides.keys,
        targetDirs: {
          if (only != null) ..._generatedResourceDirs(output),
          for (final e in typedOverrides.entries) e.key: e.value.outputDir,
        },
        dataSourceSchemas: {
          for (final type in loaded.dataSources.keys) type: ?dataSchemas[type],
        },
        complete: only == null,
      );
      if (resolution.errors.isNotEmpty) {
        for (final e in resolution.errors) {
          stderr.writeln('[E406] terradart wrap: $referenceLedger: $e');
        }
        return CliExitCodes.dataError;
      }
      if (typedReferences) {
        references = resolution.byResource;
        dataReferences = resolution.byDataSource;
      }
    }
    // `deriveExactlyOne`: the hints' top-level exactly-one and at-most-one
    // groups become sealed custom slots before anything reads the overrides.
    final exactlyOne = deriveExactlyOneSlots(
      typedOverrides,
      ir.resources,
      providerEnums: providerEnums,
      rawSchemas: rawResourceSchemas,
      references: references,
    );
    final resourceOverrides = exactlyOne.overrides;
    for (final s in exactlyOne.skipped) {
      stderr.writeln('terradart wrap: exactly-one group not sealed: $s');
    }
    for (final s in exactlyOne.skippedAtMostOne) {
      stderr.writeln('terradart wrap: at-most-one group not sealed: $s');
    }
    if (exactlyOne.nameErrors.isNotEmpty) {
      for (final e in exactlyOne.nameErrors) {
        stderr.writeln('[E406] terradart wrap: $e');
      }
      return CliExitCodes.dataError;
    }
    final debtPath = results['sealed-name-debt'] as String?;
    final fallbacks = <String, Set<String>>{
      for (final n in exactlyOne.names)
        if (n.name.source == SealedNameSource.fallback) n.type: {},
    };
    for (final n in exactlyOne.names) {
      if (n.name.source == SealedNameSource.fallback) {
        fallbacks[n.type]!.add(n.name.key);
      }
    }
    ({SealedNameDebt debt, List<String> missing, List<String> stale})? debt;
    if (debtPath != null && only == null) {
      final file = File(debtPath);
      try {
        debt = syncSealedNameDebt(
          file.existsSync()
              ? parseSealedNameDebt(file.readAsStringSync(), path: debtPath)
              : {},
          laneTypes: resourceOverrides.keys.toSet(),
          fallbacks: fallbacks,
          reason:
              '$sealedNameDebtPrefix $provider '
                      '${readProviderVersion(source)}'
                  .trim(),
        );
      } on FormatException catch (e) {
        stderr.writeln('[E405] terradart wrap: malformed ledger: $e');
        return CliExitCodes.dataError;
      }
    } else if (debtPath == null) {
      for (final MapEntry(key: type, value: keys) in fallbacks.entries) {
        for (final key in keys) {
          stderr.writeln(
            'terradart wrap: sealed group not named: $type [$key]',
          );
        }
      }
    }

    final resourceEmitter = WrapperEmitter(
      overrides: resourceOverrides,
      rawResourceSchemas: rawResourceSchemas,
      resourceProvider: argResults?['resource-provider'] as String?,
      providerEnums: providerEnums,
      references: references,
    );
    final typedReferenceKeys = {...exactlyOne.typedReferences};
    final dataSourceEmitter = DataSourceWrapperEmitter(
      overrides: loaded.dataSources,
      rawDataSourceSchemas: rawDataSourceSchemas,
      providerEnums: providerEnums,
      resourceDirs: {
        for (final e in resourceOverrides.entries) e.key: e.value.outputDir,
      },
      references: dataReferences,
    );
    // Layer 2 emit output is unformatted; match the WrapperEmitter /
    // DataSourceWrapperEmitter Level A test convention (dart_style 3.x with
    // `latestLanguageVersion`) so wrap output is byte-identical with the
    // handwritten_baseline goldens.
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    for (final entry in resourceOverrides.entries) {
      final def = ir.resources[entry.key];
      if (def == null) {
        stderr.writeln(
          'terradart wrap: schema.json missing resource "${entry.key}".',
        );
        return CliExitCodes.dataError;
      }
      // Layer 2 wrapper: `<outputDir>/<terraformType>.dart`.
      // `extraSensitiveFields` (formerly forwarded to the Layer 1 abstract
      // emitter) is now consumed by the wrapper emitter inline.
      final raw = resourceEmitter.emit(
        def,
        providerSource: provider,
        extraSensitiveFields: entry.value.extraSensitiveFields,
      );
      typedReferenceKeys.addAll(resourceEmitter.typedReferences);
      for (final block in resourceEmitter.unreachableHelpers) {
        stderr.writeln(
          'terradart wrap: nested helper not reachable from the '
          'constructor: ${entry.key}.$block',
        );
      }
      final dartSrc = generatedFileHeader + formatter.format(raw);
      buffer[p.join(entry.value.outputDir, '${entry.key}.dart')] = dartSrc;
      catalogEntries.add(
        buildCatalogEntry(
          tfType: entry.key,
          override: entry.value,
          def: def,
          kind: 'resource',
          emittedSource: dartSrc,
        ),
      );
      if (migrateManifest) {
        migrateInputs.add(
          MigrateEntryInput(
            tfType: entry.key,
            override: entry.value,
            def: def,
            kind: 'resource',
            emittedSource: dartSrc,
            rawSchemaBlock: rawResourceSchemas[entry.key],
            enumValues: providerEnums.resolver(entry.key),
            exactlyOneGroups: providerEnums.nestedExactlyOneGroups(
              entry.key,
              entry.value,
            ),
            atMostOneGroups: providerEnums.nestedAtMostOneGroups(
              entry.key,
              entry.value,
            ),
            references: references[entry.key] ?? const {},
          ),
        );
      }
    }

    for (final entry in loaded.dataSources.entries) {
      final def = ir.dataSources[entry.key];
      if (def == null) {
        stderr.writeln(
          'terradart wrap: schema.json missing data source "${entry.key}".',
        );
        return CliExitCodes.dataError;
      }
      // Layer 2 wrapper: `<outputDir>/<terraformType>.dart` (outputDir is
      // validated to be `'data'` for data sources at YAML load time).
      final raw = dataSourceEmitter.emit(def, providerSource: provider);
      typedReferenceKeys.addAll(dataSourceEmitter.typedReferences);
      final layer2 = generatedFileHeader + formatter.format(raw);
      buffer[p.join(entry.value.outputDir, '${entry.key}.dart')] = layer2;
      catalogEntries.add(
        buildCatalogEntry(
          tfType: entry.key,
          override: entry.value,
          def: def,
          kind: 'dataSource',
          emittedSource: layer2,
        ),
      );
      if (migrateManifest) {
        migrateInputs.add(
          MigrateEntryInput(
            tfType: entry.key,
            override: entry.value,
            def: def,
            kind: 'dataSource',
            emittedSource: layer2,
            rawSchemaBlock: rawDataSourceSchemas[entry.key],
            enumValues: providerEnums.resolver(null),
            references: dataReferences[entry.key] ?? const {},
          ),
        );
      }
    }
    if (typedReferences) {
      stdout.writeln(
        'terradart wrap: ${typedReferenceKeys.length} inputs typed as '
        'references.',
      );
      // An input the ledger matches but whose slot an override types by
      // hand, or whose block has no derived helper, stays a string.
      for (final (prefix, byType) in [
        ('', references),
        ('data.', dataReferences),
      ]) {
        for (final MapEntry(key: type, value: slots) in byType.entries) {
          for (final path in slots.keys) {
            final key = '$prefix$type.$path';
            if (!typedReferenceKeys.contains(key)) {
              stderr.writeln('terradart wrap: reference input not typed: $key');
            }
          }
        }
      }
    }

    // Static catalog: render one CatalogEntry per curated resource + data
    // source into `_catalog.g.dart`. The key is `_catalog.g.dart` (no
    // `lib/src/` prefix) because `--output` is already `.../lib/src`, so the
    // file lands next to the per-service barrels (see catalog_entry.dart /
    // catalog.dart in terradart_google). It is added to `buffer` here —
    // before the E401 guard / `--check` diff / materialise step — so it flows
    // through every downstream stage uniformly, formatted with the same
    // `DartFormatter` as the wrappers and carrying the standard generated
    // header (first line `// GENERATED FILE - DO NOT EDIT`, an accepted E401
    // marker).
    //
    // `--only` is skipped: the catalog is a WHOLE-registry artifact, so a
    // single-resource regen must not clobber the full catalog with
    // a 1-entry partial. `--only` callers regenerate one wrapper; the catalog
    // is refreshed by the canonical full `terradart wrap`.
    if (only == null) {
      final catalogRaw = CatalogMetadataEmitter().emit(catalogEntries);
      buffer['_catalog.g.dart'] = formatter.format(catalogRaw);

      // The fixture's release, for packages that pin their provider
      // exactly: the pin moves with the wrappers instead of living in a
      // hand-written copy. Kept out of the catalog so importing the pin
      // does not pull the whole catalog into a user's compile.
      final providerVersion = readProviderVersion(source);
      if (providerVersion.isNotEmpty) {
        buffer['_provider_version.g.dart'] = formatter.format(
          providerVersionSource(providerVersion),
        );
      }

      // Barrels: every per-service barrel (+ `data` + the umbrella) derives
      // from the catalog entries joined with the authored barrels.yaml
      // manifest (doc, file-name override, hand-written extraExports). Same
      // `--only` skip rationale as the catalog: barrels are whole-registry
      // artifacts, so a single-resource regen must not clobber them.
      final manifestArg = argResults?['barrels-manifest'] as String?;
      final String manifestPath;
      if (manifestArg != null) {
        manifestPath = manifestArg;
      } else {
        final manifestUri = await Isolate.resolvePackageUri(
          Uri.parse(
            'package:terradart_codegen/src/codegen/barrels/barrels.yaml',
          ),
        );
        if (manifestUri == null) {
          stderr.writeln(
            'terradart wrap: failed to resolve barrels.yaml package path.',
          );
          return CliExitCodes.software;
        }
        manifestPath = manifestUri.toFilePath();
      }
      final BarrelManifest barrelManifest;
      final Map<String, String> barrelFiles;
      try {
        barrelManifest = loadBarrelManifest(manifestPath);
        barrelFiles = buildBarrelFiles(
          entries: catalogEntries,
          manifest: barrelManifest,
        );
      } on StateError catch (e) {
        stderr.writeln('terradart wrap: $e');
        return CliExitCodes.dataError;
      } on FormatException catch (e) {
        stderr.writeln('terradart wrap: $e');
        return CliExitCodes.dataError;
      }

      // Migration manifest: same formatting / header / E401 / --check rules
      // as the catalog, but written to the `--migrate-manifest` file in
      // terradart_migrate rather than under `--output` (#658). The buffer is
      // keyed relative to `--output`, so the path is expressed that way.
      // Entries record the barrel *file* stem (barrels.yaml `file:`), which
      // is what a migrated Stack imports.
      if (migrateManifest) {
        final manifestRaw = MigrateManifestEmitter().emit(
          buildMigrateEntries(
            migrateInputs,
            barrelFiles: {
              for (final e in barrelManifest.barrels.entries)
                e.key: e.value.fileStemFor(e.key),
            },
          ),
          package: migratePackage!,
          caseInsensitiveEnums:
              providerEnums.enabled && providerEnums.caseInsensitive,
        );
        buffer[p.relative(migrateManifestPath, from: output)] = formatter
            .format(manifestRaw);
      }
      for (final entry in barrelFiles.entries) {
        // `--output` is `.../lib/src`; barrels live one level up in `lib/`.
        buffer[p.join('..', '${entry.key}.dart')] =
            barrelFileHeader + formatter.format(entry.value);
      }
    }

    // 4. E401 guard: refuse to clobber files that don't carry one of the
    //    accepted "generated" markers, unless `--force` is set.
    //    Files that don't yet exist are fine.
    //
    //    Two markers are accepted:
    //    - `// GENERATED FILE - DO NOT EDIT` (Phase 4.1+ convention, used
    //      by Layer 2 wrappers and data source Layer 1).
    //    - `// Generated by terradart codegen. DO NOT EDIT.` (pre-Phase 4.1
    //      codegen pipeline, still used by resource Layer 1 via FileEmitter
    //      to preserve byte-identical output for the existing 13 baselines).
    if (!force) {
      for (final relPath in buffer.keys) {
        final existing = File(p.join(output, relPath));
        if (!existing.existsSync()) continue;
        if (!_isGeneratedFile(existing)) {
          stderr.writeln(
            '[E401] refusing to overwrite non-generated file: '
            '${existing.path}.\n'
            '  Hint: Add --force to override.',
          );
          return CliExitCodes.dataError;
        }
      }
    }

    // 5. `--check` mode: deferred to Task 17. Surface a clear stub so CI
    //    plumbing that wires the flag through gets a useful exit code.
    // A generated file the registry no longer emits (its override was
    // deleted) is an orphan: the barrels stop exporting it, but it still
    // compiles and a directory scan still finds it. `--only` emits a partial
    // buffer, so it never judges the rest of the tree.
    final orphans = only == null
        ? _orphanedGeneratedFiles(buffer, output)
        : const <String>[];

    if (check) {
      return _runCheck(buffer, output, orphans, [
        for (final m in debt?.missing ?? const <String>[])
          '$debtPath: $m has no entry (name it in sealedNames, or run '
              '`terradart wrap` to record it)',
        for (final s in debt?.stale ?? const <String>[]) '$debtPath: $s',
      ]);
    }

    // 6. Materialise. Create parent dirs lazily; writeAsStringSync is
    //    atomic-enough for the regen workflow (the file is fully written
    //    before the next entry's directory probe runs).
    for (final entry in buffer.entries) {
      final outFile = File(p.join(output, entry.key));
      outFile.parent.createSync(recursive: true);
      outFile.writeAsStringSync(entry.value);
    }
    for (final orphan in orphans) {
      final file = File(p.join(output, orphan));
      file.deleteSync();
      final dir = file.parent;
      if (dir.listSync().isEmpty) dir.deleteSync();
      stdout.writeln('terradart wrap: deleted orphaned $orphan');
    }
    if (debt != null) {
      File(debtPath!).writeAsStringSync(renderSealedNameDebt(debt.debt));
      for (final m in debt.missing) {
        stdout.writeln('terradart wrap: recorded unnamed sealed group $m');
      }
    }
    return CliExitCodes.success;
  }

  /// Generated files under [output] (recursively) and its parent `lib/`
  /// (barrels, top level only) that [buffer] does not emit, keyed relative
  /// to [output] like the buffer. Hand-written files carry no generated
  /// header and are never reported.
  List<String> _orphanedGeneratedFiles(
    Map<String, String> buffer,
    String output,
  ) {
    final emitted = {
      for (final key in buffer.keys) p.normalize(p.absolute(output, key)),
    };
    final candidates = <File>[
      if (Directory(output).existsSync())
        ...Directory(output).listSync(recursive: true).whereType<File>(),
      if (Directory(p.dirname(output)).existsSync())
        ...Directory(p.dirname(output)).listSync().whereType<File>(),
    ];
    final orphans = <String>[
      for (final file in candidates)
        if (file.path.endsWith('.dart') &&
            !emitted.contains(p.normalize(p.absolute(file.path))) &&
            _isGeneratedFile(file))
          p.relative(file.path, from: output),
    ]..sort();
    return orphans;
  }

  /// `--check` mode body. Diffs [buffer] (the in-memory emit result, keyed
  /// by repo-relative path) against the on-disk files under [output] and
  /// returns [CliExitCodes.dataError] when any pair diverges. Line endings
  /// are normalised to LF on both sides so CRLF Windows checkouts are not
  /// reported as bogus mismatches.
  int _runCheck(
    Map<String, String> buffer,
    String output,
    List<String> orphans,
    List<String> ledgerProblems,
  ) {
    final mismatches = <String>[
      ...ledgerProblems,
      for (final orphan in orphans)
        '$orphan: orphaned (generated, but no override emits it any more; '
            'run `terradart wrap` to delete it)',
    ];
    for (final entry in buffer.entries) {
      final outFile = File(p.join(output, entry.key));
      if (!outFile.existsSync()) {
        mismatches.add(
          '${entry.key}: missing (expected to exist; run `terradart wrap` to regenerate)',
        );
        continue;
      }
      final actual = outFile.readAsStringSync().replaceAll('\r\n', '\n');
      final expected = entry.value.replaceAll('\r\n', '\n');
      if (actual != expected) {
        final actualLines = actual.split('\n').length;
        final expectedLines = expected.split('\n').length;
        mismatches.add(
          '${entry.key}: bytes differ '
          '($expectedLines expected lines vs $actualLines actual lines)',
        );
      }
    }
    if (mismatches.isEmpty) {
      stdout.writeln(
        'terradart wrap --check: all ${buffer.length} files match.',
      );
      return CliExitCodes.success;
    }
    stderr.writeln(
      'terradart wrap --check: ${mismatches.length} of ${buffer.length} '
      'files differ:\n',
    );
    for (final m in mismatches) {
      stderr.writeln('  [E301] $m');
    }
    stderr.writeln('\nRun `terradart wrap` to regenerate.');
    return CliExitCodes.dataError;
  }
}

bool _isGeneratedFile(File file) {
  final lines = file.readAsLinesSync();
  final firstLine = lines.isEmpty ? null : lines.first;
  return firstLine == '// GENERATED FILE - DO NOT EDIT' ||
      firstLine == '// Generated by terradart codegen. DO NOT EDIT.';
}

/// The `name:` of the pubspec two levels above [output] (`<pkg>/lib/src` →
/// `<pkg>/pubspec.yaml`), or `null` when there is none.
String? _pubspecName(String output) {
  // Lexical: `--output` need not exist yet when wrap runs for the first time.
  final pubspec = File(p.normalize(p.join(output, '..', '..', 'pubspec.yaml')));
  if (!pubspec.existsSync()) return null;
  final match = RegExp(
    r'^name:\s*([A-Za-z0-9_]+)\s*$',
    multiLine: true,
  ).firstMatch(pubspec.readAsStringSync());
  return match?.group(1);
}

/// Terraform type → directory under [output] of every generated resource
/// wrapper on disk, for the reference targets a `--only` run did not load.
/// Data-source wrappers live under `data/` with the same file names, so that
/// directory is skipped.
Map<String, String> _generatedResourceDirs(String output) {
  final root = Directory(output);
  if (!root.existsSync()) return const {};
  return {
    for (final dir in root.listSync().whereType<Directory>())
      if (p.basename(dir.path) != 'data')
        for (final file in dir.listSync().whereType<File>())
          if (file.path.endsWith('.dart'))
            p.basenameWithoutExtension(file.path): p.basename(dir.path),
  };
}

/// Decodes [schemaJson]'s raw `resource_schemas` or `data_source_schemas`
/// entries down to just their `block` map, keyed by Terraform type — the
/// shape `collectNestedTypes` needs for the `deriveNestedTypes` gate.
Map<String, Map<String, dynamic>> _rawSchemaBlocks(
  String schemaJson, {
  required String schemasKey,
}) {
  final root = jsonDecode(schemaJson) as Map<String, dynamic>;
  final schemas = (root['provider_schemas'] as Map).cast<String, dynamic>();
  final providerBody = (schemas.values.single as Map).cast<String, dynamic>();
  final typed =
      (providerBody[schemasKey] as Map?)?.cast<String, dynamic>() ?? const {};
  return {
    for (final entry in typed.entries)
      entry.key: ((entry.value as Map)['block'] as Map).cast<String, dynamic>(),
  };
}
