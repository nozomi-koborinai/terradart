// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_cluster`.
const Set<String> _awsRedshiftClusterSensitive = <String>{
  'master_password',
  'master_password_wo',
};

/// Factory wrapper for `aws_redshift_cluster`.
final class AwsRedshiftCluster extends Resource {
  static const String tfType = 'aws_redshift_cluster';

  AwsRedshiftCluster({
    required super.localName,
    TfArg<bool>? allowVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<String>? aquaConfigurationStatus,
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
    TfArg<String>? kmsKeyId,
    TfArg<String>? maintenanceTrackName,
    TfArg<bool>? manageMasterPassword,
    TfArg<num>? manualSnapshotRetentionPeriod,
    TfArg<String>? masterPassword,
    TfArg<String>? masterPasswordSecretKmsKeyId,
    TfArg<String>? masterPasswordWo,
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
    TfArg<String>? snapshotArn,
    TfArg<String>? snapshotClusterIdentifier,
    TfArg<String>? snapshotIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowVersionUpgrade != null)
             'allow_version_upgrade': allowVersionUpgrade,
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (aquaConfigurationStatus != null)
             'aqua_configuration_status': aquaConfigurationStatus,
           if (automatedSnapshotRetentionPeriod != null)
             'automated_snapshot_retention_period':
                 automatedSnapshotRetentionPeriod,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (availabilityZoneRelocationEnabled != null)
             'availability_zone_relocation_enabled':
                 availabilityZoneRelocationEnabled,
           'cluster_identifier': clusterIdentifier,
           if (clusterParameterGroupName != null)
             'cluster_parameter_group_name': clusterParameterGroupName,
           if (clusterSubnetGroupName != null)
             'cluster_subnet_group_name': clusterSubnetGroupName,
           if (clusterType != null) 'cluster_type': clusterType,
           if (clusterVersion != null) 'cluster_version': clusterVersion,
           if (databaseName != null) 'database_name': databaseName,
           if (defaultIamRoleArn != null)
             'default_iam_role_arn': defaultIamRoleArn,
           if (elasticIp != null) 'elastic_ip': elasticIp,
           if (encrypted != null) 'encrypted': encrypted,
           if (enhancedVpcRouting != null)
             'enhanced_vpc_routing': enhancedVpcRouting,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (iamRoles != null) 'iam_roles': iamRoles,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (maintenanceTrackName != null)
             'maintenance_track_name': maintenanceTrackName,
           if (manageMasterPassword != null)
             'manage_master_password': manageMasterPassword,
           if (manualSnapshotRetentionPeriod != null)
             'manual_snapshot_retention_period': manualSnapshotRetentionPeriod,
           if (masterPassword != null) 'master_password': masterPassword,
           if (masterPasswordSecretKmsKeyId != null)
             'master_password_secret_kms_key_id': masterPasswordSecretKmsKeyId,
           if (masterPasswordWo != null) 'master_password_wo': masterPasswordWo,
           if (masterPasswordWoVersion != null)
             'master_password_wo_version': masterPasswordWoVersion,
           if (masterUsername != null) 'master_username': masterUsername,
           if (multiAz != null) 'multi_az': multiAz,
           'node_type': nodeType,
           if (numberOfNodes != null) 'number_of_nodes': numberOfNodes,
           if (ownerAccount != null) 'owner_account': ownerAccount,
           if (port != null) 'port': port,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (snapshotArn != null) 'snapshot_arn': snapshotArn,
           if (snapshotClusterIdentifier != null)
             'snapshot_cluster_identifier': snapshotClusterIdentifier,
           if (snapshotIdentifier != null)
             'snapshot_identifier': snapshotIdentifier,
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftClusterSensitive;

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
