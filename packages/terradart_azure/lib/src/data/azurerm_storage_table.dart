// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_table.dart';
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_table`.
const Set<String> _azurermStorageTableSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_table`.
final class DataAzurermStorageTable extends Data {
  static const String tfType = 'azurerm_storage_table';

  DataAzurermStorageTable(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageTableSensitive;

  /// A reference to the `azurerm_storage_table` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageTable>`.
  RefTo<AzurermStorageTable> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `acl` attribute.
  TfRef<List<Map<String, Object?>>> get acl =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'acl');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
