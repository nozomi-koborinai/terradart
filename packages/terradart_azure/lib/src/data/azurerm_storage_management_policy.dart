// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_management_policy.dart';
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_management_policy`.
const Set<String> _azurermStorageManagementPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_storage_management_policy`.
final class DataAzurermStorageManagementPolicy extends Data {
  static const String tfType = 'azurerm_storage_management_policy';

  DataAzurermStorageManagementPolicy(
    super.localName, {
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'storage_account_id': storageAccountId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageManagementPolicySensitive;

  /// A reference to the `azurerm_storage_management_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageManagementPolicy>`.
  RefTo<AzurermStorageManagementPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rule` attribute.
  TfRef<List<Map<String, Object?>>> get rule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rule');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
