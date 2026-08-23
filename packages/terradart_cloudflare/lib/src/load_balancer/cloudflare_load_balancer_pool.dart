// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_pool`.
const Set<String> _cloudflareLoadBalancerPoolSensitive = <String>{};

/// Typed helper for the `load_shedding` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolLoadShedding {
  const LoadBalancerPoolLoadShedding({
    this.defaultPercent,
    this.defaultPolicy,
    this.sessionPercent,
    this.sessionPolicy,
  });

  final TfArg<num>? defaultPercent;

  final TfArg<String>? defaultPolicy;

  final TfArg<num>? sessionPercent;

  final TfArg<String>? sessionPolicy;

  Map<String, Object?> encode() => {
    if (defaultPercent != null) 'default_percent': defaultPercent!.toTfJson(),
    if (defaultPolicy != null) 'default_policy': defaultPolicy!.toTfJson(),
    if (sessionPercent != null) 'session_percent': sessionPercent!.toTfJson(),
    if (sessionPolicy != null) 'session_policy': sessionPolicy!.toTfJson(),
  };
}

/// Typed helper for the `notification_filter` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolNotificationFilter {
  const LoadBalancerPoolNotificationFilter({this.origin, this.pool});

  final LoadBalancerPoolNotificationFilterOrigin? origin;

  final LoadBalancerPoolNotificationFilterPool? pool;

  Map<String, Object?> encode() => {
    if (origin != null) 'origin': origin!.encode(),
    if (pool != null) 'pool': pool!.encode(),
  };
}

/// Typed helper for the `notification_filter.origin` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolNotificationFilterOrigin {
  const LoadBalancerPoolNotificationFilterOrigin({this.disable, this.healthy});

  final TfArg<bool>? disable;

  final TfArg<bool>? healthy;

  Map<String, Object?> encode() => {
    if (disable != null) 'disable': disable!.toTfJson(),
    if (healthy != null) 'healthy': healthy!.toTfJson(),
  };
}

/// Typed helper for the `notification_filter.pool` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolNotificationFilterPool {
  const LoadBalancerPoolNotificationFilterPool({this.disable, this.healthy});

  final TfArg<bool>? disable;

  final TfArg<bool>? healthy;

  Map<String, Object?> encode() => {
    if (disable != null) 'disable': disable!.toTfJson(),
    if (healthy != null) 'healthy': healthy!.toTfJson(),
  };
}

/// Typed helper for the `origin_steering` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolOriginSteering {
  const LoadBalancerPoolOriginSteering({this.policy});

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {
    if (policy != null) 'policy': policy!.toTfJson(),
  };
}

/// Typed helper for the `origins` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolOrigins {
  const LoadBalancerPoolOrigins({
    this.address,
    this.enabled,
    this.flattenCname,
    this.name,
    this.port,
    this.virtualNetworkId,
    this.weight,
    this.header,
  });

  final TfArg<String>? address;

  final TfArg<bool>? enabled;

  final TfArg<bool>? flattenCname;

  final TfArg<String>? name;

  final TfArg<num>? port;

  final TfArg<String>? virtualNetworkId;

  final TfArg<num>? weight;

  final LoadBalancerPoolOriginsHeader? header;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (flattenCname != null) 'flatten_cname': flattenCname!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (virtualNetworkId != null)
      'virtual_network_id': virtualNetworkId!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
    if (header != null) 'header': header!.encode(),
  };
}

/// Typed helper for the `origins.header` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolOriginsHeader {
  const LoadBalancerPoolOriginsHeader({this.host});

  final TfArg<List<Object?>>? host;

  Map<String, Object?> encode() => {if (host != null) 'host': host!.toTfJson()};
}

/// Factory wrapper for `cloudflare_load_balancer_pool`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class CloudflareLoadBalancerPool extends Resource {
  static const String tfType = 'cloudflare_load_balancer_pool';

  CloudflareLoadBalancerPool({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<List<String>>? checkRegions,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<num>? latitude,
    TfArg<num>? longitude,
    TfArg<num>? minimumOrigins,
    TfArg<String>? monitor,
    TfArg<String>? monitorGroup,
    required TfArg<String> name,
    TfArg<String>? notificationEmail,
    LoadBalancerPoolLoadShedding? loadShedding,
    LoadBalancerPoolNotificationFilter? notificationFilter,
    LoadBalancerPoolOriginSteering? originSteering,
    required List<LoadBalancerPoolOrigins> origins,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (checkRegions != null) 'check_regions': checkRegions,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           if (latitude != null) 'latitude': latitude,
           if (longitude != null) 'longitude': longitude,
           if (minimumOrigins != null) 'minimum_origins': minimumOrigins,
           if (monitor != null) 'monitor': monitor,
           if (monitorGroup != null) 'monitor_group': monitorGroup,
           'name': name,
           if (notificationEmail != null)
             'notification_email': notificationEmail,
           if (loadShedding != null)
             'load_shedding': TfArg.literal(loadShedding.encode()),
           if (notificationFilter != null)
             'notification_filter': TfArg.literal(notificationFilter.encode()),
           if (originSteering != null)
             'origin_steering': TfArg.literal(originSteering.encode()),
           'origins': TfArg.literal([for (final e in origins) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerPoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `disabled_at` attribute.
  TfRef<String> get disabledAt => TfRef.attribute<String>(this, 'disabled_at');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `networks` attribute.
  TfRef<List<String>> get networks =>
      TfRef.attribute<List<String>>(this, 'networks');
}
