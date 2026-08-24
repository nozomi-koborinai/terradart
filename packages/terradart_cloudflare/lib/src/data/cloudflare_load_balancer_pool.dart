// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_pool`.
const Set<String> _cloudflareLoadBalancerPoolSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_load_balancer_pool` (derived from provider schema).
@immutable
final class DataLoadBalancerPoolFilter {
  const DataLoadBalancerPoolFilter({this.monitor});

  final TfArg<String>? monitor;

  Map<String, Object?> encode() => {
    if (monitor != null) 'monitor': monitor!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_load_balancer_pool`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class DataCloudflareLoadBalancerPool extends Data {
  static const String tfType = 'cloudflare_load_balancer_pool';

  DataCloudflareLoadBalancerPool({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? poolId,
    DataLoadBalancerPoolFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (poolId != null) 'pool_id': poolId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerPoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `check_regions` attribute.
  TfRef<List<String>> get checkRegions =>
      TfRef.attribute<List<String>>(this, 'check_regions');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled_at` attribute.
  TfRef<String> get disabledAt => TfRef.attribute<String>(this, 'disabled_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `latitude` attribute.
  TfRef<num> get latitude => TfRef.attribute<num>(this, 'latitude');

  /// Reference to `longitude` attribute.
  TfRef<num> get longitude => TfRef.attribute<num>(this, 'longitude');

  /// Reference to `minimum_origins` attribute.
  TfRef<num> get minimumOrigins =>
      TfRef.attribute<num>(this, 'minimum_origins');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `monitor` attribute.
  TfRef<String> get monitor => TfRef.attribute<String>(this, 'monitor');

  /// Reference to `monitor_group` attribute.
  TfRef<String> get monitorGroup =>
      TfRef.attribute<String>(this, 'monitor_group');

  /// Reference to `networks` attribute.
  TfRef<List<String>> get networks =>
      TfRef.attribute<List<String>>(this, 'networks');

  /// Reference to `notification_email` attribute.
  TfRef<String> get notificationEmail =>
      TfRef.attribute<String>(this, 'notification_email');
}
