// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_lambda_function`.
const Set<String> _awsLambdaFunctionSensitive = <String>{};

/// Lambda Function enum for `architectures`.
enum LambdaFunctionArchitectures implements TerraformEnum {
  x8664('x86_64'),
  arm64('arm64');

  const LambdaFunctionArchitectures(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lambda Function Package enum for `package_type`.
enum LambdaFunctionPackageType implements TerraformEnum {
  zip('Zip'),
  image('Image');

  const LambdaFunctionPackageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lambda Function Publish enum for `publish_to`.
enum LambdaFunctionPublishTo implements TerraformEnum {
  latestPublished('LATEST_PUBLISHED');

  const LambdaFunctionPublishTo(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lambda Function enum for `runtime`.
enum LambdaFunctionRuntime implements TerraformEnum {
  nodejs('nodejs'),
  nodejs4p3('nodejs4.3'),
  nodejs6p10('nodejs6.10'),
  nodejs8p10('nodejs8.10'),
  nodejs10X('nodejs10.x'),
  nodejs12X('nodejs12.x'),
  nodejs14X('nodejs14.x'),
  nodejs16X('nodejs16.x'),
  nodejs18X('nodejs18.x'),
  nodejs20X('nodejs20.x'),
  nodejs22X('nodejs22.x'),
  nodejs24X('nodejs24.x'),
  java8('java8'),
  java8Al2('java8.al2'),
  java11('java11'),
  java17('java17'),
  java21('java21'),
  java25('java25'),
  python2p7('python2.7'),
  python3p6('python3.6'),
  python3p7('python3.7'),
  python3p8('python3.8'),
  python3p9('python3.9'),
  python3p10('python3.10'),
  python3p11('python3.11'),
  python3p12('python3.12'),
  python3p13('python3.13'),
  python3p14('python3.14'),
  dotnetcore1p0('dotnetcore1.0'),
  dotnetcore2p0('dotnetcore2.0'),
  dotnetcore2p1('dotnetcore2.1'),
  dotnetcore3p1('dotnetcore3.1'),
  dotnet6('dotnet6'),
  dotnet8('dotnet8'),
  dotnet10('dotnet10'),
  nodejs4p3Edge('nodejs4.3-edge'),
  go1X('go1.x'),
  ruby2p5('ruby2.5'),
  ruby2p7('ruby2.7'),
  ruby3p2('ruby3.2'),
  ruby3p3('ruby3.3'),
  ruby3p4('ruby3.4'),
  ruby4p0('ruby4.0'),
  provided('provided'),
  providedAl2('provided.al2'),
  providedAl2023('provided.al2023'),
  nodejs26X('nodejs26.x'),
  python3p15('python3.15'),
  java8Al2023('java8.al2023'),
  java11Al2023('java11.al2023'),
  java17Al2023('java17.al2023');

  const LambdaFunctionRuntime(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `filename`, `image_uri`, `s3_bucket` on `aws_lambda_function`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.filename(...)`.
sealed class LambdaFunctionCode {
  const LambdaFunctionCode();

  /// Sets `filename`.
  const factory LambdaFunctionCode.filename(TfArg<String> filename) =
      LambdaFunctionCodeFilename;

  /// Sets `image_uri`.
  const factory LambdaFunctionCode.imageUri(TfArg<String> imageUri) =
      LambdaFunctionCodeImageUri;

  /// Sets `s3_bucket`.
  const factory LambdaFunctionCode.s3Bucket(TfArg<String> s3Bucket) =
      LambdaFunctionCodeS3Bucket;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaFunctionCode.filename] choice: sets `filename`.
final class LambdaFunctionCodeFilename extends LambdaFunctionCode {
  const LambdaFunctionCodeFilename(this.filename);

  final TfArg<String> filename;

  @override
  String get blockKey => 'filename';

  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// The [LambdaFunctionCode.imageUri] choice: sets `image_uri`.
final class LambdaFunctionCodeImageUri extends LambdaFunctionCode {
  const LambdaFunctionCodeImageUri(this.imageUri);

  final TfArg<String> imageUri;

  @override
  String get blockKey => 'image_uri';

  @override
  Map<String, Object?> encode() => {'image_uri': imageUri.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'image_uri': imageUri};
}

/// The [LambdaFunctionCode.s3Bucket] choice: sets `s3_bucket`.
final class LambdaFunctionCodeS3Bucket extends LambdaFunctionCode {
  const LambdaFunctionCodeS3Bucket(this.s3Bucket);

  final TfArg<String> s3Bucket;

  @override
  String get blockKey => 's3_bucket';

  @override
  Map<String, Object?> encode() => {'s3_bucket': s3Bucket.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'s3_bucket': s3Bucket};
}

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

  final TfArg<LambdaFunctionLoggingConfigApplicationLogLevel>?
  applicationLogLevel;

  final TfArg<LambdaFunctionLoggingConfigLogFormat> logFormat;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  final TfArg<LambdaFunctionLoggingConfigSystemLogLevel>? systemLogLevel;

  Map<String, Object?> encode() => {
    if (applicationLogLevel != null)
      'application_log_level': applicationLogLevel!.toTfJson(),
    'log_format': logFormat.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.encodeAs('name').toTfJson(),
    if (systemLogLevel != null) 'system_log_level': systemLogLevel!.toTfJson(),
  };
}

/// `application_log_level` — derived from the provider schema description.
enum LambdaFunctionLoggingConfigApplicationLogLevel implements TerraformEnum {
  trace('TRACE'),
  debug('DEBUG'),
  info('INFO'),
  warn('WARN'),
  error('ERROR'),
  fatal('FATAL');

  const LambdaFunctionLoggingConfigApplicationLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_format` — derived from the provider schema description.
enum LambdaFunctionLoggingConfigLogFormat implements TerraformEnum {
  json('JSON'),
  text('Text');

  const LambdaFunctionLoggingConfigLogFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `system_log_level` — derived from the provider schema description.
enum LambdaFunctionLoggingConfigSystemLogLevel implements TerraformEnum {
  debug('DEBUG'),
  info('INFO'),
  warn('WARN');

  const LambdaFunctionLoggingConfigSystemLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `snap_start` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionSnapStart {
  const LambdaFunctionSnapStart({required this.applyOn});

  final TfArg<LambdaFunctionSnapStartApplyOn> applyOn;

  Map<String, Object?> encode() => {'apply_on': applyOn.toTfJson()};
}

/// `apply_on` — derived from the provider schema description.
enum LambdaFunctionSnapStartApplyOn implements TerraformEnum {
  publishedversions('PublishedVersions'),
  none('None');

  const LambdaFunctionSnapStartApplyOn(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tenancy_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionTenancyConfig {
  const LambdaFunctionTenancyConfig({required this.tenantIsolationMode});

  final TfArg<LambdaFunctionTenancyConfigTenantIsolationMode>
  tenantIsolationMode;

  Map<String, Object?> encode() => {
    'tenant_isolation_mode': tenantIsolationMode.toTfJson(),
  };
}

/// `tenant_isolation_mode` — derived from the provider schema description.
enum LambdaFunctionTenancyConfigTenantIsolationMode implements TerraformEnum {
  perTenant('PER_TENANT');

  const LambdaFunctionTenancyConfigTenantIsolationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tracing_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionTracingConfig {
  const LambdaFunctionTracingConfig({required this.mode});

  final TfArg<LambdaFunctionTracingConfigMode> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum LambdaFunctionTracingConfigMode implements TerraformEnum {
  active('Active'),
  passthrough('PassThrough');

  const LambdaFunctionTracingConfigMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    if (ipv6AllowedForDualStack != null)
      'ipv6_allowed_for_dual_stack': ipv6AllowedForDualStack!.toTfJson(),
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_function`.
///
/// AWS **Lambda function**. A Dart backend runs on the `provided.al2023`
/// custom runtime: compile it with `dart compile exe` to a binary named
/// `bootstrap`, zip it, and pass the zip as `code: .filename(...)` with
/// `handler: TfArg.literal('bootstrap')`.
///
/// `role` takes the execution role's ARN (`TfArg.ref(role.arn)`).
/// `code` is exactly one of `.filename(...)`, `.s3Bucket(...)` (with
/// `s3Key`) or `.imageUri(...)`. Pair `sourceCodeHash` with a `.filename`
/// zip so a rebuilt zip redeploys.
final class AwsLambdaFunction extends Resource {
  static const String tfType = 'aws_lambda_function';

  AwsLambdaFunction({
    required super.localName,
    List<TfArg<LambdaFunctionArchitectures>>? architectures,
    TfArg<String>? codeSha256,
    TfArg<String>? codeSigningConfigArn,
    TfArg<String>? description,
    required LambdaFunctionCode code,
    required TfArg<String> functionName,
    TfArg<String>? handler,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<List<String>>? layers,
    TfArg<num>? memorySize,
    TfArg<LambdaFunctionPackageType>? packageType,
    TfArg<bool>? publish,
    TfArg<LambdaFunctionPublishTo>? publishTo,
    TfArg<String>? region,
    TfArg<bool>? replaceSecurityGroupsOnDestroy,
    TfArg<List<String>>? replacementSecurityGroupIds,
    TfArg<num>? reservedConcurrentExecutions,
    required RefTo<AwsIamRole> role,
    TfArg<LambdaFunctionRuntime>? runtime,
    TfArg<String>? s3Key,
    TfArg<String>? s3ObjectVersion,
    TfArg<bool>? skipDestroy,
    TfArg<String>? sourceCodeHash,
    TfArg<String>? sourceKmsKeyArn,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeout,
    TfArg<bool>? useResourceTimeoutForPropagation,
    LambdaFunctionCapacityProviderConfig? capacityProviderConfig,
    LambdaFunctionDeadLetterConfig? deadLetterConfig,
    LambdaFunctionDurableConfig? durableConfig,
    LambdaFunctionEnvironment? environment,
    LambdaFunctionEphemeralStorage? ephemeralStorage,
    LambdaFunctionFileSystemConfig? fileSystemConfig,
    LambdaFunctionImageConfig? imageConfig,
    LambdaFunctionLoggingConfig? loggingConfig,
    LambdaFunctionSnapStart? snapStart,
    LambdaFunctionTenancyConfig? tenancyConfig,
    LambdaFunctionTracingConfig? tracingConfig,
    LambdaFunctionVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (architectures != null)
             'architectures': TfArg.literal([
               for (final e in architectures) e.toTfJson(),
             ]),
           if (codeSha256 != null) 'code_sha256': codeSha256,
           if (codeSigningConfigArn != null)
             'code_signing_config_arn': codeSigningConfigArn,
           if (description != null) 'description': description,
           ...code.argMap,
           'function_name': functionName,
           if (handler != null) 'handler': handler,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn.encodeAs('arn'),
           if (layers != null) 'layers': layers,
           if (memorySize != null) 'memory_size': memorySize,
           if (packageType != null) 'package_type': packageType,
           if (publish != null) 'publish': publish,
           if (publishTo != null) 'publish_to': publishTo,
           if (region != null) 'region': region,
           if (replaceSecurityGroupsOnDestroy != null)
             'replace_security_groups_on_destroy':
                 replaceSecurityGroupsOnDestroy,
           if (replacementSecurityGroupIds != null)
             'replacement_security_group_ids': replacementSecurityGroupIds,
           if (reservedConcurrentExecutions != null)
             'reserved_concurrent_executions': reservedConcurrentExecutions,
           'role': role.encodeAs('arn'),
           if (runtime != null) 'runtime': runtime,
           if (s3Key != null) 's3_key': s3Key,
           if (s3ObjectVersion != null) 's3_object_version': s3ObjectVersion,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (sourceCodeHash != null) 'source_code_hash': sourceCodeHash,
           if (sourceKmsKeyArn != null) 'source_kms_key_arn': sourceKmsKeyArn,
           if (tags != null) 'tags': tags,
           if (timeout != null) 'timeout': timeout,
           if (useResourceTimeoutForPropagation != null)
             'use_resource_timeout_for_propagation':
                 useResourceTimeoutForPropagation,
           if (capacityProviderConfig != null)
             'capacity_provider_config': TfArg.literal(
               capacityProviderConfig.encode(),
             ),
           if (deadLetterConfig != null)
             'dead_letter_config': TfArg.literal(deadLetterConfig.encode()),
           if (durableConfig != null)
             'durable_config': TfArg.literal(durableConfig.encode()),
           if (environment != null)
             'environment': TfArg.literal(environment.encode()),
           if (ephemeralStorage != null)
             'ephemeral_storage': TfArg.literal(ephemeralStorage.encode()),
           if (fileSystemConfig != null)
             'file_system_config': TfArg.literal(fileSystemConfig.encode()),
           if (imageConfig != null)
             'image_config': TfArg.literal(imageConfig.encode()),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (snapStart != null)
             'snap_start': TfArg.literal(snapStart.encode()),
           if (tenancyConfig != null)
             'tenancy_config': TfArg.literal(tenancyConfig.encode()),
           if (tracingConfig != null)
             'tracing_config': TfArg.literal(tracingConfig.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaFunction>`.
  RefTo<AwsLambdaFunction> get ref => RefTo.of(this);

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
