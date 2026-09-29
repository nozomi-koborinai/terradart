// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_instance`.
const Set<String> _awsDbInstanceSensitive = <String>{'password', 'password_wo'};

/// Db Instance Backup enum for `backup_target`.
enum DbInstanceBackupTarget implements TerraformEnum {
  outposts('outposts'),
  region('region');

  const DbInstanceBackupTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Instance Database Insights enum for `database_insights_mode`.
enum DbInstanceDatabaseInsightsMode implements TerraformEnum {
  standard('standard'),
  advanced('advanced');

  const DbInstanceDatabaseInsightsMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Instance Enabled Cloudwatch Logs enum for `enabled_cloudwatch_logs_exports`.
enum DbInstanceEnabledCloudwatchLogsExports implements TerraformEnum {
  agent('agent'),
  alert('alert'),
  audit('audit'),
  diagLog('diag.log'),
  error('error'),
  general('general'),
  iamDbAuthError('iam-db-auth-error'),
  listener('listener'),
  notifyLog('notify.log'),
  oemagent('oemagent'),
  postgresql('postgresql'),
  slowquery('slowquery'),
  trace('trace'),
  upgrade('upgrade');

  const DbInstanceEnabledCloudwatchLogsExports(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Instance Engine Lifecycle enum for `engine_lifecycle_support`.
enum DbInstanceEngineLifecycleSupport implements TerraformEnum {
  openSourceRdsExtendedSupport('open-source-rds-extended-support'),
  openSourceRdsExtendedSupportDisabled(
    'open-source-rds-extended-support-disabled',
  );

  const DbInstanceEngineLifecycleSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Instance Network enum for `network_type`.
enum DbInstanceNetworkType implements TerraformEnum {
  dual('DUAL'),
  ipv4('IPV4');

  const DbInstanceNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Instance Replica enum for `replica_mode`.
enum DbInstanceReplicaMode implements TerraformEnum {
  openReadOnly('open-read-only'),
  mounted('mounted');

  const DbInstanceReplicaMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `identifier`, `identifier_prefix` on `aws_db_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.identifier(...)`.
sealed class DbInstanceIdentifier {
  const DbInstanceIdentifier();

  /// Sets `identifier`.
  const factory DbInstanceIdentifier.identifier(TfArg<String> identifier) =
      DbInstanceIdentifierChoice;

  /// Sets `identifier_prefix`.
  const factory DbInstanceIdentifier.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = DbInstanceIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbInstanceIdentifier.identifier] choice: sets `identifier`.
final class DbInstanceIdentifierChoice extends DbInstanceIdentifier {
  const DbInstanceIdentifierChoice(this.identifier);

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [DbInstanceIdentifier.identifierPrefix] choice: sets `identifier_prefix`.
final class DbInstanceIdentifierPrefix extends DbInstanceIdentifier {
  const DbInstanceIdentifierPrefix(this.identifierPrefix);

  final TfArg<String> identifierPrefix;

  @override
  String get blockKey => 'identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'identifier_prefix': identifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'identifier_prefix': identifierPrefix,
  };
}

/// At most one of `manage_master_user_password`, `password`, `password_wo` on `aws_db_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.manageMasterUserPassword(...)`.
sealed class DbInstancePassword {
  const DbInstancePassword();

  /// Sets `manage_master_user_password`.
  const factory DbInstancePassword.manageMasterUserPassword(
    TfArg<bool> manageMasterUserPassword,
  ) = DbInstancePasswordManageMasterUserPassword;

  /// Sets `password`.
  const factory DbInstancePassword.password(TfArg<String> password) =
      DbInstancePasswordChoice;

  /// Sets `password_wo`.
  const factory DbInstancePassword.passwordWo(TfArg<String> passwordWo) =
      DbInstancePasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbInstancePassword.manageMasterUserPassword] choice: sets `manage_master_user_password`.
final class DbInstancePasswordManageMasterUserPassword
    extends DbInstancePassword {
  const DbInstancePasswordManageMasterUserPassword(
    this.manageMasterUserPassword,
  );

  final TfArg<bool> manageMasterUserPassword;

  @override
  String get blockKey => 'manage_master_user_password';

  @override
  Map<String, Object?> encode() => {
    'manage_master_user_password': manageMasterUserPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'manage_master_user_password': manageMasterUserPassword,
  };
}

/// The [DbInstancePassword.password] choice: sets `password`.
final class DbInstancePasswordChoice extends DbInstancePassword {
  const DbInstancePasswordChoice(this.password);

  final TfArg<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'password': password};
}

/// The [DbInstancePassword.passwordWo] choice: sets `password_wo`.
final class DbInstancePasswordWo extends DbInstancePassword {
  const DbInstancePasswordWo(this.passwordWo);

  final TfArg<String> passwordWo;

  @override
  String get blockKey => 'password_wo';

  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'password_wo': passwordWo};
}

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
    this.target,
    this.sourceDbInstanceAutomatedBackupsArn,
    this.sourceDbInstanceIdentifier,
    this.sourceDbiResourceId,
  });

