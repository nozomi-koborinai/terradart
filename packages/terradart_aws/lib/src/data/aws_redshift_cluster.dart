// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_cluster`.
const Set<String> _awsRedshiftClusterSensitive = <String>{};

/// Factory wrapper for `aws_redshift_cluster`.
final class DataAwsRedshiftCluster extends Data {
  static const String tfType = 'aws_redshift_cluster';

  DataAwsRedshiftCluster({
    required super.localName,
    required TfArg<String> clusterIdentifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_version_upgrade` attribute.
  TfRef<bool> get allowVersionUpgrade =>
      TfRef.attribute<bool>(this, 'allow_version_upgrade');

  /// Reference to `aqua_configuration_status` attribute.
  TfRef<String> get aquaConfigurationStatus =>
      TfRef.attribute<String>(this, 'aqua_configuration_status');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `automated_snapshot_retention_period` attribute.
  TfRef<num> get automatedSnapshotRetentionPeriod =>
      TfRef.attribute<num>(this, 'automated_snapshot_retention_period');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_relocation_enabled` attribute.
  TfRef<bool> get availabilityZoneRelocationEnabled =>
      TfRef.attribute<bool>(this, 'availability_zone_relocation_enabled');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `cluster_namespace_arn` attribute.
  TfRef<String> get clusterNamespaceArn =>
      TfRef.attribute<String>(this, 'cluster_namespace_arn');

  /// Reference to `cluster_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get clusterNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_nodes');

  /// Reference to `cluster_parameter_group_name` attribute.
  TfRef<String> get clusterParameterGroupName =>
      TfRef.attribute<String>(this, 'cluster_parameter_group_name');

  /// Reference to `cluster_public_key` attribute.
  TfRef<String> get clusterPublicKey =>
      TfRef.attribute<String>(this, 'cluster_public_key');

  /// Reference to `cluster_revision_number` attribute.
  TfRef<String> get clusterRevisionNumber =>
      TfRef.attribute<String>(this, 'cluster_revision_number');

  /// Reference to `cluster_subnet_group_name` attribute.
  TfRef<String> get clusterSubnetGroupName =>
      TfRef.attribute<String>(this, 'cluster_subnet_group_name');

  /// Reference to `cluster_type` attribute.
  TfRef<String> get clusterType =>
      TfRef.attribute<String>(this, 'cluster_type');

  /// Reference to `cluster_version` attribute.
  TfRef<String> get clusterVersion =>
      TfRef.attribute<String>(this, 'cluster_version');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `default_iam_role_arn` attribute.
  TfRef<String> get defaultIamRoleArn =>
      TfRef.attribute<String>(this, 'default_iam_role_arn');

  /// Reference to `elastic_ip` attribute.
  TfRef<String> get elasticIp => TfRef.attribute<String>(this, 'elastic_ip');

  /// Reference to `enable_logging` attribute.
  TfRef<bool> get enableLogging =>
      TfRef.attribute<bool>(this, 'enable_logging');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `enhanced_vpc_routing` attribute.
  TfRef<bool> get enhancedVpcRouting =>
      TfRef.attribute<bool>(this, 'enhanced_vpc_routing');

  /// Reference to `iam_roles` attribute.
  TfRef<List<String>> get iamRoles =>
      TfRef.attribute<List<String>>(this, 'iam_roles');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `log_destination_type` attribute.
  TfRef<String> get logDestinationType =>
      TfRef.attribute<String>(this, 'log_destination_type');

  /// Reference to `log_exports` attribute.
  TfRef<List<String>> get logExports =>
      TfRef.attribute<List<String>>(this, 'log_exports');

  /// Reference to `maintenance_track_name` attribute.
  TfRef<String> get maintenanceTrackName =>
      TfRef.attribute<String>(this, 'maintenance_track_name');

  /// Reference to `manual_snapshot_retention_period` attribute.
  TfRef<num> get manualSnapshotRetentionPeriod =>
      TfRef.attribute<num>(this, 'manual_snapshot_retention_period');

  /// Reference to `master_username` attribute.
  TfRef<String> get masterUsername =>
      TfRef.attribute<String>(this, 'master_username');

  /// Reference to `multi_az` attribute.
  TfRef<bool> get multiAz => TfRef.attribute<bool>(this, 'multi_az');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `number_of_nodes` attribute.
  TfRef<num> get numberOfNodes => TfRef.attribute<num>(this, 'number_of_nodes');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `s3_key_prefix` attribute.
  TfRef<String> get s3KeyPrefix =>
      TfRef.attribute<String>(this, 's3_key_prefix');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
