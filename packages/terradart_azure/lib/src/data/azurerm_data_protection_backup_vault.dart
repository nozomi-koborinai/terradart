// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_protection/azurerm_data_protection_backup_vault.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_data_protection_backup_vault`.
const Set<String> _azurermDataProtectionBackupVaultSensitive = <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_vault`.
final class DataAzurermDataProtectionBackupVault extends Data {
  static const String tfType = 'azurerm_data_protection_backup_vault';

  DataAzurermDataProtectionBackupVault(
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
  Set<String> get sensitiveFields => _azurermDataProtectionBackupVaultSensitive;

  /// A reference to the `azurerm_data_protection_backup_vault` this data source reads, for
  /// arguments typed `RefTo<AzurermDataProtectionBackupVault>`.
  RefTo<AzurermDataProtectionBackupVault> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `datastore_type` attribute.
  TfRef<String> get datastoreType =>
      TfRef.attribute<String>(this, 'datastore_type');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `redundancy` attribute.
  TfRef<String> get redundancy => TfRef.attribute<String>(this, 'redundancy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
