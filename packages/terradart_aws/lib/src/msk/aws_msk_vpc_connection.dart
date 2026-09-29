// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_msk_vpc_connection`.
const Set<String> _awsMskVpcConnectionSensitive = <String>{};

/// Factory wrapper for `aws_msk_vpc_connection`.
final class AwsMskVpcConnection extends Resource {
  static const String tfType = 'aws_msk_vpc_connection';

  AwsMskVpcConnection({
    required super.localName,
    required TfArg<String> authentication,
    required TfArg<List<String>> clientSubnets,
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSecurityGroup>>> securityGroups,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetClusterArn,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication': authentication,
           'client_subnets': clientSubnets,
           if (region != null) 'region': region,
           'security_groups': securityGroups.encodeAs('id'),
           if (tags != null) 'tags': tags,
           'target_cluster_arn': targetClusterArn,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskVpcConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskVpcConnection>`.
  RefTo<AwsMskVpcConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
