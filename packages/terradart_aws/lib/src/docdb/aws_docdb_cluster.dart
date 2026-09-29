// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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
sealed class DocdbClusterIdentifier {
  const DocdbClusterIdentifier();

  /// Sets `cluster_identifier`.
  const factory DocdbClusterIdentifier.clusterIdentifier(
    TfArg<String> clusterIdentifier,
  ) = DocdbClusterIdentifierChoice;

  /// Sets `cluster_identifier_prefix`.
  const factory DocdbClusterIdentifier.clusterIdentifierPrefix(
    TfArg<String> clusterIdentifierPrefix,
  ) = DocdbClusterIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterIdentifier.clusterIdentifier] choice: sets `cluster_identifier`.
final class DocdbClusterIdentifierChoice extends DocdbClusterIdentifier {
  const DocdbClusterIdentifierChoice(this.clusterIdentifier);

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

/// The [DocdbClusterIdentifier.clusterIdentifierPrefix] choice: sets `cluster_identifier_prefix`.
final class DocdbClusterIdentifierPrefix extends DocdbClusterIdentifier {
  const DocdbClusterIdentifierPrefix(this.clusterIdentifierPrefix);

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
  ) = DocdbClusterMasterPasswordChoice;

  /// Sets `master_password_wo`.
  const factory DocdbClusterMasterPassword.masterPasswordWo(
    TfArg<String> masterPasswordWo,
  ) = DocdbClusterMasterPasswordWo;

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
final class DocdbClusterMasterPasswordChoice
    extends DocdbClusterMasterPassword {
  const DocdbClusterMasterPasswordChoice(this.masterPassword);

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
final class DocdbClusterMasterPasswordWo extends DocdbClusterMasterPassword {
  const DocdbClusterMasterPasswordWo(this.masterPasswordWo);

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
    this.target,
    this.restoreType,
    required this.sourceClusterIdentifier,
  });

  final DocdbClusterRestoreToPointInTimeTarget? target;

  final TfArg<DocdbClusterRestoreToPointInTimeRestoreType>? restoreType;

  final TfArg<String> sourceClusterIdentifier;

  Map<String, Object?> encode() => {
    ...?target?.encode(),
    'restore_type': ?restoreType?.toTfJson(),
    'source_cluster_identifier': sourceClusterIdentifier.toTfJson(),
  };
}

/// At most one of `restore_to_time`, `use_latest_restorable_time` on the `restore_to_point_in_time` block of `aws_docdb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.restoreToTime(...)`.
sealed class DocdbClusterRestoreToPointInTimeTarget {
  const DocdbClusterRestoreToPointInTimeTarget();

  /// Sets `restore_to_time`.
  const factory DocdbClusterRestoreToPointInTimeTarget.restoreToTime(
    TfArg<String> restoreToTime,
  ) = DocdbClusterRestoreToPointInTimeTargetRestoreToTime;

  /// Sets `use_latest_restorable_time`.
  const factory DocdbClusterRestoreToPointInTimeTarget.useLatestRestorableTime(
    TfArg<bool> useLatestRestorableTime,
  ) = DocdbClusterRestoreToPointInTimeTargetUseLatestRestorableTime;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DocdbClusterRestoreToPointInTimeTarget.restoreToTime] choice: sets `restore_to_time`.
final class DocdbClusterRestoreToPointInTimeTargetRestoreToTime
    extends DocdbClusterRestoreToPointInTimeTarget {
  const DocdbClusterRestoreToPointInTimeTargetRestoreToTime(this.restoreToTime);

  final TfArg<String> restoreToTime;

  @override
  String get blockKey => 'restore_to_time';

  @override
  Map<String, Object?> encode() => {
    'restore_to_time': restoreToTime.toTfJson(),
  };
}

/// The [DocdbClusterRestoreToPointInTimeTarget.useLatestRestorableTime] choice: sets `use_latest_restorable_time`.
final class DocdbClusterRestoreToPointInTimeTargetUseLatestRestorableTime
    extends DocdbClusterRestoreToPointInTimeTarget {
  const DocdbClusterRestoreToPointInTimeTargetUseLatestRestorableTime(
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
    DocdbClusterIdentifier? clusterIdentifier,
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
    RefTo<AwsKmsKey>? kmsKeyId,
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
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    DocdbClusterServerlessV2ScalingConfiguration?
    serverlessV2ScalingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_major_version_upgrade': ?allowMajorVersionUpgrade,
           'apply_immediately': ?applyImmediately,
           'availability_zones': ?availabilityZones,
           'backup_retention_period': ?backupRetentionPeriod,
           ...?clusterIdentifier?.argMap,
           'cluster_members': ?clusterMembers,
           'db_cluster_parameter_group_name': ?dbClusterParameterGroupName,
           'db_subnet_group_name': ?dbSubnetGroupName,
           'deletion_protection': ?deletionProtection,
           if (enabledCloudwatchLogsExports != null)
             'enabled_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enabledCloudwatchLogsExports) e.toTfJson(),
             ]),
           'engine': ?engine,
           'engine_version': ?engineVersion,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'global_cluster_identifier': ?globalClusterIdentifier,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           ...?masterPassword?.argMap,
           'master_password_wo_version': ?masterPasswordWoVersion,
           'master_username': ?masterUsername,
           'network_type': ?networkType,
           'port': ?port,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'region': ?region,
           'skip_final_snapshot': ?skipFinalSnapshot,
           ...?restoreSource?.argMap,
           'storage_encrypted': ?storageEncrypted,
           'storage_type': ?storageType,
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
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
