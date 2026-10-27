// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_circuit_authorization`.
const Set<String> _azurermExpressRouteCircuitAuthorizationSensitive = <String>{
  'authorization_key',
};

/// Factory wrapper for `azurerm_express_route_circuit_authorization`.
final class AzurermExpressRouteCircuitAuthorization extends Resource {
  static const String tfType = 'azurerm_express_route_circuit_authorization';

  AzurermExpressRouteCircuitAuthorization(
    super.localName, {
    required TfArg<String> expressRouteCircuitName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'express_route_circuit_name': expressRouteCircuitName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermExpressRouteCircuitAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRouteCircuitAuthorization>`.
  RefTo<AzurermExpressRouteCircuitAuthorization> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_key` attribute.
  TfRef<String> get authorizationKey =>
      TfRef.attribute<String>(this, 'authorization_key');

  /// Reference to `authorization_use_status` attribute.
  TfRef<String> get authorizationUseStatus =>
      TfRef.attribute<String>(this, 'authorization_use_status');

  /// Reference to `express_route_circuit_name` attribute.
  TfRef<String> get expressRouteCircuitName =>
      TfRef.attribute<String>(this, 'express_route_circuit_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
