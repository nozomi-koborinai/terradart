// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channels_registration`.
const Set<String> _azurermBotChannelsRegistrationSensitive = <String>{
  'developer_app_insights_api_key',
};

/// Factory wrapper for `azurerm_bot_channels_registration`.
final class AzurermBotChannelsRegistration extends Resource {
  static const String tfType = 'azurerm_bot_channels_registration';

  AzurermBotChannelsRegistration(
    super.localName, {
    TfArg<String>? cmkKeyVaultUrl,
    TfArg<String>? description,
    Sensitive<String>? developerAppInsightsApiKey,
    TfArg<String>? developerAppInsightsApplicationId,
    TfArg<String>? developerAppInsightsKey,
    TfArg<String>? displayName,
    TfArg<String>? endpoint,
    TfArg<String>? iconUrl,
    required TfArg<String> location,
    required TfArg<String> microsoftAppId,
    TfArg<String>? microsoftAppTenantId,
    required TfArg<String> microsoftAppType,
    TfArg<String>? microsoftAppUserAssignedIdentityId,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sku,
    TfArg<bool>? streamingEndpointEnabled,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cmk_key_vault_url': ?cmkKeyVaultUrl,
           'description': ?description,
           'developer_app_insights_api_key': ?developerAppInsightsApiKey,
           'developer_app_insights_application_id':
               ?developerAppInsightsApplicationId,
           'developer_app_insights_key': ?developerAppInsightsKey,
           'display_name': ?displayName,
           'endpoint': ?endpoint,
           'icon_url': ?iconUrl,
           'location': location,
           'microsoft_app_id': microsoftAppId,
           'microsoft_app_tenant_id': ?microsoftAppTenantId,
           'microsoft_app_type': microsoftAppType,
           'microsoft_app_user_assigned_identity_id':
               ?microsoftAppUserAssignedIdentityId,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'streaming_endpoint_enabled': ?streamingEndpointEnabled,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelsRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelsRegistration>`.
  RefTo<AzurermBotChannelsRegistration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cmk_key_vault_url` attribute.
  TfRef<String> get cmkKeyVaultUrl =>
      TfRef.attribute<String>(this, 'cmk_key_vault_url');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `developer_app_insights_api_key` attribute.
  TfRef<String> get developerAppInsightsApiKey =>
      TfRef.attribute<String>(this, 'developer_app_insights_api_key');

  /// Reference to `developer_app_insights_application_id` attribute.
  TfRef<String> get developerAppInsightsApplicationId =>
      TfRef.attribute<String>(this, 'developer_app_insights_application_id');

  /// Reference to `developer_app_insights_key` attribute.
  TfRef<String> get developerAppInsightsKey =>
      TfRef.attribute<String>(this, 'developer_app_insights_key');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `icon_url` attribute.
  TfRef<String> get iconUrl => TfRef.attribute<String>(this, 'icon_url');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `microsoft_app_id` attribute.
  TfRef<String> get microsoftAppId =>
      TfRef.attribute<String>(this, 'microsoft_app_id');

  /// Reference to `microsoft_app_tenant_id` attribute.
  TfRef<String> get microsoftAppTenantId =>
      TfRef.attribute<String>(this, 'microsoft_app_tenant_id');

  /// Reference to `microsoft_app_type` attribute.
  TfRef<String> get microsoftAppType =>
      TfRef.attribute<String>(this, 'microsoft_app_type');

  /// Reference to `microsoft_app_user_assigned_identity_id` attribute.
  TfRef<String> get microsoftAppUserAssignedIdentityId =>
      TfRef.attribute<String>(this, 'microsoft_app_user_assigned_identity_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `streaming_endpoint_enabled` attribute.
  TfRef<bool> get streamingEndpointEnabled =>
      TfRef.attribute<bool>(this, 'streaming_endpoint_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
