// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../static_web_app/azurerm_static_web_app.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_static_web_app`.
const Set<String> _azurermStaticWebAppSensitive = <String>{
  'api_key',
  'basic_auth',
};

/// Factory wrapper for `azurerm_static_web_app`.
final class DataAzurermStaticWebApp extends Data {
  static const String tfType = 'azurerm_static_web_app';

  DataAzurermStaticWebApp(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStaticWebAppSensitive;

  /// A reference to the `azurerm_static_web_app` this data source reads, for
  /// arguments typed `RefTo<AzurermStaticWebApp>`.
  RefTo<AzurermStaticWebApp> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `app_settings` attribute.
  TfRef<Map<String, String>> get appSettings =>
      TfRef.attribute<Map<String, String>>(this, 'app_settings');

  /// Reference to `basic_auth` attribute.
  TfRef<List<Map<String, Object?>>> get basicAuth =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'basic_auth');

  /// Reference to `configuration_file_changes_enabled` attribute.
  TfRef<bool> get configurationFileChangesEnabled =>
      TfRef.attribute<bool>(this, 'configuration_file_changes_enabled');

  /// Reference to `default_host_name` attribute.
  TfRef<String> get defaultHostName =>
      TfRef.attribute<String>(this, 'default_host_name');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `preview_environments_enabled` attribute.
  TfRef<bool> get previewEnvironmentsEnabled =>
      TfRef.attribute<bool>(this, 'preview_environments_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `repository_branch` attribute.
  TfRef<String> get repositoryBranch =>
      TfRef.attribute<String>(this, 'repository_branch');

  /// Reference to `repository_url` attribute.
  TfRef<String> get repositoryUrl =>
      TfRef.attribute<String>(this, 'repository_url');

  /// Reference to `sku_size` attribute.
  TfRef<String> get skuSize => TfRef.attribute<String>(this, 'sku_size');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
