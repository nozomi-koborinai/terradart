import 'output/exit_codes.dart';

/// A failure the CLI reports as one message and an exit code, without a
/// stack trace.
///
/// The CLI prints it as up to three lines: the [message], the [choices] of
/// the [flag] that decides, and one `Next:` command per [next] — the
/// command line that failed with those arguments added. `--json` puts the
/// same in `error` and `next`.
final class CliException implements Exception {
  const CliException(
    this.message, {
    this.kind = ExitCode.internal,
    this.engineExitCode,
    this.flag,
    this.choices = const [],
    this.next = const [],
  });

  final String message;

  /// Which failure it is: the exit code and `error.code`.
  final ExitCode kind;

  /// The process exit code.
  int get exitCode => kind.code;

  /// The engine's own exit code, with [ExitCode.engineFailed].
  final int? engineExitCode;

  /// The flag that decides what the command could not (`--env`).
  final String? flag;

  /// The values [flag] takes.
  final List<String> choices;

  /// Arguments that make the failed command line run, one list per
  /// suggestion.
  final List<List<String>> next;

  @override
  String toString() => message;
}
