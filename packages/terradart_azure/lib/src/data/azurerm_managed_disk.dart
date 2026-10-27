// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_managed_disk.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_disk`.
const Set<String> _azurermManagedDiskSensitive = <String>{};

/// Factory wrapper for `azurerm_managed_disk`.
final class DataAzurermManagedDisk extends Data {
  static const String tfType = 'azurerm_managed_disk';

  DataAzurermManagedDisk(
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
  Set<String> get sensitiveFields => _azurermManagedDiskSensitive;

  /// A reference to the `azurerm_managed_disk` this data source reads, for
  /// arguments typed `RefTo<AzurermManagedDisk>`.
  RefTo<AzurermManagedDisk> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_option` attribute.
  TfRef<String> get createOption =>
      TfRef.attribute<String>(this, 'create_option');

  /// Reference to `disk_access_id` attribute.
  TfRef<String> get diskAccessId =>
      TfRef.attribute<String>(this, 'disk_access_id');

  /// Reference to `disk_encryption_set_id` attribute.
  TfRef<String> get diskEncryptionSetId =>
      TfRef.attribute<String>(this, 'disk_encryption_set_id');

  /// Reference to `disk_iops_read_write` attribute.
  TfRef<num> get diskIopsReadWrite =>
      TfRef.attribute<num>(this, 'disk_iops_read_write');

  /// Reference to `disk_mbps_read_write` attribute.
  TfRef<num> get diskMbpsReadWrite =>
      TfRef.attribute<num>(this, 'disk_mbps_read_write');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `encryption_settings` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_settings');

  /// Reference to `image_reference_id` attribute.
  TfRef<String> get imageReferenceId =>
      TfRef.attribute<String>(this, 'image_reference_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_access_policy` attribute.
  TfRef<String> get networkAccessPolicy =>
      TfRef.attribute<String>(this, 'network_access_policy');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `source_uri` attribute.
  TfRef<String> get sourceUri => TfRef.attribute<String>(this, 'source_uri');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
