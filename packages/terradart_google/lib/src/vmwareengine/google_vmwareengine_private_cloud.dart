// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_private_cloud`.
const Set<String> _googleVmwareenginePrivateCloudSensitive = <String>{};

/// Vmwareengine Private Cloud enum for `state`.
extension type const VmwareenginePrivateCloudState._(TfArg<String> _)
    implements TfArg<String> {
  VmwareenginePrivateCloudState.variable(String name)
    : this._(TfArg.variable(name));
  VmwareenginePrivateCloudState.expression(String template)
    : this._(TfArg.expression(template));
  const VmwareenginePrivateCloudState.arg(TfArg<String> arg) : this._(arg);

  static const active = VmwareenginePrivateCloudState._(TfArgLiteral('ACTIVE'));
  static const creating = VmwareenginePrivateCloudState._(
    TfArgLiteral('CREATING'),
  );
  static const updating = VmwareenginePrivateCloudState._(
    TfArgLiteral('UPDATING'),
  );
  static const failed = VmwareenginePrivateCloudState._(TfArgLiteral('FAILED'));
  static const deleted = VmwareenginePrivateCloudState._(
    TfArgLiteral('DELETED'),
  );
  static const purging = VmwareenginePrivateCloudState._(
    TfArgLiteral('PURGING'),
  );

  static const List<VmwareenginePrivateCloudState> values = [
    active,
    creating,
    updating,
    failed,
    deleted,
    purging,
  ];
}

/// Vmwareengine Private Cloud enum for `type`.
extension type const VmwareenginePrivateCloudType._(TfArg<String> _)
    implements TfArg<String> {
  VmwareenginePrivateCloudType.variable(String name)
    : this._(TfArg.variable(name));
  VmwareenginePrivateCloudType.expression(String template)
    : this._(TfArg.expression(template));
  const VmwareenginePrivateCloudType.arg(TfArg<String> arg) : this._(arg);

  static const standard = VmwareenginePrivateCloudType._(
    TfArgLiteral('STANDARD'),
  );
  static const timeLimited = VmwareenginePrivateCloudType._(
    TfArgLiteral('TIME_LIMITED'),
  );
  static const stretched = VmwareenginePrivateCloudType._(
    TfArgLiteral('STRETCHED'),
  );

  static const List<VmwareenginePrivateCloudType> values = [
    standard,
    timeLimited,
    stretched,
  ];
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

  final VmwareenginePrivateCloudAutoscalingSettings? autoscalingSettings;

  final List<VmwareenginePrivateCloudNodeTypeConfigs>? nodeTypeConfigs;

  final VmwareenginePrivateCloudStretchedClusterConfig? stretchedClusterConfig;

  Map<String, Object?> encode() => {
    'cluster_id': clusterId.toTfJson(),
    'autoscaling_settings': ?autoscalingSettings?.encode(),
    if (nodeTypeConfigs != null)
      'node_type_configs': [for (final e in nodeTypeConfigs!) e.encode()],
    'stretched_cluster_config': ?stretchedClusterConfig?.encode(),
  };
}

/// Typed helper for the `management_cluster.autoscaling_settings` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudAutoscalingSettings {
  const VmwareenginePrivateCloudAutoscalingSettings({
    this.coolDownPeriod,
    this.maxClusterNodeCount,
    this.minClusterNodeCount,
    required this.autoscalingPolicies,
  });

  final TfArg<String>? coolDownPeriod;

  final TfArg<num>? maxClusterNodeCount;

  final TfArg<num>? minClusterNodeCount;

  final List<VmwareenginePrivateCloudAutoscalingPolicies> autoscalingPolicies;

  Map<String, Object?> encode() => {
    'cool_down_period': ?coolDownPeriod?.toTfJson(),
    'max_cluster_node_count': ?maxClusterNodeCount?.toTfJson(),
    'min_cluster_node_count': ?minClusterNodeCount?.toTfJson(),
    'autoscaling_policies': [for (final e in autoscalingPolicies) e.encode()],
  };
}

