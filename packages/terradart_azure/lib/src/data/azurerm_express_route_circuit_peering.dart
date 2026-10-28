// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../express/azurerm_express_route_circuit_peering.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_circuit_peering`.
const Set<String> _azurermExpressRouteCircuitPeeringSensitive = <String>{};

/// Data Express Route Circuit Peering enum for `peering_type`.
extension type const DataExpressRouteCircuitPeeringType._(TfArg<String> _)
    implements TfArg<String> {
  DataExpressRouteCircuitPeeringType.variable(String name)
    : this._(TfArg.variable(name));
  DataExpressRouteCircuitPeeringType.expression(String template)
    : this._(TfArg.expression(template));
  const DataExpressRouteCircuitPeeringType.arg(TfArg<String> arg) : this._(arg);

  static const azureprivatepeering = DataExpressRouteCircuitPeeringType._(
    TfArgLiteral('AzurePrivatePeering'),
  );
  static const azurepublicpeering = DataExpressRouteCircuitPeeringType._(
    TfArgLiteral('AzurePublicPeering'),
  );
  static const microsoftpeering = DataExpressRouteCircuitPeeringType._(
    TfArgLiteral('MicrosoftPeering'),
  );

  static const List<DataExpressRouteCircuitPeeringType> values = [
    azureprivatepeering,
    azurepublicpeering,
    microsoftpeering,
  ];
}

/// Factory wrapper for `azurerm_express_route_circuit_peering`.
final class DataAzurermExpressRouteCircuitPeering extends Data {
  static const String tfType = 'azurerm_express_route_circuit_peering';

  DataAzurermExpressRouteCircuitPeering(
    super.localName, {
    required TfArg<String> expressRouteCircuitName,
    required DataExpressRouteCircuitPeeringType peeringType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'express_route_circuit_name': expressRouteCircuitName,
           'peering_type': peeringType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermExpressRouteCircuitPeeringSensitive;

  /// A reference to the `azurerm_express_route_circuit_peering` this data source reads, for
  /// arguments typed `RefTo<AzurermExpressRouteCircuitPeering>`.
  RefTo<AzurermExpressRouteCircuitPeering> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azure_asn` attribute.
  TfRef<num> get azureAsn => TfRef.attribute<num>(this, 'azure_asn');

  /// Reference to `gateway_manager_etag` attribute.
  TfRef<String> get gatewayManagerEtag =>
      TfRef.attribute<String>(this, 'gateway_manager_etag');

  /// Reference to `ipv4_enabled` attribute.
  TfRef<bool> get ipv4Enabled => TfRef.attribute<bool>(this, 'ipv4_enabled');

  /// Reference to `ipv6` attribute.
  TfRef<List<Map<String, Object?>>> get ipv6 =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipv6');

  /// Reference to `microsoft_peering_config` attribute.
  TfRef<List<Map<String, Object?>>> get microsoftPeeringConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'microsoft_peering_config',
      );

  /// Reference to `peer_asn` attribute.
  TfRef<num> get peerAsn => TfRef.attribute<num>(this, 'peer_asn');

  /// Reference to `primary_azure_port` attribute.
  TfRef<String> get primaryAzurePort =>
      TfRef.attribute<String>(this, 'primary_azure_port');

  /// Reference to `primary_peer_address_prefix` attribute.
  TfRef<String> get primaryPeerAddressPrefix =>
      TfRef.attribute<String>(this, 'primary_peer_address_prefix');

  /// Reference to `route_filter_id` attribute.
  TfRef<String> get routeFilterId =>
      TfRef.attribute<String>(this, 'route_filter_id');

  /// Reference to `secondary_azure_port` attribute.
  TfRef<String> get secondaryAzurePort =>
      TfRef.attribute<String>(this, 'secondary_azure_port');

  /// Reference to `secondary_peer_address_prefix` attribute.
  TfRef<String> get secondaryPeerAddressPrefix =>
      TfRef.attribute<String>(this, 'secondary_peer_address_prefix');

  /// Reference to `shared_key` attribute.
  TfRef<String> get sharedKey => TfRef.attribute<String>(this, 'shared_key');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanId => TfRef.attribute<num>(this, 'vlan_id');

  /// Reference to `express_route_circuit_name` attribute.
  TfRef<String> get expressRouteCircuitName =>
      TfRef.attribute<String>(this, 'express_route_circuit_name');

  /// Reference to `peering_type` attribute.
  TfRef<String> get peeringType =>
      TfRef.attribute<String>(this, 'peering_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
