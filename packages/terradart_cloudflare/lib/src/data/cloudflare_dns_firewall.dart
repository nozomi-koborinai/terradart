// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_firewall`.
const Set<String> _cloudflareDnsFirewallSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_firewall`.
///
/// Accepted Permissions
///
/// - `DNS Firewall Read` - `DNS Firewall Write`
final class DataCloudflareDnsFirewall extends Data {
  static const String tfType = 'cloudflare_dns_firewall';

  DataCloudflareDnsFirewall({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> dnsFirewallId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'dns_firewall_id': dnsFirewallId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsFirewallSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deprecate_any_requests` attribute.
  TfRef<bool> get deprecateAnyRequests =>
      TfRef.attribute<bool>(this, 'deprecate_any_requests');

  /// Reference to `dns_firewall_ips` attribute.
  TfRef<List<String>> get dnsFirewallIps =>
      TfRef.attribute<List<String>>(this, 'dns_firewall_ips');

  /// Reference to `ecs_fallback` attribute.
  TfRef<bool> get ecsFallback => TfRef.attribute<bool>(this, 'ecs_fallback');

  /// Reference to `maximum_cache_ttl` attribute.
  TfRef<num> get maximumCacheTtl =>
      TfRef.attribute<num>(this, 'maximum_cache_ttl');

  /// Reference to `minimum_cache_ttl` attribute.
  TfRef<num> get minimumCacheTtl =>
      TfRef.attribute<num>(this, 'minimum_cache_ttl');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

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
