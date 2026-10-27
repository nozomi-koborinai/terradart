// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_managed_private_endpoint`.
const Set<String> _azurermSynapseManagedPrivateEndpointSensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_managed_private_endpoint`.
final class AzurermSynapseManagedPrivateEndpoint extends Resource {
  static const String tfType = 'azurerm_synapse_managed_private_endpoint';

  AzurermSynapseManagedPrivateEndpoint(
    super.localName, {
    TfArg<List<String>>? fullyQualifiedDomainNames,
    required TfArg<String> name,
    required TfArg<String> subresourceName,
    required TfArg<String> synapseWorkspaceId,
    required TfArg<String> targetResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fully_qualified_domain_names': ?fullyQualifiedDomainNames,
           'name': name,
           'subresource_name': subresourceName,
           'synapse_workspace_id': synapseWorkspaceId,
           'target_resource_id': targetResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseManagedPrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseManagedPrivateEndpoint>`.
  RefTo<AzurermSynapseManagedPrivateEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fully_qualified_domain_names` attribute.
  TfRef<List<String>> get fullyQualifiedDomainNames =>
      TfRef.attribute<List<String>>(this, 'fully_qualified_domain_names');

  /// Reference to `subresource_name` attribute.
  TfRef<String> get subresourceName =>
      TfRef.attribute<String>(this, 'subresource_name');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
