// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_hub_bgp_connection`.
const Set<String> _azurermVirtualHubBgpConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_hub_bgp_connection`.
final class AzurermVirtualHubBgpConnection extends Resource {
  static const String tfType = 'azurerm_virtual_hub_bgp_connection';

  AzurermVirtualHubBgpConnection(
    super.localName, {
    required TfArg<String> name,
    required TfArg<num> peerAsn,
    required TfArg<String> peerIp,
    required TfArg<String> virtualHubId,
    TfArg<String>? virtualNetworkConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'peer_asn': peerAsn,
           'peer_ip': peerIp,
           'virtual_hub_id': virtualHubId,
           'virtual_network_connection_id': ?virtualNetworkConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubBgpConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubBgpConnection>`.
  RefTo<AzurermVirtualHubBgpConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `peer_asn` attribute.
  TfRef<num> get peerAsn => TfRef.attribute<num>(this, 'peer_asn');

  /// Reference to `peer_ip` attribute.
  TfRef<String> get peerIp => TfRef.attribute<String>(this, 'peer_ip');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');

  /// Reference to `virtual_network_connection_id` attribute.
  TfRef<String> get virtualNetworkConnectionId =>
      TfRef.attribute<String>(this, 'virtual_network_connection_id');
}
