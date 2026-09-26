// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_domain`.
const Set<String> _awsEc2TransitGatewayMulticastDomainSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_domain`.
final class AwsEc2TransitGatewayMulticastDomain extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_multicast_domain';

  AwsEc2TransitGatewayMulticastDomain({
    required super.localName,
    TfArg<String>? autoAcceptSharedAssociations,
    TfArg<String>? igmpv2Support,
    TfArg<String>? region,
    TfArg<String>? staticSourcesSupport,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoAcceptSharedAssociations != null)
             'auto_accept_shared_associations': autoAcceptSharedAssociations,
           if (igmpv2Support != null) 'igmpv2_support': igmpv2Support,
           if (region != null) 'region': region,
           if (staticSourcesSupport != null)
             'static_sources_support': staticSourcesSupport,
           if (tags != null) 'tags': tags,
           'transit_gateway_id': transitGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMulticastDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
