// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;

/// Sensitive field paths for `azurerm_virtual_network_dns_servers`.
const Set<String> _azurermVirtualNetworkDnsServersSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_network_dns_servers`.
final class AzurermVirtualNetworkDnsServers extends Resource {
  static const String tfType = 'azurerm_virtual_network_dns_servers';

  AzurermVirtualNetworkDnsServers(
    super.localName, {
    TfArg<List<String>>? dnsServers,
    required RefTo<AzurermVirtualNetwork> virtualNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_servers': ?dnsServers,
           'virtual_network_id': virtualNetworkId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualNetworkDnsServersSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualNetworkDnsServers>`.
  RefTo<AzurermVirtualNetworkDnsServers> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
