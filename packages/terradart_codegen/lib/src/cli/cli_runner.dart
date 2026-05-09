import 'package:args/command_runner.dart';

import 'codegen_command.dart';
import 'version_command.dart';

/// Build the top-level `terradart` [CommandRunner].
///
/// Returns `int` so each command can pick its own exit code. `null` from a
/// command means "no explicit code — treat as success".
CommandRunner<int> buildCliRunner() {
  final runner = CommandRunner<int>(
    'terradart',
    'Generate terradart Dart bindings from Terraform provider schemas.',
  )
    ..argParser.addFlag(
      'version',
      negatable: false,
      help: 'Print the terradart CLI version and exit.',
    )
    ..addCommand(CodegenCommand())
    ..addCommand(VersionCommand());
  return runner;
}
