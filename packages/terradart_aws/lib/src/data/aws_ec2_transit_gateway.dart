// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway`.
const Set<String> _awsEc2TransitGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayFilter {
  const DataEc2TransitGatewayFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway`.
final class DataAwsEc2TransitGateway extends Data {
  static const String tfType = 'aws_ec2_transit_gateway';

  DataAwsEc2TransitGateway({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2TransitGatewayFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<num> get amazonSideAsn => TfRef.attribute<num>(this, 'amazon_side_asn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_default_route_table_id` attribute.
  TfRef<String> get associationDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'association_default_route_table_id');

  /// Reference to `auto_accept_shared_attachments` attribute.
  TfRef<String> get autoAcceptSharedAttachments =>
      TfRef.attribute<String>(this, 'auto_accept_shared_attachments');

  /// Reference to `default_route_table_association` attribute.
  TfRef<String> get defaultRouteTableAssociation =>
      TfRef.attribute<String>(this, 'default_route_table_association');

  /// Reference to `default_route_table_propagation` attribute.
  TfRef<String> get defaultRouteTablePropagation =>
      TfRef.attribute<String>(this, 'default_route_table_propagation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_support` attribute.
  TfRef<String> get dnsSupport => TfRef.attribute<String>(this, 'dns_support');

  /// Reference to `encryption_support` attribute.
  TfRef<String> get encryptionSupport =>
      TfRef.attribute<String>(this, 'encryption_support');

  /// Reference to `multicast_support` attribute.
  TfRef<String> get multicastSupport =>
      TfRef.attribute<String>(this, 'multicast_support');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `propagation_default_route_table_id` attribute.
  TfRef<String> get propagationDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'propagation_default_route_table_id');

  /// Reference to `security_group_referencing_support` attribute.
  TfRef<String> get securityGroupReferencingSupport =>
      TfRef.attribute<String>(this, 'security_group_referencing_support');

  /// Reference to `transit_gateway_cidr_blocks` attribute.
  TfRef<List<String>> get transitGatewayCidrBlocks =>
      TfRef.attribute<List<String>>(this, 'transit_gateway_cidr_blocks');

  /// Reference to `vpn_ecmp_support` attribute.
  TfRef<String> get vpnEcmpSupport =>
      TfRef.attribute<String>(this, 'vpn_ecmp_support');
}
