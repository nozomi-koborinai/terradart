import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;

import '../codegen/wrap_init/clock.dart';
import '../codegen/wrap_init/output_dir_resolver.dart';
import '../codegen/wrap_init/wrap_init_emitter.dart';
import '../codegen/wrap_init/wrap_init_generator.dart';
import '../codegen/wrapper_overrides/wrapper_override.dart';
import '../parser/mm_yaml_parser.dart';
import '../parser/schema_parser.dart';
import 'exit_codes.dart';

/// `terradart wrap-init <resource>` — scaffolds a wrapper override YAML
/// for a single Terraform resource.
class WrapInitCommand extends Command<int> {
  WrapInitCommand() {
    argParser
      ..addOption(
        'provider',
        abbr: 'p',
        help:
            'Terraform provider id, e.g. "hashicorp/google". Default applies.',
        valueHelp: 'NAMESPACE/NAME',
        defaultsTo: 'hashicorp/google',
      )
      ..addOption(
        'source',
        help:
            'Directory containing schema.json + mm/<resource>.yaml. Required.',
        valueHelp: 'DIR',
      )
      ..addOption(
        'output',
        abbr: 'o',
        help: 'Directory where <resource>.yaml will be written. Required.',
        valueHelp: 'DIR',
      )
      ..addFlag(
        'force',
        negatable: false,
        help:
            'Overwrite an existing <output>/<resource>.yaml (default: refuse).',
      );
  }

  @override
  String get name => 'wrap-init';

  @override
  String get description =>
      'Scaffold a wrapper override YAML skeleton for one Terraform resource.';

  static final RegExp _providerIdPattern =
      RegExp(r'^[a-z0-9][a-z0-9-]*\/[a-z0-9][a-z0-9-]*$');

  @override
  Future<int> run() async {
    final results = argResults!;

    // Positional <resource>.
    final rest = results.rest;
    if (rest.isEmpty) {
      usageException('terradart wrap-init: missing positional <resource>.');
    }
    if (rest.length > 1) {
      usageException(
        'terradart wrap-init: only one positional <resource> allowed (got ${rest.length}).',
      );
    }

    // --provider validation + Phase 4.2 support gating.
    final provider = results['provider'] as String;
    if (!_providerIdPattern.hasMatch(provider)) {
      usageException(
        'Invalid --provider "$provider". Expected "namespace/name".',
      );
    }
    if (provider != 'hashicorp/google') {
      usageException(
        'Provider "$provider" not supported in Phase 4.2 '
        '(only hashicorp/google).',
      );
    }

    // --source / --output validation.
    final source = results['source'] as String?;
    if (source == null || source.isEmpty) {
      stderr.writeln('terradart wrap-init: --source is required.');
      return CliExitCodes.dataError;
    }
    final output = results['output'] as String?;
    if (output == null || output.isEmpty) {
      stderr.writeln('terradart wrap-init: --output is required.');
      return CliExitCodes.dataError;
    }

    final resourceName = rest.single;
    final force = results['force'] as bool;

    // 1. Locate the schema file.
    //
    // The spec describes `<source>/schema.json` as the canonical layout.
    // For the existing test fixtures (`test/fixtures/schema/<r>_v7.schema.json`)
    // there is no single combined `schema.json` to point at, so we accept
    // BOTH shapes:
    //   (a) <source>/schema.json (canonical, used in production when paired
    //       with the wrap subcommand's source dir)
    //   (b) <source>/schema/<resource>_v7.schema.json (per-resource layout,
    //       matches the existing Phase 2/4.1 schema fixtures)
    final canonicalSchemaFile = File(p.join(source, 'schema.json'));
    final perResourceSchemaFile = File(
      p.join(source, 'schema', '${resourceName}_v7.schema.json'),
    );
    final File schemaFile;
    if (canonicalSchemaFile.existsSync()) {
      schemaFile = canonicalSchemaFile;
    } else if (perResourceSchemaFile.existsSync()) {
      schemaFile = perResourceSchemaFile;
    } else {
      stderr.writeln(
        'terradart wrap-init: neither ${canonicalSchemaFile.path} nor '
        '${perResourceSchemaFile.path} exists.',
      );
      return CliExitCodes.dataError;
    }

    final ir = const SchemaJsonParser()
        .parseString(schemaFile.readAsStringSync(), providerVersion: '7.31.0');

    // 2. Resolve kind from where the resource lives in the IR.
    final def = ir.resources[resourceName] ?? ir.dataSources[resourceName];
    if (def == null) {
      stderr.writeln(
        'terradart wrap-init: schema does not contain resource OR data '
        'source "$resourceName".',
      );
      return CliExitCodes.dataError;
    }
    final kind = ir.resources.containsKey(resourceName)
        ? WrapperOverrideKind.resource
        : WrapperOverrideKind.dataSource;

    // 3. Load MM YAML if present (optional).
    final mmFile = File(p.join(source, 'mm', '$resourceName.yaml'));
    final MmResourceOverrides? mm = mmFile.existsSync()
        ? const MmYamlParser().parseString(mmFile.readAsStringSync())
        : null;

    // 4. E402 guard before any generation.
    final outFile = File(p.join(output, '$resourceName.yaml'));
    if (outFile.existsSync() && !force) {
      stderr.writeln(
        '[E402] ${outFile.path} already exists. Pass --force to overwrite.',
      );
      return CliExitCodes.dataError;
    }

    // 5. Generate + emit.
    final generator = WrapInitGenerator(
      clock: const SystemClock(),
      outputDirResolver: const OutputDirResolver(),
    );
    const emitter = WrapInitEmitter();
    final draft = generator.generate(
      terraformType: resourceName,
      def: def,
      kind: kind,
      mm: mm,
    );
    final yaml = emitter.emit(draft);

    // 6. Write.
    outFile.parent.createSync(recursive: true);
    outFile.writeAsStringSync(yaml);
    return CliExitCodes.success;
  }
}
