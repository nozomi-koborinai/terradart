import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
import 'package:io/io.dart' show ExitCode;
import 'package:stack_trace/stack_trace.dart';
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:terradart_codegen/src/cli/version_command.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';

Future<void> main(List<String> args) => Chain.capture(
      () async {
        final runner = buildCliRunner();

        // Top-level `--version` short-circuit. Only fires when the flag
        // sits at the front of the argv before any subcommand.
        if (_isTopLevelVersionInvocation(args)) {
          stdout.writeln(terradartCliVersion);
          exitCode = CliExitCodes.success;
          return;
        }

        final code = await runner.run(args) ?? CliExitCodes.success;
        exitCode = code;
      },
      onError: (Object e, Chain chain) {
        if (e is UsageException) {
          stderr.writeln(e);
          exit(ExitCode.usage.code); // 64
        }
        stderr.writeln('terradart: $e\n${chain.terse}');
        exit(ExitCode.software.code); // 70
      },
    );

bool _isTopLevelVersionInvocation(List<String> args) {
  for (final arg in args) {
    if (arg == '--version') return true;
    // Stop scanning once we hit the first non-flag token (subcommand).
    if (!arg.startsWith('-')) return false;
  }
  return false;
}

/// Resolves the production semantic-hints YAML root via
/// `Isolate.resolvePackageUri` and builds a [WrapperEmitter] wired up to the
/// override registry loaded from `<rootDir>/*.yaml`.
///
/// Resolves the production semantic-hints YAML root and builds a
/// [WrapperEmitter] wired to the override registry under
/// `wrapper_overrides/yaml/`.
Future<WrapperEmitter> buildWrapperEmitterFromPackageYaml() async {
  final yamlRootUri = await Isolate.resolvePackageUri(
    Uri.parse('package:terradart_codegen/src/codegen/wrapper_overrides/yaml/'),
  );
  if (yamlRootUri == null) {
    throw StateError(
      'terradart: cannot resolve semantic hints YAML root '
      '(package:terradart_codegen/src/codegen/wrapper_overrides/yaml/)',
    );
  }
  final LoadedOverrides loaded =
      loadWrapperOverrides(rootDir: yamlRootUri.toFilePath());
  return WrapperEmitter(overrides: loaded.resources);
}
