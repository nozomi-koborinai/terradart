// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_vpn_attachment`.
const Set<String> _awsEc2TransitGatewayVpnAttachmentSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_vpn_attachment` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayVpnAttachmentFilter {
  const DataEc2TransitGatewayVpnAttachmentFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_vpn_attachment`.
final class DataAwsEc2TransitGatewayVpnAttachment extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_vpn_attachment';

  DataAwsEc2TransitGatewayVpnAttachment({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayId,
    TfArg<String>? vpnConnectionId,
    List<DataEc2TransitGatewayVpnAttachmentFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           'transit_gateway_id': ?transitGatewayId,
           'vpn_connection_id': ?vpnConnectionId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayVpnAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpn_connection_id` attribute.
  TfRef<String> get vpnConnectionIdRef =>
      TfRef.attribute<String>(this, 'vpn_connection_id');
}
