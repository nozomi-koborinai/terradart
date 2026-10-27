// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_scope_connection`.
const Set<String> _azurermNetworkManagerScopeConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager_scope_connection`.
final class AzurermNetworkManagerScopeConnection extends Resource {
  static const String tfType = 'azurerm_network_manager_scope_connection';

  AzurermNetworkManagerScopeConnection(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    required TfArg<String> targetScopeId,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'network_manager_id': networkManagerId,
           'target_scope_id': targetScopeId,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerScopeConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerScopeConnection>`.
  RefTo<AzurermNetworkManagerScopeConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_state` attribute.
  TfRef<String> get connectionState =>
      TfRef.attribute<String>(this, 'connection_state');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');

  /// Reference to `target_scope_id` attribute.
  TfRef<String> get targetScopeId =>
      TfRef.attribute<String>(this, 'target_scope_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
