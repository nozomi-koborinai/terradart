// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_load_balancer_pool`.
const Set<String> _cloudflareLoadBalancerPoolSensitive = <String>{};

/// Load Balancer Pool Check enum for `check_regions`.
extension type const LoadBalancerPoolCheckRegions._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerPoolCheckRegions.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerPoolCheckRegions.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerPoolCheckRegions.arg(TfArg<String> arg) : this._(arg);

  static const wnam = LoadBalancerPoolCheckRegions._(TfArgLiteral('WNAM'));
  static const enam = LoadBalancerPoolCheckRegions._(TfArgLiteral('ENAM'));
  static const weu = LoadBalancerPoolCheckRegions._(TfArgLiteral('WEU'));
  static const eeu = LoadBalancerPoolCheckRegions._(TfArgLiteral('EEU'));
  static const nsam = LoadBalancerPoolCheckRegions._(TfArgLiteral('NSAM'));
  static const ssam = LoadBalancerPoolCheckRegions._(TfArgLiteral('SSAM'));
  static const oc = LoadBalancerPoolCheckRegions._(TfArgLiteral('OC'));
  static const me = LoadBalancerPoolCheckRegions._(TfArgLiteral('ME'));
  static const naf = LoadBalancerPoolCheckRegions._(TfArgLiteral('NAF'));
  static const saf = LoadBalancerPoolCheckRegions._(TfArgLiteral('SAF'));
  static const sas = LoadBalancerPoolCheckRegions._(TfArgLiteral('SAS'));
  static const seas = LoadBalancerPoolCheckRegions._(TfArgLiteral('SEAS'));
  static const neas = LoadBalancerPoolCheckRegions._(TfArgLiteral('NEAS'));
  static const china = LoadBalancerPoolCheckRegions._(TfArgLiteral('CHINA'));
  static const allRegions = LoadBalancerPoolCheckRegions._(
    TfArgLiteral('ALL_REGIONS'),
  );

  static const List<LoadBalancerPoolCheckRegions> values = [
    wnam,
    enam,
    weu,
    eeu,
    nsam,
    ssam,
    oc,
    me,
    naf,
    saf,
    sas,
    seas,
    neas,
    china,
    allRegions,
  ];
}

/// Load Balancer Pool Health enum for `health_sources`.
extension type const LoadBalancerPoolHealthSources._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerPoolHealthSources.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerPoolHealthSources.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerPoolHealthSources.arg(TfArg<String> arg) : this._(arg);

  static const local = LoadBalancerPoolHealthSources._(TfArgLiteral('local'));
  static const regional = LoadBalancerPoolHealthSources._(
    TfArgLiteral('regional'),
  );
  static const global = LoadBalancerPoolHealthSources._(TfArgLiteral('global'));

  static const List<LoadBalancerPoolHealthSources> values = [
    local,
    regional,
    global,
  ];
}

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

  final LoadBalancerPoolDefaultPolicy? defaultPolicy;

  final TfArg<num>? sessionPercent;

  final LoadBalancerPoolSessionPolicy? sessionPolicy;

  @internal
  Map<String, Object?> encode() => {
    'default_percent': ?defaultPercent?.toTfJson(),
    'default_policy': ?defaultPolicy?.toTfJson(),
    'session_percent': ?sessionPercent?.toTfJson(),
    'session_policy': ?sessionPolicy?.toTfJson(),
  };
}

/// `default_policy` — derived from the provider schema description.
extension type const LoadBalancerPoolDefaultPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerPoolDefaultPolicy.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerPoolDefaultPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerPoolDefaultPolicy.arg(TfArg<String> arg) : this._(arg);

  static const random = LoadBalancerPoolDefaultPolicy._(TfArgLiteral('random'));
  static const hash = LoadBalancerPoolDefaultPolicy._(TfArgLiteral('hash'));

  static const List<LoadBalancerPoolDefaultPolicy> values = [random, hash];
}

/// `session_policy` — derived from the provider schema description.
extension type const LoadBalancerPoolSessionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerPoolSessionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  LoadBalancerPoolSessionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerPoolSessionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const hash = LoadBalancerPoolSessionPolicy._(TfArgLiteral('hash'));

  static const List<LoadBalancerPoolSessionPolicy> values = [hash];
}

/// Typed helper for the `notification_filter` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolNotificationFilter {
  const LoadBalancerPoolNotificationFilter({this.origin, this.pool});

  final LoadBalancerPoolOrigin? origin;

  final LoadBalancerPool? pool;

  @internal
  Map<String, Object?> encode() => {
    'origin': ?origin?.encode(),
    'pool': ?pool?.encode(),
  };
}