  final DbInstanceRestoreToPointInTimeTarget? target;

  final TfArg<String>? sourceDbInstanceAutomatedBackupsArn;

  final TfArg<String>? sourceDbInstanceIdentifier;

  final TfArg<String>? sourceDbiResourceId;

  Map<String, Object?> encode() => {
    ...?target?.encode(),
    if (sourceDbInstanceAutomatedBackupsArn != null)
      'source_db_instance_automated_backups_arn':
          sourceDbInstanceAutomatedBackupsArn!.toTfJson(),
    if (sourceDbInstanceIdentifier != null)
      'source_db_instance_identifier': sourceDbInstanceIdentifier!.toTfJson(),
    if (sourceDbiResourceId != null)
      'source_dbi_resource_id': sourceDbiResourceId!.toTfJson(),
  };
}

/// At most one of `restore_time`, `use_latest_restorable_time` on the `restore_to_point_in_time` block of `aws_db_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.restoreTime(...)`.
sealed class DbInstanceRestoreToPointInTimeTarget {
  const DbInstanceRestoreToPointInTimeTarget();

  /// Sets `restore_time`.
  const factory DbInstanceRestoreToPointInTimeTarget.restoreTime(
    TfArg<String> restoreTime,
  ) = DbInstanceRestoreToPointInTimeTargetRestoreTime;

  /// Sets `use_latest_restorable_time`.
  const factory DbInstanceRestoreToPointInTimeTarget.useLatestRestorableTime(
    TfArg<bool> useLatestRestorableTime,
  ) = DbInstanceRestoreToPointInTimeTargetUseLatestRestorableTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DbInstanceRestoreToPointInTimeTarget.restoreTime] choice: sets `restore_time`.
final class DbInstanceRestoreToPointInTimeTargetRestoreTime
    extends DbInstanceRestoreToPointInTimeTarget {
  const DbInstanceRestoreToPointInTimeTargetRestoreTime(this.restoreTime);

  final TfArg<String> restoreTime;

  @override
  String get blockKey => 'restore_time';

  @override
  Map<String, Object?> encode() => {'restore_time': restoreTime.toTfJson()};
}

/// The [DbInstanceRestoreToPointInTimeTarget.useLatestRestorableTime] choice: sets `use_latest_restorable_time`.
final class DbInstanceRestoreToPointInTimeTargetUseLatestRestorableTime
    extends DbInstanceRestoreToPointInTimeTarget {
  const DbInstanceRestoreToPointInTimeTargetUseLatestRestorableTime(
    this.useLatestRestorableTime,
  );

  final TfArg<bool> useLatestRestorableTime;

  @override
  String get blockKey => 'use_latest_restorable_time';

  @override
  Map<String, Object?> encode() => {
    'use_latest_restorable_time': useLatestRestorableTime.toTfJson(),
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
    TfArg<DbInstanceBackupTarget>? backupTarget,
    TfArg<String>? backupWindow,
    TfArg<String>? caCertIdentifier,
    TfArg<String>? characterSetName,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<String>? customIamInstanceProfile,
    TfArg<bool>? customerOwnedIpEnabled,
    TfArg<DbInstanceDatabaseInsightsMode>? databaseInsightsMode,
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
    List<TfArg<DbInstanceEnabledCloudwatchLogsExports>>?
    enabledCloudwatchLogsExports,
    TfArg<String>? engine,
    TfArg<DbInstanceEngineLifecycleSupport>? engineLifecycleSupport,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<bool>? iamDatabaseAuthenticationEnabled,
    DbInstanceIdentifier? identifier,
    required TfArg<String> instanceClass,
    TfArg<num>? iops,
    TfArg<String>? kmsKeyId,
    TfArg<String>? licenseModel,
    TfArg<String>? maintenanceWindow,
    DbInstancePassword? password,
    TfArg<String>? masterUserSecretKmsKeyId,
    TfArg<num>? maxAllocatedStorage,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<bool>? multiAz,
    TfArg<String>? ncharCharacterSetName,
    TfArg<DbInstanceNetworkType>? networkType,
    TfArg<String>? optionGroupName,
    TfArg<String>? parameterGroupName,
    TfArg<num>? passwordWoVersion,
    TfArg<bool>? performanceInsightsEnabled,
    TfArg<String>? performanceInsightsKmsKeyId,
    TfArg<num>? performanceInsightsRetentionPeriod,
    TfArg<num>? port,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<DbInstanceReplicaMode>? replicaMode,
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
             'enabled_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enabledCloudwatchLogsExports) e.toTfJson(),
             ]),
           if (engine != null) 'engine': engine,
           if (engineLifecycleSupport != null)
             'engine_lifecycle_support': engineLifecycleSupport,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (iamDatabaseAuthenticationEnabled != null)
             'iam_database_authentication_enabled':
                 iamDatabaseAuthenticationEnabled,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           if (iops != null) 'iops': iops,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (licenseModel != null) 'license_model': licenseModel,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           ...?password?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbInstance>`.
  RefTo<AwsDbInstance> get ref => RefTo.of(this);

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
