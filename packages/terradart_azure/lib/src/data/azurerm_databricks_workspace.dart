// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../databricks/azurerm_databricks_workspace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_databricks_workspace`.
const Set<String> _azurermDatabricksWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_databricks_workspace`.
final class DataAzurermDatabricksWorkspace extends Data {
  static const String tfType = 'azurerm_databricks_workspace';

  DataAzurermDatabricksWorkspace(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDatabricksWorkspaceSensitive;

  /// A reference to the `azurerm_databricks_workspace` this data source reads, for
  /// arguments typed `RefTo<AzurermDatabricksWorkspace>`.
  RefTo<AzurermDatabricksWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_parameters` attribute.
  TfRef<List<Map<String, Object?>>> get customParameters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'custom_parameters');

  /// Reference to `enhanced_security_compliance` attribute.
  TfRef<List<Map<String, Object?>>> get enhancedSecurityCompliance =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'enhanced_security_compliance',
      );

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_disk_identity` attribute.
  TfRef<List<Map<String, Object?>>> get managedDiskIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'managed_disk_identity',
      );

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `storage_account_identity` attribute.
  TfRef<List<Map<String, Object?>>> get storageAccountIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'storage_account_identity',
      );

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `workspace_url` attribute.
  TfRef<String> get workspaceUrl =>
      TfRef.attribute<String>(this, 'workspace_url');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
