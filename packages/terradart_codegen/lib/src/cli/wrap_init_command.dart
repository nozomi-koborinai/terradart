import 'dart:io';

import 'package:args/command_runner.dart';

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

    // Task 11 fills in the body. For now, this skeleton just surfaces
    // "not yet implemented" so the args-parse tests pass while Task 11
    // is in flight.
    return CliExitCodes.software;
  }
}
