// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_gateway_certificate_authority`.
const Set<String> _azurermApiManagementGatewayCertificateAuthoritySensitive =
    <String>{};

/// Factory wrapper for `azurerm_api_management_gateway_certificate_authority`.
final class AzurermApiManagementGatewayCertificateAuthority extends Resource {
  static const String tfType =
      'azurerm_api_management_gateway_certificate_authority';

  AzurermApiManagementGatewayCertificateAuthority(
    super.localName, {
    required TfArg<String> apiManagementId,
    required TfArg<String> certificateName,
    required TfArg<String> gatewayName,
    TfArg<bool>? isTrusted,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'certificate_name': certificateName,
           'gateway_name': gatewayName,
           'is_trusted': ?isTrusted,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementGatewayCertificateAuthoritySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGatewayCertificateAuthority>`.
  RefTo<AzurermApiManagementGatewayCertificateAuthority> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `certificate_name` attribute.
  TfRef<String> get certificateName =>
      TfRef.attribute<String>(this, 'certificate_name');

  /// Reference to `gateway_name` attribute.
  TfRef<String> get gatewayName =>
      TfRef.attribute<String>(this, 'gateway_name');

  /// Reference to `is_trusted` attribute.
  TfRef<bool> get isTrusted => TfRef.attribute<bool>(this, 'is_trusted');
}
