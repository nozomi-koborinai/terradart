// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: EmailJobsStack
// dart format off
// ignore_for_file: type=lint

/// The constants of the stack, known when synth ran.
abstract final class EmailJobsStackConstants {
  EmailJobsStackConstants._();

  static const String emailQueueName = r'email-jobs';

  static const String emailQueueLocation = r'us-central1';
}

/// The Terraform outputs of the stack, read when the app runs. The stack
/// has no output a client may read: a sensitive output has no getter.
final class EmailJobsStackOutputs {
  /// Reads the outputs of `terraform output -json`.
  const EmailJobsStackOutputs.fromTerraformJson(Map<String, Object?> outputs);

  /// Reads environment variables named after the outputs.
  const EmailJobsStackOutputs.fromEnvironment(Map<String, String> environment);

  /// Reads the values compiled into the app with `--dart-define`.
  const EmailJobsStackOutputs.fromDartDefine();
}
