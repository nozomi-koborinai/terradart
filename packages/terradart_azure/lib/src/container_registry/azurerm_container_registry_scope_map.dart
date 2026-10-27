// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry_scope_map`.
const Set<String> _azurermContainerRegistryScopeMapSensitive = <String>{};

/// Factory wrapper for `azurerm_container_registry_scope_map`.
final class AzurermContainerRegistryScopeMap extends Resource {
  static const String tfType = 'azurerm_container_registry_scope_map';

  AzurermContainerRegistryScopeMap(
    super.localName, {
    required TfArg<List<String>> actions,
    required TfArg<String> containerRegistryName,
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'actions': actions,
           'container_registry_name': containerRegistryName,
           'description': ?description,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerRegistryScopeMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryScopeMap>`.
  RefTo<AzurermContainerRegistryScopeMap> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actions` attribute.
  TfRef<List<String>> get actions =>
      TfRef.attribute<List<String>>(this, 'actions');

  /// Reference to `container_registry_name` attribute.
  TfRef<String> get containerRegistryName =>
      TfRef.attribute<String>(this, 'container_registry_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
