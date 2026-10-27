// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_network_watcher_flow_log`.
const Set<String> _azurermNetworkWatcherFlowLogSensitive = <String>{};

/// Typed helper for the `retention_policy` block of
/// `azurerm_network_watcher_flow_log` (derived from provider schema).
@immutable
final class NetworkWatcherFlowLogRetentionPolicy {
  const NetworkWatcherFlowLogRetentionPolicy({
    required this.days,
    required this.enabled,
  });

  final TfArg<num> days;

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {
    'days': days.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `traffic_analytics` block of
/// `azurerm_network_watcher_flow_log` (derived from provider schema).
@immutable
final class NetworkWatcherFlowLogTrafficAnalytics {
  const NetworkWatcherFlowLogTrafficAnalytics({
    required this.enabled,
    this.intervalInMinutes,
    required this.workspaceId,
    required this.workspaceRegion,
    required this.workspaceResourceId,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? intervalInMinutes;

  final TfArg<String> workspaceId;

  final TfArg<String> workspaceRegion;

  final TfArg<String> workspaceResourceId;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'interval_in_minutes': ?intervalInMinutes?.toTfJson(),
    'workspace_id': workspaceId.toTfJson(),
    'workspace_region': workspaceRegion.toTfJson(),
    'workspace_resource_id': workspaceResourceId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_watcher_flow_log`.
final class AzurermNetworkWatcherFlowLog extends Resource {
  static const String tfType = 'azurerm_network_watcher_flow_log';

  AzurermNetworkWatcherFlowLog(
    super.localName, {
    required TfArg<bool> enabled,
    TfArg<String>? location,
    required TfArg<String> name,
    required TfArg<String> networkWatcherName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetResourceId,
    TfArg<num>? version,
    required NetworkWatcherFlowLogRetentionPolicy retentionPolicy,
    NetworkWatcherFlowLogTrafficAnalytics? trafficAnalytics,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           'location': ?location,
           'name': name,
           'network_watcher_name': networkWatcherName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_id': storageAccountId.encodeAs('id'),
           'tags': ?tags,
           'target_resource_id': targetResourceId,
           'version': ?version,
           'retention_policy': TfArg.literal(retentionPolicy.encode()),
           if (trafficAnalytics != null)
             'traffic_analytics': TfArg.literal(trafficAnalytics.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkWatcherFlowLogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkWatcherFlowLog>`.
  RefTo<AzurermNetworkWatcherFlowLog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_watcher_name` attribute.
  TfRef<String> get networkWatcherName =>
      TfRef.attribute<String>(this, 'network_watcher_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
