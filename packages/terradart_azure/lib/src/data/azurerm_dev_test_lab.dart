// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_test/azurerm_dev_test_lab.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_test_lab`.
const Set<String> _azurermDevTestLabSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_test_lab`.
final class DataAzurermDevTestLab extends Data {
  static const String tfType = 'azurerm_dev_test_lab';

  DataAzurermDevTestLab(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevTestLabSensitive;

  /// A reference to the `azurerm_dev_test_lab` this data source reads, for
  /// arguments typed `RefTo<AzurermDevTestLab>`.
  RefTo<AzurermDevTestLab> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `artifacts_storage_account_id` attribute.
  TfRef<String> get artifactsStorageAccountId =>
      TfRef.attribute<String>(this, 'artifacts_storage_account_id');

  /// Reference to `default_premium_storage_account_id` attribute.
  TfRef<String> get defaultPremiumStorageAccountId =>
      TfRef.attribute<String>(this, 'default_premium_storage_account_id');

  /// Reference to `default_storage_account_id` attribute.
  TfRef<String> get defaultStorageAccountId =>
      TfRef.attribute<String>(this, 'default_storage_account_id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `premium_data_disk_storage_account_id` attribute.
  TfRef<String> get premiumDataDiskStorageAccountId =>
      TfRef.attribute<String>(this, 'premium_data_disk_storage_account_id');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `unique_identifier` attribute.
  TfRef<String> get uniqueIdentifier =>
      TfRef.attribute<String>(this, 'unique_identifier');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
