// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_load_balancer`.
const Set<String> _cloudflareLoadBalancerSensitive = <String>{};

/// Load Balancer Session enum for `session_affinity`.
extension type const LoadBalancerSessionAffinity._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerSessionAffinity.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerSessionAffinity.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerSessionAffinity.arg(TfArg<String> arg) : this._(arg);

  static const none = LoadBalancerSessionAffinity._(TfArgLiteral('none'));
  static const cookie = LoadBalancerSessionAffinity._(TfArgLiteral('cookie'));
  static const ipCookie = LoadBalancerSessionAffinity._(
    TfArgLiteral('ip_cookie'),
  );
  static const header = LoadBalancerSessionAffinity._(TfArgLiteral('header'));

  static const List<LoadBalancerSessionAffinity> values = [
    none,
    cookie,
    ipCookie,
    header,
  ];
}

/// Load Balancer Steering enum for `steering_policy`.
extension type const LoadBalancerSteeringPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerSteeringPolicy.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerSteeringPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerSteeringPolicy.arg(TfArg<String> arg) : this._(arg);

  static const off = LoadBalancerSteeringPolicy._(TfArgLiteral('off'));
  static const geo = LoadBalancerSteeringPolicy._(TfArgLiteral('geo'));
  static const random = LoadBalancerSteeringPolicy._(TfArgLiteral('random'));
  static const dynamicLatency = LoadBalancerSteeringPolicy._(
    TfArgLiteral('dynamic_latency'),
  );
  static const proximity = LoadBalancerSteeringPolicy._(
    TfArgLiteral('proximity'),
  );
  static const leastOutstandingRequests = LoadBalancerSteeringPolicy._(
    TfArgLiteral('least_outstanding_requests'),
  );
  static const leastConnections = LoadBalancerSteeringPolicy._(
    TfArgLiteral('least_connections'),
  );
  static const empty = LoadBalancerSteeringPolicy._(TfArgLiteral(''));

  static const List<LoadBalancerSteeringPolicy> values = [
    off,
    geo,
    random,
    dynamicLatency,
    proximity,
    leastOutstandingRequests,
    leastConnections,
    empty,
  ];
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

  final LoadBalancerMode? mode;

  final LoadBalancerPreferEcs? preferEcs;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'prefer_ecs': ?preferEcs?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const LoadBalancerMode._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerMode.variable(String name) : this._(TfArg.variable(name));
  LoadBalancerMode.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerMode.arg(TfArg<String> arg) : this._(arg);

  static const pop = LoadBalancerMode._(TfArgLiteral('pop'));
  static const resolverIp = LoadBalancerMode._(TfArgLiteral('resolver_ip'));

  static const List<LoadBalancerMode> values = [pop, resolverIp];
}

/// `prefer_ecs` — derived from the provider schema description.
extension type const LoadBalancerPreferEcs._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerPreferEcs.variable(String name) : this._(TfArg.variable(name));
  LoadBalancerPreferEcs.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerPreferEcs.arg(TfArg<String> arg) : this._(arg);

  static const always = LoadBalancerPreferEcs._(TfArgLiteral('always'));
  static const never = LoadBalancerPreferEcs._(TfArgLiteral('never'));
  static const proximity = LoadBalancerPreferEcs._(TfArgLiteral('proximity'));
  static const geo = LoadBalancerPreferEcs._(TfArgLiteral('geo'));

  static const List<LoadBalancerPreferEcs> values = [
    always,
    never,
    proximity,
    geo,
  ];
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

  final LoadBalancerOverridesSessionAffinity? sessionAffinity;

  final TfArg<num>? sessionAffinityTtl;

  final LoadBalancerOverridesSteeringPolicy? steeringPolicy;

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
extension type const LoadBalancerOverridesSessionAffinity._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerOverridesSessionAffinity.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerOverridesSessionAffinity.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerOverridesSessionAffinity.arg(TfArg<String> arg)
    : this._(arg);

  static const none = LoadBalancerOverridesSessionAffinity._(
    TfArgLiteral('none'),
  );
  static const cookie = LoadBalancerOverridesSessionAffinity._(
    TfArgLiteral('cookie'),
  );
  static const ipCookie = LoadBalancerOverridesSessionAffinity._(
    TfArgLiteral('ip_cookie'),
  );
  static const header = LoadBalancerOverridesSessionAffinity._(
    TfArgLiteral('header'),
  );

  static const List<LoadBalancerOverridesSessionAffinity> values = [
    none,
    cookie,
    ipCookie,
    header,
  ];
}

