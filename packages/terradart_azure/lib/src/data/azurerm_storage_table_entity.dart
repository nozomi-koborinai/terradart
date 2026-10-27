// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_table_entity.dart';

/// Sensitive field paths for `azurerm_storage_table_entity`.
const Set<String> _azurermStorageTableEntitySensitive = <String>{};

/// Factory wrapper for `azurerm_storage_table_entity`.
final class DataAzurermStorageTableEntity extends Data {
  static const String tfType = 'azurerm_storage_table_entity';

  DataAzurermStorageTableEntity(
    super.localName, {
    required TfArg<String> partitionKey,
    required TfArg<String> rowKey,
    required TfArg<String> storageTableId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'partition_key': partitionKey,
           'row_key': rowKey,
           'storage_table_id': storageTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageTableEntitySensitive;

  /// A reference to the `azurerm_storage_table_entity` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageTableEntity>`.
  RefTo<AzurermStorageTableEntity> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `entity` attribute.
  TfRef<Map<String, String>> get entity =>
      TfRef.attribute<Map<String, String>>(this, 'entity');

  /// Reference to `partition_key` attribute.
  TfRef<String> get partitionKey =>
      TfRef.attribute<String>(this, 'partition_key');

  /// Reference to `row_key` attribute.
  TfRef<String> get rowKey => TfRef.attribute<String>(this, 'row_key');

  /// Reference to `storage_table_id` attribute.
  TfRef<String> get storageTableId =>
      TfRef.attribute<String>(this, 'storage_table_id');
}
