// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_storage_discovery_workspace`.
const Set<String> _azurermStorageDiscoveryWorkspaceSensitive = <String>{};

/// Storage Discovery Workspace enum for `sku`.
extension type const StorageDiscoveryWorkspaceSku._(TfArg<String> _)
    implements TfArg<String> {
  StorageDiscoveryWorkspaceSku.variable(String name)
    : this._(TfArg.variable(name));
  StorageDiscoveryWorkspaceSku.expression(String template)
    : this._(TfArg.expression(template));
  const StorageDiscoveryWorkspaceSku.arg(TfArg<String> arg) : this._(arg);

  static const free = StorageDiscoveryWorkspaceSku._(TfArgLiteral('Free'));
  static const standard = StorageDiscoveryWorkspaceSku._(
    TfArgLiteral('Standard'),
  );

  static const List<StorageDiscoveryWorkspaceSku> values = [free, standard];
}

/// Typed helper for the `scope` block of
/// `azurerm_storage_discovery_workspace` (derived from provider schema).
@immutable
final class StorageDiscoveryWorkspaceScope {
  const StorageDiscoveryWorkspaceScope({
    required this.displayName,
    required this.resourceTypes,
    this.tagKeysOnly,
    this.tags,
  });

  final TfArg<String> displayName;

  final EnumList<StorageDiscoveryWorkspaceResourceTypes> resourceTypes;

  final TfArg<List<String>>? tagKeysOnly;

  final TfArg<Map<String, String>>? tags;

  @internal
  Map<String, Object?> encode() => {
    'display_name': displayName.toTfJson(),
    'resource_types': resourceTypes.toTfJson(),
    'tag_keys_only': ?tagKeysOnly?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// `resource_types` — derived from the provider schema description.
extension type const StorageDiscoveryWorkspaceResourceTypes._(TfArg<String> _)
    implements TfArg<String> {
  StorageDiscoveryWorkspaceResourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  StorageDiscoveryWorkspaceResourceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const StorageDiscoveryWorkspaceResourceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftStorageStorageaccounts =
      StorageDiscoveryWorkspaceResourceTypes._(
        TfArgLiteral('Microsoft.Storage/storageAccounts'),
      );

  static const List<StorageDiscoveryWorkspaceResourceTypes> values = [
    microsoftStorageStorageaccounts,
  ];
}

/// Factory wrapper for `azurerm_storage_discovery_workspace`.
final class AzurermStorageDiscoveryWorkspace extends Resource {
  static const String tfType = 'azurerm_storage_discovery_workspace';

  AzurermStorageDiscoveryWorkspace(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    StorageDiscoveryWorkspaceSku? sku,
    TfArg<Map<String, String>>? tags,
    required TfArg<List<String>> workspaceRoots,
    required List<StorageDiscoveryWorkspaceScope> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'tags': ?tags,
           'workspace_roots': workspaceRoots,
           'scope': TfArg.literal([for (final e in scope) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageDiscoveryWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageDiscoveryWorkspace>`.
  RefTo<AzurermStorageDiscoveryWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_roots` attribute.
  TfRef<List<String>> get workspaceRoots =>
      TfRef.attribute<List<String>>(this, 'workspace_roots');
}
