// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_cluster`.
const Set<String> _awsDocdbClusterSensitive = <String>{'master_password'};

/// Docdb Cluster Enabled Cloudwatch Logs enum for `enabled_cloudwatch_logs_exports`.
enum DocdbClusterEnabledCloudwatchLogsExports implements TerraformEnum {
  audit('audit'),
  profiler('profiler');

  const DocdbClusterEnabledCloudwatchLogsExports(this.terraformValue);
  @override
  final String terraformValue;
}

/// Docdb Cluster enum for `engine`.
enum DocdbClusterEngine implements TerraformEnum {
  docdb('docdb');

  const DocdbClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Docdb Cluster Network enum for `network_type`.
enum DocdbClusterNetworkType implements TerraformEnum {
  dual('DUAL'),
  ipv4('IPV4');

  const DocdbClusterNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Docdb Cluster Storage enum for `storage_type`.
enum DocdbClusterStorageType implements TerraformEnum {
  iopt1('iopt1'),
  standard('standard');

  const DocdbClusterStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `cluster_identifier`, `cluster_identifier_prefix` on `aws_docdb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clusterIdentifier(...)`.
sealed class DocdbClusterClusterIdentifier {
  const DocdbClusterClusterIdentifier();

  /// Sets `cluster_identifier`.
  const factory DocdbClusterClusterIdentifier.clusterIdentifier(
    TfArg<String> clusterIdentifier,
  ) = DocdbClusterClusterIdentifierClusterIdentifier;

  /// Sets `cluster_identifier_prefix`.
  const factory DocdbClusterClusterIdentifier.clusterIdentifierPrefix(
    TfArg<String> clusterIdentifierPrefix,
  ) = DocdbClusterClusterIdentifierClusterIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterClusterIdentifier.clusterIdentifier] choice: sets `cluster_identifier`.
final class DocdbClusterClusterIdentifierClusterIdentifier
    extends DocdbClusterClusterIdentifier {
  const DocdbClusterClusterIdentifierClusterIdentifier(this.clusterIdentifier);

  final TfArg<String> clusterIdentifier;

  @override
  String get blockKey => 'cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'cluster_identifier': clusterIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cluster_identifier': clusterIdentifier,
  };
}

/// The [DocdbClusterClusterIdentifier.clusterIdentifierPrefix] choice: sets `cluster_identifier_prefix`.
final class DocdbClusterClusterIdentifierClusterIdentifierPrefix
    extends DocdbClusterClusterIdentifier {
  const DocdbClusterClusterIdentifierClusterIdentifierPrefix(
    this.clusterIdentifierPrefix,
  );

  final TfArg<String> clusterIdentifierPrefix;

  @override
  String get blockKey => 'cluster_identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'cluster_identifier_prefix': clusterIdentifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cluster_identifier_prefix': clusterIdentifierPrefix,
  };
}

/// At most one of `manage_master_user_password`, `master_password`, `master_password_wo` on `aws_docdb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.manageMasterUserPassword(...)`.
sealed class DocdbClusterMasterPassword {
  const DocdbClusterMasterPassword();

  /// Sets `manage_master_user_password`.
  const factory DocdbClusterMasterPassword.manageMasterUserPassword(
    TfArg<bool> manageMasterUserPassword,
  ) = DocdbClusterMasterPasswordManageMasterUserPassword;

  /// Sets `master_password`.
  const factory DocdbClusterMasterPassword.masterPassword(
    TfArg<String> masterPassword,
  ) = DocdbClusterMasterPasswordMasterPassword;

