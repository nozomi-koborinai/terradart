// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_node_pool`.
const Set<String> _googleContainerNodePoolSensitive = <String>{};

/// Factory wrapper for `google_container_node_pool`.
///
/// NodePool
///
/// Example (node pool on an existing cluster):
/// ```dart
/// final pool = GoogleContainerNodePool(
///   localName: 'primary',
///   name: TfArg.literal('primary-pool'),
///   location: TfArg.literal('asia-northeast1'),
///   cluster: TfArg.ref(cluster.nameRef),
///   nodeCount: TfArg.literal(3),
/// );
/// ```
final class GoogleContainerNodePool extends Resource {
  static const String tfType = 'google_container_node_pool';

  GoogleContainerNodePool({
    required super.localName,
    required TfArg<String> cluster,
    TfArg<num>? initialNodeCount,
    TfArg<String>? location,
    TfArg<num>? maxPodsPerNode,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<num>? nodeCount,
    TfArg<List<String>>? nodeLocations,
    TfArg<String>? project,
    TfArg<String>? version,
    TfArg<Map<String, dynamic>>? autoscaling,
    TfArg<Map<String, dynamic>>? management,
    TfArg<Map<String, dynamic>>? networkConfig,
    TfArg<Map<String, dynamic>>? nodeConfig,
    TfArg<List<Map<String, dynamic>>>? nodeDrainConfig,
    TfArg<Map<String, dynamic>>? placementPolicy,
    TfArg<Map<String, dynamic>>? queuedProvisioning,
    TfArg<Map<String, dynamic>>? upgradeSettings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           if (initialNodeCount != null) 'initial_node_count': initialNodeCount,
           if (location != null) 'location': location,
           if (maxPodsPerNode != null) 'max_pods_per_node': maxPodsPerNode,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (nodeCount != null) 'node_count': nodeCount,
           if (nodeLocations != null) 'node_locations': nodeLocations,
           if (project != null) 'project': project,
           if (version != null) 'version': version,
           if (autoscaling != null) 'autoscaling': autoscaling,
           if (management != null) 'management': management,
           if (networkConfig != null) 'network_config': networkConfig,
           if (nodeConfig != null) 'node_config': nodeConfig,
           if (nodeDrainConfig != null) 'node_drain_config': nodeDrainConfig,
           if (placementPolicy != null) 'placement_policy': placementPolicy,
           if (queuedProvisioning != null)
             'queued_provisioning': queuedProvisioning,
           if (upgradeSettings != null) 'upgrade_settings': upgradeSettings,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerNodePoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_group_urls` attribute.
  TfRef<List<String>> get instanceGroupUrls =>
      TfRef.attribute<List<String>>(this, 'instance_group_urls');

  /// Reference to `managed_instance_group_urls` attribute.
  TfRef<List<String>> get managedInstanceGroupUrls =>
      TfRef.attribute<List<String>>(this, 'managed_instance_group_urls');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');
}
