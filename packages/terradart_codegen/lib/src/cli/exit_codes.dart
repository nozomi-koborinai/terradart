/// POSIX sysexits.h-style exit codes used by the `terradart` CLI.
///
/// Mirrors the constants in `package:io`'s `ExitCode` but kept local so
/// callers do not need to import the io package just to read a code.
abstract final class CliExitCodes {
  /// Successful termination.
  static const int success = 0;

  /// The command was used incorrectly (bad flags, missing args).
  static const int usage = 64;

  /// The input data was incorrect (malformed YAML, bad provider id, etc.).
  static const int dataError = 65;

  /// An internal software error (uncaught exception, invariant violation).
  static const int software = 70;
}