/// `steering_policy` — derived from the provider schema description.
extension type const LoadBalancerOverridesSteeringPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerOverridesSteeringPolicy.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerOverridesSteeringPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerOverridesSteeringPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const off = LoadBalancerOverridesSteeringPolicy._(TfArgLiteral('off'));
  static const geo = LoadBalancerOverridesSteeringPolicy._(TfArgLiteral('geo'));
  static const random = LoadBalancerOverridesSteeringPolicy._(
    TfArgLiteral('random'),
  );
  static const dynamicLatency = LoadBalancerOverridesSteeringPolicy._(
    TfArgLiteral('dynamic_latency'),
  );
  static const proximity = LoadBalancerOverridesSteeringPolicy._(
    TfArgLiteral('proximity'),
  );
  static const leastOutstandingRequests = LoadBalancerOverridesSteeringPolicy._(
    TfArgLiteral('least_outstanding_requests'),
  );
  static const leastConnections = LoadBalancerOverridesSteeringPolicy._(
    TfArgLiteral('least_connections'),
  );
  static const empty = LoadBalancerOverridesSteeringPolicy._(TfArgLiteral(''));

  static const List<LoadBalancerOverridesSteeringPolicy> values = [
    off,
    geo,
    random,
    dynamicLatency,
    proximity,
    leastOutstandingRequests,
    leastConnections,
    empty,
  ];
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

  final LoadBalancerSamesite? samesite;

  final LoadBalancerSecure? secure;

  final LoadBalancerZeroDowntimeFailover? zeroDowntimeFailover;

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
extension type const LoadBalancerSamesite._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerSamesite.variable(String name) : this._(TfArg.variable(name));
  LoadBalancerSamesite.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerSamesite.arg(TfArg<String> arg) : this._(arg);

  static const auto = LoadBalancerSamesite._(TfArgLiteral('Auto'));
  static const lax = LoadBalancerSamesite._(TfArgLiteral('Lax'));
  static const none = LoadBalancerSamesite._(TfArgLiteral('None'));
  static const strict = LoadBalancerSamesite._(TfArgLiteral('Strict'));

  static const List<LoadBalancerSamesite> values = [auto, lax, none, strict];
}

/// `secure` — derived from the provider schema description.
extension type const LoadBalancerSecure._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerSecure.variable(String name) : this._(TfArg.variable(name));
  LoadBalancerSecure.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerSecure.arg(TfArg<String> arg) : this._(arg);

  static const auto = LoadBalancerSecure._(TfArgLiteral('Auto'));
  static const always = LoadBalancerSecure._(TfArgLiteral('Always'));
  static const never = LoadBalancerSecure._(TfArgLiteral('Never'));

  static const List<LoadBalancerSecure> values = [auto, always, never];
}

/// `zero_downtime_failover` — derived from the provider schema description.
extension type const LoadBalancerZeroDowntimeFailover._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerZeroDowntimeFailover.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerZeroDowntimeFailover.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerZeroDowntimeFailover.arg(TfArg<String> arg) : this._(arg);

  static const none = LoadBalancerZeroDowntimeFailover._(TfArgLiteral('none'));
  static const temporary = LoadBalancerZeroDowntimeFailover._(
    TfArgLiteral('temporary'),
  );
  static const sticky = LoadBalancerZeroDowntimeFailover._(
    TfArgLiteral('sticky'),
  );

  static const List<LoadBalancerZeroDowntimeFailover> values = [
    none,
    temporary,
    sticky,
  ];
}

/// Factory wrapper for `cloudflare_load_balancer`.
///
/// Accepted Permissions
///
/// - `Load Balancers Read` - `Load Balancers Write`
final class CloudflareLoadBalancer extends Resource {
  static const String tfType = 'cloudflare_load_balancer';

  CloudflareLoadBalancer(
    super.localName, {
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
    LoadBalancerSessionAffinity? sessionAffinity,
    TfArg<num>? sessionAffinityTtl,
    LoadBalancerSteeringPolicy? steeringPolicy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');

  /// Reference to `country_pools` attribute.
  TfRef<Map<String, List<String>>> get countryPools =>
      TfRef.attribute<Map<String, List<String>>>(this, 'country_pools');

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

  /// Reference to `networks` attribute.
  TfRef<List<String>> get networks =>
      TfRef.attribute<List<String>>(this, 'networks');

  /// Reference to `pop_pools` attribute.
  TfRef<Map<String, List<String>>> get popPools =>
      TfRef.attribute<Map<String, List<String>>>(this, 'pop_pools');

  /// Reference to `proxied` attribute.
  TfRef<bool> get proxied => TfRef.attribute<bool>(this, 'proxied');

  /// Reference to `region_pools` attribute.
  TfRef<Map<String, List<String>>> get regionPools =>
      TfRef.attribute<Map<String, List<String>>>(this, 'region_pools');

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

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
