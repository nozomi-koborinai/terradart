import 'dart:io';

import 'package:args/command_runner.dart';

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

    // Task 9 fills in the rest.
    return CliExitCodes.software;
  }
}
