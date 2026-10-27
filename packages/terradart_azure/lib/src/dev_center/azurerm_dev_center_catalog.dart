// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_center_catalog`.
const Set<String> _azurermDevCenterCatalogSensitive = <String>{};

/// Typed helper for the `catalog_adogit` block of
/// `azurerm_dev_center_catalog` (derived from provider schema).
@immutable
final class DevCenterCatalogAdogit {
  const DevCenterCatalogAdogit({
    required this.branch,
    required this.keyVaultKeyUrl,
    required this.path,
    required this.uri,
  });

  final TfArg<String> branch;

  final TfArg<String> keyVaultKeyUrl;

  final TfArg<String> path;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'key_vault_key_url': keyVaultKeyUrl.toTfJson(),
    'path': path.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `catalog_github` block of
/// `azurerm_dev_center_catalog` (derived from provider schema).
@immutable
final class DevCenterCatalogGithub {
  const DevCenterCatalogGithub({
    required this.branch,
    required this.keyVaultKeyUrl,
    required this.path,
    required this.uri,
  });

  final TfArg<String> branch;

  final TfArg<String> keyVaultKeyUrl;

  final TfArg<String> path;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'key_vault_key_url': keyVaultKeyUrl.toTfJson(),
    'path': path.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dev_center_catalog`.
final class AzurermDevCenterCatalog extends Resource {
  static const String tfType = 'azurerm_dev_center_catalog';

  AzurermDevCenterCatalog(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    DevCenterCatalogAdogit? catalogAdogit,
    DevCenterCatalogGithub? catalogGithub,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dev_center_id': devCenterId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (catalogAdogit != null)
             'catalog_adogit': TfArg.literal(catalogAdogit.encode()),
           if (catalogGithub != null)
             'catalog_github': TfArg.literal(catalogGithub.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterCatalogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterCatalog>`.
  RefTo<AzurermDevCenterCatalog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
