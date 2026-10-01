// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    'enabled': ?enabled?.toTfJson(),
    'only_when_upstream_unhealthy': ?onlyWhenUpstreamUnhealthy?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_dns_firewall`.
///
/// Accepted Permissions
///
/// - `DNS Firewall Read` - `DNS Firewall Write`
final class CloudflareDnsFirewall extends Resource {
  static const String tfType = 'cloudflare_dns_firewall';

  CloudflareDnsFirewall(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'deprecate_any_requests': ?deprecateAnyRequests,
           'dns_firewall_ip_count': ?dnsFirewallIpCount,
           'ecs_fallback': ?ecsFallback,
           'maximum_cache_ttl': ?maximumCacheTtl,
           'minimum_cache_ttl': ?minimumCacheTtl,
           'name': name,
           'negative_cache_ttl': ?negativeCacheTtl,
           'ratelimit': ?ratelimit,
           'retries': ?retries,
           'upstream_ips': upstreamIps,
           if (attackMitigation != null)
             'attack_mitigation': TfArg.literal(attackMitigation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsFirewallSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareDnsFirewall>`.
  RefTo<CloudflareDnsFirewall> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_firewall_ips` attribute.
  TfRef<List<String>> get dnsFirewallIps =>
      TfRef.attribute<List<String>>(this, 'dns_firewall_ips');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `deprecate_any_requests` attribute.
  TfRef<bool> get deprecateAnyRequests =>
      TfRef.attribute<bool>(this, 'deprecate_any_requests');

  /// Reference to `dns_firewall_ip_count` attribute.
  TfRef<num> get dnsFirewallIpCount =>
      TfRef.attribute<num>(this, 'dns_firewall_ip_count');

  /// Reference to `ecs_fallback` attribute.
  TfRef<bool> get ecsFallback => TfRef.attribute<bool>(this, 'ecs_fallback');

  /// Reference to `maximum_cache_ttl` attribute.
  TfRef<num> get maximumCacheTtl =>
      TfRef.attribute<num>(this, 'maximum_cache_ttl');

  /// Reference to `minimum_cache_ttl` attribute.
  TfRef<num> get minimumCacheTtl =>
      TfRef.attribute<num>(this, 'minimum_cache_ttl');

  /// Reference to `negative_cache_ttl` attribute.
  TfRef<num> get negativeCacheTtl =>
      TfRef.attribute<num>(this, 'negative_cache_ttl');

  /// Reference to `ratelimit` attribute.
  TfRef<num> get ratelimit => TfRef.attribute<num>(this, 'ratelimit');

  /// Reference to `retries` attribute.
  TfRef<num> get retries => TfRef.attribute<num>(this, 'retries');

  /// Reference to `upstream_ips` attribute.
  TfRef<List<String>> get upstreamIps =>
      TfRef.attribute<List<String>>(this, 'upstream_ips');
}
