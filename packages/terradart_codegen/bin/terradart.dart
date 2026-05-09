import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:io/io.dart' show ExitCode;
import 'package:stack_trace/stack_trace.dart';
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:terradart_codegen/src/cli/version_command.dart';

Future<void> main(List<String> args) => Chain.capture(
      () async {
        final runner = buildCliRunner();

        // Top-level `--version` short-circuit. Only fires when the flag
        // sits at the front of the argv before any subcommand, so that
        // `terradart codegen --version 5.32.0` (a value for the codegen
        // subcommand) keeps working.
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
