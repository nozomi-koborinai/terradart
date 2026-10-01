// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_neptunegraph_private_graph_endpoint`.
const Set<String> _awsNeptunegraphPrivateGraphEndpointSensitive = <String>{};

/// Factory wrapper for `aws_neptunegraph_private_graph_endpoint`.
final class AwsNeptunegraphPrivateGraphEndpoint extends Resource {
  static const String tfType = 'aws_neptunegraph_private_graph_endpoint';

  AwsNeptunegraphPrivateGraphEndpoint(
    super.localName, {
    required TfArg<String> graphIdentifier,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    required RefTo<AwsVpc> vpcId,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'graph_identifier': graphIdentifier,
           'region': ?region,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'vpc_id': vpcId.encodeAs('id'),
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNeptunegraphPrivateGraphEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptunegraphPrivateGraphEndpoint>`.
  RefTo<AwsNeptunegraphPrivateGraphEndpoint> get ref => RefTo.of(this);

  /// Reference to `private_graph_endpoint_identifier` attribute.
  TfRef<String> get privateGraphEndpointIdentifier =>
      TfRef.attribute<String>(this, 'private_graph_endpoint_identifier');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointId =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');

  /// Reference to `graph_identifier` attribute.
  TfRef<String> get graphIdentifier =>
      TfRef.attribute<String>(this, 'graph_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
