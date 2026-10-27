// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_snapshot.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_snapshot`.
const Set<String> _azurermSnapshotSensitive = <String>{};

/// Factory wrapper for `azurerm_snapshot`.
final class DataAzurermSnapshot extends Data {
  static const String tfType = 'azurerm_snapshot';

  DataAzurermSnapshot(
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
  Set<String> get sensitiveFields => _azurermSnapshotSensitive;

  /// A reference to the `azurerm_snapshot` this data source reads, for
  /// arguments typed `RefTo<AzurermSnapshot>`.
  RefTo<AzurermSnapshot> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_option` attribute.
  TfRef<String> get creationOption =>
      TfRef.attribute<String>(this, 'creation_option');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `encryption_settings` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_settings');

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

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `trusted_launch_enabled` attribute.
  TfRef<bool> get trustedLaunchEnabled =>
      TfRef.attribute<bool>(this, 'trusted_launch_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
