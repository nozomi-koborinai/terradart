// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_multicast_domain`.
const Set<String> _awsEc2TransitGatewayMulticastDomainSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_multicast_domain` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayMulticastDomainFilter {
  const DataEc2TransitGatewayMulticastDomainFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_multicast_domain`.
final class DataAwsEc2TransitGatewayMulticastDomain extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_multicast_domain';

  DataAwsEc2TransitGatewayMulticastDomain({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayMulticastDomainId,
    List<DataEc2TransitGatewayMulticastDomainFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayMulticastDomainId != null)
             'transit_gateway_multicast_domain_id':
                 transitGatewayMulticastDomainId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMulticastDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');

  /// Reference to `auto_accept_shared_associations` attribute.
  TfRef<String> get autoAcceptSharedAssociations =>
      TfRef.attribute<String>(this, 'auto_accept_shared_associations');

  /// Reference to `igmpv2_support` attribute.
  TfRef<String> get igmpv2Support =>
      TfRef.attribute<String>(this, 'igmpv2_support');

  /// Reference to `members` attribute.
  TfRef<List<Map<String, Object?>>> get members =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'members');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `sources` attribute.
  TfRef<List<Map<String, Object?>>> get sources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sources');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `static_sources_support` attribute.
  TfRef<String> get staticSourcesSupport =>
      TfRef.attribute<String>(this, 'static_sources_support');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
