// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_port_authorization`.
const Set<String> _azurermExpressRoutePortAuthorizationSensitive = <String>{
  'authorization_key',
};

/// Factory wrapper for `azurerm_express_route_port_authorization`.
final class AzurermExpressRoutePortAuthorization extends Resource {
  static const String tfType = 'azurerm_express_route_port_authorization';

  AzurermExpressRoutePortAuthorization(
    super.localName, {
    required TfArg<String> expressRoutePortName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'express_route_port_name': expressRoutePortName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermExpressRoutePortAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRoutePortAuthorization>`.
  RefTo<AzurermExpressRoutePortAuthorization> get ref => RefTo.of(this);

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

  /// Reference to `express_route_port_name` attribute.
  TfRef<String> get expressRoutePortName =>
      TfRef.attribute<String>(this, 'express_route_port_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
