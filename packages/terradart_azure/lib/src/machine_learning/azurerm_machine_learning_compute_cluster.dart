// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_compute_cluster`.
const Set<String> _azurermMachineLearningComputeClusterSensitive = <String>{
  'ssh.admin_password',
};

/// Machine Learning Compute Cluster Vm enum for `vm_priority`.
extension type const MachineLearningComputeClusterVmPriority._(TfArg<String> _)
    implements TfArg<String> {
  MachineLearningComputeClusterVmPriority.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningComputeClusterVmPriority.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningComputeClusterVmPriority.arg(TfArg<String> arg)
    : this._(arg);

  static const dedicated = MachineLearningComputeClusterVmPriority._(
    TfArgLiteral('Dedicated'),
  );
  static const lowpriority = MachineLearningComputeClusterVmPriority._(
    TfArgLiteral('LowPriority'),
  );

  static const List<MachineLearningComputeClusterVmPriority> values = [
    dedicated,
    lowpriority,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_machine_learning_compute_cluster` (derived from provider schema).
@immutable
final class MachineLearningComputeClusterIdentity {
  const MachineLearningComputeClusterIdentity({
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

/// Typed helper for the `scale_settings` block of
/// `azurerm_machine_learning_compute_cluster` (derived from provider schema).
@immutable
final class MachineLearningComputeClusterScaleSettings {
  const MachineLearningComputeClusterScaleSettings({
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.scaleDownNodesAfterIdleDuration,
  });

  final TfArg<num> maxNodeCount;

  final TfArg<num> minNodeCount;

  final TfArg<String> scaleDownNodesAfterIdleDuration;

  @internal
  Map<String, Object?> encode() => {
    'max_node_count': maxNodeCount.toTfJson(),
    'min_node_count': minNodeCount.toTfJson(),
    'scale_down_nodes_after_idle_duration': scaleDownNodesAfterIdleDuration
        .toTfJson(),
  };
}

/// Typed helper for the `ssh` block of
/// `azurerm_machine_learning_compute_cluster` (derived from provider schema).
@immutable
final class MachineLearningComputeClusterSsh {
  const MachineLearningComputeClusterSsh({
    this.adminPassword,
    required this.adminUsername,
    this.keyValue,
  });

  final Sensitive<String>? adminPassword;

  final TfArg<String> adminUsername;

  final TfArg<String>? keyValue;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': ?adminPassword?.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'key_value': ?keyValue?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_machine_learning_compute_cluster`.
final class AzurermMachineLearningComputeCluster extends Resource {
  static const String tfType = 'azurerm_machine_learning_compute_cluster';

  AzurermMachineLearningComputeCluster(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    required TfArg<String> machineLearningWorkspaceId,
    required TfArg<String> name,
    TfArg<bool>? nodePublicIpEnabled,
    TfArg<bool>? sshPublicAccessEnabled,
    TfArg<String>? subnetResourceId,
    TfArg<Map<String, String>>? tags,
    required MachineLearningComputeClusterVmPriority vmPriority,
    required TfArg<String> vmSize,
    MachineLearningComputeClusterIdentity? identity,
    required MachineLearningComputeClusterScaleSettings scaleSettings,
    MachineLearningComputeClusterSsh? ssh,
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
           'node_public_ip_enabled': ?nodePublicIpEnabled,
           'ssh_public_access_enabled': ?sshPublicAccessEnabled,
           'subnet_resource_id': ?subnetResourceId,
           'tags': ?tags,
           'vm_priority': vmPriority,
           'vm_size': vmSize,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'scale_settings': TfArg.literal(scaleSettings.encode()),
           if (ssh != null) 'ssh': TfArg.literal(ssh.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningComputeClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningComputeCluster>`.
  RefTo<AzurermMachineLearningComputeCluster> get ref => RefTo.of(this);

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

  /// Reference to `node_public_ip_enabled` attribute.
  TfRef<bool> get nodePublicIpEnabled =>
      TfRef.attribute<bool>(this, 'node_public_ip_enabled');

  /// Reference to `ssh_public_access_enabled` attribute.
  TfRef<bool> get sshPublicAccessEnabled =>
      TfRef.attribute<bool>(this, 'ssh_public_access_enabled');

  /// Reference to `subnet_resource_id` attribute.
  TfRef<String> get subnetResourceId =>
      TfRef.attribute<String>(this, 'subnet_resource_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vm_priority` attribute.
  TfRef<String> get vmPriority => TfRef.attribute<String>(this, 'vm_priority');

  /// Reference to `vm_size` attribute.
  TfRef<String> get vmSize => TfRef.attribute<String>(this, 'vm_size');
}
