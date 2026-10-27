// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_databricks_workspace_private_endpoint_connection`.
const Set<String>
_azurermDatabricksWorkspacePrivateEndpointConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_databricks_workspace_private_endpoint_connection`.
final class DataAzurermDatabricksWorkspacePrivateEndpointConnection
    extends Data {
  static const String tfType =
      'azurerm_databricks_workspace_private_endpoint_connection';

  DataAzurermDatabricksWorkspacePrivateEndpointConnection(
    super.localName, {
    required TfArg<String> privateEndpointId,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'private_endpoint_id': privateEndpointId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDatabricksWorkspacePrivateEndpointConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connections` attribute.
  TfRef<List<Map<String, Object?>>> get connections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connections');

  /// Reference to `private_endpoint_id` attribute.
  TfRef<String> get privateEndpointId =>
      TfRef.attribute<String>(this, 'private_endpoint_id');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
