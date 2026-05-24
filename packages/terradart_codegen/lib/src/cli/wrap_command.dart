import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

import '../codegen/catalog_metadata_emitter.dart';
import '../codegen/constructor_params.dart';
import '../codegen/data_source_wrapper_emitter.dart';
import '../codegen/generated_file_header.dart';
import '../codegen/naming.dart';
import '../codegen/sensitive_set_emitter.dart';
import '../codegen/wrapper_emitter.dart';
import '../codegen/wrapper_overrides/_registry.dart';
import '../codegen/wrapper_overrides/wrapper_override.dart';
import '../codegen/wrapper_overrides/yaml_loader.dart';
import '../ir/resource_def.dart';
import '../parser/schema_parser.dart';
import 'exit_codes.dart';

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
        help: 'Regenerate only this Terraform type. Skips every other yaml '
            'override under the registry — useful when a sibling yaml has '
            'unstripped `wrap-promote` markers that would otherwise break '
            'the full-registry load.',
        valueHelp: 'TERRAFORM_TYPE',
      );
  }

  @override
  String get name => 'wrap';

  @override
  String get description =>
      'Emit Layer 2 factory wrappers (+ data source Layer 1) from override YAML.';

  static final RegExp _providerIdPattern =
      RegExp(r'^[a-z0-9][a-z0-9-]*\/[a-z0-9][a-z0-9-]*$');

  @override
  Future<int> run() async {
    final results = argResults!;

    final provider = results['provider'] as String?;
    if (provider == null || provider.isEmpty) {
      usageException('--provider is required.');
    }
    if (!_providerIdPattern.hasMatch(provider)) {
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
    final ir = const SchemaJsonParser()
        .parseString(schemaSrc, providerVersion: '7.31.0');

    // 2. Resolve the YAML override root. In `dart test` the package_config
    //    is provided by the runner, so `Isolate.resolvePackageUri` succeeds.
    //    Production CLI invocations (`dart run` / `dart compile exe`) also
    //    have a package config available. Compile-time AOT snapshots are
    //    the one mode where this can fail; surface a clear software error.
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
    final LoadedOverrides loaded;
    try {
      loaded = loadWrapperOverrides(
        rootDir: yamlRootUri.toFilePath(),
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
    final resourceEmitter = WrapperEmitter(overrides: loaded.resources);
    final dataSourceEmitter =
        DataSourceWrapperEmitter(overrides: loaded.dataSources);
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
        _buildCatalogEntry(
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
        _buildCatalogEntry(
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
    // single-resource regen must not clobber the full 120-entry catalog with
    // a 1-entry partial. `--only` callers regenerate one wrapper; the catalog
    // is refreshed by the canonical full `terradart wrap`.
    if (only == null) {
      final catalogRaw = CatalogMetadataEmitter().emit(catalogEntries);
      buffer['_catalog.g.dart'] = formatter.format(catalogRaw);
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

  /// Builds the static [CatalogEntryData] for one curated [def].
  ///
  /// Every field is derived from the SAME sources the wrapper emitter uses,
  /// so the catalog never drifts from the generated wrappers:
  ///
  /// - `className` / `barrel` / `docComment` / `summary`: trivially derived
  ///   from the IR + override.
  /// - `constructorParams`: `localName` + the emitter's resolved slot order
  ///   (`orderedConstructorParams`, the A2 shared helper), with each slot
  ///   mapped to its actual Dart parameter identifier — for `customSlots`
  ///   that is the identifier in the slot's `paramDeclaration` (which may
  ///   rename the slot, e.g. `host_rule` → `hostRules`), otherwise
  ///   `snakeToCamel(slotName)`.
  /// - `sensitiveFields`: [sensitiveFieldPaths] (the shared pure function
  ///   that both this and the inline `_<r>Sensitive` const call).
  /// - `nestedTypes`: scanned from [emittedSource] — the just-formatted
  ///   wrapper Dart — because the resource-specific helper-type names cannot
  ///   be reconstructed from the IR alone.
  CatalogEntryData _buildCatalogEntry({
    required String tfType,
    required WrapperOverride override,
    required ResourceDef def,
    required String kind,
    required String emittedSource,
  }) {
    final className = snakeToPascal(tfType);
    // `override.classDocComment` is stored verbatim WITH leading `///`
    // markers (it is emitted into the wrapper as-is). The IR's `description`
    // is raw schema prose with no markers. For the catalog we want clean
    // markdown either way, so strip the `///` line prefixes from the override
    // form before recording it / extracting the summary.
    final docComment = override.classDocComment != null
        ? _stripDocMarkers(override.classDocComment!)
        : (def.description ?? '');
    return CatalogEntryData(
      tfType: tfType,
      className: className,
      barrel: override.outputDir,
      kind: kind,
      summary: _firstSentence(docComment),
      docComment: docComment,
      constructorParams: _catalogConstructorParams(def, override),
      nestedTypes: _scanNestedTypes(emittedSource, mainClass: className),
      // Data sources have no extraSensitiveFields axis; for resources this is
      // the same value forwarded to WrapperEmitter.emit, and the function is
      // the exact one the inline const uses, so the lists are byte-identical.
      sensitiveFields: sensitiveFieldPaths(
        def,
        extraSensitiveFields: override.extraSensitiveFields,
      ),
    );
  }

  /// Constructor parameter names in emitted order: `localName` first, then
  /// each resolved slot's Dart identifier.
  ///
  /// Mirrors `WrapperEmitter`'s slot resolution: a name present in
  /// `override.customSlots` takes its identifier from the slot's verbatim
  /// `paramDeclaration` (handling renames like `host_rule` → `hostRules` and
  /// virtual slots like scheduler_job's `target`); every other name is an
  /// IR slot rendered as `snakeToCamel(name)`.
  List<String> _catalogConstructorParams(
    ResourceDef def,
    WrapperOverride override,
  ) {
    final slots = orderedConstructorParams(def, override.paramOrder);
    final customSlots = override.customSlots ?? const <String, CustomSlot>{};
    final params = <String>['localName'];
    for (final name in slots) {
      final custom = customSlots[name];
      params.add(
        custom != null
            ? _paramIdentifier(custom.paramDeclaration)
            : snakeToCamel(name),
      );
    }
    return params;
  }

  /// Extracts the parameter identifier from a `CustomSlot.paramDeclaration`,
  /// e.g. `'List<ComputeUrlMapUrlMapHostRule>? hostRules'` → `hostRules`,
  /// `'required SchedulerTarget target'` → `target`. The identifier is the
  /// last `\w+` token (declarations never carry a trailing default value —
  /// see `CustomSlot.paramDeclaration` contract).
  String _paramIdentifier(String paramDeclaration) {
    final matches = RegExp(r'[A-Za-z_$][A-Za-z0-9_$]*')
        .allMatches(paramDeclaration)
        .toList();
    return matches.isEmpty ? paramDeclaration.trim() : matches.last.group(0)!;
  }

  /// Scans [source] (formatted wrapper Dart) for top-level type declarations
  /// and returns their names in declaration order, EXCLUDING the main wrapper
  /// class [mainClass]. These are exactly the resource-specific helper types
  /// (`class ComputeUrlMapUrlMapHostRule`, `enum UrlMapRedirectResponseCode`,
  /// `sealed class CloudSchedulerJobSchedulerTarget`, …) emitted alongside
  /// the wrapper. Resources with no named helpers yield `[]`.
  List<String> _scanNestedTypes(String source, {required String mainClass}) {
    // Top-level declarations start at column 0 (the wrapper file's helper
    // types and main class are all top-level; nested members are indented).
    final re = RegExp(
      r'^(?:final\s+|sealed\s+|abstract\s+|base\s+|interface\s+|mixin\s+)*'
      r'(?:class|enum|mixin)\s+([A-Za-z_$][A-Za-z0-9_$]*)',
      multiLine: true,
    );
    final out = <String>[];
    for (final m in re.allMatches(source)) {
      final name = m.group(1)!;
      if (name == mainClass) continue;
      out.add(name);
    }
    return out;
  }

  /// Strips Dart doc-comment markers from [doc]: each line's leading
  /// whitespace + `///` (and a single following space) is removed. Used to
  /// turn an override's verbatim `classDocComment` into clean markdown for
  /// the catalog. Trailing whitespace on the whole block is trimmed.
  String _stripDocMarkers(String doc) {
    final lines = doc.split('\n').map((line) {
      final m = RegExp(r'^\s*///?\s?').firstMatch(line);
      return m == null ? line : line.substring(m.end);
    });
    return lines.join('\n').trimRight();
  }

  /// First sentence of [doc] (already marker-free markdown), collapsed to a
  /// single line. Splits on the first sentence terminator (`. ` or `.\n`) or
  /// a trailing period; returns the whole (newline-collapsed) string if no
  /// terminator is found. Empty input yields `''`.
  String _firstSentence(String doc) {
    final trimmed = doc.trimLeft();
    if (trimmed.isEmpty) return '';
    final periodSpace = trimmed.indexOf('. ');
    final periodNewline = trimmed.indexOf('.\n');
    var end = -1;
    if (periodSpace >= 0 && periodNewline >= 0) {
      end = periodSpace < periodNewline ? periodSpace : periodNewline;
    } else if (periodSpace >= 0) {
      end = periodSpace;
    } else if (periodNewline >= 0) {
      end = periodNewline;
    }
    final sentence = end >= 0
        ? trimmed.substring(0, end + 1)
        : (trimmed.endsWith('.') ? trimmed : trimmed);
    // Collapse any interior whitespace runs (incl. newlines) to single spaces.
    return sentence.replaceAll(RegExp(r'\s+'), ' ').trim();
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