  /// Sets `master_password_wo`.
  const factory DocdbClusterMasterPassword.masterPasswordWo(
    TfArg<String> masterPasswordWo,
  ) = DocdbClusterMasterPasswordMasterPasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterMasterPassword.manageMasterUserPassword] choice: sets `manage_master_user_password`.
final class DocdbClusterMasterPasswordManageMasterUserPassword
    extends DocdbClusterMasterPassword {
  const DocdbClusterMasterPasswordManageMasterUserPassword(
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

/// The [DocdbClusterMasterPassword.masterPassword] choice: sets `master_password`.
final class DocdbClusterMasterPasswordMasterPassword
    extends DocdbClusterMasterPassword {
  const DocdbClusterMasterPasswordMasterPassword(this.masterPassword);

  final TfArg<String> masterPassword;

  @override
  String get blockKey => 'master_password';

  @override
  Map<String, Object?> encode() => {
    'master_password': masterPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'master_password': masterPassword};
}

/// The [DocdbClusterMasterPassword.masterPasswordWo] choice: sets `master_password_wo`.
final class DocdbClusterMasterPasswordMasterPasswordWo
    extends DocdbClusterMasterPassword {
  const DocdbClusterMasterPasswordMasterPasswordWo(this.masterPasswordWo);

  final TfArg<String> masterPasswordWo;

  @override
  String get blockKey => 'master_password_wo';

  @override
  Map<String, Object?> encode() => {
    'master_password_wo': masterPasswordWo.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'master_password_wo': masterPasswordWo,
  };
}

/// At most one of `restore_to_point_in_time`, `snapshot_identifier` on `aws_docdb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.restoreToPointInTime(...)`.
sealed class DocdbClusterRestoreSource {
  const DocdbClusterRestoreSource();

  /// Sets `restore_to_point_in_time`.
  const factory DocdbClusterRestoreSource.restoreToPointInTime(
    DocdbClusterRestoreToPointInTime restoreToPointInTime,
  ) = DocdbClusterRestoreSourceRestoreToPointInTime;

  /// Sets `snapshot_identifier`.
  const factory DocdbClusterRestoreSource.snapshotIdentifier(
    TfArg<String> snapshotIdentifier,
  ) = DocdbClusterRestoreSourceSnapshotIdentifier;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterRestoreSource.restoreToPointInTime] choice: sets `restore_to_point_in_time`.
final class DocdbClusterRestoreSourceRestoreToPointInTime
    extends DocdbClusterRestoreSource {
  const DocdbClusterRestoreSourceRestoreToPointInTime(
    this.restoreToPointInTime,
  );

  final DocdbClusterRestoreToPointInTime restoreToPointInTime;

  @override
  String get blockKey => 'restore_to_point_in_time';

  @override
  Map<String, Object?> encode() => {
    'restore_to_point_in_time': restoreToPointInTime.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_to_point_in_time': TfArg.literal(restoreToPointInTime.encode()),
  };
}

/// The [DocdbClusterRestoreSource.snapshotIdentifier] choice: sets `snapshot_identifier`.
final class DocdbClusterRestoreSourceSnapshotIdentifier
    extends DocdbClusterRestoreSource {
  const DocdbClusterRestoreSourceSnapshotIdentifier(this.snapshotIdentifier);

  final TfArg<String> snapshotIdentifier;

  @override
  String get blockKey => 'snapshot_identifier';

  @override
  Map<String, Object?> encode() => {
    'snapshot_identifier': snapshotIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'snapshot_identifier': snapshotIdentifier,
  };
}

/// Typed helper for the `restore_to_point_in_time` block of
/// `aws_docdb_cluster` (derived from provider schema).
@immutable
final class DocdbClusterRestoreToPointInTime {
  const DocdbClusterRestoreToPointInTime({
    this.time,
    this.restoreType,
    required this.sourceClusterIdentifier,
  });

  final DocdbClusterRestoreToPointInTimeTime? time;

  final TfArg<DocdbClusterRestoreToPointInTimeRestoreType>? restoreType;

  final TfArg<String> sourceClusterIdentifier;

  Map<String, Object?> encode() => {
    ...?time?.encode(),
    if (restoreType != null) 'restore_type': restoreType!.toTfJson(),
    'source_cluster_identifier': sourceClusterIdentifier.toTfJson(),
  };
}

/// At most one of `restore_to_time`, `use_latest_restorable_time` on the `restore_to_point_in_time` block of `aws_docdb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.restoreToTime(...)`.
sealed class DocdbClusterRestoreToPointInTimeTime {
  const DocdbClusterRestoreToPointInTimeTime();

  /// Sets `restore_to_time`.
  const factory DocdbClusterRestoreToPointInTimeTime.restoreToTime(
    TfArg<String> restoreToTime,
  ) = DocdbClusterRestoreToPointInTimeTimeRestoreToTime;

  /// Sets `use_latest_restorable_time`.
  const factory DocdbClusterRestoreToPointInTimeTime.useLatestRestorableTime(
    TfArg<bool> useLatestRestorableTime,
  ) = DocdbClusterRestoreToPointInTimeTimeUseLatestRestorableTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DocdbClusterRestoreToPointInTimeTime.restoreToTime] choice: sets `restore_to_time`.
final class DocdbClusterRestoreToPointInTimeTimeRestoreToTime
    extends DocdbClusterRestoreToPointInTimeTime {
  const DocdbClusterRestoreToPointInTimeTimeRestoreToTime(this.restoreToTime);

  final TfArg<String> restoreToTime;

  @override
  String get blockKey => 'restore_to_time';

  @override
  Map<String, Object?> encode() => {
    'restore_to_time': restoreToTime.toTfJson(),
  };
}

/// The [DocdbClusterRestoreToPointInTimeTime.useLatestRestorableTime] choice: sets `use_latest_restorable_time`.
final class DocdbClusterRestoreToPointInTimeTimeUseLatestRestorableTime
    extends DocdbClusterRestoreToPointInTimeTime {
  const DocdbClusterRestoreToPointInTimeTimeUseLatestRestorableTime(
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

/// `restore_type` — derived from the provider schema description.
enum DocdbClusterRestoreToPointInTimeRestoreType implements TerraformEnum {
  copyOnWrite('copy-on-write'),
  fullCopy('full-copy');

  const DocdbClusterRestoreToPointInTimeRestoreType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `serverless_v2_scaling_configuration` block of
/// `aws_docdb_cluster` (derived from provider schema).
@immutable
final class DocdbClusterServerlessV2ScalingConfiguration {
  const DocdbClusterServerlessV2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
  });

  final TfArg<num> maxCapacity;

  final TfArg<num> minCapacity;

  Map<String, Object?> encode() => {
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
  };
}

/// Factory wrapper for `aws_docdb_cluster`.
final class AwsDocdbCluster extends Resource {
  static const String tfType = 'aws_docdb_cluster';

  AwsDocdbCluster({
    required super.localName,
    TfArg<bool>? allowMajorVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<List<String>>? availabilityZones,
    TfArg<num>? backupRetentionPeriod,
    DocdbClusterClusterIdentifier? clusterIdentifier,
    TfArg<List<String>>? clusterMembers,
    TfArg<String>? dbClusterParameterGroupName,
    TfArg<String>? dbSubnetGroupName,
    TfArg<bool>? deletionProtection,
    List<TfArg<DocdbClusterEnabledCloudwatchLogsExports>>?
    enabledCloudwatchLogsExports,
    TfArg<DocdbClusterEngine>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalClusterIdentifier,
    TfArg<String>? kmsKeyId,
    DocdbClusterMasterPassword? masterPassword,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUsername,
    TfArg<DocdbClusterNetworkType>? networkType,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
    DocdbClusterRestoreSource? restoreSource,
    TfArg<bool>? storageEncrypted,
    TfArg<DocdbClusterStorageType>? storageType,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    DocdbClusterServerlessV2ScalingConfiguration?
    serverlessV2ScalingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowMajorVersionUpgrade != null)
             'allow_major_version_upgrade': allowMajorVersionUpgrade,
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (backupRetentionPeriod != null)
             'backup_retention_period': backupRetentionPeriod,
           ...?clusterIdentifier?.argMap,
           if (clusterMembers != null) 'cluster_members': clusterMembers,
           if (dbClusterParameterGroupName != null)
             'db_cluster_parameter_group_name': dbClusterParameterGroupName,
           if (dbSubnetGroupName != null)
             'db_subnet_group_name': dbSubnetGroupName,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enabledCloudwatchLogsExports) e.toTfJson(),
             ]),
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (globalClusterIdentifier != null)
             'global_cluster_identifier': globalClusterIdentifier,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           ...?masterPassword?.argMap,
           if (masterPasswordWoVersion != null)
             'master_password_wo_version': masterPasswordWoVersion,
           if (masterUsername != null) 'master_username': masterUsername,
           if (networkType != null) 'network_type': networkType,
           if (port != null) 'port': port,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (region != null) 'region': region,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           ...?restoreSource?.argMap,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
           if (storageType != null) 'storage_type': storageType,
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (serverlessV2ScalingConfiguration != null)
             'serverless_v2_scaling_configuration': TfArg.literal(
               serverlessV2ScalingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDocdbCluster>`.
  RefTo<AwsDocdbCluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_resource_id` attribute.
  TfRef<String> get clusterResourceId =>
      TfRef.attribute<String>(this, 'cluster_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `reader_endpoint` attribute.
  TfRef<String> get readerEndpoint =>
      TfRef.attribute<String>(this, 'reader_endpoint');
}
