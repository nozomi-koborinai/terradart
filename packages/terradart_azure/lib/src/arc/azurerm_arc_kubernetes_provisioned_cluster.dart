// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_arc_kubernetes_provisioned_cluster`.
const Set<String> _azurermArcKubernetesProvisionedClusterSensitive = <String>{};

/// Typed helper for the `azure_active_directory` block of
/// `azurerm_arc_kubernetes_provisioned_cluster` (derived from provider schema).
@immutable
final class ArcKubernetesProvisionedClusterAzureActiveDirectory {
  const ArcKubernetesProvisionedClusterAzureActiveDirectory({
    this.adminGroupObjectIds,
    this.azureRbacEnabled,
    this.tenantId,
  });

  final TfArg<List<String>>? adminGroupObjectIds;

  final TfArg<bool>? azureRbacEnabled;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'admin_group_object_ids': ?adminGroupObjectIds?.toTfJson(),
    'azure_rbac_enabled': ?azureRbacEnabled?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_arc_kubernetes_provisioned_cluster` (derived from provider schema).
@immutable
final class ArcKubernetesProvisionedClusterIdentity {
  const ArcKubernetesProvisionedClusterIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_arc_kubernetes_provisioned_cluster`.
final class AzurermArcKubernetesProvisionedCluster extends Resource {
  static const String tfType = 'azurerm_arc_kubernetes_provisioned_cluster';

  AzurermArcKubernetesProvisionedCluster(
    super.localName, {
    TfArg<bool>? arcAgentAutoUpgradeEnabled,
    TfArg<String>? arcAgentDesiredVersion,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    ArcKubernetesProvisionedClusterAzureActiveDirectory? azureActiveDirectory,
    required ArcKubernetesProvisionedClusterIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arc_agent_auto_upgrade_enabled': ?arcAgentAutoUpgradeEnabled,
           'arc_agent_desired_version': ?arcAgentDesiredVersion,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (azureActiveDirectory != null)
             'azure_active_directory': TfArg.literal(
               azureActiveDirectory.encode(),
             ),
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermArcKubernetesProvisionedClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcKubernetesProvisionedCluster>`.
  RefTo<AzurermArcKubernetesProvisionedCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `distribution` attribute.
  TfRef<String> get distribution =>
      TfRef.attribute<String>(this, 'distribution');

  /// Reference to `infrastructure` attribute.
  TfRef<String> get infrastructure =>
      TfRef.attribute<String>(this, 'infrastructure');

  /// Reference to `kubernetes_version` attribute.
  TfRef<String> get kubernetesVersion =>
      TfRef.attribute<String>(this, 'kubernetes_version');

  /// Reference to `offering` attribute.
  TfRef<String> get offering => TfRef.attribute<String>(this, 'offering');

  /// Reference to `total_core_count` attribute.
  TfRef<num> get totalCoreCount =>
      TfRef.attribute<num>(this, 'total_core_count');

  /// Reference to `total_node_count` attribute.
  TfRef<num> get totalNodeCount =>
      TfRef.attribute<num>(this, 'total_node_count');

  /// Reference to `arc_agent_auto_upgrade_enabled` attribute.
  TfRef<bool> get arcAgentAutoUpgradeEnabled =>
      TfRef.attribute<bool>(this, 'arc_agent_auto_upgrade_enabled');

  /// Reference to `arc_agent_desired_version` attribute.
  TfRef<String> get arcAgentDesiredVersion =>
      TfRef.attribute<String>(this, 'arc_agent_desired_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
