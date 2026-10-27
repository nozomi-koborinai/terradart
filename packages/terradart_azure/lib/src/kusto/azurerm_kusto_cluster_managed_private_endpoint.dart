// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_cluster_managed_private_endpoint`.
const Set<String> _azurermKustoClusterManagedPrivateEndpointSensitive =
    <String>{};

/// Factory wrapper for `azurerm_kusto_cluster_managed_private_endpoint`.
final class AzurermKustoClusterManagedPrivateEndpoint extends Resource {
  static const String tfType = 'azurerm_kusto_cluster_managed_private_endpoint';

  AzurermKustoClusterManagedPrivateEndpoint(
    super.localName, {
    required TfArg<String> clusterName,
    required TfArg<String> groupId,
    required TfArg<String> name,
    required TfArg<String> privateLinkResourceId,
    TfArg<String>? privateLinkResourceRegion,
    TfArg<String>? requestMessage,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'group_id': groupId,
           'name': name,
           'private_link_resource_id': privateLinkResourceId,
           'private_link_resource_region': ?privateLinkResourceRegion,
           'request_message': ?requestMessage,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoClusterManagedPrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoClusterManagedPrivateEndpoint>`.
  RefTo<AzurermKustoClusterManagedPrivateEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `private_link_resource_id` attribute.
  TfRef<String> get privateLinkResourceId =>
      TfRef.attribute<String>(this, 'private_link_resource_id');

  /// Reference to `private_link_resource_region` attribute.
  TfRef<String> get privateLinkResourceRegion =>
      TfRef.attribute<String>(this, 'private_link_resource_region');

  /// Reference to `request_message` attribute.
  TfRef<String> get requestMessage =>
      TfRef.attribute<String>(this, 'request_message');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
