// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kubernetes/azurerm_kubernetes_cluster_node_pool.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kubernetes_cluster_node_pool`.
const Set<String> _azurermKubernetesClusterNodePoolSensitive = <String>{};

/// Factory wrapper for `azurerm_kubernetes_cluster_node_pool`.
final class DataAzurermKubernetesClusterNodePool extends Data {
  static const String tfType = 'azurerm_kubernetes_cluster_node_pool';

  DataAzurermKubernetesClusterNodePool(
    super.localName, {
    required TfArg<String> kubernetesClusterName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kubernetes_cluster_name': kubernetesClusterName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesClusterNodePoolSensitive;

  /// A reference to the `azurerm_kubernetes_cluster_node_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermKubernetesClusterNodePool>`.
  RefTo<AzurermKubernetesClusterNodePool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `eviction_policy` attribute.
  TfRef<String> get evictionPolicy =>
      TfRef.attribute<String>(this, 'eviction_policy');

  /// Reference to `gpu_driver` attribute.
  TfRef<String> get gpuDriver => TfRef.attribute<String>(this, 'gpu_driver');

  /// Reference to `max_count` attribute.
  TfRef<num> get maxCount => TfRef.attribute<num>(this, 'max_count');

  /// Reference to `max_pods` attribute.
  TfRef<num> get maxPods => TfRef.attribute<num>(this, 'max_pods');

  /// Reference to `min_count` attribute.
  TfRef<num> get minCount => TfRef.attribute<num>(this, 'min_count');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `node_image_version` attribute.
  TfRef<String> get nodeImageVersion =>
      TfRef.attribute<String>(this, 'node_image_version');

  /// Reference to `node_labels` attribute.
  TfRef<Map<String, String>> get nodeLabels =>
      TfRef.attribute<Map<String, String>>(this, 'node_labels');

  /// Reference to `node_public_ip_enabled` attribute.
  TfRef<bool> get nodePublicIpEnabled =>
      TfRef.attribute<bool>(this, 'node_public_ip_enabled');

  /// Reference to `node_public_ip_prefix_id` attribute.
  TfRef<String> get nodePublicIpPrefixId =>
      TfRef.attribute<String>(this, 'node_public_ip_prefix_id');

  /// Reference to `node_taints` attribute.
  TfRef<List<String>> get nodeTaints =>
      TfRef.attribute<List<String>>(this, 'node_taints');

  /// Reference to `orchestrator_version` attribute.
  TfRef<String> get orchestratorVersion =>
      TfRef.attribute<String>(this, 'orchestrator_version');

  /// Reference to `os_disk_size_gb` attribute.
  TfRef<num> get osDiskSizeGb => TfRef.attribute<num>(this, 'os_disk_size_gb');

  /// Reference to `os_disk_type` attribute.
  TfRef<String> get osDiskType => TfRef.attribute<String>(this, 'os_disk_type');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `proximity_placement_group_id` attribute.
  TfRef<String> get proximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'proximity_placement_group_id');

  /// Reference to `spot_max_price` attribute.
  TfRef<num> get spotMaxPrice => TfRef.attribute<num>(this, 'spot_max_price');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upgrade_settings` attribute.
  TfRef<List<Map<String, Object?>>> get upgradeSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'upgrade_settings');

  /// Reference to `vm_size` attribute.
  TfRef<String> get vmSize => TfRef.attribute<String>(this, 'vm_size');

  /// Reference to `vnet_subnet_id` attribute.
  TfRef<String> get vnetSubnetId =>
      TfRef.attribute<String>(this, 'vnet_subnet_id');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `kubernetes_cluster_name` attribute.
  TfRef<String> get kubernetesClusterName =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
