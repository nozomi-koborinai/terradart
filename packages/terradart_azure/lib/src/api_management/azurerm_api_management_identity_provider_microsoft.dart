// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_identity_provider_microsoft`.
const Set<String> _azurermApiManagementIdentityProviderMicrosoftSensitive =
    <String>{'client_secret'};

/// Factory wrapper for `azurerm_api_management_identity_provider_microsoft`.
final class AzurermApiManagementIdentityProviderMicrosoft extends Resource {
  static const String tfType =
      'azurerm_api_management_identity_provider_microsoft';

  AzurermApiManagementIdentityProviderMicrosoft(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> clientId,
    required Sensitive<String> clientSecret,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'client_id': clientId,
           'client_secret': clientSecret,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementIdentityProviderMicrosoftSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementIdentityProviderMicrosoft>`.
  RefTo<AzurermApiManagementIdentityProviderMicrosoft> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
