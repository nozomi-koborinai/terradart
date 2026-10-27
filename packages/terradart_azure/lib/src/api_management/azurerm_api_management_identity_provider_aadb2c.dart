// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_identity_provider_aadb2c`.
const Set<String> _azurermApiManagementIdentityProviderAadb2cSensitive =
    <String>{'client_secret'};

/// Factory wrapper for `azurerm_api_management_identity_provider_aadb2c`.
final class AzurermApiManagementIdentityProviderAadb2c extends Resource {
  static const String tfType =
      'azurerm_api_management_identity_provider_aadb2c';

  AzurermApiManagementIdentityProviderAadb2c(
    super.localName, {
    required TfArg<String> allowedTenant,
    required TfArg<String> apiManagementName,
    required TfArg<String> authority,
    required TfArg<String> clientId,
    TfArg<String>? clientLibrary,
    required Sensitive<String> clientSecret,
    TfArg<String>? passwordResetPolicy,
    TfArg<String>? profileEditingPolicy,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> signinPolicy,
    required TfArg<String> signinTenant,
    required TfArg<String> signupPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_tenant': allowedTenant,
           'api_management_name': apiManagementName,
           'authority': authority,
           'client_id': clientId,
           'client_library': ?clientLibrary,
           'client_secret': clientSecret,
           'password_reset_policy': ?passwordResetPolicy,
           'profile_editing_policy': ?profileEditingPolicy,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'signin_policy': signinPolicy,
           'signin_tenant': signinTenant,
           'signup_policy': signupPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementIdentityProviderAadb2cSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementIdentityProviderAadb2c>`.
  RefTo<AzurermApiManagementIdentityProviderAadb2c> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_tenant` attribute.
  TfRef<String> get allowedTenant =>
      TfRef.attribute<String>(this, 'allowed_tenant');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `authority` attribute.
  TfRef<String> get authority => TfRef.attribute<String>(this, 'authority');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_library` attribute.
  TfRef<String> get clientLibrary =>
      TfRef.attribute<String>(this, 'client_library');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `password_reset_policy` attribute.
  TfRef<String> get passwordResetPolicy =>
      TfRef.attribute<String>(this, 'password_reset_policy');

  /// Reference to `profile_editing_policy` attribute.
  TfRef<String> get profileEditingPolicy =>
      TfRef.attribute<String>(this, 'profile_editing_policy');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `signin_policy` attribute.
  TfRef<String> get signinPolicy =>
      TfRef.attribute<String>(this, 'signin_policy');

  /// Reference to `signin_tenant` attribute.
  TfRef<String> get signinTenant =>
      TfRef.attribute<String>(this, 'signin_tenant');

  /// Reference to `signup_policy` attribute.
  TfRef<String> get signupPolicy =>
      TfRef.attribute<String>(this, 'signup_policy');
}
