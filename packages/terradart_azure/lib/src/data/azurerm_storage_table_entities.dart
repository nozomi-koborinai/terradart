// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_table_entities`.
const Set<String> _azurermStorageTableEntitiesSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_table_entities`.
final class DataAzurermStorageTableEntities extends Data {
  static const String tfType = 'azurerm_storage_table_entities';

  DataAzurermStorageTableEntities(
    super.localName, {
    required TfArg<String> filter,
    TfArg<List<String>>? select,
    required TfArg<String> storageTableId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter': filter,
           'select': ?select,
           'storage_table_id': storageTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageTableEntitiesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `items` attribute.
  TfRef<List<Map<String, Object?>>> get items =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'items');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `select` attribute.
  TfRef<List<String>> get select =>
      TfRef.attribute<List<String>>(this, 'select');

  /// Reference to `storage_table_id` attribute.
  TfRef<String> get storageTableId =>
      TfRef.attribute<String>(this, 'storage_table_id');
}
