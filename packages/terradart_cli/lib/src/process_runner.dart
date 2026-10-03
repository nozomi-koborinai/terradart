import 'dart:convert';
import 'dart:io';

/// The output of a captured process.
typedef CapturedProcess = ({int exitCode, String stdout, String stderr});

/// Runs the entry point and the engine; tests substitute a fake.
abstract interface class ProcessRunner {
  /// Runs [executable] with the terminal attached (an `apply` prompt reads
  /// stdin) and returns its exit code. With [toStderr] its output goes to
  /// stderr and it reads no input, so stdout carries only the `--json`
  /// result.
  Future<int> stream(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool toStderr = false,
  });

  /// Runs [executable] and returns what it printed.
  Future<CapturedProcess> capture(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
  });
}

/// [ProcessRunner] over `dart:io` processes.
final class IoProcessRunner implements ProcessRunner {
  const IoProcessRunner();

  @override
  Future<int> stream(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool toStderr = false,
  }) async {
    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      environment: environment,
      mode: toStderr ? ProcessStartMode.normal : ProcessStartMode.inheritStdio,
    );
    if (!toStderr) return process.exitCode;
    await process.stdin.close();
    await Future.wait([
      process.stdout.forEach(stderr.add),
      process.stderr.forEach(stderr.add),
    ]);
    return process.exitCode;
  }

  @override
  Future<CapturedProcess> capture(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
  }) async {
    final result = await Process.run(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      environment: environment,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    return (
      exitCode: result.exitCode,
      stdout: result.stdout as String,
      stderr: result.stderr as String,
    );
  }
}
