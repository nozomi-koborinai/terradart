import 'output/exit_codes.dart';

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

  final ExitCode kind;

  int get exitCode => kind.code;

  final int? engineExitCode;

  final String? flag;

  final List<String> choices;

  final List<List<String>> next;

  @override
  String toString() => message;
}
