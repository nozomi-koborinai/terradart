// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_resolver_forwarding_rule.dart';

/// Sensitive field paths for `azurerm_private_dns_resolver_forwarding_rule`.
const Set<String> _azurermPrivateDnsResolverForwardingRuleSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver_forwarding_rule`.
final class DataAzurermPrivateDnsResolverForwardingRule extends Data {
  static const String tfType = 'azurerm_private_dns_resolver_forwarding_rule';

  DataAzurermPrivateDnsResolverForwardingRule(
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
      _azurermPrivateDnsResolverForwardingRuleSensitive;

  /// A reference to the `azurerm_private_dns_resolver_forwarding_rule` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsResolverForwardingRule>`.
  RefTo<AzurermPrivateDnsResolverForwardingRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `target_dns_servers` attribute.
  TfRef<List<Map<String, Object?>>> get targetDnsServers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_dns_servers');

  /// Reference to `dns_forwarding_ruleset_id` attribute.
  TfRef<String> get dnsForwardingRulesetId =>
      TfRef.attribute<String>(this, 'dns_forwarding_ruleset_id');
}
