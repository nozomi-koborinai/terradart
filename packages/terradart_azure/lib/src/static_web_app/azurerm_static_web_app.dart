// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_static_web_app`.
const Set<String> _azurermStaticWebAppSensitive = <String>{
  'api_key',
  'basic_auth.password',
  'repository_token',
};

/// Typed helper for the `basic_auth` block of
/// `azurerm_static_web_app` (derived from provider schema).
@immutable
final class StaticWebAppBasicAuth {
  const StaticWebAppBasicAuth({
    required this.environments,
    required this.password,
  });

  final TfArg<String> environments;

  final Sensitive<String> password;

  @internal
  Map<String, Object?> encode() => {
    'environments': environments.toTfJson(),
    'password': password.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_static_web_app` (derived from provider schema).
@immutable
final class StaticWebAppIdentity {
  const StaticWebAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_static_web_app`.
final class AzurermStaticWebApp extends Resource {
  static const String tfType = 'azurerm_static_web_app';

  AzurermStaticWebApp(
    super.localName, {
    TfArg<Map<String, String>>? appSettings,
    TfArg<bool>? configurationFileChangesEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? previewEnvironmentsEnabled,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<String>? repositoryBranch,
    Sensitive<String>? repositoryToken,
    TfArg<String>? repositoryUrl,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? skuSize,
    TfArg<String>? skuTier,
    TfArg<Map<String, String>>? tags,
    StaticWebAppBasicAuth? basicAuth,
    StaticWebAppIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_settings': ?appSettings,
           'configuration_file_changes_enabled':
               ?configurationFileChangesEnabled,
           'location': location,
           'name': name,
           'preview_environments_enabled': ?previewEnvironmentsEnabled,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'repository_branch': ?repositoryBranch,
           'repository_token': ?repositoryToken,
           'repository_url': ?repositoryUrl,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_size': ?skuSize,
           'sku_tier': ?skuTier,
           'tags': ?tags,
           if (basicAuth != null)
             'basic_auth': TfArg.literal(basicAuth.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStaticWebAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStaticWebApp>`.
  RefTo<AzurermStaticWebApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `default_host_name` attribute.
  TfRef<String> get defaultHostName =>
      TfRef.attribute<String>(this, 'default_host_name');

  /// Reference to `app_settings` attribute.
  TfRef<Map<String, String>> get appSettings =>
      TfRef.attribute<Map<String, String>>(this, 'app_settings');

  /// Reference to `configuration_file_changes_enabled` attribute.
  TfRef<bool> get configurationFileChangesEnabled =>
      TfRef.attribute<bool>(this, 'configuration_file_changes_enabled');

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

  /// Reference to `repository_token` attribute.
  TfRef<String> get repositoryToken =>
      TfRef.attribute<String>(this, 'repository_token');

  /// Reference to `repository_url` attribute.
  TfRef<String> get repositoryUrl =>
      TfRef.attribute<String>(this, 'repository_url');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_size` attribute.
  TfRef<String> get skuSize => TfRef.attribute<String>(this, 'sku_size');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
