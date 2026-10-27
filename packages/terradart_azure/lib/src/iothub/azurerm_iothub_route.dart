// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_route`.
const Set<String> _azurermIothubRouteSensitive = <String>{};

/// Factory wrapper for `azurerm_iothub_route`.
final class AzurermIothubRoute extends Resource {
  static const String tfType = 'azurerm_iothub_route';

  AzurermIothubRoute(
    super.localName, {
    TfArg<String>? condition,
    required TfArg<bool> enabled,
    required TfArg<List<String>> endpointNames,
    required TfArg<String> iothubName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> source,
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
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source': source,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubRoute>`.
  RefTo<AzurermIothubRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
