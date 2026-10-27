// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_log_analytics_storage_insights`.
const Set<String> _azurermLogAnalyticsStorageInsightsSensitive = <String>{
  'storage_account_key',
};

/// Factory wrapper for `azurerm_log_analytics_storage_insights`.
final class AzurermLogAnalyticsStorageInsights extends Resource {
  static const String tfType = 'azurerm_log_analytics_storage_insights';

  AzurermLogAnalyticsStorageInsights(
    super.localName, {
    TfArg<List<String>>? blobContainerNames,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermStorageAccount> storageAccountId,
    required Sensitive<String> storageAccountKey,
    TfArg<List<String>>? tableNames,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blob_container_names': ?blobContainerNames,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_id': storageAccountId.encodeAs('id'),
           'storage_account_key': storageAccountKey,
           'table_names': ?tableNames,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsStorageInsightsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsStorageInsights>`.
  RefTo<AzurermLogAnalyticsStorageInsights> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blob_container_names` attribute.
  TfRef<List<String>> get blobContainerNames =>
      TfRef.attribute<List<String>>(this, 'blob_container_names');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_account_key` attribute.
  TfRef<String> get storageAccountKey =>
      TfRef.attribute<String>(this, 'storage_account_key');

  /// Reference to `table_names` attribute.
  TfRef<List<String>> get tableNames =>
      TfRef.attribute<List<String>>(this, 'table_names');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
