// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_firewall`.
const Set<String> _cloudflareDnsFirewallSensitive = <String>{};

/// Typed helper for the `attack_mitigation` block of
/// `cloudflare_dns_firewall` (derived from provider schema).
@immutable
final class DnsFirewallAttackMitigation {
  const DnsFirewallAttackMitigation({
    this.enabled,
    this.onlyWhenUpstreamUnhealthy,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? onlyWhenUpstreamUnhealthy;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (onlyWhenUpstreamUnhealthy != null)
      'only_when_upstream_unhealthy': onlyWhenUpstreamUnhealthy!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_dns_firewall`.
///
/// Accepted Permissions
///
/// - `DNS Firewall Read` - `DNS Firewall Write`
final class CloudflareDnsFirewall extends Resource {
  static const String tfType = 'cloudflare_dns_firewall';

  CloudflareDnsFirewall({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? deprecateAnyRequests,
    TfArg<num>? dnsFirewallIpCount,
    TfArg<bool>? ecsFallback,
    TfArg<num>? maximumCacheTtl,
    TfArg<num>? minimumCacheTtl,
    required TfArg<String> name,
    TfArg<num>? negativeCacheTtl,
    TfArg<num>? ratelimit,
    TfArg<num>? retries,
    required TfArg<List<String>> upstreamIps,
    DnsFirewallAttackMitigation? attackMitigation,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (deprecateAnyRequests != null)
             'deprecate_any_requests': deprecateAnyRequests,
           if (dnsFirewallIpCount != null)
             'dns_firewall_ip_count': dnsFirewallIpCount,
           if (ecsFallback != null) 'ecs_fallback': ecsFallback,
           if (maximumCacheTtl != null) 'maximum_cache_ttl': maximumCacheTtl,
           if (minimumCacheTtl != null) 'minimum_cache_ttl': minimumCacheTtl,
           'name': name,
           if (negativeCacheTtl != null) 'negative_cache_ttl': negativeCacheTtl,
           if (ratelimit != null) 'ratelimit': ratelimit,
           if (retries != null) 'retries': retries,
           'upstream_ips': upstreamIps,
           if (attackMitigation != null)
             'attack_mitigation': TfArg.literal(attackMitigation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsFirewallSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_firewall_ips` attribute.
  TfRef<List<String>> get dnsFirewallIps =>
      TfRef.attribute<List<String>>(this, 'dns_firewall_ips');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
