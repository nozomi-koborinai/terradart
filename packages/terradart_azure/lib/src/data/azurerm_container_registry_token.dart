// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_registry/azurerm_container_registry_token.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry_token`.
const Set<String> _azurermContainerRegistryTokenSensitive = <String>{};

/// Factory wrapper for `azurerm_container_registry_token`.
final class DataAzurermContainerRegistryToken extends Data {
  static const String tfType = 'azurerm_container_registry_token';

  DataAzurermContainerRegistryToken(
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
  Set<String> get sensitiveFields => _azurermContainerRegistryTokenSensitive;

  /// A reference to the `azurerm_container_registry_token` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerRegistryToken>`.
  RefTo<AzurermContainerRegistryToken> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `scope_map_id` attribute.
  TfRef<String> get scopeMapId => TfRef.attribute<String>(this, 'scope_map_id');

  /// Reference to `container_registry_name` attribute.
  TfRef<String> get containerRegistryName =>
      TfRef.attribute<String>(this, 'container_registry_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
