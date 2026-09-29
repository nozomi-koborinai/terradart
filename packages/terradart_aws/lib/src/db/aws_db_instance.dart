// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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
    'source_db_instance_automated_backups_arn':
        ?sourceDbInstanceAutomatedBackupsArn?.toTfJson(),
    'source_db_instance_identifier': ?sourceDbInstanceIdentifier?.toTfJson(),
    'source_dbi_resource_id': ?sourceDbiResourceId?.toTfJson(),
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

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String> ingestionRole;

  final TfArg<String> sourceEngine;

  final TfArg<String> sourceEngineVersion;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
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
    RefTo<AwsKmsKey>? kmsKeyId,
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
    RefTo<AwsKmsKey>? performanceInsightsKmsKeyId,
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
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
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
           'allocated_storage': ?allocatedStorage,
           'allow_major_version_upgrade': ?allowMajorVersionUpgrade,
           'apply_immediately': ?applyImmediately,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'availability_zone': ?availabilityZone,
           'backup_retention_period': ?backupRetentionPeriod,
           'backup_target': ?backupTarget,
           'backup_window': ?backupWindow,
           'ca_cert_identifier': ?caCertIdentifier,
           'character_set_name': ?characterSetName,
           'copy_tags_to_snapshot': ?copyTagsToSnapshot,
           'custom_iam_instance_profile': ?customIamInstanceProfile,
           'customer_owned_ip_enabled': ?customerOwnedIpEnabled,
           'database_insights_mode': ?databaseInsightsMode,
           'db_name': ?dbName,
           'db_subnet_group_name': ?dbSubnetGroupName,
           'dedicated_log_volume': ?dedicatedLogVolume,
           'delete_automated_backups': ?deleteAutomatedBackups,
           'deletion_protection': ?deletionProtection,
           'domain': ?domain,
           'domain_auth_secret_arn': ?domainAuthSecretArn,
           'domain_dns_ips': ?domainDnsIps,
           'domain_fqdn': ?domainFqdn,
           'domain_iam_role_name': ?domainIamRoleName,
           'domain_ou': ?domainOu,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enabledCloudwatchLogsExports) e.toTfJson(),
             ]),
           'engine': ?engine,
           'engine_lifecycle_support': ?engineLifecycleSupport,
           'engine_version': ?engineVersion,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'iam_database_authentication_enabled':
               ?iamDatabaseAuthenticationEnabled,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           'iops': ?iops,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'license_model': ?licenseModel,
           'maintenance_window': ?maintenanceWindow,
           ...?password?.argMap,
           'master_user_secret_kms_key_id': ?masterUserSecretKmsKeyId,
           'max_allocated_storage': ?maxAllocatedStorage,
           'monitoring_interval': ?monitoringInterval,
           'monitoring_role_arn': ?monitoringRoleArn,
           'multi_az': ?multiAz,
           'nchar_character_set_name': ?ncharCharacterSetName,
           'network_type': ?networkType,
           'option_group_name': ?optionGroupName,
           'parameter_group_name': ?parameterGroupName,
           'password_wo_version': ?passwordWoVersion,
           'performance_insights_enabled': ?performanceInsightsEnabled,
           'performance_insights_kms_key_id': ?performanceInsightsKmsKeyId
               ?.encodeAs('arn'),
           'performance_insights_retention_period':
               ?performanceInsightsRetentionPeriod,
           'port': ?port,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'replica_mode': ?replicaMode,
           'replicate_source_db': ?replicateSourceDb,
           'skip_final_snapshot': ?skipFinalSnapshot,
           'snapshot_identifier': ?snapshotIdentifier,
           'storage_encrypted': ?storageEncrypted,
           'storage_throughput': ?storageThroughput,
           'storage_type': ?storageType,
           'tags': ?tags,
           'timezone': ?timezone,
           'upgrade_storage_config': ?upgradeStorageConfig,
           'username': ?username,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
           'warning_event_categories': ?warningEventCategories,
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
