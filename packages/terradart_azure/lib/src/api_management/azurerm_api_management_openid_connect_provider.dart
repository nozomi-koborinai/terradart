// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_openid_connect_provider`.
const Set<String> _azurermApiManagementOpenidConnectProviderSensitive =
    <String>{'client_id', 'client_secret'};

/// Factory wrapper for `azurerm_api_management_openid_connect_provider`.
final class AzurermApiManagementOpenidConnectProvider extends Resource {
  static const String tfType = 'azurerm_api_management_openid_connect_provider';

  AzurermApiManagementOpenidConnectProvider(
    super.localName, {
    required TfArg<String> apiManagementName,
    required Sensitive<String> clientId,
    required Sensitive<String> clientSecret,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> metadataEndpoint,
    required TfArg<String> name,
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
           'description': ?description,
           'display_name': displayName,
           'metadata_endpoint': metadataEndpoint,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementOpenidConnectProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementOpenidConnectProvider>`.
  RefTo<AzurermApiManagementOpenidConnectProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `metadata_endpoint` attribute.
  TfRef<String> get metadataEndpoint =>
      TfRef.attribute<String>(this, 'metadata_endpoint');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
