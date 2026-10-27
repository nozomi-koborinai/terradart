// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_registry/azurerm_container_registry_scope_map.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry_scope_map`.
const Set<String> _azurermContainerRegistryScopeMapSensitive = <String>{};

/// Factory wrapper for `azurerm_container_registry_scope_map`.
final class DataAzurermContainerRegistryScopeMap extends Data {
  static const String tfType = 'azurerm_container_registry_scope_map';

  DataAzurermContainerRegistryScopeMap(
    super.localName, {
    required TfArg<String> containerRegistryName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_registry_name': containerRegistryName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerRegistryScopeMapSensitive;

  /// A reference to the `azurerm_container_registry_scope_map` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerRegistryScopeMap>`.
  RefTo<AzurermContainerRegistryScopeMap> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actions` attribute.
  TfRef<List<String>> get actions =>
      TfRef.attribute<List<String>>(this, 'actions');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `container_registry_name` attribute.
  TfRef<String> get containerRegistryName =>
      TfRef.attribute<String>(this, 'container_registry_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
