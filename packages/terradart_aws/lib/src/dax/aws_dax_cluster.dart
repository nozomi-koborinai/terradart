// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_dax_cluster`.
const Set<String> _awsDaxClusterSensitive = <String>{};

/// Dax Cluster Cluster Endpoint Encryption enum for `cluster_endpoint_encryption_type`.
enum DaxClusterClusterEndpointEncryptionType implements TerraformEnum {
  none('NONE'),
  tls('TLS');

  const DaxClusterClusterEndpointEncryptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `server_side_encryption` block of
/// `aws_dax_cluster` (derived from provider schema).
@immutable
final class DaxClusterServerSideEncryption {
  const DaxClusterServerSideEncryption({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `aws_dax_cluster`.
final class AwsDaxCluster extends Resource {
  static const String tfType = 'aws_dax_cluster';

  AwsDaxCluster({
    required super.localName,
    TfArg<List<String>>? availabilityZones,
    TfArg<DaxClusterClusterEndpointEncryptionType>?
    clusterEndpointEncryptionType,
    required TfArg<String> clusterName,
    TfArg<String>? description,
    required RefTo<AwsIamRole> iamRoleArn,
    TfArg<String>? maintenanceWindow,
    required TfArg<String> nodeType,
    TfArg<String>? notificationTopicArn,
    TfArg<String>? parameterGroupName,
    TfArg<String>? region,
    required TfArg<num> replicationFactor,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
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
           'availability_zones': ?availabilityZones,
           'cluster_endpoint_encryption_type': ?clusterEndpointEncryptionType,
           'cluster_name': clusterName,
           'description': ?description,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'maintenance_window': ?maintenanceWindow,
           'node_type': nodeType,
           'notification_topic_arn': ?notificationTopicArn,
           'parameter_group_name': ?parameterGroupName,
           'region': ?region,
           'replication_factor': replicationFactor,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'subnet_group_name': ?subnetGroupName,
           'tags': ?tags,
           if (serverSideEncryption != null)
             'server_side_encryption': TfArg.literal(
               serverSideEncryption.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDaxClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDaxCluster>`.
  RefTo<AwsDaxCluster> get ref => RefTo.of(this);

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
