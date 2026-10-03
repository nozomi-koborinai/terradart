/// A failure the CLI reports as one message and an exit code, without a
/// stack trace.
///
/// The CLI prints it as up to three lines: the [message], the [choices] of
/// the [flag] that decides, and one `Next:` command per [next] — the
/// command line that failed with those arguments added.
final class CliException implements Exception {
  const CliException(
    this.message, {
    this.exitCode = 1,
    this.flag,
    this.choices = const [],
    this.next = const [],
  });

  final String message;

  /// The process exit code: 64 for a usage error, 3 when the command needs
  /// an answer nobody can give (no terminal), the engine's own code when it
  /// failed, 1 otherwise.
  final int exitCode;

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