/// Typed helper for the `management_cluster.autoscaling_settings.autoscaling_policies` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudAutoscalingPolicies {
  const VmwareenginePrivateCloudAutoscalingPolicies({
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

  final VmwareenginePrivateCloudConsumedMemoryThresholds?
  consumedMemoryThresholds;

  final VmwareenginePrivateCloudCpuThresholds? cpuThresholds;

  final VmwareenginePrivateCloudStorageThresholds? storageThresholds;

  Map<String, Object?> encode() => {
    'autoscale_policy_id': autoscalePolicyId.toTfJson(),
    'node_type_id': nodeTypeId.toTfJson(),
    'scale_out_size': scaleOutSize.toTfJson(),
    'consumed_memory_thresholds': ?consumedMemoryThresholds?.encode(),
    'cpu_thresholds': ?cpuThresholds?.encode(),
    'storage_thresholds': ?storageThresholds?.encode(),
  };
}

/// Typed helper for the `management_cluster.autoscaling_settings.autoscaling_policies.consumed_memory_thresholds` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudConsumedMemoryThresholds {
  const VmwareenginePrivateCloudConsumedMemoryThresholds({
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
final class VmwareenginePrivateCloudCpuThresholds {
  const VmwareenginePrivateCloudCpuThresholds({
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
final class VmwareenginePrivateCloudStorageThresholds {
  const VmwareenginePrivateCloudStorageThresholds({
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
final class VmwareenginePrivateCloudNodeTypeConfigs {
  const VmwareenginePrivateCloudNodeTypeConfigs({
    this.customCoreCount,
    required this.nodeCount,
    required this.nodeTypeId,
  });

  final TfArg<num>? customCoreCount;

  final TfArg<num> nodeCount;

  final TfArg<String> nodeTypeId;

  Map<String, Object?> encode() => {
    'custom_core_count': ?customCoreCount?.toTfJson(),
    'node_count': nodeCount.toTfJson(),
    'node_type_id': nodeTypeId.toTfJson(),
  };
}

/// Typed helper for the `management_cluster.stretched_cluster_config` block of
/// `google_vmwareengine_private_cloud` (derived from provider schema).
@immutable
final class VmwareenginePrivateCloudStretchedClusterConfig {
  const VmwareenginePrivateCloudStretchedClusterConfig({
    this.preferredLocation,
    this.secondaryLocation,
  });

  final TfArg<String>? preferredLocation;

  final TfArg<String>? secondaryLocation;

  Map<String, Object?> encode() => {
    'preferred_location': ?preferredLocation?.toTfJson(),
    'secondary_location': ?secondaryLocation?.toTfJson(),
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
    'vmware_engine_network': ?vmwareEngineNetwork?.toTfJson(),
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

  GoogleVmwareenginePrivateCloud(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required VmwareenginePrivateCloudManagementCluster managementCluster,
    required VmwareenginePrivateCloudNetworkConfig networkConfig,
    TfArg<String>? description,
    VmwareenginePrivateCloudType? type,
    TfArg<num>? deletionDelayHours,
    TfArg<bool>? sendDeletionDelayHoursIfZero,
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
           'management_cluster': TfArg.literal(managementCluster.encode()),
           'network_config': TfArg.literal(networkConfig.encode()),
           'description': ?description,
           'type': ?type,
           'deletion_delay_hours': ?deletionDelayHours,
           'send_deletion_delay_hours_if_zero': ?sendDeletionDelayHoursIfZero,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareenginePrivateCloudSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVmwareenginePrivateCloud>`.
  RefTo<GoogleVmwareenginePrivateCloud> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_delay_hours` attribute.
  TfRef<num> get deletionDelayHours =>
      TfRef.attribute<num>(this, 'deletion_delay_hours');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `send_deletion_delay_hours_if_zero` attribute.
  TfRef<bool> get sendDeletionDelayHoursIfZero =>
      TfRef.attribute<bool>(this, 'send_deletion_delay_hours_if_zero');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
