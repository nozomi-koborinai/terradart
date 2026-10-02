/// A failure the CLI reports as one message and an exit code, without a
/// stack trace.
final class CliException implements Exception {
  const CliException(this.message, {this.exitCode = 1});

  final String message;

  /// The process exit code: 64 for a usage error, the engine's own code
  /// when it failed, 1 otherwise.
  final int exitCode;

  @override
  String toString() => message;
}
