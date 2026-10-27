// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_vpn_gateway`.
const Set<String> _azurermVpnGatewaySensitive = <String>{};

/// Vpn Gateway Routing enum for `routing_preference`.
extension type const VpnGatewayRoutingPreference._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayRoutingPreference.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayRoutingPreference.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayRoutingPreference.arg(TfArg<String> arg) : this._(arg);

  static const microsoftNetwork = VpnGatewayRoutingPreference._(
    TfArgLiteral('Microsoft Network'),
  );
  static const internet = VpnGatewayRoutingPreference._(
    TfArgLiteral('Internet'),
  );

  static const List<VpnGatewayRoutingPreference> values = [
    microsoftNetwork,
    internet,
  ];
}

/// Typed helper for the `bgp_settings` block of
/// `azurerm_vpn_gateway` (derived from provider schema).
@immutable
final class VpnGatewayBgpSettings {
  const VpnGatewayBgpSettings({
    required this.asn,
    required this.peerWeight,
    this.instance0BgpPeeringAddress,
    this.instance1BgpPeeringAddress,
  });

  final TfArg<num> asn;

  final TfArg<num> peerWeight;

  final VpnGatewayInstance0BgpPeeringAddress? instance0BgpPeeringAddress;

  final VpnGatewayInstance1BgpPeeringAddress? instance1BgpPeeringAddress;

  @internal
  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'peer_weight': peerWeight.toTfJson(),
    'instance_0_bgp_peering_address': ?instance0BgpPeeringAddress?.encode(),
    'instance_1_bgp_peering_address': ?instance1BgpPeeringAddress?.encode(),
  };
}

/// Typed helper for the `bgp_settings.instance_0_bgp_peering_address` block of
/// `azurerm_vpn_gateway` (derived from provider schema).
@immutable
final class VpnGatewayInstance0BgpPeeringAddress {
  const VpnGatewayInstance0BgpPeeringAddress({required this.customIps});

  final TfArg<List<String>> customIps;

  @internal
  Map<String, Object?> encode() => {'custom_ips': customIps.toTfJson()};
}

/// Typed helper for the `bgp_settings.instance_1_bgp_peering_address` block of
/// `azurerm_vpn_gateway` (derived from provider schema).
@immutable
final class VpnGatewayInstance1BgpPeeringAddress {
  const VpnGatewayInstance1BgpPeeringAddress({required this.customIps});

  final TfArg<List<String>> customIps;

  @internal
  Map<String, Object?> encode() => {'custom_ips': customIps.toTfJson()};
}

/// Factory wrapper for `azurerm_vpn_gateway`.
final class AzurermVpnGateway extends Resource {
  static const String tfType = 'azurerm_vpn_gateway';

  AzurermVpnGateway(
    super.localName, {
    TfArg<bool>? bgpRouteTranslationForNatEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    VpnGatewayRoutingPreference? routingPreference,
    TfArg<num>? scaleUnit,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualHubId,
    VpnGatewayBgpSettings? bgpSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bgp_route_translation_for_nat_enabled':
               ?bgpRouteTranslationForNatEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'routing_preference': ?routingPreference,
           'scale_unit': ?scaleUnit,
           'tags': ?tags,
           'virtual_hub_id': virtualHubId,
           if (bgpSettings != null)
             'bgp_settings': TfArg.literal(bgpSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVpnGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVpnGateway>`.
  RefTo<AzurermVpnGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get ipConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_configuration');

  /// Reference to `bgp_route_translation_for_nat_enabled` attribute.
  TfRef<bool> get bgpRouteTranslationForNatEnabled =>
      TfRef.attribute<bool>(this, 'bgp_route_translation_for_nat_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `routing_preference` attribute.
  TfRef<String> get routingPreference =>
      TfRef.attribute<String>(this, 'routing_preference');

  /// Reference to `scale_unit` attribute.
  TfRef<num> get scaleUnit => TfRef.attribute<num>(this, 'scale_unit');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
