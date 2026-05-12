import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;

import '../codegen/wrap_init/clock.dart';
import '../codegen/wrap_promote/wrap_promote_generator.dart';
import '../codegen/wrap_promote/wrap_promote_marker.dart';
import '../parser/mm_yaml_parser.dart';
import '../parser/schema_parser.dart';
import 'exit_codes.dart';

/// `terradart wrap-promote <resource>` — overlays MM-derived sealed-class
/// skeletons + Dart enums onto an existing wrap-init-produced yaml.
class WrapPromoteCommand extends Command<int> {
  WrapPromoteCommand() {
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
        help:
            'Directory holding an existing <resource>.yaml from wrap-init. Required.',
        valueHelp: 'DIR',
      )
      ..addFlag(
        'force',
        negatable: false,
        help:
            'Regenerate the marker section even if one already exists (default: refuse).',
      );
  }

  @override
  String get name => 'wrap-promote';

  @override
  String get description =>
      'Overlay MM-derived sealed-class skeletons + enums onto an existing wrap-init yaml.';

  static final RegExp _providerIdPattern =
      RegExp(r'^[a-z0-9][a-z0-9-]*\/[a-z0-9][a-z0-9-]*$');

  @override
  Future<int> run() async {
    final results = argResults!;

    final rest = results.rest;
    if (rest.isEmpty) {
      usageException('terradart wrap-promote: missing positional <resource>.');
    }
    if (rest.length > 1) {
      usageException(
        'terradart wrap-promote: only one positional <resource> allowed (got ${rest.length}).',
      );
    }

    final provider = results['provider'] as String;
    if (!_providerIdPattern.hasMatch(provider)) {
      usageException(
        'Invalid --provider "$provider". Expected "namespace/name".',
      );
    }
    if (provider != 'hashicorp/google') {
      usageException(
        'Provider "$provider" not supported in Phase 4.3 '
        '(only hashicorp/google).',
      );
    }

    final source = results['source'] as String?;
    if (source == null || source.isEmpty) {
      stderr.writeln('terradart wrap-promote: --source is required.');
      return CliExitCodes.dataError;
    }
    final output = results['output'] as String?;
    if (output == null || output.isEmpty) {
      stderr.writeln('terradart wrap-promote: --output is required.');
      return CliExitCodes.dataError;
    }

    final resourceName = rest.single;
    final force = results['force'] as bool;

    // 1. Locate the existing yaml (E403 if absent).
    final yamlFile = File(p.join(output, '$resourceName.yaml'));
    if (!yamlFile.existsSync()) {
      stderr.writeln(
        '[E403] ${yamlFile.path} does not exist. Run `terradart wrap-init` first.',
      );
      return CliExitCodes.dataError;
    }

    // 2. Locate the MM YAML (E404 if absent).
    final mmFile = File(p.join(source, 'mm', '$resourceName.yaml'));
    if (!mmFile.existsSync()) {
      stderr.writeln(
        '[E404] ${mmFile.path} missing. wrap-promote requires MM hints to be meaningful.',
      );
      return CliExitCodes.dataError;
    }

    // 3. Locate the schema (canonical OR per-resource fallback).
    final canonical = File(p.join(source, 'schema.json'));
    final perRes = File(
      p.join(source, 'schema', '${resourceName}_v7.schema.json'),
    );
    final File schemaFile;
    if (canonical.existsSync()) {
      schemaFile = canonical;
    } else if (perRes.existsSync()) {
      schemaFile = perRes;
    } else {
      stderr.writeln(
        'terradart wrap-promote: schema source not found in --source '
        '"$source" (looked at ${canonical.path} and ${perRes.path}).',
      );
      return CliExitCodes.dataError;
    }

    // 4. Read existing yaml, check for existing marker.
    final existingYaml = yamlFile.readAsStringSync();
    final hasMarker = existingYaml.contains(WrapPromoteMarker.beginMarker);
    if (hasMarker && !force) {
      stderr.writeln(
        '[E402] ${yamlFile.path} already contains a wrap-promote marker section. '
        'Pass --force to regenerate.',
      );
      return CliExitCodes.dataError;
    }

    // 5. Parse inputs.
    final ir = const SchemaJsonParser().parseString(
      schemaFile.readAsStringSync(),
      providerVersion: '7.31.0',
    );
    final def = ir.resources[resourceName] ?? ir.dataSources[resourceName];
    if (def == null) {
      stderr.writeln(
        'terradart wrap-promote: schema does not contain resource OR data '
        'source "$resourceName".',
      );
      return CliExitCodes.dataError;
    }
    final mm = const MmYamlParser().parseString(mmFile.readAsStringSync());

    // 6. Generate the additions block.
    final generator = WrapPromoteGenerator(clock: const SystemClock());
    final additions = generator.generate(
      terraformType: resourceName,
      def: def,
      mm: mm,
    );

    // 7. Strip existing marker (if any) + append fresh additions.
    final stripped = WrapPromoteMarker.stripMarkerSection(existingYaml);
    final next = additions.isEmpty ? stripped : '$stripped$additions';
    yamlFile.writeAsStringSync(next);
    return CliExitCodes.success;
  }
}
