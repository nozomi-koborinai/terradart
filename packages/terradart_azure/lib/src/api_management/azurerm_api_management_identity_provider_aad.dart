// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_identity_provider_aad`.
const Set<String> _azurermApiManagementIdentityProviderAadSensitive = <String>{
  'client_secret',
};

/// Factory wrapper for `azurerm_api_management_identity_provider_aad`.
final class AzurermApiManagementIdentityProviderAad extends Resource {
  static const String tfType = 'azurerm_api_management_identity_provider_aad';

  AzurermApiManagementIdentityProviderAad(
    super.localName, {
    required TfArg<List<String>> allowedTenants,
    required TfArg<String> apiManagementName,
    required TfArg<String> clientId,
    TfArg<String>? clientLibrary,
    required Sensitive<String> clientSecret,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? signinTenant,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_tenants': allowedTenants,
           'api_management_name': apiManagementName,
           'client_id': clientId,
           'client_library': ?clientLibrary,
           'client_secret': clientSecret,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'signin_tenant': ?signinTenant,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementIdentityProviderAadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementIdentityProviderAad>`.
  RefTo<AzurermApiManagementIdentityProviderAad> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_tenants` attribute.
  TfRef<List<String>> get allowedTenants =>
      TfRef.attribute<List<String>>(this, 'allowed_tenants');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_library` attribute.
  TfRef<String> get clientLibrary =>
      TfRef.attribute<String>(this, 'client_library');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `signin_tenant` attribute.
  TfRef<String> get signinTenant =>
      TfRef.attribute<String>(this, 'signin_tenant');
}
