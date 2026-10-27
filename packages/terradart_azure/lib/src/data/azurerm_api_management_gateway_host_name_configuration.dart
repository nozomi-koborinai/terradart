// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_gateway_host_name_configuration.dart';

/// Sensitive field paths for `azurerm_api_management_gateway_host_name_configuration`.
const Set<String> _azurermApiManagementGatewayHostNameConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_api_management_gateway_host_name_configuration`.
final class DataAzurermApiManagementGatewayHostNameConfiguration extends Data {
  static const String tfType =
      'azurerm_api_management_gateway_host_name_configuration';

  DataAzurermApiManagementGatewayHostNameConfiguration(
    super.localName, {
    required TfArg<String> apiManagementId,
    required TfArg<String> gatewayName,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'gateway_name': gatewayName,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementGatewayHostNameConfigurationSensitive;

  /// A reference to the `azurerm_api_management_gateway_host_name_configuration` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementGatewayHostNameConfiguration>`.
  RefTo<AzurermApiManagementGatewayHostNameConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `http2_enabled` attribute.
  TfRef<bool> get http2Enabled => TfRef.attribute<bool>(this, 'http2_enabled');

  /// Reference to `request_client_certificate_enabled` attribute.
  TfRef<bool> get requestClientCertificateEnabled =>
      TfRef.attribute<bool>(this, 'request_client_certificate_enabled');

  /// Reference to `tls10_enabled` attribute.
  TfRef<bool> get tls10Enabled => TfRef.attribute<bool>(this, 'tls10_enabled');

  /// Reference to `tls11_enabled` attribute.
  TfRef<bool> get tls11Enabled => TfRef.attribute<bool>(this, 'tls11_enabled');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `gateway_name` attribute.
  TfRef<String> get gatewayName =>
      TfRef.attribute<String>(this, 'gateway_name');
}
