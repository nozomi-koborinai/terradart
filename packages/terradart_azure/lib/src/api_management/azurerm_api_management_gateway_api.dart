// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_gateway_api`.
const Set<String> _azurermApiManagementGatewayApiSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_gateway_api`.
final class AzurermApiManagementGatewayApi extends Resource {
  static const String tfType = 'azurerm_api_management_gateway_api';

  AzurermApiManagementGatewayApi(
    super.localName, {
    required TfArg<String> apiId,
    required TfArg<String> gatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'api_id': apiId, 'gateway_id': gatewayId},
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementGatewayApiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGatewayApi>`.
  RefTo<AzurermApiManagementGatewayApi> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');
}
