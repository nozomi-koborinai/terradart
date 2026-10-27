// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stack_hci/azurerm_stack_hci_storage_path.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_storage_path`.
const Set<String> _azurermStackHciStoragePathSensitive = <String>{};

/// Factory wrapper for `azurerm_stack_hci_storage_path`.
final class DataAzurermStackHciStoragePath extends Data {
  static const String tfType = 'azurerm_stack_hci_storage_path';

  DataAzurermStackHciStoragePath(
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
  Set<String> get sensitiveFields => _azurermStackHciStoragePathSensitive;

  /// A reference to the `azurerm_stack_hci_storage_path` this data source reads, for
  /// arguments typed `RefTo<AzurermStackHciStoragePath>`.
  RefTo<AzurermStackHciStoragePath> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_location_id` attribute.
  TfRef<String> get customLocationId =>
      TfRef.attribute<String>(this, 'custom_location_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
