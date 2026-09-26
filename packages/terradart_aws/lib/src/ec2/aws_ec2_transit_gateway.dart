// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway`.
const Set<String> _awsEc2TransitGatewaySensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway`.
final class AwsEc2TransitGateway extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway';

  AwsEc2TransitGateway({
    required super.localName,
    TfArg<num>? amazonSideAsn,
    TfArg<String>? autoAcceptSharedAttachments,
    TfArg<String>? defaultRouteTableAssociation,
    TfArg<String>? defaultRouteTablePropagation,
    TfArg<String>? description,
    TfArg<String>? dnsSupport,
    TfArg<String>? encryptionSupport,
    TfArg<String>? multicastSupport,
    TfArg<String>? region,
    TfArg<String>? securityGroupReferencingSupport,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? transitGatewayCidrBlocks,
    TfArg<String>? vpnEcmpSupport,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (amazonSideAsn != null) 'amazon_side_asn': amazonSideAsn,
           if (autoAcceptSharedAttachments != null)
             'auto_accept_shared_attachments': autoAcceptSharedAttachments,
           if (defaultRouteTableAssociation != null)
             'default_route_table_association': defaultRouteTableAssociation,
           if (defaultRouteTablePropagation != null)
             'default_route_table_propagation': defaultRouteTablePropagation,
           if (description != null) 'description': description,
           if (dnsSupport != null) 'dns_support': dnsSupport,
           if (encryptionSupport != null)
             'encryption_support': encryptionSupport,
           if (multicastSupport != null) 'multicast_support': multicastSupport,
           if (region != null) 'region': region,
           if (securityGroupReferencingSupport != null)
             'security_group_referencing_support':
                 securityGroupReferencingSupport,
           if (tags != null) 'tags': tags,
           if (transitGatewayCidrBlocks != null)
             'transit_gateway_cidr_blocks': transitGatewayCidrBlocks,
           if (vpnEcmpSupport != null) 'vpn_ecmp_support': vpnEcmpSupport,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_default_route_table_id` attribute.
  TfRef<String> get associationDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'association_default_route_table_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `propagation_default_route_table_id` attribute.
  TfRef<String> get propagationDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'propagation_default_route_table_id');
}
