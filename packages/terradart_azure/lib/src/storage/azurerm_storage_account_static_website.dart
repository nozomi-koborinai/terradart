// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_account_static_website`.
const Set<String> _azurermStorageAccountStaticWebsiteSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_account_static_website`.
final class AzurermStorageAccountStaticWebsite extends Resource {
  static const String tfType = 'azurerm_storage_account_static_website';

  AzurermStorageAccountStaticWebsite(
    super.localName, {
    TfArg<String>? error404Document,
    TfArg<String>? indexDocument,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'error_404_document': ?error404Document,
           'index_document': ?indexDocument,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageAccountStaticWebsiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageAccountStaticWebsite>`.
  RefTo<AzurermStorageAccountStaticWebsite> get ref => RefTo.of(this);

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
