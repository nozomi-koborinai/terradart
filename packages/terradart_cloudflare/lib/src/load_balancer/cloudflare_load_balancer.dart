// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer`.
const Set<String> _cloudflareLoadBalancerSensitive = <String>{};

/// Typed helper for the `adaptive_routing` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerAdaptiveRouting {
  const LoadBalancerAdaptiveRouting({this.failoverAcrossPools});

  final TfArg<bool>? failoverAcrossPools;

  Map<String, Object?> encode() => {
    if (failoverAcrossPools != null)
      'failover_across_pools': failoverAcrossPools!.toTfJson(),
  };
}

/// Typed helper for the `location_strategy` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerLocationStrategy {
  const LoadBalancerLocationStrategy({this.mode, this.preferEcs});

  final TfArg<String>? mode;

  final TfArg<String>? preferEcs;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (preferEcs != null) 'prefer_ecs': preferEcs!.toTfJson(),
  };
}

/// Typed helper for the `random_steering` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRandomSteering {
  const LoadBalancerRandomSteering({this.defaultWeight, this.poolWeights});

  final TfArg<num>? defaultWeight;

  final TfArg<Map<String, num>>? poolWeights;

  Map<String, Object?> encode() => {
    if (defaultWeight != null) 'default_weight': defaultWeight!.toTfJson(),
    if (poolWeights != null) 'pool_weights': poolWeights!.toTfJson(),
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

  final LoadBalancerRulesFixedResponse? fixedResponse;

  final LoadBalancerRulesOverrides? overrides;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (terminates != null) 'terminates': terminates!.toTfJson(),
    if (fixedResponse != null) 'fixed_response': fixedResponse!.encode(),
    if (overrides != null) 'overrides': overrides!.encode(),
  };
}

/// Typed helper for the `rules.fixed_response` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRulesFixedResponse {
  const LoadBalancerRulesFixedResponse({
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
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (messageBody != null) 'message_body': messageBody!.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
  };
}

/// Typed helper for the `rules.overrides` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRulesOverrides {
  const LoadBalancerRulesOverrides({
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

  final TfArg<List<Object?>>? defaultPools;

  final TfArg<String>? fallbackPool;

  final TfArg<Map<String, dynamic>>? popPools;

  final TfArg<Map<String, dynamic>>? regionPools;

  final TfArg<String>? sessionAffinity;

  final TfArg<num>? sessionAffinityTtl;

  final TfArg<String>? steeringPolicy;

  final TfArg<num>? ttl;

  final LoadBalancerRulesOverridesAdaptiveRouting? adaptiveRouting;

  final LoadBalancerRulesOverridesLocationStrategy? locationStrategy;

  final LoadBalancerRulesOverridesRandomSteering? randomSteering;

  final LoadBalancerRulesOverridesSessionAffinityAttributes?
  sessionAffinityAttributes;

  Map<String, Object?> encode() => {
    if (countryPools != null) 'country_pools': countryPools!.toTfJson(),
    if (defaultPools != null) 'default_pools': defaultPools!.toTfJson(),
    if (fallbackPool != null) 'fallback_pool': fallbackPool!.toTfJson(),
    if (popPools != null) 'pop_pools': popPools!.toTfJson(),
    if (regionPools != null) 'region_pools': regionPools!.toTfJson(),
    if (sessionAffinity != null)
      'session_affinity': sessionAffinity!.toTfJson(),
    if (sessionAffinityTtl != null)
      'session_affinity_ttl': sessionAffinityTtl!.toTfJson(),
    if (steeringPolicy != null) 'steering_policy': steeringPolicy!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
    if (adaptiveRouting != null) 'adaptive_routing': adaptiveRouting!.encode(),
    if (locationStrategy != null)
      'location_strategy': locationStrategy!.encode(),
    if (randomSteering != null) 'random_steering': randomSteering!.encode(),
    if (sessionAffinityAttributes != null)
      'session_affinity_attributes': sessionAffinityAttributes!.encode(),
  };
}

/// Typed helper for the `rules.overrides.adaptive_routing` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRulesOverridesAdaptiveRouting {
  const LoadBalancerRulesOverridesAdaptiveRouting({this.failoverAcrossPools});

  final TfArg<bool>? failoverAcrossPools;

  Map<String, Object?> encode() => {
    if (failoverAcrossPools != null)
      'failover_across_pools': failoverAcrossPools!.toTfJson(),
  };
}

