// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_network_acl`.
const Set<String> _awsNetworkAclSensitive = <String>{};

/// Factory wrapper for `aws_network_acl`.
final class AwsNetworkAcl extends Resource {
  static const String tfType = 'aws_network_acl';

  AwsNetworkAcl({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? egress,
    TfArg<List<Map<String, Object?>>>? ingress,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (egress != null) 'egress': egress,
           if (ingress != null) 'ingress': ingress,
           if (region != null) 'region': region,
           if (subnetIds != null) 'subnet_ids': subnetIds.encodeAs('id'),
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkAcl>`.
  RefTo<AwsNetworkAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
