// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_monitor_group`.
const Set<String> _cloudflareLoadBalancerMonitorGroupSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancer_monitor_group`.
final class DataCloudflareLoadBalancerMonitorGroup extends Data {
  static const String tfType = 'cloudflare_load_balancer_monitor_group';

  DataCloudflareLoadBalancerMonitorGroup({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> monitorGroupId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'monitor_group_id': monitorGroupId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLoadBalancerMonitorGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
