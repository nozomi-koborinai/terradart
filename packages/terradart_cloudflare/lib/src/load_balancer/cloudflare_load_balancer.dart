// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_load_balancer`.
const Set<String> _cloudflareLoadBalancerSensitive = <String>{};

/// Load Balancer Session enum for `session_affinity`.
enum LoadBalancerSessionAffinity implements TerraformEnum {
  none('none'),
  cookie('cookie'),
  ipCookie('ip_cookie'),
  header('header');

  const LoadBalancerSessionAffinity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Load Balancer Steering enum for `steering_policy`.
enum LoadBalancerSteeringPolicy implements TerraformEnum {
  off('off'),
  geo('geo'),
  random('random'),
  dynamicLatency('dynamic_latency'),
  proximity('proximity'),
  leastOutstandingRequests('least_outstanding_requests'),
  leastConnections('least_connections'),
  empty('');

  const LoadBalancerSteeringPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `adaptive_routing` block of
/// `cloudflare_load_balancer` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LoadBalancerAdaptiveRouting {
  const LoadBalancerAdaptiveRouting({this.failoverAcrossPools});

  final TfArg<bool>? failoverAcrossPools;

  Map<String, Object?> encode() => {
    'failover_across_pools': ?failoverAcrossPools?.toTfJson(),
  };
}

/// Typed helper for the `location_strategy` block of
/// `cloudflare_load_balancer` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LoadBalancerLocationStrategy {
  const LoadBalancerLocationStrategy({this.mode, this.preferEcs});

  final TfArg<LoadBalancerMode>? mode;

