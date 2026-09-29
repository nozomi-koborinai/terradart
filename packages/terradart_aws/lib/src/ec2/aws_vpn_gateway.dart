// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpn_gateway`.
const Set<String> _awsVpnGatewaySensitive = <String>{};

/// Factory wrapper for `aws_vpn_gateway`.
final class AwsVpnGateway extends Resource {
  static const String tfType = 'aws_vpn_gateway';

  AwsVpnGateway({
    required super.localName,
    TfArg<String>? amazonSideAsn,
    TfArg<String>? availabilityZone,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amazon_side_asn': ?amazonSideAsn,
           'availability_zone': ?availabilityZone,
           'region': ?region,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpnGateway>`.
  RefTo<AwsVpnGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
