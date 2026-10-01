// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_redshift_endpoint_access`.
const Set<String> _awsRedshiftEndpointAccessSensitive = <String>{};

/// Factory wrapper for `aws_redshift_endpoint_access`.
final class AwsRedshiftEndpointAccess extends Resource {
  static const String tfType = 'aws_redshift_endpoint_access';

  AwsRedshiftEndpointAccess(
    super.localName, {
    required TfArg<String> clusterIdentifier,
    required TfArg<String> endpointName,
    TfArg<String>? region,
    TfArg<String>? resourceOwner,
    required TfArg<String> subnetGroupName,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           'endpoint_name': endpointName,
           'region': ?region,
           'resource_owner': ?resourceOwner,
           'subnet_group_name': subnetGroupName,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEndpointAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftEndpointAccess>`.
  RefTo<AwsRedshiftEndpointAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `vpc_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get vpcEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_endpoint');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `endpoint_name` attribute.
  TfRef<String> get endpointName =>
      TfRef.attribute<String>(this, 'endpoint_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `subnet_group_name` attribute.
  TfRef<String> get subnetGroupName =>
      TfRef.attribute<String>(this, 'subnet_group_name');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
