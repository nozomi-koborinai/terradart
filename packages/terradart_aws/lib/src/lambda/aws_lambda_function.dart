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
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_lambda_function`.
const Set<String> _awsLambdaFunctionSensitive = <String>{};

/// Lambda Function enum for `architectures`.
extension type const LambdaFunctionArchitectures._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionArchitectures.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionArchitectures.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionArchitectures.arg(TfArg<String> arg) : this._(arg);

  static const x8664 = LambdaFunctionArchitectures._(TfArgLiteral('x86_64'));
  static const arm64 = LambdaFunctionArchitectures._(TfArgLiteral('arm64'));

  static const List<LambdaFunctionArchitectures> values = [x8664, arm64];
}

/// Lambda Function Package enum for `package_type`.
extension type const LambdaFunctionPackageType._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionPackageType.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionPackageType.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionPackageType.arg(TfArg<String> arg) : this._(arg);

  static const zip = LambdaFunctionPackageType._(TfArgLiteral('Zip'));
  static const image = LambdaFunctionPackageType._(TfArgLiteral('Image'));

  static const List<LambdaFunctionPackageType> values = [zip, image];
}

/// Lambda Function Publish enum for `publish_to`.
extension type const LambdaFunctionPublishTo._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionPublishTo.variable(String name) : this._(TfArg.variable(name));
  LambdaFunctionPublishTo.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionPublishTo.arg(TfArg<String> arg) : this._(arg);

  static const latestPublished = LambdaFunctionPublishTo._(
    TfArgLiteral('LATEST_PUBLISHED'),
  );

  static const List<LambdaFunctionPublishTo> values = [latestPublished];
}

/// Lambda Function enum for `runtime`.
extension type const LambdaFunctionRuntime._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionRuntime.variable(String name) : this._(TfArg.variable(name));
  LambdaFunctionRuntime.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionRuntime.arg(TfArg<String> arg) : this._(arg);

  static const nodejs = LambdaFunctionRuntime._(TfArgLiteral('nodejs'));
  static const nodejs4p3 = LambdaFunctionRuntime._(TfArgLiteral('nodejs4.3'));
  static const nodejs6p10 = LambdaFunctionRuntime._(TfArgLiteral('nodejs6.10'));
  static const nodejs8p10 = LambdaFunctionRuntime._(TfArgLiteral('nodejs8.10'));
  static const nodejs10X = LambdaFunctionRuntime._(TfArgLiteral('nodejs10.x'));
  static const nodejs12X = LambdaFunctionRuntime._(TfArgLiteral('nodejs12.x'));
  static const nodejs14X = LambdaFunctionRuntime._(TfArgLiteral('nodejs14.x'));
  static const nodejs16X = LambdaFunctionRuntime._(TfArgLiteral('nodejs16.x'));
  static const nodejs18X = LambdaFunctionRuntime._(TfArgLiteral('nodejs18.x'));
  static const nodejs20X = LambdaFunctionRuntime._(TfArgLiteral('nodejs20.x'));
  static const nodejs22X = LambdaFunctionRuntime._(TfArgLiteral('nodejs22.x'));
  static const nodejs24X = LambdaFunctionRuntime._(TfArgLiteral('nodejs24.x'));
  static const java8 = LambdaFunctionRuntime._(TfArgLiteral('java8'));
  static const java8Al2 = LambdaFunctionRuntime._(TfArgLiteral('java8.al2'));
  static const java11 = LambdaFunctionRuntime._(TfArgLiteral('java11'));
  static const java17 = LambdaFunctionRuntime._(TfArgLiteral('java17'));
  static const java21 = LambdaFunctionRuntime._(TfArgLiteral('java21'));
  static const java25 = LambdaFunctionRuntime._(TfArgLiteral('java25'));
  static const python2p7 = LambdaFunctionRuntime._(TfArgLiteral('python2.7'));
  static const python3p6 = LambdaFunctionRuntime._(TfArgLiteral('python3.6'));
  static const python3p7 = LambdaFunctionRuntime._(TfArgLiteral('python3.7'));
  static const python3p8 = LambdaFunctionRuntime._(TfArgLiteral('python3.8'));
  static const python3p9 = LambdaFunctionRuntime._(TfArgLiteral('python3.9'));
  static const python3p10 = LambdaFunctionRuntime._(TfArgLiteral('python3.10'));
  static const python3p11 = LambdaFunctionRuntime._(TfArgLiteral('python3.11'));
  static const python3p12 = LambdaFunctionRuntime._(TfArgLiteral('python3.12'));
  static const python3p13 = LambdaFunctionRuntime._(TfArgLiteral('python3.13'));
  static const python3p14 = LambdaFunctionRuntime._(TfArgLiteral('python3.14'));
  static const dotnetcore1p0 = LambdaFunctionRuntime._(
    TfArgLiteral('dotnetcore1.0'),
  );
  static const dotnetcore2p0 = LambdaFunctionRuntime._(
    TfArgLiteral('dotnetcore2.0'),
  );
  static const dotnetcore2p1 = LambdaFunctionRuntime._(
    TfArgLiteral('dotnetcore2.1'),
  );
  static const dotnetcore3p1 = LambdaFunctionRuntime._(
    TfArgLiteral('dotnetcore3.1'),
  );
  static const dotnet6 = LambdaFunctionRuntime._(TfArgLiteral('dotnet6'));
  static const dotnet8 = LambdaFunctionRuntime._(TfArgLiteral('dotnet8'));
  static const dotnet10 = LambdaFunctionRuntime._(TfArgLiteral('dotnet10'));
  static const nodejs4p3Edge = LambdaFunctionRuntime._(
    TfArgLiteral('nodejs4.3-edge'),
  );
  static const go1X = LambdaFunctionRuntime._(TfArgLiteral('go1.x'));
  static const ruby2p5 = LambdaFunctionRuntime._(TfArgLiteral('ruby2.5'));
  static const ruby2p7 = LambdaFunctionRuntime._(TfArgLiteral('ruby2.7'));
  static const ruby3p2 = LambdaFunctionRuntime._(TfArgLiteral('ruby3.2'));
  static const ruby3p3 = LambdaFunctionRuntime._(TfArgLiteral('ruby3.3'));
  static const ruby3p4 = LambdaFunctionRuntime._(TfArgLiteral('ruby3.4'));
  static const ruby4p0 = LambdaFunctionRuntime._(TfArgLiteral('ruby4.0'));
  static const provided = LambdaFunctionRuntime._(TfArgLiteral('provided'));
  static const providedAl2 = LambdaFunctionRuntime._(
    TfArgLiteral('provided.al2'),
  );
  static const providedAl2023 = LambdaFunctionRuntime._(
    TfArgLiteral('provided.al2023'),
  );
  static const nodejs26X = LambdaFunctionRuntime._(TfArgLiteral('nodejs26.x'));
  static const python3p15 = LambdaFunctionRuntime._(TfArgLiteral('python3.15'));
  static const java8Al2023 = LambdaFunctionRuntime._(
    TfArgLiteral('java8.al2023'),
  );
  static const java11Al2023 = LambdaFunctionRuntime._(
    TfArgLiteral('java11.al2023'),
  );
  static const java17Al2023 = LambdaFunctionRuntime._(
    TfArgLiteral('java17.al2023'),
  );

  static const List<LambdaFunctionRuntime> values = [
    nodejs,
    nodejs4p3,
    nodejs6p10,
    nodejs8p10,
    nodejs10X,
    nodejs12X,
    nodejs14X,
    nodejs16X,
    nodejs18X,
    nodejs20X,
    nodejs22X,
    nodejs24X,
    java8,
    java8Al2,
    java11,
    java17,
    java21,
    java25,
    python2p7,
    python3p6,
    python3p7,
    python3p8,
    python3p9,
    python3p10,
    python3p11,
    python3p12,
    python3p13,
    python3p14,
    dotnetcore1p0,
    dotnetcore2p0,
    dotnetcore2p1,
    dotnetcore3p1,
    dotnet6,
    dotnet8,
    dotnet10,
    nodejs4p3Edge,
    go1X,
    ruby2p5,
    ruby2p7,
    ruby3p2,
    ruby3p3,
    ruby3p4,
    ruby4p0,
    provided,
    providedAl2,
    providedAl2023,
    nodejs26X,
    python3p15,
    java8Al2023,
    java11Al2023,
    java17Al2023,
  ];
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
  const factory LambdaFunctionCode.s3Bucket(RefTo<AwsS3Bucket> s3Bucket) =
      LambdaFunctionCodeS3Bucket;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaFunctionCode.filename] choice: sets `filename`.
final class LambdaFunctionCodeFilename extends LambdaFunctionCode {
  const LambdaFunctionCodeFilename(this.filename);

  final TfArg<String> filename;

  @internal
  @override
  String get blockKey => 'filename';

  @internal
  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// The [LambdaFunctionCode.imageUri] choice: sets `image_uri`.
final class LambdaFunctionCodeImageUri extends LambdaFunctionCode {
  const LambdaFunctionCodeImageUri(this.imageUri);

  final TfArg<String> imageUri;

  @internal
  @override
  String get blockKey => 'image_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'image_uri': imageUri.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'image_uri': imageUri};
}

/// The [LambdaFunctionCode.s3Bucket] choice: sets `s3_bucket`.
final class LambdaFunctionCodeS3Bucket extends LambdaFunctionCode {
  const LambdaFunctionCodeS3Bucket(this.s3Bucket);

  final RefTo<AwsS3Bucket> s3Bucket;

  @internal
  @override
  String get blockKey => 's3_bucket';

  @internal
  @override
  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    's3_bucket': s3Bucket.encodeAs('id'),
  };
}

/// Typed helper for the `capacity_provider_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionCapacityProviderConfig {
  const LambdaFunctionCapacityProviderConfig({
    required this.lambdaManagedInstancesCapacityProviderConfig,
  });

  final LambdaFunctionLambdaManagedInstancesCapacityProviderConfig
  lambdaManagedInstancesCapacityProviderConfig;

  @internal
  Map<String, Object?> encode() => {
    'lambda_managed_instances_capacity_provider_config':
        lambdaManagedInstancesCapacityProviderConfig.encode(),
  };
}

