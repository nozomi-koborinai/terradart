// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gkeonprem/google_gkeonprem_vmware_cluster.dart'
    show GoogleGkeonpremVmwareCluster;

/// Sensitive field paths for `google_gkeonprem_vmware_node_pool`.
const Set<String> _googleGkeonpremVmwareNodePoolSensitive = <String>{};

/// Gkeonprem Vmware Node Pool enum for `state`.
enum GkeonpremVmwareNodePoolState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  provisioning('PROVISIONING'),
  running('RUNNING'),
  reconciling('RECONCILING'),
  stopping('STOPPING'),
  error('ERROR'),
  degraded('DEGRADED');

  const GkeonpremVmwareNodePoolState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolConfig {
  const GkeonpremVmwareNodePoolConfig({
    this.bootDiskSizeGb,
    this.cpus,
    this.enableLoadBalancer,
    this.image,
    required this.imageType,
    this.labels,
    this.memoryMb,
    this.replicas,
    this.taints,
    this.vsphereConfig,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<num>? cpus;

  final TfArg<bool>? enableLoadBalancer;

  final TfArg<String>? image;

  final TfArg<String> imageType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? memoryMb;

  final TfArg<num>? replicas;

  final List<GkeonpremVmwareNodePoolTaints>? taints;

  final GkeonpremVmwareNodePoolVsphereConfig? vsphereConfig;

  Map<String, Object?> encode() => {
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'cpus': ?cpus?.toTfJson(),
    'enable_load_balancer': ?enableLoadBalancer?.toTfJson(),
    'image': ?image?.toTfJson(),
    'image_type': imageType.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'memory_mb': ?memoryMb?.toTfJson(),
    'replicas': ?replicas?.toTfJson(),
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
    'vsphere_config': ?vsphereConfig?.encode(),
  };
}

/// Typed helper for the `config.taints` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolTaints {
  const GkeonpremVmwareNodePoolTaints({
    this.effect,
    required this.key,
    required this.value,
  });

  final TfArg<GkeonpremVmwareNodePoolEffect>? effect;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'effect': ?effect?.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum GkeonpremVmwareNodePoolEffect implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  noSchedule('NO_SCHEDULE'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremVmwareNodePoolEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.vsphere_config` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolVsphereConfig {
  const GkeonpremVmwareNodePoolVsphereConfig({
    this.datastore,
    this.hostGroups,
    this.tags,
  });

  final TfArg<String>? datastore;

  final TfArg<List<String>>? hostGroups;

  final List<GkeonpremVmwareNodePoolTags>? tags;

  Map<String, Object?> encode() => {
    'datastore': ?datastore?.toTfJson(),
    'host_groups': ?hostGroups?.toTfJson(),
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
  };
}

/// Typed helper for the `config.vsphere_config.tags` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolTags {
  const GkeonpremVmwareNodePoolTags({this.category, this.tag});

  final TfArg<String>? category;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    'category': ?category?.toTfJson(),
    'tag': ?tag?.toTfJson(),
  };
}

/// Typed helper for the `node_pool_autoscaling` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolAutoscaling {
  const GkeonpremVmwareNodePoolAutoscaling({
    required this.maxReplicas,
    required this.minReplicas,
  });

  final TfArg<num> maxReplicas;

  final TfArg<num> minReplicas;

  Map<String, Object?> encode() => {
    'max_replicas': maxReplicas.toTfJson(),
    'min_replicas': minReplicas.toTfJson(),
  };
}

/// Factory wrapper for `google_gkeonprem_vmware_node_pool`.
///
/// A Google Vmware Node Pool.
///
/// GKE on-prem / GDC **VMware node pool** — worker VMs for a
/// [GoogleGkeonpremVmwareCluster].
///
/// **Cost / apply:** gcp-cost: GKE Enterprise / GDC `9186-F79E-3871` vSphere
/// SKU `82D9-AB10-CA55` **$0.03288/h**. billing-behavior: requires never_apply
/// VMware cluster + real vSphere hardware absent on `terradart-validate`.
/// **Never** wire into apply-smoke.
///
/// Enable `gkeonprem.googleapis.com` before apply. [config] is required.
final class GoogleGkeonpremVmwareNodePool extends Resource {
  static const String tfType = 'google_gkeonprem_vmware_node_pool';

  GoogleGkeonpremVmwareNodePool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleGkeonpremVmwareCluster> vmwareCluster,
    required GkeonpremVmwareNodePoolConfig config,
    TfArg<String>? onPremVersion,
    TfArg<String>? displayName,
    GkeonpremVmwareNodePoolAutoscaling? nodePoolAutoscaling,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'vmware_cluster': vmwareCluster.encodeAs('name'),
           'config': TfArg.literal(config.encode()),
           'on_prem_version': ?onPremVersion,
           'display_name': ?displayName,
           if (nodePoolAutoscaling != null)
             'node_pool_autoscaling': TfArg.literal(
               nodePoolAutoscaling.encode(),
             ),
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremVmwareNodePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeonpremVmwareNodePool>`.
  RefTo<GoogleGkeonpremVmwareNodePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `on_prem_version` attribute.
  TfRef<String> get onPremVersion =>
      TfRef.attribute<String>(this, 'on_prem_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `vmware_cluster` attribute.
  TfRef<String> get vmwareCluster =>
      TfRef.attribute<String>(this, 'vmware_cluster');
}
