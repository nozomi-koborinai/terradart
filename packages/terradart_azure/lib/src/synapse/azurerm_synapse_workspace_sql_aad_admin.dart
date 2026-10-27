// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_workspace_sql_aad_admin`.
const Set<String> _azurermSynapseWorkspaceSqlAadAdminSensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_workspace_sql_aad_admin`.
final class AzurermSynapseWorkspaceSqlAadAdmin extends Resource {
  static const String tfType = 'azurerm_synapse_workspace_sql_aad_admin';

  AzurermSynapseWorkspaceSqlAadAdmin(
    super.localName, {
    required TfArg<String> login,
    required TfArg<String> objectId,
    required TfArg<String> synapseWorkspaceId,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'login': login,
           'object_id': objectId,
           'synapse_workspace_id': synapseWorkspaceId,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseWorkspaceSqlAadAdminSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseWorkspaceSqlAadAdmin>`.
  RefTo<AzurermSynapseWorkspaceSqlAadAdmin> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `login` attribute.
  TfRef<String> get login => TfRef.attribute<String>(this, 'login');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
