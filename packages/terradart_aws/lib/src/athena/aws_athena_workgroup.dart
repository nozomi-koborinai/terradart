// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_athena_workgroup`.
const Set<String> _awsAthenaWorkgroupSensitive = <String>{};

/// Athena Workgroup enum for `state`.
enum AthenaWorkgroupState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AthenaWorkgroupState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfiguration {
  const AthenaWorkgroupConfiguration({
    this.bytesScannedCutoffPerQuery,
    this.enableMinimumEncryptionConfiguration,
    this.enforceWorkgroupConfiguration,
    this.executionRole,
    this.publishCloudwatchMetricsEnabled,
    this.requesterPaysEnabled,
    this.customerContentEncryptionConfiguration,
    this.engineVersion,
    this.identityCenterConfiguration,
    this.managedQueryResultsConfiguration,
    this.monitoringConfiguration,
    this.queryResultsS3AccessGrantsConfiguration,
    this.resultConfiguration,
  });

  final TfArg<num>? bytesScannedCutoffPerQuery;

  final TfArg<bool>? enableMinimumEncryptionConfiguration;

  final TfArg<bool>? enforceWorkgroupConfiguration;

  final TfArg<String>? executionRole;

  final TfArg<bool>? publishCloudwatchMetricsEnabled;

  final TfArg<bool>? requesterPaysEnabled;

  final AthenaWorkgroupConfigurationCustomerContentEncryptionConfiguration?
  customerContentEncryptionConfiguration;

  final AthenaWorkgroupConfigurationEngineVersion? engineVersion;

  final AthenaWorkgroupConfigurationIdentityCenterConfiguration?
  identityCenterConfiguration;

  final AthenaWorkgroupConfigurationManagedQueryResultsConfiguration?
  managedQueryResultsConfiguration;

  final AthenaWorkgroupConfigurationMonitoringConfiguration?
  monitoringConfiguration;

  final AthenaWorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration?
  queryResultsS3AccessGrantsConfiguration;

  final AthenaWorkgroupConfigurationResultConfiguration? resultConfiguration;

