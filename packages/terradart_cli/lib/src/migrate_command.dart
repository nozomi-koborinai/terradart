import 'package:args/command_runner.dart';
import 'package:terradart_migrate/terradart_migrate.dart';

import 'workflow.dart';

/// `terradart migrate`: the user-facing front end of `terradart_migrate`.
///
/// It does not look for a `pubspec.yaml`. Migration runs before a Dart
/// project exists, so `dart pub global activate terradart_cli` is enough.
final class MigrateCommand extends Command<int> {
  /// Forwards what the migrator prints to [console].
  MigrateCommand(this._console) {
    declareMigrateOptions(argParser);
  }

  final Console _console;

  @override
  String get name => 'migrate';

  @override
  String get description =>
      'Migrate a Terraform tree into a Dart package, one Stack per module '
      'directory. Works before a Dart project exists. --merge-envs folds '
      'sibling environments into one Stack and an Env enum; the generated '
      'bin/infra.dart calls runEnvironments, so `terradart plan --env <name>` '
      'runs one of them.';

  @override
  String get invocation =>
      'terradart migrate (--dir <terraform dir> --out <package dir> | --report)';

  @override
  Future<int> run() => runMigrate(argResults!.arguments, _console);
}

/// Runs `terradart migrate <arguments>`, printing to [console].
Future<int> runMigrate(List<String> arguments, Console console) async {
  final out = StringBuffer();
  final err = StringBuffer();
  final code = await runMigrateCli(arguments, out: out, err: err);
  _emit(out.toString(), console.out);
  _emit(err.toString(), console.err);
  return code;
}

void _emit(String text, void Function(String line) line) {
  if (text.isEmpty) return;
  final lines = text.split('\n');
  if (lines.last.isEmpty) lines.removeLast();
  for (final entry in lines) {
    line(entry);
  }
}