  final TfArg<LoadBalancerPreferEcs>? preferEcs;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'prefer_ecs': ?preferEcs?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum LoadBalancerMode implements TerraformEnum {
  pop('pop'),
  resolverIp('resolver_ip');

  const LoadBalancerMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `prefer_ecs` — derived from the provider schema description.
enum LoadBalancerPreferEcs implements TerraformEnum {
  always('always'),
  never('never'),
  proximity('proximity'),
  geo('geo');

  const LoadBalancerPreferEcs(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `random_steering` block of
/// `cloudflare_load_balancer` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LoadBalancerRandomSteering {
  const LoadBalancerRandomSteering({this.defaultWeight, this.poolWeights});

  final TfArg<num>? defaultWeight;

  final TfArg<Map<String, num>>? poolWeights;

  Map<String, Object?> encode() => {
    'default_weight': ?defaultWeight?.toTfJson(),
    'pool_weights': ?poolWeights?.toTfJson(),
  };
}

/// Typed helper for the `rules` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRules {
  const LoadBalancerRules({
    this.condition,
    this.disabled,
    this.name,
    this.priority,
    this.terminates,
    this.fixedResponse,
    this.overrides,
  });

  final TfArg<String>? condition;

  final TfArg<bool>? disabled;

  final TfArg<String>? name;

  final TfArg<num>? priority;

  final TfArg<bool>? terminates;

  final LoadBalancerFixedResponse? fixedResponse;

  final LoadBalancerOverrides? overrides;

  Map<String, Object?> encode() => {
    'condition': ?condition?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'name': ?name?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'terminates': ?terminates?.toTfJson(),
    'fixed_response': ?fixedResponse?.encode(),
    'overrides': ?overrides?.encode(),
  };
}

/// Typed helper for the `rules.fixed_response` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerFixedResponse {
  const LoadBalancerFixedResponse({
    this.contentType,
    this.location,
    this.messageBody,
    this.statusCode,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? location;

  final TfArg<String>? messageBody;

  final TfArg<num>? statusCode;

  Map<String, Object?> encode() => {
    'content_type': ?contentType?.toTfJson(),
    'location': ?location?.toTfJson(),
    'message_body': ?messageBody?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
  };
}

/// Typed helper for the `rules.overrides` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerOverrides {
  const LoadBalancerOverrides({
    this.countryPools,
    this.defaultPools,
    this.fallbackPool,
    this.popPools,
    this.regionPools,
    this.sessionAffinity,
    this.sessionAffinityTtl,
    this.steeringPolicy,
    this.ttl,
    this.adaptiveRouting,
    this.locationStrategy,
    this.randomSteering,
    this.sessionAffinityAttributes,
  });

  final TfArg<Map<String, dynamic>>? countryPools;

  final TfArg<List<String>>? defaultPools;

  final TfArg<String>? fallbackPool;

  final TfArg<Map<String, dynamic>>? popPools;

  final TfArg<Map<String, dynamic>>? regionPools;

  final TfArg<LoadBalancerOverridesSessionAffinity>? sessionAffinity;

  final TfArg<num>? sessionAffinityTtl;

  final TfArg<LoadBalancerOverridesSteeringPolicy>? steeringPolicy;

  final TfArg<num>? ttl;

  final LoadBalancerAdaptiveRouting? adaptiveRouting;

  final LoadBalancerLocationStrategy? locationStrategy;

  final LoadBalancerRandomSteering? randomSteering;

  final LoadBalancerSessionAffinityAttributes? sessionAffinityAttributes;

  Map<String, Object?> encode() => {
    'country_pools': ?countryPools?.toTfJson(),
    'default_pools': ?defaultPools?.toTfJson(),
    'fallback_pool': ?fallbackPool?.toTfJson(),
    'pop_pools': ?popPools?.toTfJson(),
    'region_pools': ?regionPools?.toTfJson(),
    'session_affinity': ?sessionAffinity?.toTfJson(),
    'session_affinity_ttl': ?sessionAffinityTtl?.toTfJson(),
    'steering_policy': ?steeringPolicy?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
    'adaptive_routing': ?adaptiveRouting?.encode(),
    'location_strategy': ?locationStrategy?.encode(),
    'random_steering': ?randomSteering?.encode(),
    'session_affinity_attributes': ?sessionAffinityAttributes?.encode(),
  };
}

/// `session_affinity` — derived from the provider schema description.
enum LoadBalancerOverridesSessionAffinity implements TerraformEnum {
  none('none'),
  cookie('cookie'),
  ipCookie('ip_cookie'),
  header('header');

  const LoadBalancerOverridesSessionAffinity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `steering_policy` — derived from the provider schema description.
enum LoadBalancerOverridesSteeringPolicy implements TerraformEnum {
  off('off'),
  geo('geo'),
  random('random'),
  dynamicLatency('dynamic_latency'),
  proximity('proximity'),
  leastOutstandingRequests('least_outstanding_requests'),
  leastConnections('least_connections'),
  empty('');

  const LoadBalancerOverridesSteeringPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `session_affinity_attributes` block of
/// `cloudflare_load_balancer` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LoadBalancerSessionAffinityAttributes {
  const LoadBalancerSessionAffinityAttributes({
    this.drainDuration,
    this.headers,
    this.requireAllHeaders,
    this.samesite,
    this.secure,
    this.zeroDowntimeFailover,
  });

  final TfArg<num>? drainDuration;

  final TfArg<List<String>>? headers;

  final TfArg<bool>? requireAllHeaders;

  final TfArg<LoadBalancerSamesite>? samesite;

  final TfArg<LoadBalancerSecure>? secure;

  final TfArg<LoadBalancerZeroDowntimeFailover>? zeroDowntimeFailover;

  Map<String, Object?> encode() => {
    'drain_duration': ?drainDuration?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'require_all_headers': ?requireAllHeaders?.toTfJson(),
    'samesite': ?samesite?.toTfJson(),
    'secure': ?secure?.toTfJson(),
    'zero_downtime_failover': ?zeroDowntimeFailover?.toTfJson(),
  };
}

/// `samesite` — derived from the provider schema description.
enum LoadBalancerSamesite implements TerraformEnum {
  auto('Auto'),
  lax('Lax'),
  none('None'),
  strict('Strict');

  const LoadBalancerSamesite(this.terraformValue);
  @override
  final String terraformValue;
}

/// `secure` — derived from the provider schema description.
enum LoadBalancerSecure implements TerraformEnum {
  auto('Auto'),
  always('Always'),
  never('Never');

  const LoadBalancerSecure(this.terraformValue);
  @override
  final String terraformValue;
}

/// `zero_downtime_failover` — derived from the provider schema description.
enum LoadBalancerZeroDowntimeFailover implements TerraformEnum {
  none('none'),
  temporary('temporary'),
  sticky('sticky');

  const LoadBalancerZeroDowntimeFailover(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_load_balancer`.
///
/// Accepted Permissions
///
/// - `Load Balancers Read` - `Load Balancers Write`
final class CloudflareLoadBalancer extends Resource {
  static const String tfType = 'cloudflare_load_balancer';

  CloudflareLoadBalancer({
    required super.localName,
    TfArg<Map<String, List<String>>>? countryPools,
    required TfArg<List<String>> defaultPools,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> fallbackPool,
    required TfArg<String> name,
    TfArg<List<String>>? networks,
    TfArg<Map<String, List<String>>>? popPools,
    TfArg<bool>? proxied,
    TfArg<Map<String, List<String>>>? regionPools,
    TfArg<LoadBalancerSessionAffinity>? sessionAffinity,
    TfArg<num>? sessionAffinityTtl,
    TfArg<LoadBalancerSteeringPolicy>? steeringPolicy,
    TfArg<num>? ttl,
    required RefTo<CloudflareZone> zoneId,
    LoadBalancerAdaptiveRouting? adaptiveRouting,
    LoadBalancerLocationStrategy? locationStrategy,
    LoadBalancerRandomSteering? randomSteering,
    List<LoadBalancerRules>? rules,
    LoadBalancerSessionAffinityAttributes? sessionAffinityAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'country_pools': ?countryPools,
           'default_pools': defaultPools,
           'description': ?description,
           'enabled': ?enabled,
           'fallback_pool': fallbackPool,
           'name': name,
           'networks': ?networks,
           'pop_pools': ?popPools,
           'proxied': ?proxied,
           'region_pools': ?regionPools,
           'session_affinity': ?sessionAffinity,
           'session_affinity_ttl': ?sessionAffinityTtl,
           'steering_policy': ?steeringPolicy,
           'ttl': ?ttl,
           'zone_id': zoneId.encodeAs('id'),
           if (adaptiveRouting != null)
             'adaptive_routing': TfArg.literal(adaptiveRouting.encode()),
           if (locationStrategy != null)
             'location_strategy': TfArg.literal(locationStrategy.encode()),
           if (randomSteering != null)
             'random_steering': TfArg.literal(randomSteering.encode()),
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (sessionAffinityAttributes != null)
             'session_affinity_attributes': TfArg.literal(
               sessionAffinityAttributes.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLoadBalancer>`.
  RefTo<CloudflareLoadBalancer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');

  /// Reference to `country_pools` attribute.
  TfRef<Map<String, List<String>>> get countryPoolsRef =>
      TfRef.attribute<Map<String, List<String>>>(this, 'country_pools');

  /// Reference to `default_pools` attribute.
  TfRef<List<String>> get defaultPoolsRef =>
      TfRef.attribute<List<String>>(this, 'default_pools');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `fallback_pool` attribute.
  TfRef<String> get fallbackPoolRef =>
      TfRef.attribute<String>(this, 'fallback_pool');

  /// Reference to `networks` attribute.
  TfRef<List<String>> get networksRef =>
      TfRef.attribute<List<String>>(this, 'networks');

  /// Reference to `pop_pools` attribute.
  TfRef<Map<String, List<String>>> get popPoolsRef =>
      TfRef.attribute<Map<String, List<String>>>(this, 'pop_pools');

  /// Reference to `proxied` attribute.
  TfRef<bool> get proxiedRef => TfRef.attribute<bool>(this, 'proxied');

  /// Reference to `region_pools` attribute.
  TfRef<Map<String, List<String>>> get regionPoolsRef =>
      TfRef.attribute<Map<String, List<String>>>(this, 'region_pools');

  /// Reference to `session_affinity` attribute.
  TfRef<String> get sessionAffinityRef =>
      TfRef.attribute<String>(this, 'session_affinity');

  /// Reference to `session_affinity_ttl` attribute.
  TfRef<num> get sessionAffinityTtlRef =>
      TfRef.attribute<num>(this, 'session_affinity_ttl');

  /// Reference to `steering_policy` attribute.
  TfRef<String> get steeringPolicyRef =>
      TfRef.attribute<String>(this, 'steering_policy');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttlRef => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
