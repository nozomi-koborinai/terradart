// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_disk_encryption_set.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_disk_encryption_set`.
const Set<String> _azurermDiskEncryptionSetSensitive = <String>{};

/// Factory wrapper for `azurerm_disk_encryption_set`.
final class DataAzurermDiskEncryptionSet extends Data {
  static const String tfType = 'azurerm_disk_encryption_set';

  DataAzurermDiskEncryptionSet(
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
  Set<String> get sensitiveFields => _azurermDiskEncryptionSetSensitive;

  /// A reference to the `azurerm_disk_encryption_set` this data source reads, for
  /// arguments typed `RefTo<AzurermDiskEncryptionSet>`.
  RefTo<AzurermDiskEncryptionSet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_key_rotation_enabled` attribute.
  TfRef<bool> get autoKeyRotationEnabled =>
      TfRef.attribute<bool>(this, 'auto_key_rotation_enabled');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `key_vault_key_url` attribute.
  TfRef<String> get keyVaultKeyUrl =>
      TfRef.attribute<String>(this, 'key_vault_key_url');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
