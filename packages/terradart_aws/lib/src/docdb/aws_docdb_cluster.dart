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
sealed class DocdbClusterClusterIdentifierOrClusterIdentifierPrefix {
  const DocdbClusterClusterIdentifierOrClusterIdentifierPrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `cluster_identifier` (one of the [DocdbClusterClusterIdentifierOrClusterIdentifierPrefix] choices).
final class DocdbClusterClusterIdentifierOption
    extends DocdbClusterClusterIdentifierOrClusterIdentifierPrefix {
  const DocdbClusterClusterIdentifierOption({required this.clusterIdentifier});

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

/// Sets `cluster_identifier_prefix` (one of the [DocdbClusterClusterIdentifierOrClusterIdentifierPrefix] choices).
final class DocdbClusterClusterIdentifierPrefixOption
    extends DocdbClusterClusterIdentifierOrClusterIdentifierPrefix {
  const DocdbClusterClusterIdentifierPrefixOption({
    required this.clusterIdentifierPrefix,
  });

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
sealed class DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `manage_master_user_password` (one of the [DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo] choices).
final class DocdbClusterManageMasterUserPasswordOption
    extends
        DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const DocdbClusterManageMasterUserPasswordOption({
    required this.manageMasterUserPassword,
  });

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

/// Sets `master_password` (one of the [DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo] choices).
final class DocdbClusterMasterPasswordOption
    extends
        DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const DocdbClusterMasterPasswordOption({required this.masterPassword});

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

/// Sets `master_password_wo` (one of the [DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo] choices).
final class DocdbClusterMasterPasswordWoOption
    extends
        DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo {
  const DocdbClusterMasterPasswordWoOption({required this.masterPasswordWo});

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
sealed class DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier {
  const DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `restore_to_point_in_time` (one of the [DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier] choices).
final class DocdbClusterRestoreToPointInTimeOption
    extends DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier {
  const DocdbClusterRestoreToPointInTimeOption({
    required this.restoreToPointInTime,
  });

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

/// Sets `snapshot_identifier` (one of the [DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier] choices).
final class DocdbClusterSnapshotIdentifierOption
    extends DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier {
  const DocdbClusterSnapshotIdentifierOption({
    required this.snapshotIdentifier,
  });

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
    this.restoreToTimeOrUseLatestRestorableTime,
    this.restoreType,
    required this.sourceClusterIdentifier,
  });

  final DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime?
  restoreToTimeOrUseLatestRestorableTime;

  final TfArg<DocdbClusterRestoreToPointInTimeRestoreType>? restoreType;

  final TfArg<String> sourceClusterIdentifier;

  Map<String, Object?> encode() => {
    ...?restoreToTimeOrUseLatestRestorableTime?.encode(),
    if (restoreType != null) 'restore_type': restoreType!.toTfJson(),
    'source_cluster_identifier': sourceClusterIdentifier.toTfJson(),
  };
}

/// At most one of `restore_to_time`, `use_latest_restorable_time` on the `restore_to_point_in_time` block of `aws_docdb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime {
  const DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `restore_to_time` (one of the [DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime] choices).
final class DocdbClusterRestoreToPointInTimeRestoreToTimeOption
    extends
        DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime {
  const DocdbClusterRestoreToPointInTimeRestoreToTimeOption({
    required this.restoreToTime,
  });

  final TfArg<String> restoreToTime;

  @override
  String get blockKey => 'restore_to_time';

  @override
  Map<String, Object?> encode() => {
    'restore_to_time': restoreToTime.toTfJson(),
  };
}

/// Sets `use_latest_restorable_time` (one of the [DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime] choices).
final class DocdbClusterRestoreToPointInTimeUseLatestRestorableTimeOption
    extends
        DocdbClusterRestoreToPointInTimeRestoreToTimeOrUseLatestRestorableTime {
  const DocdbClusterRestoreToPointInTimeUseLatestRestorableTimeOption({
    required this.useLatestRestorableTime,
  });

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
    DocdbClusterClusterIdentifierOrClusterIdentifierPrefix?
    clusterIdentifierOrClusterIdentifierPrefix,
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
    DocdbClusterManageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo?
    manageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUsername,
    TfArg<DocdbClusterNetworkType>? networkType,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
    DocdbClusterRestoreToPointInTimeOrSnapshotIdentifier?
    restoreToPointInTimeOrSnapshotIdentifier,
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
           ...?clusterIdentifierOrClusterIdentifierPrefix?.argMap,
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
           ...?manageMasterUserPasswordOrMasterPasswordOrMasterPasswordWo
               ?.argMap,
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
           ...?restoreToPointInTimeOrSnapshotIdentifier?.argMap,
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
