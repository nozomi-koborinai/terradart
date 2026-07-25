// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<GkeonpremVmwareNodePoolConfigTaints>? taints;

  final GkeonpremVmwareNodePoolConfigVsphereConfig? vsphereConfig;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (cpus != null) 'cpus': cpus!.toTfJson(),
    if (enableLoadBalancer != null)
      'enable_load_balancer': enableLoadBalancer!.toTfJson(),
    if (image != null) 'image': image!.toTfJson(),
    'image_type': imageType.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (memoryMb != null) 'memory_mb': memoryMb!.toTfJson(),
    if (replicas != null) 'replicas': replicas!.toTfJson(),
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
    if (vsphereConfig != null) 'vsphere_config': vsphereConfig!.encode(),
  };
}

/// Typed helper for the `config.taints` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolConfigTaints {
  const GkeonpremVmwareNodePoolConfigTaints({
    this.effect,
    required this.key,
    required this.value,
  });

  final TfArg<GkeonpremVmwareNodePoolConfigTaintsEffect>? effect;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (effect != null) 'effect': effect!.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum GkeonpremVmwareNodePoolConfigTaintsEffect implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  noSchedule('NO_SCHEDULE'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const GkeonpremVmwareNodePoolConfigTaintsEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.vsphere_config` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolConfigVsphereConfig {
  const GkeonpremVmwareNodePoolConfigVsphereConfig({
    this.datastore,
    this.hostGroups,
    this.tags,
  });

  final TfArg<String>? datastore;

  final TfArg<List<Object?>>? hostGroups;

  final List<GkeonpremVmwareNodePoolConfigVsphereConfigTags>? tags;

  Map<String, Object?> encode() => {
    if (datastore != null) 'datastore': datastore!.toTfJson(),
    if (hostGroups != null) 'host_groups': hostGroups!.toTfJson(),
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
  };
}

/// Typed helper for the `config.vsphere_config.tags` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolConfigVsphereConfigTags {
  const GkeonpremVmwareNodePoolConfigVsphereConfigTags({
    this.category,
    this.tag,
  });

  final TfArg<String>? category;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
  };
}

/// Typed helper for the `node_pool_autoscaling` block of
/// `google_gkeonprem_vmware_node_pool` (derived from provider schema).
@immutable
final class GkeonpremVmwareNodePoolNodePoolAutoscaling {
  const GkeonpremVmwareNodePoolNodePoolAutoscaling({
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
    required TfArg<String> vmwareCluster,
    required GkeonpremVmwareNodePoolConfig config,
    TfArg<String>? onPremVersion,
    TfArg<String>? displayName,
    GkeonpremVmwareNodePoolNodePoolAutoscaling? nodePoolAutoscaling,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'vmware_cluster': vmwareCluster,
           'config': TfArg.literal(config.encode()),
           if (onPremVersion != null) 'on_prem_version': onPremVersion,
           if (displayName != null) 'display_name': displayName,
           if (nodePoolAutoscaling != null)
             'node_pool_autoscaling': TfArg.literal(
               nodePoolAutoscaling.encode(),
             ),
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeonpremVmwareNodePoolSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
