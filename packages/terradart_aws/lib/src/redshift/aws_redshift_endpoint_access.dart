// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_endpoint_access`.
const Set<String> _awsRedshiftEndpointAccessSensitive = <String>{};

/// Factory wrapper for `aws_redshift_endpoint_access`.
final class AwsRedshiftEndpointAccess extends Resource {
  static const String tfType = 'aws_redshift_endpoint_access';

  AwsRedshiftEndpointAccess({
    required super.localName,
    required TfArg<String> clusterIdentifier,
    required TfArg<String> endpointName,
    TfArg<String>? region,
    TfArg<String>? resourceOwner,
    required TfArg<String> subnetGroupName,
    TfArg<List<String>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           'endpoint_name': endpointName,
           if (region != null) 'region': region,
           if (resourceOwner != null) 'resource_owner': resourceOwner,
           'subnet_group_name': subnetGroupName,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEndpointAccessSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `vpc_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get vpcEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_endpoint');
}
