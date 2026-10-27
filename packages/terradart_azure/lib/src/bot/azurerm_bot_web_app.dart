// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_web_app`.
const Set<String> _azurermBotWebAppSensitive = <String>{
  'developer_app_insights_api_key',
  'luis_key',
};

/// Factory wrapper for `azurerm_bot_web_app`.
final class AzurermBotWebApp extends Resource {
  static const String tfType = 'azurerm_bot_web_app';

  AzurermBotWebApp(
    super.localName, {
    Sensitive<String>? developerAppInsightsApiKey,
    TfArg<String>? developerAppInsightsApplicationId,
    TfArg<String>? developerAppInsightsKey,
    TfArg<String>? displayName,
    TfArg<String>? endpoint,
    required TfArg<String> location,
    TfArg<List<String>>? luisAppIds,
    Sensitive<String>? luisKey,
    required TfArg<String> microsoftAppId,
    TfArg<String>? microsoftAppTenantId,
    required TfArg<String> microsoftAppType,
    TfArg<String>? microsoftAppUserAssignedIdentityId,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sku,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'developer_app_insights_api_key': ?developerAppInsightsApiKey,
           'developer_app_insights_application_id':
               ?developerAppInsightsApplicationId,
           'developer_app_insights_key': ?developerAppInsightsKey,
           'display_name': ?displayName,
           'endpoint': ?endpoint,
           'location': location,
           'luis_app_ids': ?luisAppIds,
           'luis_key': ?luisKey,
           'microsoft_app_id': microsoftAppId,
           'microsoft_app_tenant_id': ?microsoftAppTenantId,
           'microsoft_app_type': microsoftAppType,
           'microsoft_app_user_assigned_identity_id':
               ?microsoftAppUserAssignedIdentityId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotWebAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotWebApp>`.
  RefTo<AzurermBotWebApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `microsoft_app_tenant_id` attribute.
  TfRef<String> get microsoftAppTenantId =>
      TfRef.attribute<String>(this, 'microsoft_app_tenant_id');

  /// Reference to `microsoft_app_type` attribute.
  TfRef<String> get microsoftAppType =>
      TfRef.attribute<String>(this, 'microsoft_app_type');

  /// Reference to `microsoft_app_user_assigned_identity_id` attribute.
  TfRef<String> get microsoftAppUserAssignedIdentityId =>
      TfRef.attribute<String>(this, 'microsoft_app_user_assigned_identity_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
