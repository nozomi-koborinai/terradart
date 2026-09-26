// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_workgroup`.
const Set<String> _awsAthenaWorkgroupSensitive = <String>{};

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
    if (bytesScannedCutoffPerQuery != null)
      'bytes_scanned_cutoff_per_query': bytesScannedCutoffPerQuery!.toTfJson(),
    if (enableMinimumEncryptionConfiguration != null)
      'enable_minimum_encryption_configuration':
          enableMinimumEncryptionConfiguration!.toTfJson(),
    if (enforceWorkgroupConfiguration != null)
      'enforce_workgroup_configuration': enforceWorkgroupConfiguration!
          .toTfJson(),
    if (executionRole != null) 'execution_role': executionRole!.toTfJson(),
    if (publishCloudwatchMetricsEnabled != null)
      'publish_cloudwatch_metrics_enabled': publishCloudwatchMetricsEnabled!
          .toTfJson(),
    if (requesterPaysEnabled != null)
      'requester_pays_enabled': requesterPaysEnabled!.toTfJson(),
    if (customerContentEncryptionConfiguration != null)
      'customer_content_encryption_configuration':
          customerContentEncryptionConfiguration!.encode(),
    if (engineVersion != null) 'engine_version': engineVersion!.encode(),
    if (identityCenterConfiguration != null)
      'identity_center_configuration': identityCenterConfiguration!.encode(),
    if (managedQueryResultsConfiguration != null)
      'managed_query_results_configuration': managedQueryResultsConfiguration!
          .encode(),
    if (monitoringConfiguration != null)
      'monitoring_configuration': monitoringConfiguration!.encode(),
    if (queryResultsS3AccessGrantsConfiguration != null)
      'query_results_s3_access_grants_configuration':
          queryResultsS3AccessGrantsConfiguration!.encode(),
    if (resultConfiguration != null)
      'result_configuration': resultConfiguration!.encode(),
  };
}

/// Typed helper for the `configuration.customer_content_encryption_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationCustomerContentEncryptionConfiguration {
  const AthenaWorkgroupConfigurationCustomerContentEncryptionConfiguration({
    this.kmsKey,
  });

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// Typed helper for the `configuration.engine_version` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationEngineVersion {
  const AthenaWorkgroupConfigurationEngineVersion({this.selectedEngineVersion});

  final TfArg<String>? selectedEngineVersion;

  Map<String, Object?> encode() => {
    if (selectedEngineVersion != null)
      'selected_engine_version': selectedEngineVersion!.toTfJson(),
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
    if (enableIdentityCenter != null)
      'enable_identity_center': enableIdentityCenter!.toTfJson(),
    if (identityCenterInstanceArn != null)
      'identity_center_instance_arn': identityCenterInstanceArn!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (encryptionConfiguration != null)
      'encryption_configuration': encryptionConfiguration!.encode(),
  };
}

/// Typed helper for the `configuration.managed_query_results_configuration.encryption_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration {
  const AthenaWorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration({
    this.kmsKey,
  });

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
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
    if (cloudWatchLoggingConfiguration != null)
      'cloud_watch_logging_configuration': cloudWatchLoggingConfiguration!
          .encode(),
    if (managedLoggingConfiguration != null)
      'managed_logging_configuration': managedLoggingConfiguration!.encode(),
    if (s3LoggingConfiguration != null)
      's3_logging_configuration': s3LoggingConfiguration!.encode(),
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

  final TfArg<String>? logGroup;

  final TfArg<String>? logStreamNamePrefix;

  final List<
    AthenaWorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType
  >?
  logType;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
    if (logStreamNamePrefix != null)
      'log_stream_name_prefix': logStreamNamePrefix!.toTfJson(),
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

  final TfArg<List<Object?>> values;

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

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
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

  final TfArg<String>? kmsKey;

  final TfArg<String>? logLocation;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (logLocation != null) 'log_location': logLocation!.toTfJson(),
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

  final TfArg<String> authenticationType;

  final TfArg<bool>? createUserLevelPrefix;

  final TfArg<bool> enableS3AccessGrants;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    if (createUserLevelPrefix != null)
      'create_user_level_prefix': createUserLevelPrefix!.toTfJson(),
    'enable_s3_access_grants': enableS3AccessGrants.toTfJson(),
  };
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
    if (expectedBucketOwner != null)
      'expected_bucket_owner': expectedBucketOwner!.toTfJson(),
    if (outputLocation != null) 'output_location': outputLocation!.toTfJson(),
    if (aclConfiguration != null)
      'acl_configuration': aclConfiguration!.encode(),
    if (encryptionConfiguration != null)
      'encryption_configuration': encryptionConfiguration!.encode(),
  };
}

/// Typed helper for the `configuration.result_configuration.acl_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationResultConfigurationAclConfiguration {
  const AthenaWorkgroupConfigurationResultConfigurationAclConfiguration({
    required this.s3AclOption,
  });

  final TfArg<String> s3AclOption;

  Map<String, Object?> encode() => {'s3_acl_option': s3AclOption.toTfJson()};
}

/// Typed helper for the `configuration.result_configuration.encryption_configuration` block of
/// `aws_athena_workgroup` (derived from provider schema).
@immutable
final class AthenaWorkgroupConfigurationResultConfigurationEncryptionConfiguration {
  const AthenaWorkgroupConfigurationResultConfigurationEncryptionConfiguration({
    this.encryptionOption,
    this.kmsKeyArn,
  });

  final TfArg<String>? encryptionOption;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (encryptionOption != null)
      'encryption_option': encryptionOption!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
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
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    AthenaWorkgroupConfiguration? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'name': name,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaWorkgroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
