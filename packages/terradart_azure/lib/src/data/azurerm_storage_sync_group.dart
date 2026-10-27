// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_sync_group.dart';

/// Sensitive field paths for `azurerm_storage_sync_group`.
const Set<String> _azurermStorageSyncGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_sync_group`.
final class DataAzurermStorageSyncGroup extends Data {
  static const String tfType = 'azurerm_storage_sync_group';

  DataAzurermStorageSyncGroup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> storageSyncId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'storage_sync_id': storageSyncId},
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageSyncGroupSensitive;

  /// A reference to the `azurerm_storage_sync_group` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageSyncGroup>`.
  RefTo<AzurermStorageSyncGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `storage_sync_id` attribute.
  TfRef<String> get storageSyncId =>
      TfRef.attribute<String>(this, 'storage_sync_id');
}
