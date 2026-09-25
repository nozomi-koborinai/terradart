// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_function`.
const Set<String> _awsLambdaFunctionSensitive = <String>{};

/// Typed helper for the `capacity_provider_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionCapacityProviderConfig {
  const LambdaFunctionCapacityProviderConfig({
    required this.lambdaManagedInstancesCapacityProviderConfig,
  });

  final LambdaFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig
  lambdaManagedInstancesCapacityProviderConfig;

  Map<String, Object?> encode() => {
    'lambda_managed_instances_capacity_provider_config':
        lambdaManagedInstancesCapacityProviderConfig.encode(),
  };
}

/// Typed helper for the `capacity_provider_config.lambda_managed_instances_capacity_provider_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig {
  const LambdaFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig({
    required this.capacityProviderArn,
    this.executionEnvironmentMemoryGibPerVcpu,
    this.perExecutionEnvironmentMaxConcurrency,
  });

  final TfArg<String> capacityProviderArn;

  final TfArg<num>? executionEnvironmentMemoryGibPerVcpu;

  final TfArg<num>? perExecutionEnvironmentMaxConcurrency;

  Map<String, Object?> encode() => {
    'capacity_provider_arn': capacityProviderArn.toTfJson(),
    if (executionEnvironmentMemoryGibPerVcpu != null)
      'execution_environment_memory_gib_per_vcpu':
          executionEnvironmentMemoryGibPerVcpu!.toTfJson(),
    if (perExecutionEnvironmentMaxConcurrency != null)
      'per_execution_environment_max_concurrency':
          perExecutionEnvironmentMaxConcurrency!.toTfJson(),
  };
}

/// Typed helper for the `dead_letter_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionDeadLetterConfig {
  const LambdaFunctionDeadLetterConfig({required this.targetArn});

  final TfArg<String> targetArn;

  Map<String, Object?> encode() => {'target_arn': targetArn.toTfJson()};
}

/// Typed helper for the `durable_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionDurableConfig {
  const LambdaFunctionDurableConfig({
    required this.executionTimeout,
    this.retentionPeriod,
  });

  final TfArg<num> executionTimeout;

  final TfArg<num>? retentionPeriod;

  Map<String, Object?> encode() => {
    'execution_timeout': executionTimeout.toTfJson(),
    if (retentionPeriod != null)
      'retention_period': retentionPeriod!.toTfJson(),
  };
}

/// Typed helper for the `environment` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionEnvironment {
  const LambdaFunctionEnvironment({this.variables});

  final TfArg<Map<String, String>>? variables;

  Map<String, Object?> encode() => {
    if (variables != null) 'variables': variables!.toTfJson(),
  };
}

/// Typed helper for the `ephemeral_storage` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionEphemeralStorage {
  const LambdaFunctionEphemeralStorage({this.size});

  final TfArg<num>? size;

  Map<String, Object?> encode() => {if (size != null) 'size': size!.toTfJson()};
}

/// Typed helper for the `file_system_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionFileSystemConfig {
  const LambdaFunctionFileSystemConfig({
    required this.arn,
    required this.localMountPath,
  });

  final TfArg<String> arn;

  final TfArg<String> localMountPath;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'local_mount_path': localMountPath.toTfJson(),
  };
}

/// Typed helper for the `image_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionImageConfig {
  const LambdaFunctionImageConfig({
    this.command,
    this.entryPoint,
    this.workingDirectory,
  });

  final TfArg<List<Object?>>? command;

  final TfArg<List<Object?>>? entryPoint;

  final TfArg<String>? workingDirectory;

  Map<String, Object?> encode() => {
    if (command != null) 'command': command!.toTfJson(),
    if (entryPoint != null) 'entry_point': entryPoint!.toTfJson(),
    if (workingDirectory != null)
      'working_directory': workingDirectory!.toTfJson(),
  };
}

/// Typed helper for the `logging_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionLoggingConfig {
  const LambdaFunctionLoggingConfig({
    this.applicationLogLevel,
    required this.logFormat,
    this.logGroup,
    this.systemLogLevel,
  });

  final TfArg<String>? applicationLogLevel;

  final TfArg<String> logFormat;

  final TfArg<String>? logGroup;

  final TfArg<String>? systemLogLevel;

  Map<String, Object?> encode() => {
    if (applicationLogLevel != null)
      'application_log_level': applicationLogLevel!.toTfJson(),
    'log_format': logFormat.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
    if (systemLogLevel != null) 'system_log_level': systemLogLevel!.toTfJson(),
  };
}

