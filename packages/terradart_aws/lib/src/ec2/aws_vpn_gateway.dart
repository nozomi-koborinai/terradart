// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (amazonSideAsn != null) 'amazon_side_asn': amazonSideAsn,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
