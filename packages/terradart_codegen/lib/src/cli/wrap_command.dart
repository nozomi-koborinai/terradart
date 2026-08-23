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
import '../codegen/generated_file_header.dart';
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
        help: 'CI gate mode: fail (E301) if any emitted file differs from '
            'its on-disk counterpart. Implies no writes.',
      )
      ..addFlag(
        'force',
        negatable: false,
        help: 'Overwrite files that are missing or have a non-TerraDart '
            'generated-file header (E401 is suppressed).',
      )
      ..addOption(
        'only',
        help: 'Regenerate only this Terraform type (and its data_<type> '
            'twin when present). Skips every other yaml override under '
            'the registry — useful when a sibling yaml has unstripped '
            '`wrap-promote` markers that would otherwise break the '
            'full-registry load.',
        valueHelp: 'TERRAFORM_TYPE',
      )
      ..addOption(
        'overrides-root',
        help: 'Directory of wrapper-override YAMLs. Defaults to the '
            'committed google registry '
            '(src/codegen/wrapper_overrides/yaml/); other providers pass '
            'their own root.',
        valueHelp: 'DIR',
      )
      ..addOption(
        'barrels-manifest',
        help: 'Authored barrels manifest. Defaults to the committed google '
            'manifest (src/codegen/barrels/barrels.yaml); other providers '
            'pass their own (its umbrellaFile axis names the umbrella).',
        valueHelp: 'FILE',
      )
      ..addOption(
        'resource-provider',
        help: 'Pin every emitted wrapper\'s Terraform provider '
            'meta-argument (e.g. "google-beta"). Required for providers '
            'that share the default provider\'s type prefix; omit for the '
            'implied default.',
        valueHelp: 'NAME',
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
          mmOverrides[resourceType] =
              const MmYamlParser().parseString(entity.readAsStringSync());
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
    final ir = mmOverrides.isEmpty
        ? baseIr
        : const IrMerger().merge(base: baseIr, overrides: mmOverrides);

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
            'package:terradart_codegen/src/codegen/wrapper_overrides/yaml/'),
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
      loaded = loadWrapperOverrides(
        rootDir: yamlRootPath,
        only: only,
      );
    } on StateError catch (e) {
      stderr.writeln('terradart wrap: $e');
      return CliExitCodes.dataError;
    }

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
    // `deriveNestedTypes` needs the RAW schema.json `block` shape
    // (`block_types` / `nesting_mode` / `min_items`, ...), which `baseIr`
    // above no longer carries once `SchemaJsonParser` has flattened it into
    // the IR. Decoding schema.json a second time only when at least one
    // loaded override actually sets the gate keeps today's (dark) run
    // exactly as cheap as before this gate existed — every committed
    // override currently leaves `deriveNestedTypes` at its `false` default.
    final needsRawResourceSchemas =
        loaded.resources.values.any((o) => o.deriveNestedTypes);
    final needsRawDataSourceSchemas =
        loaded.dataSources.values.any((o) => o.deriveNestedTypes);
    final rawResourceSchemas = needsRawResourceSchemas
        ? _rawSchemaBlocks(schemaSrc, schemasKey: 'resource_schemas')
        : const <String, Map<String, dynamic>>{};
    final rawDataSourceSchemas = needsRawDataSourceSchemas
        ? _rawSchemaBlocks(schemaSrc, schemasKey: 'data_source_schemas')
        : const <String, Map<String, dynamic>>{};
    final resourceEmitter = WrapperEmitter(
      overrides: loaded.resources,
      rawResourceSchemas: rawResourceSchemas,
      resourceProvider: argResults?['resource-provider'] as String?,
    );
    final dataSourceEmitter = DataSourceWrapperEmitter(
      overrides: loaded.dataSources,
      rawDataSourceSchemas: rawDataSourceSchemas,
    );
    // Layer 2 emit output is unformatted; match the WrapperEmitter /
    // DataSourceWrapperEmitter Level A test convention (dart_style 3.x with
    // `latestLanguageVersion`) so wrap output is byte-identical with the
    // handwritten_baseline goldens.
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    for (final entry in loaded.resources.entries) {
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
              'package:terradart_codegen/src/codegen/barrels/barrels.yaml'),
        );
        if (manifestUri == null) {
          stderr.writeln(
            'terradart wrap: failed to resolve barrels.yaml package path.',
          );
          return CliExitCodes.software;
        }
        manifestPath = manifestUri.toFilePath();
      }
      final Map<String, String> barrelFiles;
      try {
        barrelFiles = buildBarrelFiles(
          entries: catalogEntries,
          manifest: loadBarrelManifest(manifestPath),
        );
      } on StateError catch (e) {
        stderr.writeln('terradart wrap: $e');
        return CliExitCodes.dataError;
      } on FormatException catch (e) {
        stderr.writeln('terradart wrap: $e');
        return CliExitCodes.dataError;
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
        final lines = existing.readAsLinesSync();
        final firstLine = lines.isEmpty ? null : lines.first;
        final isGenerated = firstLine == '// GENERATED FILE - DO NOT EDIT' ||
            firstLine == '// Generated by terradart codegen. DO NOT EDIT.';
        if (!isGenerated) {
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
    if (check) {
      return _runCheck(buffer, output);
    }

    // 6. Materialise. Create parent dirs lazily; writeAsStringSync is
    //    atomic-enough for the regen workflow (the file is fully written
    //    before the next entry's directory probe runs).
    for (final entry in buffer.entries) {
      final outFile = File(p.join(output, entry.key));
      outFile.parent.createSync(recursive: true);
      outFile.writeAsStringSync(entry.value);
    }
    return CliExitCodes.success;
  }

  /// `--check` mode body. Diffs [buffer] (the in-memory emit result, keyed
  /// by repo-relative path) against the on-disk files under [output] and
  /// returns [CliExitCodes.dataError] when any pair diverges. Line endings
  /// are normalised to LF on both sides so CRLF Windows checkouts are not
  /// reported as bogus mismatches.
  int _runCheck(Map<String, String> buffer, String output) {
    final mismatches = <String>[];
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
