import 'dart:io';

import 'package:args/command_runner.dart';

import 'exit_codes.dart';

/// The `terradart wrap` subcommand: emits Layer 2 factory wrappers (+ data
/// source Layer 1) from override YAML.
///
/// Phase 4.1 Wave 1b ships the skeleton only — argument parsing, validation,
/// and a placeholder exit code. The actual emit pipeline (override loading,
/// emitter dispatch, atomic write, `--check` / `--force` enforcement) is
/// implemented in Wave 2a / Task 14.
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

    stderr.writeln(
      'terradart wrap: not yet implemented (Phase 4.1 Task 14).',
    );
    return CliExitCodes.software;
  }
}
