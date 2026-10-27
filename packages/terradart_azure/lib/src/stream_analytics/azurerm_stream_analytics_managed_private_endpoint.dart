// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_managed_private_endpoint`.
const Set<String> _azurermStreamAnalyticsManagedPrivateEndpointSensitive =
    <String>{};

/// Factory wrapper for `azurerm_stream_analytics_managed_private_endpoint`.
final class AzurermStreamAnalyticsManagedPrivateEndpoint extends Resource {
  static const String tfType =
      'azurerm_stream_analytics_managed_private_endpoint';

  AzurermStreamAnalyticsManagedPrivateEndpoint(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> streamAnalyticsClusterName,
    required TfArg<String> subresourceName,
    required TfArg<String> targetResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'stream_analytics_cluster_name': streamAnalyticsClusterName,
           'subresource_name': subresourceName,
           'target_resource_id': targetResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsManagedPrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsManagedPrivateEndpoint>`.
  RefTo<AzurermStreamAnalyticsManagedPrivateEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `stream_analytics_cluster_name` attribute.
  TfRef<String> get streamAnalyticsClusterName =>
      TfRef.attribute<String>(this, 'stream_analytics_cluster_name');

  /// Reference to `subresource_name` attribute.
  TfRef<String> get subresourceName =>
      TfRef.attribute<String>(this, 'subresource_name');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
