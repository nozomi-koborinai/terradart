// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_function`.
const Set<String> _awsLambdaFunctionSensitive = <String>{};

/// Factory wrapper for `aws_lambda_function`.
final class DataAwsLambdaFunction extends Data {
  static const String tfType = 'aws_lambda_function';

  DataAwsLambdaFunction({
    required super.localName,
    required TfArg<String> functionName,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `architectures` attribute.
  TfRef<List<String>> get architectures =>
      TfRef.attribute<List<String>>(this, 'architectures');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `capacity_provider_config` attribute.
  TfRef<List<Map<String, Object?>>> get capacityProviderConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'capacity_provider_config',
      );

  /// Reference to `code_sha256` attribute.
  TfRef<String> get codeSha256 => TfRef.attribute<String>(this, 'code_sha256');

  /// Reference to `code_signing_config_arn` attribute.
  TfRef<String> get codeSigningConfigArn =>
      TfRef.attribute<String>(this, 'code_signing_config_arn');

  /// Reference to `dead_letter_config` attribute.
  TfRef<List<Map<String, Object?>>> get deadLetterConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dead_letter_config');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `durable_config` attribute.
  TfRef<List<Map<String, Object?>>> get durableConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'durable_config');

  /// Reference to `environment` attribute.
  TfRef<List<Map<String, Object?>>> get environment =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'environment');

  /// Reference to `ephemeral_storage` attribute.
  TfRef<List<Map<String, Object?>>> get ephemeralStorage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ephemeral_storage');

  /// Reference to `file_system_config` attribute.
  TfRef<List<Map<String, Object?>>> get fileSystemConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'file_system_config');

  /// Reference to `handler` attribute.
  TfRef<String> get handler => TfRef.attribute<String>(this, 'handler');

  /// Reference to `image_uri` attribute.
  TfRef<String> get imageUri => TfRef.attribute<String>(this, 'image_uri');

  /// Reference to `invoke_arn` attribute.
  TfRef<String> get invokeArn => TfRef.attribute<String>(this, 'invoke_arn');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `layers` attribute.
  TfRef<List<String>> get layers =>
      TfRef.attribute<List<String>>(this, 'layers');

  /// Reference to `logging_config` attribute.
  TfRef<List<Map<String, Object?>>> get loggingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging_config');

  /// Reference to `memory_size` attribute.
  TfRef<num> get memorySize => TfRef.attribute<num>(this, 'memory_size');

  /// Reference to `qualified_arn` attribute.
  TfRef<String> get qualifiedArn =>
      TfRef.attribute<String>(this, 'qualified_arn');

  /// Reference to `qualified_invoke_arn` attribute.
  TfRef<String> get qualifiedInvokeArn =>
      TfRef.attribute<String>(this, 'qualified_invoke_arn');

  /// Reference to `reserved_concurrent_executions` attribute.
  TfRef<num> get reservedConcurrentExecutions =>
      TfRef.attribute<num>(this, 'reserved_concurrent_executions');

  /// Reference to `response_streaming_invoke_arn` attribute.
  TfRef<String> get responseStreamingInvokeArn =>
      TfRef.attribute<String>(this, 'response_streaming_invoke_arn');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `signing_job_arn` attribute.
  TfRef<String> get signingJobArn =>
      TfRef.attribute<String>(this, 'signing_job_arn');

  /// Reference to `signing_profile_version_arn` attribute.
  TfRef<String> get signingProfileVersionArn =>
      TfRef.attribute<String>(this, 'signing_profile_version_arn');

  /// Reference to `source_code_hash` attribute.
  TfRef<String> get sourceCodeHash =>
      TfRef.attribute<String>(this, 'source_code_hash');

  /// Reference to `source_code_size` attribute.
  TfRef<num> get sourceCodeSize =>
      TfRef.attribute<num>(this, 'source_code_size');

  /// Reference to `source_kms_key_arn` attribute.
  TfRef<String> get sourceKmsKeyArn =>
      TfRef.attribute<String>(this, 'source_kms_key_arn');

  /// Reference to `tenancy_config` attribute.
  TfRef<List<Map<String, Object?>>> get tenancyConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tenancy_config');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `tracing_config` attribute.
  TfRef<List<Map<String, Object?>>> get tracingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tracing_config');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `vpc_config` attribute.
  TfRef<List<Map<String, Object?>>> get vpcConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_config');
}
