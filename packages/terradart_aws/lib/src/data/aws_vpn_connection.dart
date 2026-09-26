// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpn_connection`.
const Set<String> _awsVpnConnectionSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class DataVpnConnectionFilter {
  const DataVpnConnectionFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpn_connection`.
final class DataAwsVpnConnection extends Data {
  static const String tfType = 'aws_vpn_connection';

  DataAwsVpnConnection({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? vpnConnectionId,
    List<DataVpnConnectionFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (vpnConnectionId != null) 'vpn_connection_id': vpnConnectionId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnConnectionSensitive;

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `core_network_attachment_arn` attribute.
  TfRef<String> get coreNetworkAttachmentArn =>
      TfRef.attribute<String>(this, 'core_network_attachment_arn');

  /// Reference to `customer_gateway_configuration` attribute.
  TfRef<String> get customerGatewayConfiguration =>
      TfRef.attribute<String>(this, 'customer_gateway_configuration');

  /// Reference to `customer_gateway_id` attribute.
  TfRef<String> get customerGatewayId =>
      TfRef.attribute<String>(this, 'customer_gateway_id');

  /// Reference to `gateway_association_state` attribute.
  TfRef<String> get gatewayAssociationState =>
      TfRef.attribute<String>(this, 'gateway_association_state');

  /// Reference to `pre_shared_key_arn` attribute.
  TfRef<String> get preSharedKeyArn =>
      TfRef.attribute<String>(this, 'pre_shared_key_arn');

  /// Reference to `routes` attribute.
  TfRef<List<Map<String, Object?>>> get routes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routes');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vgw_telemetries` attribute.
  TfRef<List<Map<String, Object?>>> get vgwTelemetries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vgw_telemetries');

  /// Reference to `vpn_concentrator_id` attribute.
  TfRef<String> get vpnConcentratorId =>
      TfRef.attribute<String>(this, 'vpn_concentrator_id');

  /// Reference to `vpn_gateway_id` attribute.
  TfRef<String> get vpnGatewayId =>
      TfRef.attribute<String>(this, 'vpn_gateway_id');
}
