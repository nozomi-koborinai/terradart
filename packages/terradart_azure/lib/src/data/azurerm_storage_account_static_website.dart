// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_account_static_website.dart';
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_account_static_website`.
const Set<String> _azurermStorageAccountStaticWebsiteSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_account_static_website`.
final class DataAzurermStorageAccountStaticWebsite extends Data {
  static const String tfType = 'azurerm_storage_account_static_website';

  DataAzurermStorageAccountStaticWebsite(
    super.localName, {
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'storage_account_id': storageAccountId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageAccountStaticWebsiteSensitive;

  /// A reference to the `azurerm_storage_account_static_website` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageAccountStaticWebsite>`.
  RefTo<AzurermStorageAccountStaticWebsite> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `error_404_document` attribute.
  TfRef<String> get error404Document =>
      TfRef.attribute<String>(this, 'error_404_document');

  /// Reference to `index_document` attribute.
  TfRef<String> get indexDocument =>
      TfRef.attribute<String>(this, 'index_document');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