/// Typed helper for the `capacity_provider_config.lambda_managed_instances_capacity_provider_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionLambdaManagedInstancesCapacityProviderConfig {
  const LambdaFunctionLambdaManagedInstancesCapacityProviderConfig({
    required this.capacityProviderArn,
    this.executionEnvironmentMemoryGibPerVcpu,
    this.perExecutionEnvironmentMaxConcurrency,
  });

  final TfArg<String> capacityProviderArn;

  final TfArg<num>? executionEnvironmentMemoryGibPerVcpu;

  final TfArg<num>? perExecutionEnvironmentMaxConcurrency;

  @internal
  Map<String, Object?> encode() => {
    'capacity_provider_arn': capacityProviderArn.toTfJson(),
    'execution_environment_memory_gib_per_vcpu':
        ?executionEnvironmentMemoryGibPerVcpu?.toTfJson(),
    'per_execution_environment_max_concurrency':
        ?perExecutionEnvironmentMaxConcurrency?.toTfJson(),
  };
}

/// Typed helper for the `dead_letter_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionDeadLetterConfig {
  const LambdaFunctionDeadLetterConfig({required this.targetArn});

  final TfArg<String> targetArn;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'execution_timeout': executionTimeout.toTfJson(),
    'retention_period': ?retentionPeriod?.toTfJson(),
  };
}

