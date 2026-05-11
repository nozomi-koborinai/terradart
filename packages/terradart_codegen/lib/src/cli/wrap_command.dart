import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

import '../codegen/data_source_class_emitter.dart';
import '../codegen/data_source_wrapper_emitter.dart';
import '../codegen/generated_file_header.dart';
import '../codegen/wrapper_emitter.dart';
import '../codegen/wrapper_overrides/_registry.dart';
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
    final loaded = loadWrapperOverrides(rootDir: yamlRootUri.toFilePath());

    // 3. Emit every override into an in-memory map keyed by repo-relative
    //    output path. Doing this before any filesystem mutation lets the
    //    `--force` check (and the future `--check` diff) consider the
    //    whole batch atomically.
    final buffer = <String, String>{};
    final resourceEmitter = WrapperEmitter(overrides: loaded.resources);
    final dataSourceEmitter =
        DataSourceWrapperEmitter(overrides: loaded.dataSources);
    const layer1Emitter = DataSourceClassEmitter();
    // Layer 2 emit output is unformatted; match the WrapperEmitter /
    // DataSourceWrapperEmitter Level A test convention (dart_style 3.x with
    // `latestLanguageVersion`) so wrap output is byte-identical with the
    // handwritten_baseline goldens. Layer 1's emitter ships ready-formatted
    // output and is not run through the formatter.
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
      final raw = resourceEmitter.emit(def, providerSource: provider);
      final dartSrc = generatedFileHeader + formatter.format(raw);
      buffer[p.join(entry.value.outputDir, '${entry.key}.dart')] = dartSrc;
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
      // Layer 1 schema carrier: `generated/data_<terraformType>.schema.dart`.
      // DataSourceClassEmitter already prepends its own GENERATED FILE
      // header (with the `// Source:` banner) and ships pre-formatted
      // output, so we neither add the shared header constant nor format.
      final layer1 = layer1Emitter.emit(def, providerSource: provider);
      buffer[p.join('generated', 'data_${entry.key}.schema.dart')] = layer1;
    }

    // 4. E401 guard: refuse to clobber files that don't carry the
    //    `// GENERATED FILE - DO NOT EDIT` marker, unless `--force` is set.
    //    Files that don't yet exist are fine.
    if (!force) {
      for (final relPath in buffer.keys) {
        final existing = File(p.join(output, relPath));
        if (!existing.existsSync()) continue;
        final lines = existing.readAsLinesSync();
        final firstLine = lines.isEmpty ? null : lines.first;
        if (firstLine != '// GENERATED FILE - DO NOT EDIT') {
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
