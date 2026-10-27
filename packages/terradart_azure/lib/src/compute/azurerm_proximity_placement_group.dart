// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_proximity_placement_group`.
const Set<String> _azurermProximityPlacementGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_proximity_placement_group`.
final class AzurermProximityPlacementGroup extends Resource {
  static const String tfType = 'azurerm_proximity_placement_group';

  AzurermProximityPlacementGroup(
    super.localName, {
    TfArg<List<String>>? allowedVmSizes,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? zone,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_vm_sizes': ?allowedVmSizes,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermProximityPlacementGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermProximityPlacementGroup>`.
  RefTo<AzurermProximityPlacementGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_vm_sizes` attribute.
  TfRef<List<String>> get allowedVmSizes =>
      TfRef.attribute<List<String>>(this, 'allowed_vm_sizes');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