/// Typed helper for the `notification_filter.origin` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolOrigin {
  const LoadBalancerPoolOrigin({this.disable, this.healthy});

  final TfArg<bool>? disable;

  final TfArg<bool>? healthy;

  @internal
  Map<String, Object?> encode() => {
    'disable': ?disable?.toTfJson(),
    'healthy': ?healthy?.toTfJson(),
  };
}

/// Typed helper for the `notification_filter.pool` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPool {
  const LoadBalancerPool({this.disable, this.healthy});

  final TfArg<bool>? disable;

  final TfArg<bool>? healthy;

  @internal
  Map<String, Object?> encode() => {
    'disable': ?disable?.toTfJson(),
    'healthy': ?healthy?.toTfJson(),
  };
}

/// Typed helper for the `origin_steering` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolOriginSteering {
  const LoadBalancerPoolOriginSteering({this.policy});

  final LoadBalancerPoolPolicy? policy;

  @internal
  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// `policy` — derived from the provider schema description.
extension type const LoadBalancerPoolPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerPoolPolicy.variable(String name) : this._(TfArg.variable(name));
  LoadBalancerPoolPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerPoolPolicy.arg(TfArg<String> arg) : this._(arg);

  static const random = LoadBalancerPoolPolicy._(TfArgLiteral('random'));
  static const hash = LoadBalancerPoolPolicy._(TfArgLiteral('hash'));
  static const leastOutstandingRequests = LoadBalancerPoolPolicy._(
    TfArgLiteral('least_outstanding_requests'),
  );
  static const leastConnections = LoadBalancerPoolPolicy._(
    TfArgLiteral('least_connections'),
  );

  static const List<LoadBalancerPoolPolicy> values = [
    random,
    hash,
    leastOutstandingRequests,
    leastConnections,
  ];
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

  final LoadBalancerPoolHeader? header;

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'flatten_cname': ?flattenCname?.toTfJson(),
    'name': ?name?.toTfJson(),
    'port': ?port?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'weight': ?weight?.toTfJson(),
    'header': ?header?.encode(),
  };
}

/// Typed helper for the `origins.header` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class LoadBalancerPoolHeader {
  const LoadBalancerPoolHeader({this.host});

  final TfArg<List<String>>? host;

  @internal
  Map<String, Object?> encode() => {'host': ?host?.toTfJson()};
}

/// Factory wrapper for `cloudflare_load_balancer_pool`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class CloudflareLoadBalancerPool extends Resource {
  static const String tfType = 'cloudflare_load_balancer_pool';

  CloudflareLoadBalancerPool(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    List<LoadBalancerPoolCheckRegions>? checkRegions,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    List<LoadBalancerPoolHealthSources>? healthSources,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           if (checkRegions != null)
             'check_regions': TfArg.literal([
               for (final e in checkRegions) e.toTfJson(),
             ]),
           'description': ?description,
           'enabled': ?enabled,
           if (healthSources != null)
             'health_sources': TfArg.literal([
               for (final e in healthSources) e.toTfJson(),
             ]),
           'latitude': ?latitude,
           'longitude': ?longitude,
           'minimum_origins': ?minimumOrigins,
           'monitor': ?monitor,
           'monitor_group': ?monitorGroup,
           'name': name,
           'notification_email': ?notificationEmail,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLoadBalancerPool>`.
  RefTo<CloudflareLoadBalancerPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `check_regions` attribute.
  TfRef<List<String>> get checkRegions =>
      TfRef.attribute<List<String>>(this, 'check_regions');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `health_sources` attribute.
  TfRef<List<String>> get healthSources =>
      TfRef.attribute<List<String>>(this, 'health_sources');

  /// Reference to `latitude` attribute.
  TfRef<num> get latitude => TfRef.attribute<num>(this, 'latitude');

  /// Reference to `longitude` attribute.
  TfRef<num> get longitude => TfRef.attribute<num>(this, 'longitude');

  /// Reference to `minimum_origins` attribute.
  TfRef<num> get minimumOrigins =>
      TfRef.attribute<num>(this, 'minimum_origins');

  /// Reference to `monitor` attribute.
  TfRef<String> get monitor => TfRef.attribute<String>(this, 'monitor');

  /// Reference to `monitor_group` attribute.
  TfRef<String> get monitorGroup =>
      TfRef.attribute<String>(this, 'monitor_group');

  /// Reference to `notification_email` attribute.
  TfRef<String> get notificationEmail =>
      TfRef.attribute<String>(this, 'notification_email');
}
