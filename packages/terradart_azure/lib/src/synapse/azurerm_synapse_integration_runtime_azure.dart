// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_integration_runtime_azure`.
const Set<String> _azurermSynapseIntegrationRuntimeAzureSensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_integration_runtime_azure`.
final class AzurermSynapseIntegrationRuntimeAzure extends Resource {
  static const String tfType = 'azurerm_synapse_integration_runtime_azure';

  AzurermSynapseIntegrationRuntimeAzure(
    super.localName, {
    TfArg<String>? computeType,
    TfArg<num>? coreCount,
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> synapseWorkspaceId,
    TfArg<num>? timeToLiveMin,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compute_type': ?computeType,
           'core_count': ?coreCount,
           'description': ?description,
           'location': location,
           'name': name,
           'synapse_workspace_id': synapseWorkspaceId,
           'time_to_live_min': ?timeToLiveMin,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseIntegrationRuntimeAzureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseIntegrationRuntimeAzure>`.
  RefTo<AzurermSynapseIntegrationRuntimeAzure> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `compute_type` attribute.
  TfRef<String> get computeType =>
      TfRef.attribute<String>(this, 'compute_type');

  /// Reference to `core_count` attribute.
  TfRef<num> get coreCount => TfRef.attribute<num>(this, 'core_count');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');

  /// Reference to `time_to_live_min` attribute.
  TfRef<num> get timeToLiveMin =>
      TfRef.attribute<num>(this, 'time_to_live_min');
}
