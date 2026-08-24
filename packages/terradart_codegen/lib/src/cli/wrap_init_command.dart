import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;

import '../codegen/providers/provider_rules.dart';
import '../codegen/wrap_init/clock.dart';
import '../codegen/wrap_init/output_dir_resolver.dart';
import '../codegen/wrap_init/wrap_init_emitter.dart';
import '../codegen/wrap_init/wrap_init_generator.dart';
import '../codegen/wrapper_overrides/wrapper_override.dart';
import '../codegen/wrapper_overrides/yaml_loader.dart';
import '../parser/mm_yaml_parser.dart';
import '../parser/schema_parser.dart';
import 'exit_codes.dart';
import 'wrap_cli_common.dart';

/// `terradart wrap-init <resource>` — scaffolds a wrapper override YAML
/// for a single Terraform resource.
class WrapInitCommand extends Command<int> {
  WrapInitCommand({required this.providers}) {
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
      ..addOption(
        'kind',
        help: 'Override kind when the schema has both a resource and a '
            'data source of the same name. Omit when only one exists.',
        allowed: ['resource', 'data_source'],
        valueHelp: 'resource|data_source',
      )
      ..addFlag(
        'force',
        negatable: false,
        help:
            'Overwrite an existing <output>/<resource>.yaml (default: refuse).',
      );
  }

  final Map<String, ProviderRules> providers;

  @override
  String get name => 'wrap-init';

  @override
  String get description =>
      'Scaffold a wrapper override YAML skeleton for one Terraform resource.';

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

    // --provider validation + registry lookup.
    final provider = results['provider'] as String;
    if (!providerIdPattern.hasMatch(provider)) {
      usageException(
        'Invalid --provider "$provider". Expected "namespace/name".',
      );
    }
    final rules = providers[provider];
    if (rules == null) {
      usageException(
        'Provider "$provider" not supported. '
        'Available: ${providers.keys.join(", ")}.',
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
    final kindArg = results['kind'] as String?;

    // 1. Locate the schema file (canonical <source>/schema.json, else the
    //    per-resource fixture layout — see resolveSchemaFile).
    final schemaFile = resolveSchemaFile(source, resourceName);
    if (schemaFile == null) {
      stderr.writeln(
        'terradart wrap-init: no schema for "$resourceName" under --source '
        '"$source" (looked for schema.json and '
        'schema/${resourceName}_v7.schema.json).',
      );
      return CliExitCodes.dataError;
    }

    final ir = const SchemaJsonParser().parseString(
      schemaFile.readAsStringSync(),
      providerVersion: readProviderVersion(source),
    );

    // 2. Resolve kind from --kind or from where the type lives in the IR.
    final inResources = ir.resources.containsKey(resourceName);
    final inDataSources = ir.dataSources.containsKey(resourceName);
    if (!inResources && !inDataSources) {
      stderr.writeln(
        'terradart wrap-init: schema does not contain resource OR data '
        'source "$resourceName".',
      );
      return CliExitCodes.dataError;
    }
    final WrapperOverrideKind kind;
    if (kindArg == 'data_source') {
      if (!inDataSources) {
        stderr.writeln(
          'terradart wrap-init: schema has no data source "$resourceName".',
        );
        return CliExitCodes.dataError;
      }
      kind = WrapperOverrideKind.dataSource;
    } else if (kindArg == 'resource') {
      if (!inResources) {
        stderr.writeln(
          'terradart wrap-init: schema has no resource "$resourceName".',
        );
        return CliExitCodes.dataError;
      }
      kind = WrapperOverrideKind.resource;
    } else if (inResources && inDataSources) {
      usageException(
        '"$resourceName" is both a resource and a data source. '
        'Pass --kind resource or --kind data_source.',
      );
    } else {
      kind = inResources
          ? WrapperOverrideKind.resource
          : WrapperOverrideKind.dataSource;
    }
    final def = kind == WrapperOverrideKind.resource
        ? ir.resources[resourceName]!
        : ir.dataSources[resourceName]!;

    // 3. Load MM YAML if present (optional).
    final mmFile = File(p.join(source, 'mm', '$resourceName.yaml'));
    final MmResourceOverrides? mm = mmFile.existsSync()
        ? const MmYamlParser().parseString(mmFile.readAsStringSync())
        : null;

    // 4. E402 guard before any generation.
    final stem = overrideFileStem(
      terraformType: resourceName,
      kind: kind,
    );
    final outFile = File(p.join(output, '$stem.yaml'));
    if (outFile.existsSync() && !force) {
      stderr.writeln(
        '[E402] ${outFile.path} already exists. Pass --force to overwrite.',
      );
      return CliExitCodes.dataError;
    }

    // 5. Generate + emit.
    final generator = WrapInitGenerator(
      clock: const SystemClock(),
      outputDirResolver: OutputDirResolver(
        aliases: rules.outputDirAliases,
        typePrefix: rules.terraformTypePrefix,
      ),
      providerRules: rules,
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