  Map<String, Object?> encode() => {
    'bytes_scanned_cutoff_per_query': ?bytesScannedCutoffPerQuery?.toTfJson(),
    'enable_minimum_encryption_configuration':
        ?enableMinimumEncryptionConfiguration?.toTfJson(),
    'enforce_workgroup_configuration': ?enforceWorkgroupConfiguration
        ?.toTfJson(),
    'execution_role': ?executionRole?.toTfJson(),
    'publish_cloudwatch_metrics_enabled': ?publishCloudwatchMetricsEnabled
        ?.toTfJson(),
    'requester_pays_enabled': ?requesterPaysEnabled?.toTfJson(),
    'customer_content_encryption_configuration':
        ?customerContentEncryptionConfiguration?.encode(),
    'engine_version': ?engineVersion?.encode(),
    'identity_center_configuration': ?identityCenterConfiguration?.encode(),
    'managed_query_results_configuration': ?managedQueryResultsConfiguration
        ?.encode(),
    'monitoring_configuration': ?monitoringConfiguration?.encode(),
    'query_results_s3_access_grants_configuration':
        ?queryResultsS3AccessGrantsConfiguration?.encode(),
    'result_configuration': ?resultConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.customer_content_encryption_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationCustomerContentEncryptionConfiguration {
  const AthenaWorkgroupConfigurationCustomerContentEncryptionConfiguration({
    this.kmsKey,
  });

  final RefTo<AwsKmsKey>? kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `configuration.engine_version` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationEngineVersion {
  const AthenaWorkgroupConfigurationEngineVersion({this.selectedEngineVersion});

  final TfArg<String>? selectedEngineVersion;

  Map<String, Object?> encode() => {
    'selected_engine_version': ?selectedEngineVersion?.toTfJson(),
  };
}

/// Typed helper for the `configuration.identity_center_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationIdentityCenterConfiguration {
  const AthenaWorkgroupConfigurationIdentityCenterConfiguration({
    this.enableIdentityCenter,
    this.identityCenterInstanceArn,
  });

  final TfArg<bool>? enableIdentityCenter;

  final TfArg<String>? identityCenterInstanceArn;

  Map<String, Object?> encode() => {
    'enable_identity_center': ?enableIdentityCenter?.toTfJson(),
    'identity_center_instance_arn': ?identityCenterInstanceArn?.toTfJson(),
  };
}

/// Typed helper for the `configuration.managed_query_results_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationManagedQueryResultsConfiguration {
  const AthenaWorkgroupConfigurationManagedQueryResultsConfiguration({
    this.enabled,
    this.encryptionConfiguration,
  });

  final TfArg<bool>? enabled;

  final AthenaWorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration?
  encryptionConfiguration;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'encryption_configuration': ?encryptionConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.managed_query_results_configuration.encryption_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration {
  const AthenaWorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration({
    this.kmsKey,
  });

  final RefTo<AwsKmsKey>? kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `configuration.monitoring_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationMonitoringConfiguration {
  const AthenaWorkgroupConfigurationMonitoringConfiguration({
    this.cloudWatchLoggingConfiguration,
    this.managedLoggingConfiguration,
    this.s3LoggingConfiguration,
  });

  final AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration?
  cloudWatchLoggingConfiguration;

  final AthenaWorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration?
  managedLoggingConfiguration;

  final AthenaWorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration?
  s3LoggingConfiguration;

  Map<String, Object?> encode() => {
    'cloud_watch_logging_configuration': ?cloudWatchLoggingConfiguration
        ?.encode(),
    'managed_logging_configuration': ?managedLoggingConfiguration?.encode(),
    's3_logging_configuration': ?s3LoggingConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.monitoring_configuration.cloud_watch_logging_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration {
  const AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration({
    required this.enabled,
    this.logGroup,
    this.logStreamNamePrefix,
    this.logType,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  final TfArg<String>? logStreamNamePrefix;

  final List<
    AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType
  >?
  logType;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
    'log_stream_name_prefix': ?logStreamNamePrefix?.toTfJson(),
    if (logType != null) 'log_type': [for (final e in logType!) e.encode()],
  };
}

/// Typed helper for the `configuration.monitoring_configuration.cloud_watch_logging_configuration.log_type` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType {
  const AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `configuration.monitoring_configuration.managed_logging_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration {
  const AthenaWorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration({
    required this.enabled,
    this.kmsKey,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsKmsKey>? kmsKey;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `configuration.monitoring_configuration.s3_logging_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration {
  const AthenaWorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration({
    required this.enabled,
    this.kmsKey,
    this.logLocation,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsKmsKey>? kmsKey;

  final TfArg<String>? logLocation;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
    'log_location': ?logLocation?.toTfJson(),
  };
}

/// Typed helper for the `configuration.query_results_s3_access_grants_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration {
  const AthenaWorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration({
    required this.authenticationType,
    this.createUserLevelPrefix,
    required this.enableS3AccessGrants,
  });

  final TfArg<
    AthenaWorkgroupConfigurationQueryResultsS3AccessGrantsConfigurationAuthenticationType
  >
  authenticationType;

  final TfArg<bool>? createUserLevelPrefix;

  final TfArg<bool> enableS3AccessGrants;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    'create_user_level_prefix': ?createUserLevelPrefix?.toTfJson(),
    'enable_s3_access_grants': enableS3AccessGrants.toTfJson(),
  };
}

/// `authentication_type` — derived from the provider schema description.
enum AthenaWorkgroupConfigurationQueryResultsS3AccessGrantsConfigurationAuthenticationType
    implements TerraformEnum {
  directoryIdentity('DIRECTORY_IDENTITY');

  const AthenaWorkgroupConfigurationQueryResultsS3AccessGrantsConfigurationAuthenticationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.result_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationResultConfiguration {
  const AthenaWorkgroupConfigurationResultConfiguration({
    this.expectedBucketOwner,
    this.outputLocation,
    this.aclConfiguration,
    this.encryptionConfiguration,
  });

  final TfArg<String>? expectedBucketOwner;

  final TfArg<String>? outputLocation;

  final AthenaWorkgroupConfigurationResultConfigurationAclConfiguration?
  aclConfiguration;

  final AthenaWorkgroupConfigurationResultConfigurationEncryptionConfiguration?
  encryptionConfiguration;

  Map<String, Object?> encode() => {
    'expected_bucket_owner': ?expectedBucketOwner?.toTfJson(),
    'output_location': ?outputLocation?.toTfJson(),
    'acl_configuration': ?aclConfiguration?.encode(),
    'encryption_configuration': ?encryptionConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.result_configuration.acl_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationResultConfigurationAclConfiguration {
  const AthenaWorkgroupConfigurationResultConfigurationAclConfiguration({
    required this.s3AclOption,
  });

  final TfArg<
    AthenaWorkgroupConfigurationResultConfigurationAclConfigurationS3AclOption
  >
  s3AclOption;

  Map<String, Object?> encode() => {'s3_acl_option': s3AclOption.toTfJson()};
}

/// `s3_acl_option` — derived from the provider schema description.
enum AthenaWorkgroupConfigurationResultConfigurationAclConfigurationS3AclOption
    implements TerraformEnum {
  bucketOwnerFullControl('BUCKET_OWNER_FULL_CONTROL');

  const AthenaWorkgroupConfigurationResultConfigurationAclConfigurationS3AclOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.result_configuration.encryption_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationResultConfigurationEncryptionConfiguration {
  const AthenaWorkgroupConfigurationResultConfigurationEncryptionConfiguration({
    this.encryptionOption,
    this.kmsKeyArn,
  });

  final TfArg<
    AthenaWorkgroupConfigurationResultConfigurationEncryptionConfigurationEncryptionOption
  >?
  encryptionOption;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'encryption_option': ?encryptionOption?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
enum AthenaWorkgroupConfigurationResultConfigurationEncryptionConfigurationEncryptionOption
    implements TerraformEnum {
  sseS3('SSE_S3'),
  sseKms('SSE_KMS'),
  cseKms('CSE_KMS');

  const AthenaWorkgroupConfigurationResultConfigurationEncryptionConfigurationEncryptionOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_athena_workgroup`.
final class AwsAthenaWorkgroup extends Resource {
  static const String tfType = 'aws_athena_workgroup';

  AwsAthenaWorkgroup({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<AthenaWorkgroupState>? state,
    TfArg<Map<String, String>>? tags,
    AthenaWorkgroupConfiguration? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'force_destroy': ?forceDestroy,
           'name': name,
           'region': ?region,
           'state': ?state,
           'tags': ?tags,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaWorkgroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAthenaWorkgroup>`.
  RefTo<AwsAthenaWorkgroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
