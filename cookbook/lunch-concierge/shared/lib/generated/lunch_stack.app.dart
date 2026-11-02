// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: LunchStack
// dart format off
// ignore_for_file: type=lint

/// The constants of the stack, known when synth ran.
abstract final class LunchStackConstants {
  LunchStackConstants._();

  static const String region = r'asia-northeast1';

  static const String projectId = r'ci-test-project-id';

  static const String serviceName = r'lunch-concierge';

  static const String databaseName = r'lunch';

  static const String databaseUser = r'lunch-sql-client@ci-test-project-id.iam';

  static const String databaseUrl = r'postgresql://lunch-sql-client@ci-test-project-id.iam@localhost:5432/lunch';

  static const String cloudSqlInstanceConnectionName = r'ci-test-project-id:asia-northeast1:lunch-sql';
}

/// The Terraform outputs of the stack, read when the app runs. The stack
/// has no output a client may read: a sensitive output has no getter.
final class LunchStackOutputs {
  /// Reads the outputs of `terraform output -json`.
  const LunchStackOutputs.fromTerraformJson(Map<String, Object?> outputs);

  /// Reads environment variables named after the outputs.
  const LunchStackOutputs.fromEnvironment(Map<String, String> environment);

  /// Reads the values compiled into the app with `--dart-define`.
  const LunchStackOutputs.fromDartDefine();
}
