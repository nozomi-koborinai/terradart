// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_workspace_key`.
const Set<String> _azurermSynapseWorkspaceKeySensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_workspace_key`.
final class AzurermSynapseWorkspaceKey extends Resource {
  static const String tfType = 'azurerm_synapse_workspace_key';

  AzurermSynapseWorkspaceKey(
    super.localName, {
    required TfArg<bool> active,
    required TfArg<String> customerManagedKeyName,
    TfArg<String>? customerManagedKeyVersionlessId,
    required TfArg<String> synapseWorkspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active': active,
           'customer_managed_key_name': customerManagedKeyName,
           'customer_managed_key_versionless_id':
               ?customerManagedKeyVersionlessId,
           'synapse_workspace_id': synapseWorkspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseWorkspaceKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseWorkspaceKey>`.
  RefTo<AzurermSynapseWorkspaceKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `customer_managed_key_name` attribute.
  TfRef<String> get customerManagedKeyName =>
      TfRef.attribute<String>(this, 'customer_managed_key_name');

  /// Reference to `customer_managed_key_versionless_id` attribute.
  TfRef<String> get customerManagedKeyVersionlessId =>
      TfRef.attribute<String>(this, 'customer_managed_key_versionless_id');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');
}