/// Typed helper for the `snap_start` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionSnapStart {
  const LambdaFunctionSnapStart({required this.applyOn});

  final TfArg<String> applyOn;

  Map<String, Object?> encode() => {'apply_on': applyOn.toTfJson()};
}

/// Typed helper for the `tenancy_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionTenancyConfig {
  const LambdaFunctionTenancyConfig({required this.tenantIsolationMode});

  final TfArg<String> tenantIsolationMode;

  Map<String, Object?> encode() => {
    'tenant_isolation_mode': tenantIsolationMode.toTfJson(),
  };
}

/// Typed helper for the `tracing_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionTracingConfig {
  const LambdaFunctionTracingConfig({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Typed helper for the `vpc_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionVpcConfig {
  const LambdaFunctionVpcConfig({
    this.ipv6AllowedForDualStack,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<bool>? ipv6AllowedForDualStack;

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    if (ipv6AllowedForDualStack != null)
      'ipv6_allowed_for_dual_stack': ipv6AllowedForDualStack!.toTfJson(),
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_function`.
///
/// AWS **Lambda function**. A Dart backend runs on the `provided.al2023`
/// custom runtime: compile it with `dart compile exe` to a binary named
/// `bootstrap`, zip it, and pass the zip as `filename` with
/// `handler: TfArg.literal('bootstrap')`.
///
/// `role` takes the execution role's ARN (`TfArg.ref(role.arn)`).
/// Supply the code through exactly one of `filename`, `s3Bucket` +
/// `s3Key`, or `imageUri`; the Dart API does not enforce that choice,
/// `terraform validate` does. Pair `sourceCodeHash` with `filename` so a
/// rebuilt zip redeploys.
final class AwsLambdaFunction extends Resource {
  static const String tfType = 'aws_lambda_function';

  AwsLambdaFunction({
    required super.localName,
    required TfArg<String> functionName,
    required TfArg<String> role,
    TfArg<String>? runtime,
    TfArg<String>? handler,
    TfArg<String>? filename,
    TfArg<String>? sourceCodeHash,
    TfArg<List<String>>? architectures,
    TfArg<num>? memorySize,
    TfArg<num>? timeout,
    LambdaFunctionEnvironment? environment,
    LambdaFunctionLoggingConfig? loggingConfig,
    TfArg<String>? description,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           'role': role,
           if (runtime != null) 'runtime': runtime,
           if (handler != null) 'handler': handler,
           if (filename != null) 'filename': filename,
           if (sourceCodeHash != null) 'source_code_hash': sourceCodeHash,
           if (architectures != null) 'architectures': architectures,
           if (memorySize != null) 'memory_size': memorySize,
           if (timeout != null) 'timeout': timeout,
           if (environment != null)
             'environment': TfArg.literal(environment.encode()),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (description != null) 'description': description,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `invoke_arn` attribute.
  TfRef<String> get invokeArn => TfRef.attribute<String>(this, 'invoke_arn');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `qualified_arn` attribute.
  TfRef<String> get qualifiedArn =>
      TfRef.attribute<String>(this, 'qualified_arn');

  /// Reference to `qualified_invoke_arn` attribute.
  TfRef<String> get qualifiedInvokeArn =>
      TfRef.attribute<String>(this, 'qualified_invoke_arn');

  /// Reference to `response_streaming_invoke_arn` attribute.
  TfRef<String> get responseStreamingInvokeArn =>
      TfRef.attribute<String>(this, 'response_streaming_invoke_arn');

  /// Reference to `signing_job_arn` attribute.
  TfRef<String> get signingJobArn =>
      TfRef.attribute<String>(this, 'signing_job_arn');

  /// Reference to `signing_profile_version_arn` attribute.
  TfRef<String> get signingProfileVersionArn =>
      TfRef.attribute<String>(this, 'signing_profile_version_arn');

  /// Reference to `source_code_size` attribute.
  TfRef<num> get sourceCodeSize =>
      TfRef.attribute<num>(this, 'source_code_size');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
