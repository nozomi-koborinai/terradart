// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_opensearchserverless_vpc_endpoint`.
const Set<String> _awsOpensearchserverlessVpcEndpointSensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_vpc_endpoint`.
final class AwsOpensearchserverlessVpcEndpoint extends Resource {
  static const String tfType = 'aws_opensearchserverless_vpc_endpoint';

  AwsOpensearchserverlessVpcEndpoint({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'subnet_ids': subnetIds.encodeAs('id'),
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessVpcEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessVpcEndpoint>`.
  RefTo<AwsOpensearchserverlessVpcEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
