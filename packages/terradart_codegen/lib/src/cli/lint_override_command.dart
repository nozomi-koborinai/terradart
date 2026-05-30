import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';

import '../codegen/override_linter.dart';
import '../codegen/wrapper_overrides/_registry.dart';
import '../codegen/wrapper_overrides/yaml_loader.dart';
import 'exit_codes.dart';

/// `terradart lint-override` — fails (exit 65) if any wrapper override YAML
/// carries a hand-written axis that a derivation gate has made dead config.
///
/// Phase A5 phase 1: two IR-free, YAML-only rules (see [lintOverride]). The
/// detection logic is the pure `override_linter`; this command only resolves
/// the bundled override-YAML root (or `--dir`), loads it, and reports.
class LintOverrideCommand extends Command<int> {
  LintOverrideCommand() {
    argParser.addOption(
      'dir',
      help: 'Override-YAML directory to lint. Defaults to the bundled '
          'package:terradart_codegen registry.',
      valueHelp: 'DIR',
    );
  }

  @override
  String get name => 'lint-override';

  @override
  String get description =>
      'Lint wrapper override YAML for dead/conflicting derive-gate config.';

  @override
  Future<int> run() async {
    final dirArg = argResults!['dir'] as String?;

    final String rootDir;
    if (dirArg != null && dirArg.isNotEmpty) {
      rootDir = dirArg;
    } else {
      final uri = await Isolate.resolvePackageUri(
        Uri.parse(
          'package:terradart_codegen/src/codegen/wrapper_overrides/yaml/',
        ),
      );
      if (uri == null) {
        stderr.writeln(
          'terradart lint-override: could not resolve the bundled '
          'package:terradart_codegen yaml root.',
        );
        return CliExitCodes.software;
      }
      rootDir = uri.toFilePath();
    }

    // Malformed registry YAML self-fatals inside the loader (throws
    // LoaderErrorReport, which the entrypoint maps to a non-zero exit) — that
    // is correct linter behavior, so it is intentionally not caught here. A
    // `--dir` pointing at a missing directory instead throws StateError; catch
    // that to report a clean message + dataError (mirrors wrap_command) rather
    // than surfacing a stack trace.
    final LoadedOverrides loaded;
    try {
      loaded = loadWrapperOverrides(rootDir: rootDir);
    } on StateError catch (e) {
      stderr.writeln('terradart lint-override: $e');
      return CliExitCodes.dataError;
    }
    final violations = lintOverrides(loaded.all);

    if (violations.isEmpty) {
      stdout.writeln(
        'lint-override: ${loaded.all.length} overrides clean.',
      );
      return CliExitCodes.success;
    }

    stderr.writeln('lint-override: ${violations.length} violation(s):');
    for (final v in violations) {
      stderr.writeln('  ${v.tfType}: [${v.rule}] ${v.detail}');
    }
    return CliExitCodes.dataError;
  }
}
