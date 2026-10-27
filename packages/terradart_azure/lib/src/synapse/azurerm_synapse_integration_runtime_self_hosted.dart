// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_integration_runtime_self_hosted`.
const Set<String> _azurermSynapseIntegrationRuntimeSelfHostedSensitive =
    <String>{};

/// Factory wrapper for `azurerm_synapse_integration_runtime_self_hosted`.
final class AzurermSynapseIntegrationRuntimeSelfHosted extends Resource {
  static const String tfType =
      'azurerm_synapse_integration_runtime_self_hosted';

  AzurermSynapseIntegrationRuntimeSelfHosted(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> synapseWorkspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'synapse_workspace_id': synapseWorkspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseIntegrationRuntimeSelfHostedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseIntegrationRuntimeSelfHosted>`.
  RefTo<AzurermSynapseIntegrationRuntimeSelfHosted> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_key_primary` attribute.
  TfRef<String> get authorizationKeyPrimary =>
      TfRef.attribute<String>(this, 'authorization_key_primary');

  /// Reference to `authorization_key_secondary` attribute.
  TfRef<String> get authorizationKeySecondary =>
      TfRef.attribute<String>(this, 'authorization_key_secondary');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');
}
