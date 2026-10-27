// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_spring_cloud_storage`.
const Set<String> _azurermSpringCloudStorageSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_storage`.
final class AzurermSpringCloudStorage extends Resource {
  static const String tfType = 'azurerm_spring_cloud_storage';

  AzurermSpringCloudStorage(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> springCloudServiceId,
    required TfArg<String> storageAccountKey,
    required RefTo<AzurermStorageAccount> storageAccountName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'spring_cloud_service_id': springCloudServiceId,
           'storage_account_key': storageAccountKey,
           'storage_account_name': storageAccountName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudStorage>`.
  RefTo<AzurermSpringCloudStorage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');

  /// Reference to `storage_account_key` attribute.
  TfRef<String> get storageAccountKey =>
      TfRef.attribute<String>(this, 'storage_account_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');
}
