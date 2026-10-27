// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_sync.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_storage_sync`.
const Set<String> _azurermStorageSyncSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_sync`.
final class DataAzurermStorageSync extends Data {
  static const String tfType = 'azurerm_storage_sync';

  DataAzurermStorageSync(
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
  Set<String> get sensitiveFields => _azurermStorageSyncSensitive;

  /// A reference to the `azurerm_storage_sync` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageSync>`.
  RefTo<AzurermStorageSync> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `incoming_traffic_policy` attribute.
  TfRef<String> get incomingTrafficPolicy =>
      TfRef.attribute<String>(this, 'incoming_traffic_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
