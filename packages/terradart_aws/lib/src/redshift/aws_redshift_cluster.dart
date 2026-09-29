// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_redshift_cluster`.
const Set<String> _awsRedshiftClusterSensitive = <String>{
  'master_password',
  'master_password_wo',
};

/// Redshift Cluster Aqua Configuration enum for `aqua_configuration_status`.
enum RedshiftClusterAquaConfigurationStatus implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled'),
  auto('auto');

  const RedshiftClusterAquaConfigurationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `manage_master_password`, `master_password`, `master_password_wo` on `aws_redshift_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.manageMasterPassword(...)`.
sealed class RedshiftClusterMasterPassword {
  const RedshiftClusterMasterPassword();

  /// Sets `manage_master_password`.
  const factory RedshiftClusterMasterPassword.manageMasterPassword(
    TfArg<bool> manageMasterPassword,
  ) = RedshiftClusterMasterPasswordManageMasterPassword;

  /// Sets `master_password`.
  const factory RedshiftClusterMasterPassword.masterPassword(
    TfArg<String> masterPassword,
  ) = RedshiftClusterMasterPasswordChoice;

  /// Sets `master_password_wo`.
  const factory RedshiftClusterMasterPassword.masterPasswordWo(
    TfArg<String> masterPasswordWo,
  ) = RedshiftClusterMasterPasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftClusterMasterPassword.manageMasterPassword] choice: sets `manage_master_password`.
final class RedshiftClusterMasterPasswordManageMasterPassword
    extends RedshiftClusterMasterPassword {
  const RedshiftClusterMasterPasswordManageMasterPassword(
    this.manageMasterPassword,
  );

  final TfArg<bool> manageMasterPassword;

  @override
  String get blockKey => 'manage_master_password';

  @override
  Map<String, Object?> encode() => {
    'manage_master_password': manageMasterPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'manage_master_password': manageMasterPassword,
  };
}