/// Typed helper for the `rules.overrides.location_strategy` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRulesOverridesLocationStrategy {
  const LoadBalancerRulesOverridesLocationStrategy({this.mode, this.preferEcs});

  final TfArg<String>? mode;

  final TfArg<String>? preferEcs;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (preferEcs != null) 'prefer_ecs': preferEcs!.toTfJson(),
  };
}

/// Typed helper for the `rules.overrides.random_steering` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRulesOverridesRandomSteering {
  const LoadBalancerRulesOverridesRandomSteering({
    this.defaultWeight,
    this.poolWeights,
  });

  final TfArg<num>? defaultWeight;

  final TfArg<Map<String, num>>? poolWeights;

  Map<String, Object?> encode() => {
    if (defaultWeight != null) 'default_weight': defaultWeight!.toTfJson(),
    if (poolWeights != null) 'pool_weights': poolWeights!.toTfJson(),
  };
}

/// Typed helper for the `rules.overrides.session_affinity_attributes` block of
/// `cloudflare_load_balancer` (derived from provider schema).
@immutable
final class LoadBalancerRulesOverridesSessionAffinityAttributes {
  const LoadBalancerRulesOverridesSessionAffinityAttributes({
    this.drainDuration,
    this.headers,
    this.requireAllHeaders,
    this.samesite,
    this.secure,
    this.zeroDowntimeFailover,
  });

  final TfArg<num>? drainDuration;

  final TfArg<List<Object?>>? headers;

  final TfArg<bool>? requireAllHeaders;

  final TfArg<String>? samesite;

  final TfArg<String>? secure;

  final TfArg<String>? zeroDowntimeFailover;

  Map<String, Object?> encode() => {
    if (drainDuration != null) 'drain_duration': drainDuration!.toTfJson(),
    if (headers != null) 'headers': headers!.toTfJson(),
    if (requireAllHeaders != null)
      'require_all_headers': requireAllHeaders!.toTfJson(),
    if (samesite != null) 'samesite': samesite!.toTfJson(),
    if (secure != null) 'secure': secure!.toTfJson(),
    if (zeroDowntimeFailover != null)
      'zero_downtime_failover': zeroDowntimeFailover!.toTfJson(),
  };
}

/// Typed helper for the `session_affinity_attributes` block of
/// `cloudflare_load_balancer` (derived from provider schema).
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

  final TfArg<List<Object?>>? headers;

  final TfArg<bool>? requireAllHeaders;

  final TfArg<String>? samesite;

  final TfArg<String>? secure;

  final TfArg<String>? zeroDowntimeFailover;

  Map<String, Object?> encode() => {
    if (drainDuration != null) 'drain_duration': drainDuration!.toTfJson(),
    if (headers != null) 'headers': headers!.toTfJson(),
    if (requireAllHeaders != null)
      'require_all_headers': requireAllHeaders!.toTfJson(),
    if (samesite != null) 'samesite': samesite!.toTfJson(),
    if (secure != null) 'secure': secure!.toTfJson(),
    if (zeroDowntimeFailover != null)
      'zero_downtime_failover': zeroDowntimeFailover!.toTfJson(),
  };
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
    TfArg<String>? sessionAffinity,
    TfArg<num>? sessionAffinityTtl,
    TfArg<String>? steeringPolicy,
    TfArg<num>? ttl,
    required TfArg<String> zoneId,
    LoadBalancerAdaptiveRouting? adaptiveRouting,
    LoadBalancerLocationStrategy? locationStrategy,
    LoadBalancerRandomSteering? randomSteering,
    List<LoadBalancerRules>? rules,
    LoadBalancerSessionAffinityAttributes? sessionAffinityAttributes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (countryPools != null) 'country_pools': countryPools,
           'default_pools': defaultPools,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           'fallback_pool': fallbackPool,
           'name': name,
           if (networks != null) 'networks': networks,
           if (popPools != null) 'pop_pools': popPools,
           if (proxied != null) 'proxied': proxied,
           if (regionPools != null) 'region_pools': regionPools,
           if (sessionAffinity != null) 'session_affinity': sessionAffinity,
           if (sessionAffinityTtl != null)
             'session_affinity_ttl': sessionAffinityTtl,
           if (steeringPolicy != null) 'steering_policy': steeringPolicy,
           if (ttl != null) 'ttl': ttl,
           'zone_id': zoneId,
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
}
