// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_linked_service`.
const Set<String> _azurermSynapseLinkedServiceSensitive = <String>{};

/// Typed helper for the `integration_runtime` block of
/// `azurerm_synapse_linked_service` (derived from provider schema).
@immutable
final class SynapseLinkedServiceIntegrationRuntime {
  const SynapseLinkedServiceIntegrationRuntime({
    required this.name,
    this.parameters,
  });

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_synapse_linked_service`.
final class AzurermSynapseLinkedService extends Resource {
  static const String tfType = 'azurerm_synapse_linked_service';

  AzurermSynapseLinkedService(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required TfArg<String> synapseWorkspaceId,
    required TfArg<String> type,
    required TfArg<String> typePropertiesJson,
    SynapseLinkedServiceIntegrationRuntime? integrationRuntime,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'description': ?description,
           'name': name,
           'parameters': ?parameters,
           'synapse_workspace_id': synapseWorkspaceId,
           'type': type,
           'type_properties_json': typePropertiesJson,
           if (integrationRuntime != null)
             'integration_runtime': TfArg.literal(integrationRuntime.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseLinkedServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseLinkedService>`.
  RefTo<AzurermSynapseLinkedService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `type_properties_json` attribute.
  TfRef<String> get typePropertiesJson =>
      TfRef.attribute<String>(this, 'type_properties_json');
}
