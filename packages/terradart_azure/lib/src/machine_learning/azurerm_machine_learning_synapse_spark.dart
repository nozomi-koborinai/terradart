// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_synapse_spark`.
const Set<String> _azurermMachineLearningSynapseSparkSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_machine_learning_synapse_spark` (derived from provider schema).
@immutable
final class MachineLearningSynapseSparkIdentity {
  const MachineLearningSynapseSparkIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_machine_learning_synapse_spark`.
final class AzurermMachineLearningSynapseSpark extends Resource {
  static const String tfType = 'azurerm_machine_learning_synapse_spark';

  AzurermMachineLearningSynapseSpark(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    required TfArg<String> machineLearningWorkspaceId,
    required TfArg<String> name,
    required TfArg<String> synapseSparkPoolId,
    TfArg<Map<String, String>>? tags,
    MachineLearningSynapseSparkIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'machine_learning_workspace_id': machineLearningWorkspaceId,
           'name': name,
           'synapse_spark_pool_id': synapseSparkPoolId,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningSynapseSparkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningSynapseSpark>`.
  RefTo<AzurermMachineLearningSynapseSpark> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `machine_learning_workspace_id` attribute.
  TfRef<String> get machineLearningWorkspaceId =>
      TfRef.attribute<String>(this, 'machine_learning_workspace_id');

  /// Reference to `synapse_spark_pool_id` attribute.
  TfRef<String> get synapseSparkPoolId =>
      TfRef.attribute<String>(this, 'synapse_spark_pool_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
