// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_lambdaweb_function_revision`.
const Set<String> _awsLambdawebFunctionRevisionSensitive = <String>{
  'service_config.environment_variables',
};

/// Typed helper for the `build_config` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionBuildConfig {
  const LambdawebFunctionRevisionBuildConfig({
    this.codeConfig,
    this.runtimeConfig,
  });

  final List<LambdawebFunctionRevisionCodeConfig>? codeConfig;

  final List<LambdawebFunctionRevisionRuntimeConfig>? runtimeConfig;

  @internal
  Map<String, Object?> encode() => {
    if (codeConfig != null)
      'code_config': [for (final e in codeConfig!) e.encode()],
    if (runtimeConfig != null)
      'runtime_config': [for (final e in runtimeConfig!) e.encode()],
  };
}

/// Typed helper for the `build_config.code_config` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionCodeConfig {
  const LambdawebFunctionRevisionCodeConfig({this.s3Object});

  final List<LambdawebFunctionRevisionS3Object>? s3Object;

  @internal
  Map<String, Object?> encode() => {
    if (s3Object != null) 's3_object': [for (final e in s3Object!) e.encode()],
  };
}

/// Typed helper for the `build_config.code_config.s3_object` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionS3Object {
  const LambdawebFunctionRevisionS3Object({
    required this.bucket,
    required this.key,
    this.versionId,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> key;

  final TfArg<String>? versionId;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key': key.toTfJson(),
    'version_id': ?versionId?.toTfJson(),
  };
}

/// Typed helper for the `build_config.runtime_config` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionRuntimeConfig {
  const LambdawebFunctionRevisionRuntimeConfig({required this.runtime});

  final TfArg<String> runtime;

  @internal
  Map<String, Object?> encode() => {'runtime': runtime.toTfJson()};
}

/// Typed helper for the `service_config` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionServiceConfig {
  const LambdawebFunctionRevisionServiceConfig({
    this.egressNetworkConnectorArn,
    this.environmentVariables,
    required this.executionRoleArn,
    this.maxConcurrencyPerEnvironment,
    this.timeoutSeconds,
    this.telemetryConfig,
  });

  final TfArg<String>? egressNetworkConnectorArn;

  final Sensitive<Map<String, String>>? environmentVariables;

  final RefTo<AwsIamRole> executionRoleArn;

  final TfArg<num>? maxConcurrencyPerEnvironment;

  final TfArg<num>? timeoutSeconds;

  final List<LambdawebFunctionRevisionTelemetryConfig>? telemetryConfig;

  @internal
  Map<String, Object?> encode() => {
    'egress_network_connector_arn': ?egressNetworkConnectorArn?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'execution_role_arn': executionRoleArn.encodeAs('arn').toTfJson(),
    'max_concurrency_per_environment': ?maxConcurrencyPerEnvironment
        ?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    if (telemetryConfig != null)
      'telemetry_config': [for (final e in telemetryConfig!) e.encode()],
  };
}

/// Typed helper for the `service_config.telemetry_config` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionTelemetryConfig {
  const LambdawebFunctionRevisionTelemetryConfig({this.loggingConfig});

  final List<LambdawebFunctionRevisionLoggingConfig>? loggingConfig;

  @internal
  Map<String, Object?> encode() => {
    if (loggingConfig != null)
      'logging_config': [for (final e in loggingConfig!) e.encode()],
  };
}

/// Typed helper for the `service_config.telemetry_config.logging_config` block of
/// `aws_lambdaweb_function_revision` (derived from provider schema).
@immutable
final class LambdawebFunctionRevisionLoggingConfig {
  const LambdawebFunctionRevisionLoggingConfig({
    this.applicationLogLevel,
    this.logGroup,
    this.systemLogLevel,
  });

  final LambdawebFunctionRevisionApplicationLogLevel? applicationLogLevel;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  final LambdawebFunctionRevisionSystemLogLevel? systemLogLevel;

  @internal
  Map<String, Object?> encode() => {
    'application_log_level': ?applicationLogLevel?.toTfJson(),
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
    'system_log_level': ?systemLogLevel?.toTfJson(),
  };
}

/// `application_log_level` — derived from the provider schema description.
extension type const LambdawebFunctionRevisionApplicationLogLevel._(
  TfArg<String> _
)
    implements TfArg<String> {
  LambdawebFunctionRevisionApplicationLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  LambdawebFunctionRevisionApplicationLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LambdawebFunctionRevisionApplicationLogLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const trace = LambdawebFunctionRevisionApplicationLogLevel._(
    TfArgLiteral('TRACE'),
  );
  static const debug = LambdawebFunctionRevisionApplicationLogLevel._(
    TfArgLiteral('DEBUG'),
  );
  static const info = LambdawebFunctionRevisionApplicationLogLevel._(
    TfArgLiteral('INFO'),
  );
  static const warn = LambdawebFunctionRevisionApplicationLogLevel._(
    TfArgLiteral('WARN'),
  );
  static const error = LambdawebFunctionRevisionApplicationLogLevel._(
    TfArgLiteral('ERROR'),
  );
  static const fatal = LambdawebFunctionRevisionApplicationLogLevel._(
    TfArgLiteral('FATAL'),
  );

  static const List<LambdawebFunctionRevisionApplicationLogLevel> values = [
    trace,
    debug,
    info,
    warn,
    error,
    fatal,
  ];
}

/// `system_log_level` — derived from the provider schema description.
extension type const LambdawebFunctionRevisionSystemLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  LambdawebFunctionRevisionSystemLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  LambdawebFunctionRevisionSystemLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const LambdawebFunctionRevisionSystemLogLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const debug = LambdawebFunctionRevisionSystemLogLevel._(
    TfArgLiteral('DEBUG'),
  );
  static const info = LambdawebFunctionRevisionSystemLogLevel._(
    TfArgLiteral('INFO'),
  );
  static const warn = LambdawebFunctionRevisionSystemLogLevel._(
    TfArgLiteral('WARN'),
  );

  static const List<LambdawebFunctionRevisionSystemLogLevel> values = [
    debug,
    info,
    warn,
  ];
}

/// Factory wrapper for `aws_lambdaweb_function_revision`.
final class AwsLambdawebFunctionRevision extends Resource {
  static const String tfType = 'aws_lambdaweb_function_revision';

  AwsLambdawebFunctionRevision(
    super.localName, {
    TfArg<String>? description,
    required RefTo<AwsLambdaFunction> functionName,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<String>? region,
    List<LambdawebFunctionRevisionBuildConfig>? buildConfig,
    List<LambdawebFunctionRevisionServiceConfig>? serviceConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'function_name': functionName.encodeAs('function_name'),
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'region': ?region,
           if (buildConfig != null)
             'build_config': TfArg.literal([
               for (final e in buildConfig) e.encode(),
             ]),
           if (serviceConfig != null)
             'service_config': TfArg.literal([
               for (final e in serviceConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdawebFunctionRevisionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdawebFunctionRevision>`.
  RefTo<AwsLambdawebFunctionRevision> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
