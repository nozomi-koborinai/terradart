import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
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
import '../codegen/naming.dart' show WrapperOverrideKindNames, snakeToPascal;
import '../codegen/package_formatter.dart';
import '../codegen/provider_enums.dart';
import '../codegen/provider_version_emitter.dart';
import '../codegen/references/reference_targets.dart';
import '../codegen/sealed_name_debt.dart';
import '../codegen/wrapper_emitter.dart';
import '../codegen/wrapper_overrides/_registry.dart';
import '../codegen/wrapper_overrides/wrapper_override.dart';
import '../codegen/wrapper_overrides/yaml_loader.dart';
import '../parser/discovery_enums.dart';
import '../parser/ir_merger.dart';
import '../parser/mm_yaml_parser.dart';
import '../parser/schema_parser.dart';
import 'exit_codes.dart';
import 'wrap_cli_common.dart';

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
            'its on-disk counterpart, if an exclusive group is neither '
            'sealed nor named in the override\'s unsealedGroups, or if a '
            'derived helper is unreachable. Implies no writes.',
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
      ..addFlag(
        'discovery-enums',
        negatable: false,
        help:
            'With --mm-groups or --mm-hints: an input neither the Magic '
            'Modules YAML nor its description gives values takes the enum '
            'the Google API Discovery copy of <source>/discovery declares '
            '(tool/fetch_discovery_enums.dart writes it).',
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

    final mmDir = Directory(p.join(source, 'mm'));
    final mmOverrides = <String, MmResourceOverrides>{};
    if (mmDir.existsSync()) {
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
    if (results['discovery-enums'] as bool) {
      if (!(results['mm-groups'] as bool) && !(results['mm-hints'] as bool)) {
        stderr.writeln(
          'terradart wrap: --discovery-enums needs --mm-groups or --mm-hints.',
        );
        return CliExitCodes.dataError;
      }
      final DiscoveryEnums? discovery;
      try {
        discovery = DiscoveryEnums.load(source);
      } on FormatException catch (e) {
        stderr.writeln('[E405] terradart wrap: malformed Discovery copy: $e');
        return CliExitCodes.dataError;
      }
      if (discovery == null) {
        stderr.writeln(
          '[E405] terradart wrap: --discovery-enums but no '
          '${p.join(source, discoveryDirName, discoveryRootsFile)}.',
        );
        return CliExitCodes.dataError;
      }
      providerEnums = providerEnums.withDiscovery(discovery, mmOverrides);
    }
    final dropped = <DroppedGroup>[];
    providerEnums = providerEnums.withinSchema(mergedIr, dropped: dropped.add);
    final enrichedIr = providerEnums.enrich(mergedIr);

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
    final groupErrors = <String>[];
    providerEnums = providerEnums.withOverrideGroups(
      loaded,
      mergedIr,
      error: groupErrors.add,
    );
    if (groupErrors.isNotEmpty) {
      for (final e in groupErrors) {
        stderr.writeln('[E406] terradart wrap: $e');
      }
      return CliExitCodes.dataError;
    }
    final enumErrors = <String>[];
    final ir = providerEnums.withOverrideEnums(
      loaded,
      enrichedIr,
      error: enumErrors.add,
    );
    if (enumErrors.isNotEmpty) {
      for (final e in enumErrors) {
        stderr.writeln('[E406] terradart wrap: $e');
      }
      return CliExitCodes.dataError;
    }
    final laneInputs = {
      for (final (kind, schemasKey) in const [
        (WrapperOverrideKind.resource, 'resource_schemas'),
        (WrapperOverrideKind.dataSource, 'data_source_schemas'),
      ])
        for (final MapEntry(:key, :value) in _rawSchemaBlocks(
          schemaSrc,
          schemasKey: schemasKey,
        ).entries)
          kind.typeStem(key): _inputNames(value),
    };
    final typedOverrides = providerEnums.typeDerivedEnums(
      loaded,
      ir,
      laneInputs: laneInputs,
    );

    final buffer = <String, String>{};
    final catalogEntries = <CatalogEntryData>[];
    final migrateInputs = <MigrateEntryInput>[];
    final needsRawResourceSchemas = typedOverrides.resources.values.any(
      (o) => o.deriveNestedTypes,
    );
    final needsRawDataSourceSchemas = typedOverrides.dataSources.values.any(
      (o) => o.deriveNestedTypes,
    );
    final rawResourceSchemas = needsRawResourceSchemas
        ? _withoutOutputBlocks(
            _rawSchemaBlocks(schemaSrc, schemasKey: 'resource_schemas'),
            mmOverrides,
          )
        : const <String, Map<String, dynamic>>{};
    final rawDataSourceSchemas = needsRawDataSourceSchemas
        ? _rawSchemaBlocks(schemaSrc, schemasKey: 'data_source_schemas')
        : const <String, Map<String, dynamic>>{};
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
    ResolvedReference? principal;
    var principalResources = const <String>{};
    var principalDataSources = const <String>{};
    if (referenceLedger != null) {
      final List<ReferenceRule> rules;
      final MmReferenceRule? mmRule;
      final ParentReferenceRule? parentRule;
      final PrincipalRule? principalRule;
      try {
        rules = loadReferenceRules(referenceLedger, provider);
        mmRule = loadMmReferenceRule(referenceLedger, provider);
        parentRule = loadParentReferenceRule(referenceLedger, provider);
        principalRule = loadPrincipalRule(referenceLedger, provider);
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
        mmRule: mmRule,
        mm: mmOverrides,
        parentRule: parentRule,
        principalRule: principalRule,
        external: external,
        resourceSchemas: _rawSchemaBlocks(
          schemaSrc,
          schemasKey: 'resource_schemas',
        ),
        curated: typedOverrides.resources.keys,
        targetDirs: {
          if (only != null) ..._generatedResourceDirs(output),
          for (final e in typedOverrides.resources.entries)
            e.key: e.value.outputDir,
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
        principal = resolution.principal;
        principalResources = resolution.principalResources;
        principalDataSources = resolution.principalDataSources;
      }
    }
    final exactlyOne = deriveExactlyOneSlots(
      typedOverrides,
      ir,
      providerEnums: providerEnums,
      rawSchemas: (
        resources: rawResourceSchemas,
        dataSources: rawDataSourceSchemas,
      ),
      references: (resources: references, dataSources: dataReferences),
    );
    final resourceOverrides = exactlyOne.overrides.resources;
    final dataSourceOverrides = exactlyOne.overrides.dataSources;
    final excused = exactlyOne.excused.toSet();
    final unsealed = <String>[
      for (final g in dropped) ?_droppedReport(g, loaded, mmOverrides, excused),
      for (final s in exactlyOne.skipped) 'exactly-one group not sealed: $s',
      for (final s in exactlyOne.skippedAtMostOne)
        'at-most-one group not sealed: $s',
    ];
    final staleUnsealed = [
      if (providerEnums.hasGroupSource)
        for (final kind in WrapperOverrideKind.values)
          for (final MapEntry(key: type, value: o) in loaded.of(kind).entries)
            for (final k in (o.unsealedGroups ?? const <String, String>{}).keys)
              if (!excused.contains((
                type: loaded.lintKey(type, kind),
                key: sealedGroupKeyOf(const [], sealedGroupKey(k)),
              )))
                '${kind.label(type)} unsealedGroups "$k" matches no group wrap '
                    'leaves unsealed; remove it',
    ];
    final unreachable = <String>[];
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
          laneTypes: exactlyOne.overrides.asLintMap().keys.toSet(),
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
      laneInputs: laneInputs,
      principals: principalResources,
      principal: principal,
    );
    final typedReferenceKeys = <String>{};
    final unreachableReferenceKeys = <String>{};
    final dataSourceEmitter = DataSourceWrapperEmitter(
      overrides: dataSourceOverrides,
      rawDataSourceSchemas: rawDataSourceSchemas,
      providerEnums: providerEnums,
      resourceDirs: {
        for (final e in resourceOverrides.entries) e.key: e.value.outputDir,
      },
      references: dataReferences,
      laneInputs: laneInputs,
      principals: principalDataSources,
      principal: principal,
    );
    final formatter = packageFormatter(output);

    for (final entry in resourceOverrides.entries) {
      final def = ir.resources[entry.key];
      if (def == null) {
        stderr.writeln(
          'terradart wrap: schema.json missing resource "${entry.key}".',
        );
        return CliExitCodes.dataError;
      }
      final raw = resourceEmitter.emit(
        def,
        providerSource: provider,
        extraSensitiveFields: entry.value.extraSensitiveFields,
      );
      typedReferenceKeys.addAll(resourceEmitter.typedReferences);
      unreachableReferenceKeys.addAll(resourceEmitter.unreachableReferences);
      for (final block in resourceEmitter.unreachableHelpers) {
        unreachable.add(
          'nested helper not reachable from the constructor: '
          '${entry.key}.$block',
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
        final hints = providerEnums.nestedHints(entry.key, entry.value);
        migrateInputs.add(
          MigrateEntryInput(
            tfType: entry.key,
            override: entry.value,
            def: def,
            kind: 'resource',
            emittedSource: dartSrc,
            rawSchemaBlock: rawResourceSchemas[entry.key],
            enumValues: hints.enumValues,
            exactlyOneGroups: hints.exactlyOneGroups,
            atMostOneGroups: hints.atMostOneGroups,
            references: references[entry.key] ?? const {},
            reservedTypeNames: hints.reserved,
            laneInputs: laneInputs,
          ),
        );
      }
    }

    for (final entry in dataSourceOverrides.entries) {
      final def = ir.dataSources[entry.key];
      if (def == null) {
        stderr.writeln(
          'terradart wrap: schema.json missing data source "${entry.key}".',
        );
        return CliExitCodes.dataError;
      }
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
        final hints = providerEnums.nestedHints(entry.key, entry.value);
        migrateInputs.add(
          MigrateEntryInput(
            tfType: entry.key,
            override: entry.value,
            def: def,
            kind: 'dataSource',
            emittedSource: layer2,
            rawSchemaBlock: rawDataSourceSchemas[entry.key],
            enumValues: hints.enumValues,
            exactlyOneGroups: hints.exactlyOneGroups,
            atMostOneGroups: hints.atMostOneGroups,
            references: dataReferences[entry.key] ?? const {},
            reservedTypeNames: hints.reserved,
            laneInputs: laneInputs,
          ),
        );
      }
    }
    if (typedReferences) {
      stdout.writeln(
        'terradart wrap: ${typedReferenceKeys.length} inputs typed as '
        'references.',
      );
      final untyped = [
        for (final (prefix, byType) in [
          ('', references),
          ('data.', dataReferences),
        ])
          for (final MapEntry(key: type, value: slots) in byType.entries)
            for (final path in slots.keys)
              if ('$prefix$type.$path' case final key
                  when !typedReferenceKeys.contains(key) &&
                      !unreachableReferenceKeys.contains(key))
                key,
      ];
      if (untyped.isNotEmpty) {
        for (final key in untyped) {
          stderr.writeln(
            '[E406] terradart wrap: reference input not typed: $key',
          );
        }
        stderr.writeln(
          '[E406] terradart wrap: type each input, or exclude it under its '
          'rule in $referenceLedger with a comment saying why.',
        );
        return CliExitCodes.dataError;
      }
    }

    if (only == null) {
      final catalogRaw = CatalogMetadataEmitter().emit(catalogEntries);
      buffer['_catalog.g.dart'] = formatter.format(catalogRaw);

      final providerVersion = readProviderVersion(source);
      if (providerVersion.isNotEmpty) {
        buffer['_provider_version.g.dart'] = formatter.format(
          providerVersionSource(providerVersion),
        );
      }

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
      final Map<String, String> dataSourceBarrels;
      try {
        barrelManifest = loadBarrelManifest(manifestPath);
        barrelFiles = buildBarrelFiles(
          entries: catalogEntries,
          manifest: barrelManifest,
        );
        dataSourceBarrels = dataSourceServiceBarrels(
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

      if (migrateManifest) {
        final manifestRaw = MigrateManifestEmitter().emit(
          buildMigrateEntries(
            migrateInputs,
            barrelFiles: {
              for (final e in barrelManifest.barrels.entries)
                e.key: e.value.fileStemFor(e.key),
            },
            dataSourceBarrels: dataSourceBarrels,
          ),
          package: migratePackage!,
          caseInsensitiveEnums:
              providerEnums.enabled && providerEnums.caseInsensitive,
        );
        buffer[p.relative(migrateManifestPath, from: output)] =
            packageFormatter(migrateManifestPath).format(manifestRaw);
      }
      for (final entry in barrelFiles.entries) {
        buffer[p.join('..', '${entry.key}.dart')] =
            barrelFileHeader + formatter.format(entry.value);
      }
    }

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

    final orphans = only == null
        ? _orphanedGeneratedFiles(buffer, output)
        : const <String>[];

    if (check) {
      return _runCheck(buffer, output, orphans, [
        for (final m in debt?.missing ?? const <String>[])
          '$debtPath: $m has no entry (name it in sealedNames, or run '
              '`terradart wrap` to record it)',
        for (final s in debt?.stale ?? const <String>[]) '$debtPath: $s',
        for (final u in unsealed)
          '$u (seal it, or give the reason in the override\'s '
              'unsealedGroups)',
        ...staleUnsealed,
        for (final u in unreachable)
          '$u (add the block to paramOrder, or list it in '
              'nestedTypeExcludes)',
      ]);
    }
    for (final u in [...unsealed, ...staleUnsealed, ...unreachable]) {
      stderr.writeln('terradart wrap: $u');
    }

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

String? _droppedReport(
  DroppedGroup group,
  LoadedOverrides loaded,
  Map<String, MmResourceOverrides> mm,
  Set<UnsealedGroup> excused,
) {
  final o = loaded.of(group.kind)[group.type];
  if (o == null) return null;
  final key = sealedGroupKeyOf(const [], group.members);
  if (unsealedGroupKeys(o).contains(key)) {
    excused.add((type: loaded.lintKey(group.type, group.kind), key: key));
    return null;
  }
  final beta = group.kind == WrapperOverrideKind.resource
      ? mm[group.type]?.betaPaths
      : null;
  if (beta != null && group.missing.every(beta.contains)) return null;
  return 'exclusive group names no schema input: '
      '${group.kind.label(group.type)} [${group.members.join(', ')}]';
}

bool _isGeneratedFile(File file) {
  final lines = file.readAsLinesSync();
  final firstLine = lines.isEmpty ? null : lines.first;
  return firstLine == '// GENERATED FILE - DO NOT EDIT';
}

String? _pubspecName(String output) {
  final pubspec = File(p.normalize(p.join(output, '..', '..', 'pubspec.yaml')));
  if (!pubspec.existsSync()) return null;
  final match = RegExp(
    r'^name:\s*([A-Za-z0-9_]+)\s*$',
    multiLine: true,
  ).firstMatch(pubspec.readAsStringSync());
  return match?.group(1);
}

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

Set<String> _inputNames(Map<String, dynamic> block) {
  final names = <String>{};
  void walk(Map<dynamic, dynamic>? b) {
    if (b == null) return;
    for (final MapEntry(:key, :value)
        in ((b['attributes'] as Map?) ?? {}).entries) {
      names.add(snakeToPascal(key as String));
      final nested = value is Map ? value['nested_type'] : null;
      if (nested is Map) walk(nested);
    }
    for (final MapEntry(:key, :value)
        in ((b['block_types'] as Map?) ?? {}).entries) {
      names.add(snakeToPascal(key as String));
      if (value is Map) walk(value['block'] as Map?);
    }
  }

  walk(block);
  return names;
}

// Terraform SDKv2 cannot mark nested blocks computed, so schema.json exposes
// output-only blocks as inputs; strip those MM marks `output: true`.
Map<String, Map<String, dynamic>> _withoutOutputBlocks(
  Map<String, Map<String, dynamic>> blocks,
  Map<String, MmResourceOverrides> mm,
) {
  bool computedOnly(Object? attr) =>
      attr is Map &&
      attr['computed'] == true &&
      attr['optional'] != true &&
      attr['required'] != true;
  for (final MapEntry(key: type, value: root) in blocks.entries) {
    final outputs = mm[type]?.outputPaths ?? const <String>{};
    for (final path in outputs) {
      final segments = path.split('.');
      Map<String, dynamic>? parent = root;
      for (final s in segments.take(segments.length - 1)) {
        final child = (parent?['block_types'] as Map?)?[s];
        parent = child is Map ? (child['block'] as Map?)?.cast() : null;
      }
      final blockTypes = parent?['block_types'];
      if (blockTypes is! Map) continue;
      final body = blockTypes[segments.last];
      if (body is! Map) continue;
      final attrs = ((body['block'] as Map?)?['attributes'] as Map?) ?? {};
      if (attrs.isNotEmpty && attrs.values.every(computedOnly)) {
        blockTypes.remove(segments.last);
      }
    }
  }
  return blocks;
}
