// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_gateway_host_name_configuration`.
const Set<String> _azurermApiManagementGatewayHostNameConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_api_management_gateway_host_name_configuration`.
final class AzurermApiManagementGatewayHostNameConfiguration extends Resource {
  static const String tfType =
      'azurerm_api_management_gateway_host_name_configuration';

  AzurermApiManagementGatewayHostNameConfiguration(
    super.localName, {
    required TfArg<String> apiManagementId,
    required TfArg<String> certificateId,
    required TfArg<String> gatewayName,
    required TfArg<String> hostName,
    TfArg<bool>? http2Enabled,
    required TfArg<String> name,
    TfArg<bool>? requestClientCertificateEnabled,
    TfArg<bool>? tls10Enabled,
    TfArg<bool>? tls11Enabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'certificate_id': certificateId,
           'gateway_name': gatewayName,
           'host_name': hostName,
           'http2_enabled': ?http2Enabled,
           'name': name,
           'request_client_certificate_enabled':
               ?requestClientCertificateEnabled,
           'tls10_enabled': ?tls10Enabled,
           'tls11_enabled': ?tls11Enabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementGatewayHostNameConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGatewayHostNameConfiguration>`.
  RefTo<AzurermApiManagementGatewayHostNameConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `gateway_name` attribute.
  TfRef<String> get gatewayName =>
      TfRef.attribute<String>(this, 'gateway_name');

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
}
