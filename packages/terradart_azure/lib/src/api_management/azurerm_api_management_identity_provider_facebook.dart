// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_identity_provider_facebook`.
const Set<String> _azurermApiManagementIdentityProviderFacebookSensitive =
    <String>{'app_secret'};

/// Factory wrapper for `azurerm_api_management_identity_provider_facebook`.
final class AzurermApiManagementIdentityProviderFacebook extends Resource {
  static const String tfType =
      'azurerm_api_management_identity_provider_facebook';

  AzurermApiManagementIdentityProviderFacebook(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> appId,
    required Sensitive<String> appSecret,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'app_id': appId,
           'app_secret': appSecret,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementIdentityProviderFacebookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementIdentityProviderFacebook>`.
  RefTo<AzurermApiManagementIdentityProviderFacebook> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `app_secret` attribute.
  TfRef<String> get appSecret => TfRef.attribute<String>(this, 'app_secret');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
