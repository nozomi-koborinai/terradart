// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_center`.
const Set<String> _azurermDevCenterSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_dev_center` (derived from provider schema).
@immutable
final class DevCenterIdentity {
  const DevCenterIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dev_center`.
final class AzurermDevCenter extends Resource {
  static const String tfType = 'azurerm_dev_center';

  AzurermDevCenter(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? projectCatalogItemSyncEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    DevCenterIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'project_catalog_item_sync_enabled': ?projectCatalogItemSyncEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenter>`.
  RefTo<AzurermDevCenter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_uri` attribute.
  TfRef<String> get devCenterUri =>
      TfRef.attribute<String>(this, 'dev_center_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project_catalog_item_sync_enabled` attribute.
  TfRef<bool> get projectCatalogItemSyncEnabled =>
      TfRef.attribute<bool>(this, 'project_catalog_item_sync_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
