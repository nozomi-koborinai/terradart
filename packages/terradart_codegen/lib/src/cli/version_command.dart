import 'dart:io';

import 'package:args/command_runner.dart';

import 'exit_codes.dart';

const String terradartCliVersion = '0.0.1-dev';

class VersionCommand extends Command<int> {
  @override
  String get name => 'version';

  @override
  String get description => 'Print the terradart CLI version and exit.';

  @override
  Future<int> run() async {
    stdout.writeln(terradartCliVersion);
    return CliExitCodes.success;
  }
}
