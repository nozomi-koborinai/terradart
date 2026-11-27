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
      exit(ExitCode.usage.code);
    }
    stderr.writeln('terradart: $e\n${chain.terse}');
    exit(ExitCode.software.code);
  },
);

bool _isTopLevelVersionInvocation(List<String> args) {
  for (final arg in args) {
    if (arg == '--version') return true;
    if (!arg.startsWith('-')) return false;
  }
  return false;
}

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
  final LoadedOverrides loaded = loadWrapperOverrides(
    rootDir: yamlRootUri.toFilePath(),
  );
  return WrapperEmitter(overrides: loaded.resources);
}
