// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_stream_analytics_output_table`.
const Set<String> _azurermStreamAnalyticsOutputTableSensitive = <String>{
  'storage_account_key',
};

/// Factory wrapper for `azurerm_stream_analytics_output_table`.
final class AzurermStreamAnalyticsOutputTable extends Resource {
  static const String tfType = 'azurerm_stream_analytics_output_table';

  AzurermStreamAnalyticsOutputTable(
    super.localName, {
    required TfArg<num> batchSize,
    TfArg<List<String>>? columnsToRemove,
    required TfArg<String> name,
    required TfArg<String> partitionKey,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> rowKey,
    required Sensitive<String> storageAccountKey,
    required RefTo<AzurermStorageAccount> storageAccountName,
    required TfArg<String> streamAnalyticsJobName,
    required TfArg<String> table,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'batch_size': batchSize,
           'columns_to_remove': ?columnsToRemove,
           'name': name,
           'partition_key': partitionKey,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'row_key': rowKey,
           'storage_account_key': storageAccountKey,
           'storage_account_name': storageAccountName.encodeAs('name'),
           'stream_analytics_job_name': streamAnalyticsJobName,
           'table': table,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsOutputTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputTable>`.
  RefTo<AzurermStreamAnalyticsOutputTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `batch_size` attribute.
  TfRef<num> get batchSize => TfRef.attribute<num>(this, 'batch_size');

  /// Reference to `columns_to_remove` attribute.
  TfRef<List<String>> get columnsToRemove =>
      TfRef.attribute<List<String>>(this, 'columns_to_remove');

  /// Reference to `partition_key` attribute.
  TfRef<String> get partitionKey =>
      TfRef.attribute<String>(this, 'partition_key');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `row_key` attribute.
  TfRef<String> get rowKey => TfRef.attribute<String>(this, 'row_key');

  /// Reference to `storage_account_key` attribute.
  TfRef<String> get storageAccountKey =>
      TfRef.attribute<String>(this, 'storage_account_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');

  /// Reference to `table` attribute.
  TfRef<String> get table => TfRef.attribute<String>(this, 'table');
}
