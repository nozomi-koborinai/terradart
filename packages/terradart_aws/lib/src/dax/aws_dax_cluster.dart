// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dax_cluster`.
const Set<String> _awsDaxClusterSensitive = <String>{};

/// Typed helper for the `server_side_encryption` block of
/// `aws_dax_cluster` (derived from provider schema).
@immutable
final class DaxClusterServerSideEncryption {
  const DaxClusterServerSideEncryption({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dax_cluster`.
final class AwsDaxCluster extends Resource {
  static const String tfType = 'aws_dax_cluster';

  AwsDaxCluster({
    required super.localName,
    TfArg<List<String>>? availabilityZones,
    TfArg<String>? clusterEndpointEncryptionType,
    required TfArg<String> clusterName,
    TfArg<String>? description,
    required TfArg<String> iamRoleArn,
    TfArg<String>? maintenanceWindow,
    required TfArg<String> nodeType,
    TfArg<String>? notificationTopicArn,
    TfArg<String>? parameterGroupName,
    TfArg<String>? region,
    required TfArg<num> replicationFactor,
    TfArg<List<String>>? securityGroupIds,
    TfArg<String>? subnetGroupName,
    TfArg<Map<String, String>>? tags,
    DaxClusterServerSideEncryption? serverSideEncryption,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (clusterEndpointEncryptionType != null)
             'cluster_endpoint_encryption_type': clusterEndpointEncryptionType,
           'cluster_name': clusterName,
           if (description != null) 'description': description,
           'iam_role_arn': iamRoleArn,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           'node_type': nodeType,
           if (notificationTopicArn != null)
             'notification_topic_arn': notificationTopicArn,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           if (region != null) 'region': region,
           'replication_factor': replicationFactor,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (subnetGroupName != null) 'subnet_group_name': subnetGroupName,
           if (tags != null) 'tags': tags,
           if (serverSideEncryption != null)
             'server_side_encryption': TfArg.literal(
               serverSideEncryption.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDaxClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_address` attribute.
  TfRef<String> get clusterAddress =>
      TfRef.attribute<String>(this, 'cluster_address');

  /// Reference to `configuration_endpoint` attribute.
  TfRef<String> get configurationEndpoint =>
      TfRef.attribute<String>(this, 'configuration_endpoint');

  /// Reference to `nodes` attribute.
  TfRef<List<Map<String, Object?>>> get nodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nodes');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');
}