/// The [RedshiftClusterMasterPassword.masterPassword] choice: sets `master_password`.
final class RedshiftClusterMasterPasswordChoice
    extends RedshiftClusterMasterPassword {
  const RedshiftClusterMasterPasswordChoice(this.masterPassword);

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

/// The [RedshiftClusterMasterPassword.masterPasswordWo] choice: sets `master_password_wo`.
final class RedshiftClusterMasterPasswordWo
    extends RedshiftClusterMasterPassword {
  const RedshiftClusterMasterPasswordWo(this.masterPasswordWo);

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

/// At most one of `snapshot_arn`, `snapshot_identifier` on `aws_redshift_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.snapshotArn(...)`.
sealed class RedshiftClusterSnapshot {
  const RedshiftClusterSnapshot();

  /// Sets `snapshot_arn`.
  const factory RedshiftClusterSnapshot.snapshotArn(TfArg<String> snapshotArn) =
      RedshiftClusterSnapshotArn;

  /// Sets `snapshot_identifier`.
  const factory RedshiftClusterSnapshot.snapshotIdentifier(
    TfArg<String> snapshotIdentifier,
  ) = RedshiftClusterSnapshotIdentifier;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftClusterSnapshot.snapshotArn] choice: sets `snapshot_arn`.
final class RedshiftClusterSnapshotArn extends RedshiftClusterSnapshot {
  const RedshiftClusterSnapshotArn(this.snapshotArn);

  final TfArg<String> snapshotArn;

  @override
  String get blockKey => 'snapshot_arn';

  @override
  Map<String, Object?> encode() => {'snapshot_arn': snapshotArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'snapshot_arn': snapshotArn};
}

/// The [RedshiftClusterSnapshot.snapshotIdentifier] choice: sets `snapshot_identifier`.
final class RedshiftClusterSnapshotIdentifier extends RedshiftClusterSnapshot {
  const RedshiftClusterSnapshotIdentifier(this.snapshotIdentifier);

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

/// Factory wrapper for `aws_redshift_cluster`.
final class AwsRedshiftCluster extends Resource {
  static const String tfType = 'aws_redshift_cluster';

  AwsRedshiftCluster({
    required super.localName,
    TfArg<bool>? allowVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<RedshiftClusterAquaConfigurationStatus>? aquaConfigurationStatus,
    TfArg<num>? automatedSnapshotRetentionPeriod,
    TfArg<String>? availabilityZone,
    TfArg<bool>? availabilityZoneRelocationEnabled,
    required TfArg<String> clusterIdentifier,
    TfArg<String>? clusterParameterGroupName,
    TfArg<String>? clusterSubnetGroupName,
    TfArg<String>? clusterType,
    TfArg<String>? clusterVersion,
    TfArg<String>? databaseName,
    TfArg<String>? defaultIamRoleArn,
    TfArg<String>? elasticIp,
    TfArg<String>? encrypted,
    TfArg<bool>? enhancedVpcRouting,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<List<String>>? iamRoles,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? maintenanceTrackName,
    RedshiftClusterMasterPassword? masterPassword,
    TfArg<num>? manualSnapshotRetentionPeriod,
    TfArg<String>? masterPasswordSecretKmsKeyId,
    TfArg<num>? masterPasswordWoVersion,
    TfArg<String>? masterUsername,
    TfArg<bool>? multiAz,
    required TfArg<String> nodeType,
    TfArg<num>? numberOfNodes,
    TfArg<String>? ownerAccount,
    TfArg<num>? port,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
    RedshiftClusterSnapshot? snapshot,
    TfArg<String>? snapshotClusterIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_version_upgrade': ?allowVersionUpgrade,
           'apply_immediately': ?applyImmediately,
           'aqua_configuration_status': ?aquaConfigurationStatus,
           'automated_snapshot_retention_period':
               ?automatedSnapshotRetentionPeriod,
           'availability_zone': ?availabilityZone,
           'availability_zone_relocation_enabled':
               ?availabilityZoneRelocationEnabled,
           'cluster_identifier': clusterIdentifier,
           'cluster_parameter_group_name': ?clusterParameterGroupName,
           'cluster_subnet_group_name': ?clusterSubnetGroupName,
           'cluster_type': ?clusterType,
           'cluster_version': ?clusterVersion,
           'database_name': ?databaseName,
           'default_iam_role_arn': ?defaultIamRoleArn,
           'elastic_ip': ?elasticIp,
           'encrypted': ?encrypted,
           'enhanced_vpc_routing': ?enhancedVpcRouting,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'iam_roles': ?iamRoles,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'maintenance_track_name': ?maintenanceTrackName,
           ...?masterPassword?.argMap,
           'manual_snapshot_retention_period': ?manualSnapshotRetentionPeriod,
           'master_password_secret_kms_key_id': ?masterPasswordSecretKmsKeyId,
           'master_password_wo_version': ?masterPasswordWoVersion,
           'master_username': ?masterUsername,
           'multi_az': ?multiAz,
           'node_type': nodeType,
           'number_of_nodes': ?numberOfNodes,
           'owner_account': ?ownerAccount,
           'port': ?port,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'skip_final_snapshot': ?skipFinalSnapshot,
           ...?snapshot?.argMap,
           'snapshot_cluster_identifier': ?snapshotClusterIdentifier,
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftCluster>`.
  RefTo<AwsRedshiftCluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_namespace_arn` attribute.
  TfRef<String> get clusterNamespaceArn =>
      TfRef.attribute<String>(this, 'cluster_namespace_arn');

  /// Reference to `cluster_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get clusterNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_nodes');

  /// Reference to `cluster_public_key` attribute.
  TfRef<String> get clusterPublicKey =>
      TfRef.attribute<String>(this, 'cluster_public_key');

  /// Reference to `cluster_revision_number` attribute.
  TfRef<String> get clusterRevisionNumber =>
      TfRef.attribute<String>(this, 'cluster_revision_number');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `master_password_secret_arn` attribute.
  TfRef<String> get masterPasswordSecretArn =>
      TfRef.attribute<String>(this, 'master_password_secret_arn');
}
