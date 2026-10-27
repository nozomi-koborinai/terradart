// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_containers`.
const Set<String> _azurermStorageContainersSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_containers`.
final class DataAzurermStorageContainers extends Data {
  static const String tfType = 'azurerm_storage_containers';

  DataAzurermStorageContainers(
    super.localName, {
    TfArg<String>? namePrefix,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name_prefix': ?namePrefix,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageContainersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `containers` attribute.
  TfRef<List<Map<String, Object?>>> get containers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'containers');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
