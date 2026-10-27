// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_resolver_virtual_network_link.dart';

/// Sensitive field paths for `azurerm_private_dns_resolver_virtual_network_link`.
const Set<String> _azurermPrivateDnsResolverVirtualNetworkLinkSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver_virtual_network_link`.
final class DataAzurermPrivateDnsResolverVirtualNetworkLink extends Data {
  static const String tfType =
      'azurerm_private_dns_resolver_virtual_network_link';

  DataAzurermPrivateDnsResolverVirtualNetworkLink(
    super.localName, {
    required TfArg<String> dnsForwardingRulesetId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_forwarding_ruleset_id': dnsForwardingRulesetId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverVirtualNetworkLinkSensitive;

  /// A reference to the `azurerm_private_dns_resolver_virtual_network_link` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsResolverVirtualNetworkLink>`.
  RefTo<AzurermPrivateDnsResolverVirtualNetworkLink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `dns_forwarding_ruleset_id` attribute.
  TfRef<String> get dnsForwardingRulesetId =>
      TfRef.attribute<String>(this, 'dns_forwarding_ruleset_id');
}
