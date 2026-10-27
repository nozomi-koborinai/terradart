// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_machine_restore_point_collection`.
const Set<String> _azurermVirtualMachineRestorePointCollectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_virtual_machine_restore_point_collection`.
final class AzurermVirtualMachineRestorePointCollection extends Resource {
  static const String tfType =
      'azurerm_virtual_machine_restore_point_collection';

  AzurermVirtualMachineRestorePointCollection(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceVirtualMachineId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_virtual_machine_id': sourceVirtualMachineId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineRestorePointCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineRestorePointCollection>`.
  RefTo<AzurermVirtualMachineRestorePointCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_virtual_machine_id` attribute.
  TfRef<String> get sourceVirtualMachineId =>
      TfRef.attribute<String>(this, 'source_virtual_machine_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
