// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry_token`.
const Set<String> _azurermContainerRegistryTokenSensitive = <String>{};

/// Factory wrapper for `azurerm_container_registry_token`.
final class AzurermContainerRegistryToken extends Resource {
  static const String tfType = 'azurerm_container_registry_token';

  AzurermContainerRegistryToken(
    super.localName, {
    required TfArg<String> containerRegistryName,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> scopeMapId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_registry_name': containerRegistryName,
           'enabled': ?enabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scope_map_id': scopeMapId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerRegistryTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryToken>`.
  RefTo<AzurermContainerRegistryToken> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_registry_name` attribute.
  TfRef<String> get containerRegistryName =>
      TfRef.attribute<String>(this, 'container_registry_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scope_map_id` attribute.
  TfRef<String> get scopeMapId => TfRef.attribute<String>(this, 'scope_map_id');
}
