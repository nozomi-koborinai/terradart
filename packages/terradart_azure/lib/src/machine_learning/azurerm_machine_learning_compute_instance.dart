// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_compute_instance`.
const Set<String> _azurermMachineLearningComputeInstanceSensitive = <String>{};

/// Machine Learning Compute Instance Authorization enum for `authorization_type`.
extension type const MachineLearningComputeInstanceAuthorizationType._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningComputeInstanceAuthorizationType.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningComputeInstanceAuthorizationType.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningComputeInstanceAuthorizationType.arg(TfArg<String> arg)
    : this._(arg);

  static const personal = MachineLearningComputeInstanceAuthorizationType._(
    TfArgLiteral('personal'),
  );

  static const List<MachineLearningComputeInstanceAuthorizationType> values = [
    personal,
  ];
}

/// Typed helper for the `assign_to_user` block of
/// `azurerm_machine_learning_compute_instance` (derived from provider schema).
@immutable
final class MachineLearningComputeInstanceAssignToUser {
  const MachineLearningComputeInstanceAssignToUser({
    this.objectId,
    this.tenantId,
  });

  final TfArg<String>? objectId;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'object_id': ?objectId?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_machine_learning_compute_instance` (derived from provider schema).
@immutable
final class MachineLearningComputeInstanceIdentity {
  const MachineLearningComputeInstanceIdentity({
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

/// Typed helper for the `ssh` block of
/// `azurerm_machine_learning_compute_instance` (derived from provider schema).
@immutable
final class MachineLearningComputeInstanceSsh {
  const MachineLearningComputeInstanceSsh({required this.publicKey});

  final TfArg<String> publicKey;

  @internal
  Map<String, Object?> encode() => {'public_key': publicKey.toTfJson()};
}

/// Factory wrapper for `azurerm_machine_learning_compute_instance`.
final class AzurermMachineLearningComputeInstance extends Resource {
  static const String tfType = 'azurerm_machine_learning_compute_instance';

  AzurermMachineLearningComputeInstance(
    super.localName, {
    MachineLearningComputeInstanceAuthorizationType? authorizationType,
    TfArg<String>? description,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> machineLearningWorkspaceId,
    required TfArg<String> name,
    TfArg<bool>? nodePublicIpEnabled,
    TfArg<String>? subnetResourceId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualMachineSize,
    MachineLearningComputeInstanceAssignToUser? assignToUser,
    MachineLearningComputeInstanceIdentity? identity,
    MachineLearningComputeInstanceSsh? ssh,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorization_type': ?authorizationType,
           'description': ?description,
           'local_auth_enabled': ?localAuthEnabled,
           'machine_learning_workspace_id': machineLearningWorkspaceId,
           'name': name,
           'node_public_ip_enabled': ?nodePublicIpEnabled,
           'subnet_resource_id': ?subnetResourceId,
           'tags': ?tags,
           'virtual_machine_size': virtualMachineSize,
           if (assignToUser != null)
             'assign_to_user': TfArg.literal(assignToUser.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (ssh != null) 'ssh': TfArg.literal(ssh.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningComputeInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningComputeInstance>`.
  RefTo<AzurermMachineLearningComputeInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `machine_learning_workspace_id` attribute.
  TfRef<String> get machineLearningWorkspaceId =>
      TfRef.attribute<String>(this, 'machine_learning_workspace_id');

  /// Reference to `node_public_ip_enabled` attribute.
  TfRef<bool> get nodePublicIpEnabled =>
      TfRef.attribute<bool>(this, 'node_public_ip_enabled');

  /// Reference to `subnet_resource_id` attribute.
  TfRef<String> get subnetResourceId =>
      TfRef.attribute<String>(this, 'subnet_resource_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_machine_size` attribute.
  TfRef<String> get virtualMachineSize =>
      TfRef.attribute<String>(this, 'virtual_machine_size');
}
