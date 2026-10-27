// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_identity_provider_twitter`.
const Set<String> _azurermApiManagementIdentityProviderTwitterSensitive =
    <String>{'api_key', 'api_secret_key'};

/// Factory wrapper for `azurerm_api_management_identity_provider_twitter`.
final class AzurermApiManagementIdentityProviderTwitter extends Resource {
  static const String tfType =
      'azurerm_api_management_identity_provider_twitter';

  AzurermApiManagementIdentityProviderTwitter(
    super.localName, {
    required Sensitive<String> apiKey,
    required TfArg<String> apiManagementName,
    required Sensitive<String> apiSecretKey,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key': apiKey,
           'api_management_name': apiManagementName,
           'api_secret_key': apiSecretKey,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementIdentityProviderTwitterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementIdentityProviderTwitter>`.
  RefTo<AzurermApiManagementIdentityProviderTwitter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `api_secret_key` attribute.
  TfRef<String> get apiSecretKey =>
      TfRef.attribute<String>(this, 'api_secret_key');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
