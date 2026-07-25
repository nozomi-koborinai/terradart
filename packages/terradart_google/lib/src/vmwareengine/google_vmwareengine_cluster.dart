// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_cluster`.
const Set<String> _googleVmwareengineClusterSensitive = <String>{};

/// Vmwareengine Cluster enum for `state`.
enum VmwareengineClusterState implements TerraformEnum {
  active('ACTIVE'),
  creating('CREATING'),
  updating('UPDATING'),
  deleting('DELETING'),
  repairing('REPAIRING');

  const VmwareengineClusterState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `autoscaling_settings` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterAutoscalingSettings {
  const VmwareengineClusterAutoscalingSettings({
    this.coolDownPeriod,
    this.maxClusterNodeCount,
    this.minClusterNodeCount,
    required this.autoscalingPolicies,
  });

  final TfArg<String>? coolDownPeriod;

  final TfArg<num>? maxClusterNodeCount;

  final TfArg<num>? minClusterNodeCount;

  final List<VmwareengineClusterAutoscalingSettingsAutoscalingPolicies>
  autoscalingPolicies;

  Map<String, Object?> encode() => {
    if (coolDownPeriod != null) 'cool_down_period': coolDownPeriod!.toTfJson(),
    if (maxClusterNodeCount != null)
      'max_cluster_node_count': maxClusterNodeCount!.toTfJson(),
    if (minClusterNodeCount != null)
      'min_cluster_node_count': minClusterNodeCount!.toTfJson(),
    'autoscaling_policies': [for (final e in autoscalingPolicies) e.encode()],
  };
}

/// Typed helper for the `autoscaling_settings.autoscaling_policies` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterAutoscalingSettingsAutoscalingPolicies {
  const VmwareengineClusterAutoscalingSettingsAutoscalingPolicies({
    required this.autoscalePolicyId,
    required this.nodeTypeId,
    required this.scaleOutSize,
    this.consumedMemoryThresholds,
    this.cpuThresholds,
    this.storageThresholds,
  });

  final TfArg<String> autoscalePolicyId;

  final TfArg<String> nodeTypeId;

  final TfArg<num> scaleOutSize;

  final VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesConsumedMemoryThresholds?
  consumedMemoryThresholds;

  final VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesCpuThresholds?
  cpuThresholds;

  final VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesStorageThresholds?
  storageThresholds;

  Map<String, Object?> encode() => {
    'autoscale_policy_id': autoscalePolicyId.toTfJson(),
    'node_type_id': nodeTypeId.toTfJson(),
    'scale_out_size': scaleOutSize.toTfJson(),
    if (consumedMemoryThresholds != null)
      'consumed_memory_thresholds': consumedMemoryThresholds!.encode(),
    if (cpuThresholds != null) 'cpu_thresholds': cpuThresholds!.encode(),
    if (storageThresholds != null)
      'storage_thresholds': storageThresholds!.encode(),
  };
}

/// Typed helper for the `autoscaling_settings.autoscaling_policies.consumed_memory_thresholds` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesConsumedMemoryThresholds {
  const VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesConsumedMemoryThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  final TfArg<num> scaleIn;

  final TfArg<num> scaleOut;

  Map<String, Object?> encode() => {
    'scale_in': scaleIn.toTfJson(),
    'scale_out': scaleOut.toTfJson(),
  };
}

/// Typed helper for the `autoscaling_settings.autoscaling_policies.cpu_thresholds` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesCpuThresholds {
  const VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesCpuThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  final TfArg<num> scaleIn;

  final TfArg<num> scaleOut;

  Map<String, Object?> encode() => {
    'scale_in': scaleIn.toTfJson(),
    'scale_out': scaleOut.toTfJson(),
  };
}

/// Typed helper for the `autoscaling_settings.autoscaling_policies.storage_thresholds` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesStorageThresholds {
  const VmwareengineClusterAutoscalingSettingsAutoscalingPoliciesStorageThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  final TfArg<num> scaleIn;

  final TfArg<num> scaleOut;

  Map<String, Object?> encode() => {
    'scale_in': scaleIn.toTfJson(),
    'scale_out': scaleOut.toTfJson(),
  };
}

