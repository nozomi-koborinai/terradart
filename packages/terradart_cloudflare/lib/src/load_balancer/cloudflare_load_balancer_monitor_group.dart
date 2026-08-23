// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_monitor_group`.
const Set<String> _cloudflareLoadBalancerMonitorGroupSensitive = <String>{};

/// Typed helper for the `members` block of
/// `cloudflare_load_balancer_monitor_group` (derived from provider schema).
@immutable
final class LoadBalancerMonitorGroupMembers {
  const LoadBalancerMonitorGroupMembers({
    required this.enabled,
    required this.monitorId,
    required this.monitoringOnly,
    required this.mustBeHealthy,
  });

  final TfArg<bool> enabled;

  final TfArg<String> monitorId;

  final TfArg<bool> monitoringOnly;

  final TfArg<bool> mustBeHealthy;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'monitor_id': monitorId.toTfJson(),
    'monitoring_only': monitoringOnly.toTfJson(),
    'must_be_healthy': mustBeHealthy.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_load_balancer_monitor_group`.
final class CloudflareLoadBalancerMonitorGroup extends Resource {
  static const String tfType = 'cloudflare_load_balancer_monitor_group';

  CloudflareLoadBalancerMonitorGroup({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> description,
    required List<LoadBalancerMonitorGroupMembers> members,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'description': description,
           'members': TfArg.literal([for (final e in members) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLoadBalancerMonitorGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
