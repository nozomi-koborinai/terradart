// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_circuit_peering`.
const Set<String> _azurermExpressRouteCircuitPeeringSensitive = <String>{
  'shared_key',
};

/// Typed helper for the `ipv6` block of
/// `azurerm_express_route_circuit_peering` (derived from provider schema).
@immutable
final class ExpressRouteCircuitPeeringIpv6 {
  const ExpressRouteCircuitPeeringIpv6({
    this.enabled,
    required this.primaryPeerAddressPrefix,
    this.routeFilterId,
    required this.secondaryPeerAddressPrefix,
    this.microsoftPeering,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> primaryPeerAddressPrefix;

  final TfArg<String>? routeFilterId;

  final TfArg<String> secondaryPeerAddressPrefix;

  final ExpressRouteCircuitPeeringMicrosoftPeering? microsoftPeering;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'primary_peer_address_prefix': primaryPeerAddressPrefix.toTfJson(),
    'route_filter_id': ?routeFilterId?.toTfJson(),
    'secondary_peer_address_prefix': secondaryPeerAddressPrefix.toTfJson(),
    'microsoft_peering': ?microsoftPeering?.encode(),
  };
}

/// Typed helper for the `ipv6.microsoft_peering` block of
/// `azurerm_express_route_circuit_peering` (derived from provider schema).
@immutable
final class ExpressRouteCircuitPeeringMicrosoftPeering {
  const ExpressRouteCircuitPeeringMicrosoftPeering({
    this.advertisedCommunities,
    this.advertisedPublicPrefixes,
    this.customerAsn,
    this.routingRegistryName,
  });

  final TfArg<List<String>>? advertisedCommunities;

  final TfArg<List<String>>? advertisedPublicPrefixes;

  final TfArg<num>? customerAsn;

  final TfArg<String>? routingRegistryName;

  @internal
  Map<String, Object?> encode() => {
    'advertised_communities': ?advertisedCommunities?.toTfJson(),
    'advertised_public_prefixes': ?advertisedPublicPrefixes?.toTfJson(),
    'customer_asn': ?customerAsn?.toTfJson(),
    'routing_registry_name': ?routingRegistryName?.toTfJson(),
  };
}

/// Typed helper for the `microsoft_peering_config` block of
/// `azurerm_express_route_circuit_peering` (derived from provider schema).
@immutable
final class ExpressRouteCircuitPeeringMicrosoftPeeringConfig {
  const ExpressRouteCircuitPeeringMicrosoftPeeringConfig({
    this.advertisedCommunities,
    required this.advertisedPublicPrefixes,
    this.customerAsn,
    this.routingRegistryName,
  });

  final TfArg<List<String>>? advertisedCommunities;

  final TfArg<List<String>> advertisedPublicPrefixes;

  final TfArg<num>? customerAsn;

  final TfArg<String>? routingRegistryName;

  @internal
  Map<String, Object?> encode() => {
    'advertised_communities': ?advertisedCommunities?.toTfJson(),
    'advertised_public_prefixes': advertisedPublicPrefixes.toTfJson(),
    'customer_asn': ?customerAsn?.toTfJson(),
    'routing_registry_name': ?routingRegistryName?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_express_route_circuit_peering`.
final class AzurermExpressRouteCircuitPeering extends Resource {
  static const String tfType = 'azurerm_express_route_circuit_peering';

  AzurermExpressRouteCircuitPeering(
    super.localName, {
    required TfArg<String> expressRouteCircuitName,
    TfArg<bool>? ipv4Enabled,
    TfArg<num>? peerAsn,
    required TfArg<String> peeringType,
    TfArg<String>? primaryPeerAddressPrefix,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? routeFilterId,
    TfArg<String>? secondaryPeerAddressPrefix,
    Sensitive<String>? sharedKey,
    required TfArg<num> vlanId,
    ExpressRouteCircuitPeeringIpv6? ipv6,
    ExpressRouteCircuitPeeringMicrosoftPeeringConfig? microsoftPeeringConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'express_route_circuit_name': expressRouteCircuitName,
           'ipv4_enabled': ?ipv4Enabled,
           'peer_asn': ?peerAsn,
           'peering_type': peeringType,
           'primary_peer_address_prefix': ?primaryPeerAddressPrefix,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'route_filter_id': ?routeFilterId,
           'secondary_peer_address_prefix': ?secondaryPeerAddressPrefix,
           'shared_key': ?sharedKey,
           'vlan_id': vlanId,
           if (ipv6 != null) 'ipv6': TfArg.literal(ipv6.encode()),
           if (microsoftPeeringConfig != null)
             'microsoft_peering_config': TfArg.literal(
               microsoftPeeringConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermExpressRouteCircuitPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRouteCircuitPeering>`.
  RefTo<AzurermExpressRouteCircuitPeering> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azure_asn` attribute.
  TfRef<num> get azureAsn => TfRef.attribute<num>(this, 'azure_asn');

  /// Reference to `gateway_manager_etag` attribute.
  TfRef<String> get gatewayManagerEtag =>
      TfRef.attribute<String>(this, 'gateway_manager_etag');

  /// Reference to `primary_azure_port` attribute.
  TfRef<String> get primaryAzurePort =>
      TfRef.attribute<String>(this, 'primary_azure_port');

  /// Reference to `secondary_azure_port` attribute.
  TfRef<String> get secondaryAzurePort =>
      TfRef.attribute<String>(this, 'secondary_azure_port');

  /// Reference to `express_route_circuit_name` attribute.
  TfRef<String> get expressRouteCircuitName =>
      TfRef.attribute<String>(this, 'express_route_circuit_name');

  /// Reference to `ipv4_enabled` attribute.
  TfRef<bool> get ipv4Enabled => TfRef.attribute<bool>(this, 'ipv4_enabled');

  /// Reference to `peer_asn` attribute.
  TfRef<num> get peerAsn => TfRef.attribute<num>(this, 'peer_asn');

  /// Reference to `peering_type` attribute.
  TfRef<String> get peeringType =>
      TfRef.attribute<String>(this, 'peering_type');

  /// Reference to `primary_peer_address_prefix` attribute.
  TfRef<String> get primaryPeerAddressPrefix =>
      TfRef.attribute<String>(this, 'primary_peer_address_prefix');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `route_filter_id` attribute.
  TfRef<String> get routeFilterId =>
      TfRef.attribute<String>(this, 'route_filter_id');

  /// Reference to `secondary_peer_address_prefix` attribute.
  TfRef<String> get secondaryPeerAddressPrefix =>
      TfRef.attribute<String>(this, 'secondary_peer_address_prefix');

  /// Reference to `shared_key` attribute.
  TfRef<String> get sharedKey => TfRef.attribute<String>(this, 'shared_key');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanId => TfRef.attribute<num>(this, 'vlan_id');
}
