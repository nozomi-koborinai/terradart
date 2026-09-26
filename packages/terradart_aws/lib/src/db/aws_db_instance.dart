// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_instance`.
const Set<String> _awsDbInstanceSensitive = <String>{'password', 'password_wo'};

/// Typed helper for the `blue_green_update` block of
/// `aws_db_instance` (derived from provider schema).
@immutable
final class DbInstanceBlueGreenUpdate {
  const DbInstanceBlueGreenUpdate({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `restore_to_point_in_time` block of
/// `aws_db_instance` (derived from provider schema).
@immutable
final class DbInstanceRestoreToPointInTime {
  const DbInstanceRestoreToPointInTime({
    this.restoreTime,
    this.sourceDbInstanceAutomatedBackupsArn,
    this.sourceDbInstanceIdentifier,
    this.sourceDbiResourceId,
    this.useLatestRestorableTime,
  });

  final TfArg<String>? restoreTime;

  final TfArg<String>? sourceDbInstanceAutomatedBackupsArn;

  final TfArg<String>? sourceDbInstanceIdentifier;

  final TfArg<String>? sourceDbiResourceId;

  final TfArg<bool>? useLatestRestorableTime;

  Map<String, Object?> encode() => {
    if (restoreTime != null) 'restore_time': restoreTime!.toTfJson(),
    if (sourceDbInstanceAutomatedBackupsArn != null)
      'source_db_instance_automated_backups_arn':
          sourceDbInstanceAutomatedBackupsArn!.toTfJson(),
    if (sourceDbInstanceIdentifier != null)
      'source_db_instance_identifier': sourceDbInstanceIdentifier!.toTfJson(),
    if (sourceDbiResourceId != null)
      'source_dbi_resource_id': sourceDbiResourceId!.toTfJson(),
    if (useLatestRestorableTime != null)
      'use_latest_restorable_time': useLatestRestorableTime!.toTfJson(),
  };
}

/// Typed helper for the `s3_import` block of
/// `aws_db_instance` (derived from provider schema).
@immutable
final class DbInstanceS3Import {
  const DbInstanceS3Import({
    required this.bucketName,
    this.bucketPrefix,
    required this.ingestionRole,
    required this.sourceEngine,
    required this.sourceEngineVersion,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String> ingestionRole;

  final TfArg<String> sourceEngine;

  final TfArg<String> sourceEngineVersion;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    'ingestion_role': ingestionRole.toTfJson(),
    'source_engine': sourceEngine.toTfJson(),
    'source_engine_version': sourceEngineVersion.toTfJson(),
  };
}

/// Factory wrapper for `aws_db_instance`.
final class AwsDbInstance extends Resource {
  static const String tfType = 'aws_db_instance';

  AwsDbInstance({
    required super.localName,
    TfArg<num>? allocatedStorage,
    TfArg<bool>? allowMajorVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    TfArg<num>? backupRetentionPeriod,
    TfArg<String>? backupTarget,
    TfArg<String>? backupWindow,
    TfArg<String>? caCertIdentifier,
    TfArg<String>? characterSetName,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<String>? customIamInstanceProfile,
    TfArg<bool>? customerOwnedIpEnabled,
    TfArg<String>? databaseInsightsMode,
    TfArg<String>? dbName,
    TfArg<String>? dbSubnetGroupName,
    TfArg<bool>? dedicatedLogVolume,
    TfArg<bool>? deleteAutomatedBackups,
    TfArg<bool>? deletionProtection,
    TfArg<String>? domain,
    TfArg<String>? domainAuthSecretArn,
    TfArg<List<String>>? domainDnsIps,
    TfArg<String>? domainFqdn,
    TfArg<String>? domainIamRoleName,
    TfArg<String>? domainOu,
    TfArg<List<String>>? enabledCloudwatchLogsExports,
    TfArg<String>? engine,
    TfArg<String>? engineLifecycleSupport,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<bool>? iamDatabaseAuthenticationEnabled,
    TfArg<String>? identifier,
    TfArg<String>? identifierPrefix,
    required TfArg<String> instanceClass,
    TfArg<num>? iops,
    TfArg<String>? kmsKeyId,
    TfArg<String>? licenseModel,
    TfArg<String>? maintenanceWindow,
    TfArg<bool>? manageMasterUserPassword,
    TfArg<String>? masterUserSecretKmsKeyId,
    TfArg<num>? maxAllocatedStorage,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<bool>? multiAz,
    TfArg<String>? ncharCharacterSetName,
    TfArg<String>? networkType,
    TfArg<String>? optionGroupName,
    TfArg<String>? parameterGroupName,
    TfArg<String>? password,
    TfArg<String>? passwordWo,
    TfArg<num>? passwordWoVersion,
    TfArg<bool>? performanceInsightsEnabled,
    TfArg<String>? performanceInsightsKmsKeyId,
    TfArg<num>? performanceInsightsRetentionPeriod,
    TfArg<num>? port,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<String>? replicaMode,
    TfArg<String>? replicateSourceDb,
    TfArg<bool>? skipFinalSnapshot,
    TfArg<String>? snapshotIdentifier,
    TfArg<bool>? storageEncrypted,
    TfArg<num>? storageThroughput,
    TfArg<String>? storageType,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timezone,
    TfArg<bool>? upgradeStorageConfig,
    TfArg<String>? username,
    TfArg<List<String>>? vpcSecurityGroupIds,
    TfArg<List<String>>? warningEventCategories,
    DbInstanceBlueGreenUpdate? blueGreenUpdate,
    DbInstanceRestoreToPointInTime? restoreToPointInTime,
    DbInstanceS3Import? s3Import,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allocatedStorage != null) 'allocated_storage': allocatedStorage,
           if (allowMajorVersionUpgrade != null)
             'allow_major_version_upgrade': allowMajorVersionUpgrade,
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (backupRetentionPeriod != null)
             'backup_retention_period': backupRetentionPeriod,
           if (backupTarget != null) 'backup_target': backupTarget,
           if (backupWindow != null) 'backup_window': backupWindow,
           if (caCertIdentifier != null) 'ca_cert_identifier': caCertIdentifier,
           if (characterSetName != null) 'character_set_name': characterSetName,
           if (copyTagsToSnapshot != null)
             'copy_tags_to_snapshot': copyTagsToSnapshot,
           if (customIamInstanceProfile != null)
             'custom_iam_instance_profile': customIamInstanceProfile,
           if (customerOwnedIpEnabled != null)
             'customer_owned_ip_enabled': customerOwnedIpEnabled,
           if (databaseInsightsMode != null)
             'database_insights_mode': databaseInsightsMode,
           if (dbName != null) 'db_name': dbName,
           if (dbSubnetGroupName != null)
             'db_subnet_group_name': dbSubnetGroupName,
           if (dedicatedLogVolume != null)
             'dedicated_log_volume': dedicatedLogVolume,
           if (deleteAutomatedBackups != null)
             'delete_automated_backups': deleteAutomatedBackups,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (domain != null) 'domain': domain,
           if (domainAuthSecretArn != null)
             'domain_auth_secret_arn': domainAuthSecretArn,
           if (domainDnsIps != null) 'domain_dns_ips': domainDnsIps,
           if (domainFqdn != null) 'domain_fqdn': domainFqdn,
           if (domainIamRoleName != null)
             'domain_iam_role_name': domainIamRoleName,
           if (domainOu != null) 'domain_ou': domainOu,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': enabledCloudwatchLogsExports,
           if (engine != null) 'engine': engine,
           if (engineLifecycleSupport != null)
             'engine_lifecycle_support': engineLifecycleSupport,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (iamDatabaseAuthenticationEnabled != null)
             'iam_database_authentication_enabled':
                 iamDatabaseAuthenticationEnabled,
           if (identifier != null) 'identifier': identifier,
           if (identifierPrefix != null) 'identifier_prefix': identifierPrefix,
           'instance_class': instanceClass,
           if (iops != null) 'iops': iops,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (licenseModel != null) 'license_model': licenseModel,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           if (manageMasterUserPassword != null)
             'manage_master_user_password': manageMasterUserPassword,
           if (masterUserSecretKmsKeyId != null)
             'master_user_secret_kms_key_id': masterUserSecretKmsKeyId,
           if (maxAllocatedStorage != null)
             'max_allocated_storage': maxAllocatedStorage,
           if (monitoringInterval != null)
             'monitoring_interval': monitoringInterval,
           if (monitoringRoleArn != null)
             'monitoring_role_arn': monitoringRoleArn,
           if (multiAz != null) 'multi_az': multiAz,
           if (ncharCharacterSetName != null)
             'nchar_character_set_name': ncharCharacterSetName,
           if (networkType != null) 'network_type': networkType,
           if (optionGroupName != null) 'option_group_name': optionGroupName,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           if (password != null) 'password': password,
           if (passwordWo != null) 'password_wo': passwordWo,
           if (passwordWoVersion != null)
             'password_wo_version': passwordWoVersion,
           if (performanceInsightsEnabled != null)
             'performance_insights_enabled': performanceInsightsEnabled,
           if (performanceInsightsKmsKeyId != null)
             'performance_insights_kms_key_id': performanceInsightsKmsKeyId,
           if (performanceInsightsRetentionPeriod != null)
             'performance_insights_retention_period':
                 performanceInsightsRetentionPeriod,
           if (port != null) 'port': port,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (replicaMode != null) 'replica_mode': replicaMode,
           if (replicateSourceDb != null)
             'replicate_source_db': replicateSourceDb,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (snapshotIdentifier != null)
             'snapshot_identifier': snapshotIdentifier,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
           if (storageThroughput != null)
             'storage_throughput': storageThroughput,
           if (storageType != null) 'storage_type': storageType,
           if (tags != null) 'tags': tags,
           if (timezone != null) 'timezone': timezone,
           if (upgradeStorageConfig != null)
             'upgrade_storage_config': upgradeStorageConfig,
           if (username != null) 'username': username,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (warningEventCategories != null)
             'warning_event_categories': warningEventCategories,
           if (blueGreenUpdate != null)
             'blue_green_update': TfArg.literal(blueGreenUpdate.encode()),
           if (restoreToPointInTime != null)
             'restore_to_point_in_time': TfArg.literal(
               restoreToPointInTime.encode(),
             ),
           if (s3Import != null) 's3_import': TfArg.literal(s3Import.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `latest_restorable_time` attribute.
  TfRef<String> get latestRestorableTime =>
      TfRef.attribute<String>(this, 'latest_restorable_time');

  /// Reference to `listener_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get listenerEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'listener_endpoint');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `replicas` attribute.
  TfRef<List<String>> get replicas =>
      TfRef.attribute<List<String>>(this, 'replicas');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `upgrade_rollout_order` attribute.
  TfRef<String> get upgradeRolloutOrder =>
      TfRef.attribute<String>(this, 'upgrade_rollout_order');
}
