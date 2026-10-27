// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_service_azure_bot`.
const Set<String> _azurermBotServiceAzureBotSensitive = <String>{
  'developer_app_insights_api_key',
  'luis_key',
};

/// Factory wrapper for `azurerm_bot_service_azure_bot`.
final class AzurermBotServiceAzureBot extends Resource {
  static const String tfType = 'azurerm_bot_service_azure_bot';

  AzurermBotServiceAzureBot(
    super.localName, {
    TfArg<String>? cmkKeyVaultKeyUrl,
    Sensitive<String>? developerAppInsightsApiKey,
    TfArg<String>? developerAppInsightsApplicationId,
    TfArg<String>? developerAppInsightsKey,
    TfArg<String>? displayName,
    TfArg<String>? endpoint,
    TfArg<String>? iconUrl,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    TfArg<List<String>>? luisAppIds,
    Sensitive<String>? luisKey,
    required TfArg<String> microsoftAppId,
    TfArg<String>? microsoftAppMsiId,
    TfArg<String>? microsoftAppTenantId,
    required TfArg<String> microsoftAppType,
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
           'cmk_key_vault_key_url': ?cmkKeyVaultKeyUrl,
           'developer_app_insights_api_key': ?developerAppInsightsApiKey,
           'developer_app_insights_application_id':
               ?developerAppInsightsApplicationId,
           'developer_app_insights_key': ?developerAppInsightsKey,
           'display_name': ?displayName,
           'endpoint': ?endpoint,
           'icon_url': ?iconUrl,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'luis_app_ids': ?luisAppIds,
           'luis_key': ?luisKey,
           'microsoft_app_id': microsoftAppId,
           'microsoft_app_msi_id': ?microsoftAppMsiId,
           'microsoft_app_tenant_id': ?microsoftAppTenantId,
           'microsoft_app_type': microsoftAppType,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'streaming_endpoint_enabled': ?streamingEndpointEnabled,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotServiceAzureBotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotServiceAzureBot>`.
  RefTo<AzurermBotServiceAzureBot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cmk_key_vault_key_url` attribute.
  TfRef<String> get cmkKeyVaultKeyUrl =>
      TfRef.attribute<String>(this, 'cmk_key_vault_key_url');

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

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `luis_app_ids` attribute.
  TfRef<List<String>> get luisAppIds =>
      TfRef.attribute<List<String>>(this, 'luis_app_ids');

  /// Reference to `luis_key` attribute.
  TfRef<String> get luisKey => TfRef.attribute<String>(this, 'luis_key');

  /// Reference to `microsoft_app_id` attribute.
  TfRef<String> get microsoftAppId =>
      TfRef.attribute<String>(this, 'microsoft_app_id');

  /// Reference to `microsoft_app_msi_id` attribute.
  TfRef<String> get microsoftAppMsiId =>
      TfRef.attribute<String>(this, 'microsoft_app_msi_id');

  /// Reference to `microsoft_app_tenant_id` attribute.
  TfRef<String> get microsoftAppTenantId =>
      TfRef.attribute<String>(this, 'microsoft_app_tenant_id');

  /// Reference to `microsoft_app_type` attribute.
  TfRef<String> get microsoftAppType =>
      TfRef.attribute<String>(this, 'microsoft_app_type');

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