/// Typed helper for the `environment` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionEnvironment {
  const LambdaFunctionEnvironment({this.variables});

  final TfArg<Map<String, String>>? variables;

  @internal
  Map<String, Object?> encode() => {'variables': ?variables?.toTfJson()};
}

/// Typed helper for the `ephemeral_storage` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionEphemeralStorage {
  const LambdaFunctionEphemeralStorage({this.size});

  final TfArg<num>? size;

  @internal
  Map<String, Object?> encode() => {'size': ?size?.toTfJson()};
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

  @internal
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

  final TfArg<List<String>>? command;

  final TfArg<List<String>>? entryPoint;

  final TfArg<String>? workingDirectory;

  @internal
  Map<String, Object?> encode() => {
    'command': ?command?.toTfJson(),
    'entry_point': ?entryPoint?.toTfJson(),
    'working_directory': ?workingDirectory?.toTfJson(),
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

  final LambdaFunctionApplicationLogLevel? applicationLogLevel;

  final LambdaFunctionLogFormat logFormat;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  final LambdaFunctionSystemLogLevel? systemLogLevel;

  @internal
  Map<String, Object?> encode() => {
    'application_log_level': ?applicationLogLevel?.toTfJson(),
    'log_format': logFormat.toTfJson(),
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
    'system_log_level': ?systemLogLevel?.toTfJson(),
  };
}

/// `application_log_level` — derived from the provider schema description.
extension type const LambdaFunctionApplicationLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionApplicationLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionApplicationLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionApplicationLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const trace = LambdaFunctionApplicationLogLevel._(
    TfArgLiteral('TRACE'),
  );
  static const debug = LambdaFunctionApplicationLogLevel._(
    TfArgLiteral('DEBUG'),
  );
  static const info = LambdaFunctionApplicationLogLevel._(TfArgLiteral('INFO'));
  static const warn = LambdaFunctionApplicationLogLevel._(TfArgLiteral('WARN'));
  static const error = LambdaFunctionApplicationLogLevel._(
    TfArgLiteral('ERROR'),
  );
  static const fatal = LambdaFunctionApplicationLogLevel._(
    TfArgLiteral('FATAL'),
  );

  static const List<LambdaFunctionApplicationLogLevel> values = [
    trace,
    debug,
    info,
    warn,
    error,
    fatal,
  ];
}

