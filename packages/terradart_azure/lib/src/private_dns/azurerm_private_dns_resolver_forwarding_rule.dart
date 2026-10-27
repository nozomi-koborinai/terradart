// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_private_dns_resolver_forwarding_rule`.
const Set<String> _azurermPrivateDnsResolverForwardingRuleSensitive =
    <String>{};

/// Typed helper for the `target_dns_servers` block of
/// `azurerm_private_dns_resolver_forwarding_rule` (derived from provider schema).
@immutable
final class PrivateDnsResolverForwardingRuleTargetDnsServers {
  const PrivateDnsResolverForwardingRuleTargetDnsServers({
    required this.ipAddress,
    this.port,
  });

  final TfArg<String> ipAddress;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'ip_address': ipAddress.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_private_dns_resolver_forwarding_rule`.
final class AzurermPrivateDnsResolverForwardingRule extends Resource {
  static const String tfType = 'azurerm_private_dns_resolver_forwarding_rule';

  AzurermPrivateDnsResolverForwardingRule(
    super.localName, {
    required TfArg<String> dnsForwardingRulesetId,
    required TfArg<String> domainName,
    TfArg<bool>? enabled,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required List<PrivateDnsResolverForwardingRuleTargetDnsServers>
    targetDnsServers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_forwarding_ruleset_id': dnsForwardingRulesetId,
           'domain_name': domainName,
           'enabled': ?enabled,
           'metadata': ?metadata,
           'name': name,
           'target_dns_servers': TfArg.literal([
             for (final e in targetDnsServers) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverForwardingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsResolverForwardingRule>`.
  RefTo<AzurermPrivateDnsResolverForwardingRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_forwarding_ruleset_id` attribute.
  TfRef<String> get dnsForwardingRulesetId =>
      TfRef.attribute<String>(this, 'dns_forwarding_ruleset_id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');
}