/// Typed helper for the `datastore_mount_config` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterDatastoreMountConfig {
  const VmwareengineClusterDatastoreMountConfig({
    this.accessMode,
    required this.datastore,
    this.ignoreColocation,
    this.nfsVersion,
    required this.datastoreNetwork,
  });

  final TfArg<String>? accessMode;

  final TfArg<String> datastore;

  final TfArg<bool>? ignoreColocation;

  final TfArg<String>? nfsVersion;

  final VmwareengineClusterDatastoreMountConfigDatastoreNetwork
  datastoreNetwork;

  Map<String, Object?> encode() => {
    if (accessMode != null) 'access_mode': accessMode!.toTfJson(),
    'datastore': datastore.toTfJson(),
    if (ignoreColocation != null)
      'ignore_colocation': ignoreColocation!.toTfJson(),
    if (nfsVersion != null) 'nfs_version': nfsVersion!.toTfJson(),
    'datastore_network': datastoreNetwork.encode(),
  };
}

/// Typed helper for the `datastore_mount_config.datastore_network` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterDatastoreMountConfigDatastoreNetwork {
  const VmwareengineClusterDatastoreMountConfigDatastoreNetwork({
    this.connectionCount,
    this.mtu,
    required this.subnet,
  });

  final TfArg<num>? connectionCount;

  final TfArg<num>? mtu;

  final TfArg<String> subnet;

  Map<String, Object?> encode() => {
    if (connectionCount != null)
      'connection_count': connectionCount!.toTfJson(),
    if (mtu != null) 'mtu': mtu!.toTfJson(),
    'subnet': subnet.toTfJson(),
  };
}

/// Typed helper for the `node_type_configs` block of
/// `google_vmwareengine_cluster` (derived from provider schema).
@immutable
final class VmwareengineClusterNodeTypeConfigs {
  const VmwareengineClusterNodeTypeConfigs({
    this.customCoreCount,
    required this.nodeCount,
    required this.nodeTypeId,
  });

  final TfArg<num>? customCoreCount;

  final TfArg<num> nodeCount;

  final TfArg<String> nodeTypeId;

  Map<String, Object?> encode() => {
    if (customCoreCount != null)
      'custom_core_count': customCoreCount!.toTfJson(),
    'node_count': nodeCount.toTfJson(),
    'node_type_id': nodeTypeId.toTfJson(),
  };
}

/// Factory wrapper for `google_vmwareengine_cluster`.
///
/// A cluster in a private cloud.
///
/// Google Cloud VMware Engine **cluster** — additional cluster under a
/// private cloud (`parent`), with node type configs and optional
/// autoscaling / datastore mounts.
///
/// **Cost / apply:** Adds VMware Engine node hours while the cluster exists
/// (e.g. Gen 2 Standard 112 VCPU Node us-west2 SKU `00C9-4870-5751`
/// **$15.11/h** per node on service `C079-64FE-9109`). Requires a
/// never_apply [GoogleVmwareenginePrivateCloud]. Debt-only — **never** wire
/// into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply. [parent] is the private cloud resource name.
final class GoogleVmwareengineCluster extends Resource {
  static const String tfType = 'google_vmwareengine_cluster';

  GoogleVmwareengineCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    List<VmwareengineClusterNodeTypeConfigs>? nodeTypeConfigs,
    VmwareengineClusterAutoscalingSettings? autoscalingSettings,
    List<VmwareengineClusterDatastoreMountConfig>? datastoreMountConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           if (nodeTypeConfigs != null)
             'node_type_configs': TfArg.literal([
               for (final e in nodeTypeConfigs) e.encode(),
             ]),
           if (autoscalingSettings != null)
             'autoscaling_settings': TfArg.literal(
               autoscalingSettings.encode(),
             ),
           if (datastoreMountConfig != null)
             'datastore_mount_config': TfArg.literal([
               for (final e in datastoreMountConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `management` attribute.
  TfRef<bool> get management => TfRef.attribute<bool>(this, 'management');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
