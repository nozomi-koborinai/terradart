// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_fallback_route`.
const Set<String> _azurermIothubFallbackRouteSensitive = <String>{};

/// Factory wrapper for `azurerm_iothub_fallback_route`.
final class AzurermIothubFallbackRoute extends Resource {
  static const String tfType = 'azurerm_iothub_fallback_route';

  AzurermIothubFallbackRoute(
    super.localName, {
    TfArg<String>? condition,
    required TfArg<bool> enabled,
    required TfArg<List<String>> endpointNames,
    required TfArg<String> iothubName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'condition': ?condition,
           'enabled': enabled,
           'endpoint_names': endpointNames,
           'iothub_name': iothubName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source': ?source,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubFallbackRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubFallbackRoute>`.
  RefTo<AzurermIothubFallbackRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `condition` attribute.
  TfRef<String> get condition => TfRef.attribute<String>(this, 'condition');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `endpoint_names` attribute.
  TfRef<List<String>> get endpointNames =>
      TfRef.attribute<List<String>>(this, 'endpoint_names');

  /// Reference to `iothub_name` attribute.
  TfRef<String> get iothubName => TfRef.attribute<String>(this, 'iothub_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