/// `log_format` — derived from the provider schema description.
extension type const LambdaFunctionLogFormat._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionLogFormat.variable(String name) : this._(TfArg.variable(name));
  LambdaFunctionLogFormat.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionLogFormat.arg(TfArg<String> arg) : this._(arg);

  static const json = LambdaFunctionLogFormat._(TfArgLiteral('JSON'));
  static const text = LambdaFunctionLogFormat._(TfArgLiteral('Text'));

  static const List<LambdaFunctionLogFormat> values = [json, text];
}

/// `system_log_level` — derived from the provider schema description.
extension type const LambdaFunctionSystemLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionSystemLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionSystemLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionSystemLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const debug = LambdaFunctionSystemLogLevel._(TfArgLiteral('DEBUG'));
  static const info = LambdaFunctionSystemLogLevel._(TfArgLiteral('INFO'));
  static const warn = LambdaFunctionSystemLogLevel._(TfArgLiteral('WARN'));

  static const List<LambdaFunctionSystemLogLevel> values = [debug, info, warn];
}

/// Typed helper for the `snap_start` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionSnapStart {
  const LambdaFunctionSnapStart({required this.applyOn});

  final LambdaFunctionApplyOn applyOn;

  @internal
  Map<String, Object?> encode() => {'apply_on': applyOn.toTfJson()};
}

/// `apply_on` — derived from the provider schema description.
extension type const LambdaFunctionApplyOn._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionApplyOn.variable(String name) : this._(TfArg.variable(name));
  LambdaFunctionApplyOn.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionApplyOn.arg(TfArg<String> arg) : this._(arg);

  static const publishedversions = LambdaFunctionApplyOn._(
    TfArgLiteral('PublishedVersions'),
  );
  static const none = LambdaFunctionApplyOn._(TfArgLiteral('None'));

  static const List<LambdaFunctionApplyOn> values = [publishedversions, none];
}

/// Typed helper for the `tenancy_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionTenancyConfig {
  const LambdaFunctionTenancyConfig({required this.tenantIsolationMode});

  final LambdaFunctionTenantIsolationMode tenantIsolationMode;

  @internal
  Map<String, Object?> encode() => {
    'tenant_isolation_mode': tenantIsolationMode.toTfJson(),
  };
}

/// `tenant_isolation_mode` — derived from the provider schema description.
extension type const LambdaFunctionTenantIsolationMode._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionTenantIsolationMode.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionTenantIsolationMode.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionTenantIsolationMode.arg(TfArg<String> arg) : this._(arg);

  static const perTenant = LambdaFunctionTenantIsolationMode._(
    TfArgLiteral('PER_TENANT'),
  );

  static const List<LambdaFunctionTenantIsolationMode> values = [perTenant];
}

/// Typed helper for the `tracing_config` block of
/// `aws_lambda_function` (derived from provider schema).
@immutable
final class LambdaFunctionTracingConfig {
  const LambdaFunctionTracingConfig({required this.mode});

  final LambdaFunctionMode mode;

