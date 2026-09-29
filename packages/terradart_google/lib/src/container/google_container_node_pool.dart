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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'initial_node_count': ?initialNodeCount,
           'location': ?location,
           'max_pods_per_node': ?maxPodsPerNode,
           'name': ?name,
           'name_prefix': ?namePrefix,
           'node_count': ?nodeCount,
           'node_locations': ?nodeLocations,
           'project': ?project,
           'version': ?version,
           'autoscaling': ?autoscaling,
           'management': ?management,
           'network_config': ?networkConfig,
           'node_config': ?nodeConfig,
           'node_drain_config': ?nodeDrainConfig,
           'placement_policy': ?placementPolicy,
           'queued_provisioning': ?queuedProvisioning,
           'upgrade_settings': ?upgradeSettings,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerNodePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerNodePool>`.
  RefTo<GoogleContainerNodePool> get ref => RefTo.of(this);

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
