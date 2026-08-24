// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer`.
const Set<String> _cloudflareLoadBalancerSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancer`.
///
/// Accepted Permissions
///
/// - `Load Balancers Read` - `Load Balancers Write`
final class DataCloudflareLoadBalancer extends Data {
  static const String tfType = 'cloudflare_load_balancer';

  DataCloudflareLoadBalancer({
    required super.localName,
    required TfArg<String> loadBalancerId,
    TfArg<Map<String, List<String>>>? popPools,
    TfArg<Map<String, List<String>>>? regionPools,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'load_balancer_id': loadBalancerId,
           if (popPools != null) 'pop_pools': popPools,
           if (regionPools != null) 'region_pools': regionPools,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `country_pools` attribute.
  TfRef<Map<String, List<String>>> get countryPools =>
      TfRef.attribute<Map<String, List<String>>>(this, 'country_pools');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `default_pools` attribute.
  TfRef<List<String>> get defaultPools =>
      TfRef.attribute<List<String>>(this, 'default_pools');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `fallback_pool` attribute.
  TfRef<String> get fallbackPool =>
      TfRef.attribute<String>(this, 'fallback_pool');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `networks` attribute.
  TfRef<List<String>> get networks =>
      TfRef.attribute<List<String>>(this, 'networks');

  /// Reference to `proxied` attribute.
  TfRef<bool> get proxied => TfRef.attribute<bool>(this, 'proxied');

  /// Reference to `session_affinity` attribute.
  TfRef<String> get sessionAffinity =>
      TfRef.attribute<String>(this, 'session_affinity');

  /// Reference to `session_affinity_ttl` attribute.
  TfRef<num> get sessionAffinityTtl =>
      TfRef.attribute<num>(this, 'session_affinity_ttl');

  /// Reference to `steering_policy` attribute.
  TfRef<String> get steeringPolicy =>
      TfRef.attribute<String>(this, 'steering_policy');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');
}