  @internal
  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const LambdaFunctionMode._(TfArg<String> _)
    implements TfArg<String> {
  LambdaFunctionMode.variable(String name) : this._(TfArg.variable(name));
  LambdaFunctionMode.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionMode.arg(TfArg<String> arg) : this._(arg);

  static const active = LambdaFunctionMode._(TfArgLiteral('Active'));
  static const passthrough = LambdaFunctionMode._(TfArgLiteral('PassThrough'));

  static const List<LambdaFunctionMode> values = [active, passthrough];
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

  @internal
  Map<String, Object?> encode() => {
    'ipv6_allowed_for_dual_stack': ?ipv6AllowedForDualStack?.toTfJson(),
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
/// `role` takes the execution role (`role.ref`) and emits its ARN.
/// `code` is exactly one of `.filename(...)`, `.s3Bucket(...)` (with
/// `s3Key`) or `.imageUri(...)`. Pair `sourceCodeHash` with a `.filename`
/// zip so a rebuilt zip redeploys.
final class AwsLambdaFunction extends Resource {
  static const String tfType = 'aws_lambda_function';

  AwsLambdaFunction(
    super.localName, {
    List<LambdaFunctionArchitectures>? architectures,
    TfArg<String>? codeSha256,
    TfArg<String>? codeSigningConfigArn,
    TfArg<String>? description,
    required LambdaFunctionCode code,
    required TfArg<String> functionName,
    TfArg<String>? handler,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<List<String>>? layers,
    TfArg<num>? memorySize,
    LambdaFunctionPackageType? packageType,
    TfArg<bool>? publish,
    LambdaFunctionPublishTo? publishTo,
    TfArg<String>? region,
    TfArg<bool>? replaceSecurityGroupsOnDestroy,
    TfArg<List<String>>? replacementSecurityGroupIds,
    TfArg<num>? reservedConcurrentExecutions,
    required RefTo<AwsIamRole> role,
    LambdaFunctionRuntime? runtime,
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
           'code_sha256': ?codeSha256,
           'code_signing_config_arn': ?codeSigningConfigArn,
           'description': ?description,
           ...code.argMap,
           'function_name': functionName,
           'handler': ?handler,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'layers': ?layers,
           'memory_size': ?memorySize,
           'package_type': ?packageType,
           'publish': ?publish,
           'publish_to': ?publishTo,
           'region': ?region,
           'replace_security_groups_on_destroy':
               ?replaceSecurityGroupsOnDestroy,
           'replacement_security_group_ids': ?replacementSecurityGroupIds,
           'reserved_concurrent_executions': ?reservedConcurrentExecutions,
           'role': role.encodeAs('arn'),
           'runtime': ?runtime,
           's3_key': ?s3Key,
           's3_object_version': ?s3ObjectVersion,
           'skip_destroy': ?skipDestroy,
           'source_code_hash': ?sourceCodeHash,
           'source_kms_key_arn': ?sourceKmsKeyArn,
           'tags': ?tags,
           'timeout': ?timeout,
           'use_resource_timeout_for_propagation':
               ?useResourceTimeoutForPropagation,
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

  /// Reference to `architectures` attribute.
  TfRef<List<String>> get architectures =>
      TfRef.attribute<List<String>>(this, 'architectures');

  /// Reference to `code_sha256` attribute.
  TfRef<String> get codeSha256 => TfRef.attribute<String>(this, 'code_sha256');

  /// Reference to `code_signing_config_arn` attribute.
  TfRef<String> get codeSigningConfigArn =>
      TfRef.attribute<String>(this, 'code_signing_config_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `handler` attribute.
  TfRef<String> get handler => TfRef.attribute<String>(this, 'handler');

  /// Reference to `image_uri` attribute.
  TfRef<String> get imageUri => TfRef.attribute<String>(this, 'image_uri');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `layers` attribute.
  TfRef<List<String>> get layers =>
      TfRef.attribute<List<String>>(this, 'layers');

  /// Reference to `memory_size` attribute.
  TfRef<num> get memorySize => TfRef.attribute<num>(this, 'memory_size');

  /// Reference to `package_type` attribute.
  TfRef<String> get packageType =>
      TfRef.attribute<String>(this, 'package_type');

  /// Reference to `publish` attribute.
  TfRef<bool> get publish => TfRef.attribute<bool>(this, 'publish');

  /// Reference to `publish_to` attribute.
  TfRef<String> get publishTo => TfRef.attribute<String>(this, 'publish_to');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replace_security_groups_on_destroy` attribute.
  TfRef<bool> get replaceSecurityGroupsOnDestroy =>
      TfRef.attribute<bool>(this, 'replace_security_groups_on_destroy');

  /// Reference to `replacement_security_group_ids` attribute.
  TfRef<List<String>> get replacementSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'replacement_security_group_ids');

  /// Reference to `reserved_concurrent_executions` attribute.
  TfRef<num> get reservedConcurrentExecutions =>
      TfRef.attribute<num>(this, 'reserved_concurrent_executions');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3Bucket => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `s3_key` attribute.
  TfRef<String> get s3Key => TfRef.attribute<String>(this, 's3_key');

  /// Reference to `s3_object_version` attribute.
  TfRef<String> get s3ObjectVersion =>
      TfRef.attribute<String>(this, 's3_object_version');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `source_code_hash` attribute.
  TfRef<String> get sourceCodeHash =>
      TfRef.attribute<String>(this, 'source_code_hash');

  /// Reference to `source_kms_key_arn` attribute.
  TfRef<String> get sourceKmsKeyArn =>
      TfRef.attribute<String>(this, 'source_kms_key_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `use_resource_timeout_for_propagation` attribute.
  TfRef<bool> get useResourceTimeoutForPropagation =>
      TfRef.attribute<bool>(this, 'use_resource_timeout_for_propagation');
}
