// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_vmware_express_route_authorization`.
const Set<String> _azurermVmwareExpressRouteAuthorizationSensitive = <String>{
  'express_route_authorization_key',
};

/// Factory wrapper for `azurerm_vmware_express_route_authorization`.
final class AzurermVmwareExpressRouteAuthorization extends Resource {
  static const String tfType = 'azurerm_vmware_express_route_authorization';

  AzurermVmwareExpressRouteAuthorization(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> privateCloudId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'private_cloud_id': privateCloudId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVmwareExpressRouteAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVmwareExpressRouteAuthorization>`.
  RefTo<AzurermVmwareExpressRouteAuthorization> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `express_route_authorization_id` attribute.
  TfRef<String> get expressRouteAuthorizationId =>
      TfRef.attribute<String>(this, 'express_route_authorization_id');

  /// Reference to `express_route_authorization_key` attribute.
  TfRef<String> get expressRouteAuthorizationKey =>
      TfRef.attribute<String>(this, 'express_route_authorization_key');

  /// Reference to `private_cloud_id` attribute.
  TfRef<String> get privateCloudId =>
      TfRef.attribute<String>(this, 'private_cloud_id');
}
