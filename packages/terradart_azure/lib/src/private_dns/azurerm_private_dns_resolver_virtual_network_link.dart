// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;

/// Sensitive field paths for `azurerm_private_dns_resolver_virtual_network_link`.
const Set<String> _azurermPrivateDnsResolverVirtualNetworkLinkSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver_virtual_network_link`.
final class AzurermPrivateDnsResolverVirtualNetworkLink extends Resource {
  static const String tfType =
      'azurerm_private_dns_resolver_virtual_network_link';

  AzurermPrivateDnsResolverVirtualNetworkLink(
    super.localName, {
    required TfArg<String> dnsForwardingRulesetId,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermVirtualNetwork> virtualNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_forwarding_ruleset_id': dnsForwardingRulesetId,
           'metadata': ?metadata,
           'name': name,
           'virtual_network_id': virtualNetworkId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverVirtualNetworkLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsResolverVirtualNetworkLink>`.
  RefTo<AzurermPrivateDnsResolverVirtualNetworkLink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_forwarding_ruleset_id` attribute.
  TfRef<String> get dnsForwardingRulesetId =>
      TfRef.attribute<String>(this, 'dns_forwarding_ruleset_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
