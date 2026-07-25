// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_private_cloud`.
const Set<String> _googleVmwareenginePrivateCloudSensitive = <String>{};

/// Vmwareengine Private Cloud enum for `state`.
enum VmwareenginePrivateCloudState implements TerraformEnum {
  active('ACTIVE'),
  creating('CREATING'),
  updating('UPDATING'),
  failed('FAILED'),
  deleted('DELETED'),
  purging('PURGING');

  const VmwareenginePrivateCloudState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vmwareengine Private Cloud enum for `type`.
enum VmwareenginePrivateCloudType implements TerraformEnum {
  standard('STANDARD'),
  timeLimited('TIME_LIMITED'),
  stretched('STRETCHED');

  const VmwareenginePrivateCloudType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `management_cluster` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementCluster {
  const VmwareenginePrivateCloudManagementCluster({
    required this.clusterId,
    this.autoscalingSettings,
    this.nodeTypeConfigs,
    this.stretchedClusterConfig,
  });

  final TfArg<String> clusterId;

  final VmwareenginePrivateCloudManagementClusterAutoscalingSettings?
  autoscalingSettings;

  final List<VmwareenginePrivateCloudManagementClusterNodeTypeConfigs>?
  nodeTypeConfigs;

  final VmwareenginePrivateCloudManagementClusterStretchedClusterConfig?
  stretchedClusterConfig;

  Map<String, Object?> encode() => {
    'cluster_id': clusterId.toTfJson(),
    if (autoscalingSettings != null)
      'autoscaling_settings': autoscalingSettings!.encode(),
    if (nodeTypeConfigs != null)
      'node_type_configs': [for (final e in nodeTypeConfigs!) e.encode()],
    if (stretchedClusterConfig != null)
      'stretched_cluster_config': stretchedClusterConfig!.encode(),
  };
}

/// Typed helper for the `management_cluster.autoscaling_settings` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterAutoscalingSettings {
  const VmwareenginePrivateCloudManagementClusterAutoscalingSettings({
    this.coolDownPeriod,
    this.maxClusterNodeCount,
    this.minClusterNodeCount,
    required this.autoscalingPolicies,
  });

  final TfArg<String>? coolDownPeriod;

  final TfArg<num>? maxClusterNodeCount;

  final TfArg<num>? minClusterNodeCount;

  final List<
    VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicies
  >
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

/// Typed helper for the `management_cluster.autoscaling_settings.autoscaling_policies` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicies {
  const VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicies({
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

  final VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesConsumedMemoryThresholds?
  consumedMemoryThresholds;

  final VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesCpuThresholds?
  cpuThresholds;

  final VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesStorageThresholds?
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

/// Typed helper for the `management_cluster.autoscaling_settings.autoscaling_policies.consumed_memory_thresholds` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesConsumedMemoryThresholds {
  const VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesConsumedMemoryThresholds({
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

/// Typed helper for the `management_cluster.autoscaling_settings.autoscaling_policies.cpu_thresholds` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesCpuThresholds {
  const VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesCpuThresholds({
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

/// Typed helper for the `management_cluster.autoscaling_settings.autoscaling_policies.storage_thresholds` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesStorageThresholds {
  const VmwareenginePrivateCloudManagementClusterAutoscalingSettingsAutoscalingPoliciesStorageThresholds({
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

/// Typed helper for the `management_cluster.node_type_configs` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterNodeTypeConfigs {
  const VmwareenginePrivateCloudManagementClusterNodeTypeConfigs({
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

/// Typed helper for the `management_cluster.stretched_cluster_config` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudManagementClusterStretchedClusterConfig {
  const VmwareenginePrivateCloudManagementClusterStretchedClusterConfig({
    this.preferredLocation,
    this.secondaryLocation,
  });

  final TfArg<String>? preferredLocation;

  final TfArg<String>? secondaryLocation;

  Map<String, Object?> encode() => {
    if (preferredLocation != null)
      'preferred_location': preferredLocation!.toTfJson(),
    if (secondaryLocation != null)
      'secondary_location': secondaryLocation!.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudNetworkConfig {
  const VmwareenginePrivateCloudNetworkConfig({
    required this.managementCidr,
    this.vmwareEngineNetwork,
  });

  final TfArg<String> managementCidr;

  final TfArg<String>? vmwareEngineNetwork;

  Map<String, Object?> encode() => {
    'management_cidr': managementCidr.toTfJson(),
    if (vmwareEngineNetwork != null)
      'vmware_engine_network': vmwareEngineNetwork!.toTfJson(),
  };
}

/// Factory wrapper for `google_vmwareengine_private_cloud`.
///
/// Represents a private cloud resource. Private clouds are zonal resources.
///
/// Google Cloud VMware Engine **private cloud** — zonal VMware SDDC
/// (management cluster + network config).
///
/// **Cost / apply:** VMware Engine `C079-64FE-9109` bills host/node hours
/// while the private cloud exists (e.g. Gen 2 Standard 112 VCPU Node
/// us-west2 SKU `00C9-4870-5751` **$15.11/h** per node; management clusters
/// are multi-node). Destroy stops node charges. Far too expensive for
/// apply-smoke — ships without a quickstart (`tool/example_debt.yaml`).
/// **Never** wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply. [managementCluster] and [networkConfig] are required.
final class GoogleVmwareenginePrivateCloud extends Resource {
  static const String tfType = 'google_vmwareengine_private_cloud';

  GoogleVmwareenginePrivateCloud({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required VmwareenginePrivateCloudManagementCluster managementCluster,
    required VmwareenginePrivateCloudNetworkConfig networkConfig,
    TfArg<String>? description,
    TfArg<VmwareenginePrivateCloudType>? type,
    TfArg<num>? deletionDelayHours,
    TfArg<bool>? sendDeletionDelayHoursIfZero,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'management_cluster': TfArg.literal(managementCluster.encode()),
           'network_config': TfArg.literal(networkConfig.encode()),
           if (description != null) 'description': description,
           if (type != null) 'type': type,
           if (deletionDelayHours != null)
             'deletion_delay_hours': deletionDelayHours,
           if (sendDeletionDelayHoursIfZero != null)
             'send_deletion_delay_hours_if_zero': sendDeletionDelayHoursIfZero,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareenginePrivateCloudSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `hcx` attribute.
  TfRef<List<Map<String, Object?>>> get hcx =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hcx');

  /// Reference to `nsx` attribute.
  TfRef<List<Map<String, Object?>>> get nsx =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nsx');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `vcenter` attribute.
  TfRef<List<Map<String, Object?>>> get vcenter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vcenter');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
