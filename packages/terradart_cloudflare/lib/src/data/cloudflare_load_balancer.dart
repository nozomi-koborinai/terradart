// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../load_balancer/cloudflare_load_balancer.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'load_balancer_id': loadBalancerId,
           'pop_pools': ?popPools,
           'region_pools': ?regionPools,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerSensitive;

  /// A reference to the `cloudflare_load_balancer` this data source reads, for
  /// arguments typed `RefTo<CloudflareLoadBalancer>`.
  RefTo<CloudflareLoadBalancer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `load_balancer_id` attribute.
  TfRef<String> get loadBalancerId =>
      TfRef.attribute<String>(this, 'load_balancer_id');

  /// Reference to `pop_pools` attribute.
  TfRef<Map<String, List<String>>> get popPools =>
      TfRef.attribute<Map<String, List<String>>>(this, 'pop_pools');

  /// Reference to `region_pools` attribute.
  TfRef<Map<String, List<String>>> get regionPools =>
      TfRef.attribute<Map<String, List<String>>>(this, 'region_pools');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
