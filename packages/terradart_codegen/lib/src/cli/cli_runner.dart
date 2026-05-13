import 'package:args/command_runner.dart';

import '../codegen/providers/google_provider_rules.dart';
import '../codegen/providers/provider_rules.dart';
import 'codegen_command.dart';
import 'version_command.dart';
import 'wrap_command.dart';
import 'wrap_init_command.dart';
import 'wrap_promote_command.dart';

/// Build the top-level `terradart` [CommandRunner].
///
/// Returns `int` so each command can pick its own exit code. `null` from a
/// command means "no explicit code — treat as success".
CommandRunner<int> buildCliRunner() {
  const providers = <String, ProviderRules>{
    'hashicorp/google': GoogleProviderRules(),
  };
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
    ..addCommand(WrapCommand())
    ..addCommand(WrapInitCommand(providers: providers))
    ..addCommand(WrapPromoteCommand(providers: providers))
    ..addCommand(VersionCommand());
  return runner;
}
