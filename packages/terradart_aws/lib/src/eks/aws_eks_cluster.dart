// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_cluster`.
const Set<String> _awsEksClusterSensitive = <String>{};

/// Typed helper for the `access_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterAccessConfig {
  const EksClusterAccessConfig({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  final TfArg<String>? authenticationMode;

  final TfArg<bool>? bootstrapClusterCreatorAdminPermissions;

  Map<String, Object?> encode() => {
    if (authenticationMode != null)
      'authentication_mode': authenticationMode!.toTfJson(),
    if (bootstrapClusterCreatorAdminPermissions != null)
      'bootstrap_cluster_creator_admin_permissions':
          bootstrapClusterCreatorAdminPermissions!.toTfJson(),
  };
}

/// Typed helper for the `compute_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterComputeConfig {
  const EksClusterComputeConfig({
    this.enabled,
    this.nodePools,
    this.nodeRoleArn,
  });

  final TfArg<bool>? enabled;

  final TfArg<List<Object?>>? nodePools;

  final TfArg<String>? nodeRoleArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (nodePools != null) 'node_pools': nodePools!.toTfJson(),
    if (nodeRoleArn != null) 'node_role_arn': nodeRoleArn!.toTfJson(),
  };
}

/// Typed helper for the `control_plane_scaling_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterControlPlaneScalingConfig {
  const EksClusterControlPlaneScalingConfig({this.tier});

  final TfArg<String>? tier;

  Map<String, Object?> encode() => {if (tier != null) 'tier': tier!.toTfJson()};
}

/// Typed helper for the `encryption_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterEncryptionConfig {
  const EksClusterEncryptionConfig({
    required this.resources,
    required this.provider,
  });

  final TfArg<List<Object?>> resources;

  final EksClusterEncryptionConfigProvider provider;

  Map<String, Object?> encode() => {
    'resources': resources.toTfJson(),
    'provider': provider.encode(),
  };
}

/// Typed helper for the `encryption_config.provider` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterEncryptionConfigProvider {
  const EksClusterEncryptionConfigProvider({required this.keyArn});

  final TfArg<String> keyArn;

  Map<String, Object?> encode() => {'key_arn': keyArn.toTfJson()};
}

/// Typed helper for the `kube_api_server_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeApiServerConfig {
  const EksClusterKubeApiServerConfig({
    this.eventTtl,
    this.serviceNodePortRange,
  });

  final TfArg<String>? eventTtl;

  final EksClusterKubeApiServerConfigServiceNodePortRange? serviceNodePortRange;

  Map<String, Object?> encode() => {
    if (eventTtl != null) 'event_ttl': eventTtl!.toTfJson(),
    if (serviceNodePortRange != null)
      'service_node_port_range': serviceNodePortRange!.encode(),
  };
}

/// Typed helper for the `kube_api_server_config.service_node_port_range` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeApiServerConfigServiceNodePortRange {
  const EksClusterKubeApiServerConfigServiceNodePortRange({
    this.maxPort,
    this.minPort,
  });

  final TfArg<num>? maxPort;

  final TfArg<num>? minPort;

  Map<String, Object?> encode() => {
    if (maxPort != null) 'max_port': maxPort!.toTfJson(),
    if (minPort != null) 'min_port': minPort!.toTfJson(),
  };
}

/// Typed helper for the `kube_controller_manager_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeControllerManagerConfig {
  const EksClusterKubeControllerManagerConfig({
    this.horizontalPodAutoscalerControllerConfig,
    this.podGcControllerConfig,
  });

  final EksClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig?
  horizontalPodAutoscalerControllerConfig;

  final EksClusterKubeControllerManagerConfigPodGcControllerConfig?
  podGcControllerConfig;

  Map<String, Object?> encode() => {
    if (horizontalPodAutoscalerControllerConfig != null)
      'horizontal_pod_autoscaler_controller_config':
          horizontalPodAutoscalerControllerConfig!.encode(),
    if (podGcControllerConfig != null)
      'pod_gc_controller_config': podGcControllerConfig!.encode(),
  };
}

/// Typed helper for the `kube_controller_manager_config.horizontal_pod_autoscaler_controller_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig {
  const EksClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig({
    this.horizontalPodAutoscalerSyncPeriod,
  });

  final TfArg<String>? horizontalPodAutoscalerSyncPeriod;

  Map<String, Object?> encode() => {
    if (horizontalPodAutoscalerSyncPeriod != null)
      'horizontal_pod_autoscaler_sync_period':
          horizontalPodAutoscalerSyncPeriod!.toTfJson(),
  };
}

/// Typed helper for the `kube_controller_manager_config.pod_gc_controller_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeControllerManagerConfigPodGcControllerConfig {
  const EksClusterKubeControllerManagerConfigPodGcControllerConfig({
    this.terminatedPodGcThreshold,
  });

  final TfArg<num>? terminatedPodGcThreshold;

  Map<String, Object?> encode() => {
    if (terminatedPodGcThreshold != null)
      'terminated_pod_gc_threshold': terminatedPodGcThreshold!.toTfJson(),
  };
}

/// Typed helper for the `kube_scheduler_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeSchedulerConfig {
  const EksClusterKubeSchedulerConfig({this.nodeResourcesFit});

  final EksClusterKubeSchedulerConfigNodeResourcesFit? nodeResourcesFit;

  Map<String, Object?> encode() => {
    if (nodeResourcesFit != null)
      'node_resources_fit': nodeResourcesFit!.encode(),
  };
}

/// Typed helper for the `kube_scheduler_config.node_resources_fit` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeSchedulerConfigNodeResourcesFit {
  const EksClusterKubeSchedulerConfigNodeResourcesFit({this.scoringStrategy});

  final EksClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy?
  scoringStrategy;

  Map<String, Object?> encode() => {
    if (scoringStrategy != null) 'scoring_strategy': scoringStrategy!.encode(),
  };
}

/// Typed helper for the `kube_scheduler_config.node_resources_fit.scoring_strategy` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy {
  const EksClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy({
    this.type,
    this.resource,
  });

  final TfArg<String>? type;

  final List<
    EksClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource
  >?
  resource;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (resource != null) 'resource': [for (final e in resource!) e.encode()],
  };
}

/// Typed helper for the `kube_scheduler_config.node_resources_fit.scoring_strategy.resource` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource {
  const EksClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource({
    this.name,
    this.weight,
  });

  final TfArg<String>? name;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `kubernetes_network_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubernetesNetworkConfig {
  const EksClusterKubernetesNetworkConfig({
    this.ipFamily,
    this.serviceIpv4Cidr,
    this.elasticLoadBalancing,
  });

  final TfArg<String>? ipFamily;

  final TfArg<String>? serviceIpv4Cidr;

  final EksClusterKubernetesNetworkConfigElasticLoadBalancing?
  elasticLoadBalancing;

  Map<String, Object?> encode() => {
    if (ipFamily != null) 'ip_family': ipFamily!.toTfJson(),
    if (serviceIpv4Cidr != null)
      'service_ipv4_cidr': serviceIpv4Cidr!.toTfJson(),
    if (elasticLoadBalancing != null)
      'elastic_load_balancing': elasticLoadBalancing!.encode(),
  };
}

/// Typed helper for the `kubernetes_network_config.elastic_load_balancing` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubernetesNetworkConfigElasticLoadBalancing {
  const EksClusterKubernetesNetworkConfigElasticLoadBalancing({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `outpost_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterOutpostConfig {
  const EksClusterOutpostConfig({
    required this.controlPlaneInstanceType,
    this.etcdInstanceType,
    required this.outpostArns,
    this.controlPlanePlacement,
    this.etcdPlacement,
  });

  final TfArg<String> controlPlaneInstanceType;

  final TfArg<String>? etcdInstanceType;

  final TfArg<List<Object?>> outpostArns;

  final EksClusterOutpostConfigControlPlanePlacement? controlPlanePlacement;

  final EksClusterOutpostConfigEtcdPlacement? etcdPlacement;

  Map<String, Object?> encode() => {
    'control_plane_instance_type': controlPlaneInstanceType.toTfJson(),
    if (etcdInstanceType != null)
      'etcd_instance_type': etcdInstanceType!.toTfJson(),
    'outpost_arns': outpostArns.toTfJson(),
    if (controlPlanePlacement != null)
      'control_plane_placement': controlPlanePlacement!.encode(),
    if (etcdPlacement != null) 'etcd_placement': etcdPlacement!.encode(),
  };
}

/// Typed helper for the `outpost_config.control_plane_placement` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterOutpostConfigControlPlanePlacement {
  const EksClusterOutpostConfigControlPlanePlacement({
    this.groupName,
    this.spreadLevel,
  });

  final TfArg<String>? groupName;

  final TfArg<String>? spreadLevel;

  Map<String, Object?> encode() => {
    if (groupName != null) 'group_name': groupName!.toTfJson(),
    if (spreadLevel != null) 'spread_level': spreadLevel!.toTfJson(),
  };
}

/// Typed helper for the `outpost_config.etcd_placement` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterOutpostConfigEtcdPlacement {
  const EksClusterOutpostConfigEtcdPlacement({this.spreadLevel});

  final TfArg<String>? spreadLevel;

  Map<String, Object?> encode() => {
    if (spreadLevel != null) 'spread_level': spreadLevel!.toTfJson(),
  };
}

/// Typed helper for the `remote_network_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterRemoteNetworkConfig {
  const EksClusterRemoteNetworkConfig({
    this.remoteNodeNetworks,
    this.remotePodNetworks,
  });

  final EksClusterRemoteNetworkConfigRemoteNodeNetworks? remoteNodeNetworks;

  final EksClusterRemoteNetworkConfigRemotePodNetworks? remotePodNetworks;

  Map<String, Object?> encode() => {
    if (remoteNodeNetworks != null)
      'remote_node_networks': remoteNodeNetworks!.encode(),
    if (remotePodNetworks != null)
      'remote_pod_networks': remotePodNetworks!.encode(),
  };
}

/// Typed helper for the `remote_network_config.remote_node_networks` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterRemoteNetworkConfigRemoteNodeNetworks {
  const EksClusterRemoteNetworkConfigRemoteNodeNetworks({this.cidrs});

  final TfArg<List<Object?>>? cidrs;

  Map<String, Object?> encode() => {
    if (cidrs != null) 'cidrs': cidrs!.toTfJson(),
  };
}

/// Typed helper for the `remote_network_config.remote_pod_networks` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterRemoteNetworkConfigRemotePodNetworks {
  const EksClusterRemoteNetworkConfigRemotePodNetworks({this.cidrs});

  final TfArg<List<Object?>>? cidrs;

  Map<String, Object?> encode() => {
    if (cidrs != null) 'cidrs': cidrs!.toTfJson(),
  };
}

/// Typed helper for the `storage_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterStorageConfig {
  const EksClusterStorageConfig({this.blockStorage});

  final EksClusterStorageConfigBlockStorage? blockStorage;

  Map<String, Object?> encode() => {
    if (blockStorage != null) 'block_storage': blockStorage!.encode(),
  };
}

/// Typed helper for the `storage_config.block_storage` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterStorageConfigBlockStorage {
  const EksClusterStorageConfigBlockStorage({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `upgrade_policy` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterUpgradePolicy {
  const EksClusterUpgradePolicy({this.supportType});

  final TfArg<String>? supportType;

  Map<String, Object?> encode() => {
    if (supportType != null) 'support_type': supportType!.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterVpcConfig {
  const EksClusterVpcConfig({
    this.controlPlaneEgressMode,
    this.endpointPrivateAccess,
    this.endpointPublicAccess,
    this.publicAccessCidrs,
    this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<String>? controlPlaneEgressMode;

  final TfArg<bool>? endpointPrivateAccess;

  final TfArg<bool>? endpointPublicAccess;

  final TfArg<List<Object?>>? publicAccessCidrs;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    if (controlPlaneEgressMode != null)
      'control_plane_egress_mode': controlPlaneEgressMode!.toTfJson(),
    if (endpointPrivateAccess != null)
      'endpoint_private_access': endpointPrivateAccess!.toTfJson(),
    if (endpointPublicAccess != null)
      'endpoint_public_access': endpointPublicAccess!.toTfJson(),
    if (publicAccessCidrs != null)
      'public_access_cidrs': publicAccessCidrs!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Typed helper for the `zonal_shift_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterZonalShiftConfig {
  const EksClusterZonalShiftConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_cluster`.
final class AwsEksCluster extends Resource {
  static const String tfType = 'aws_eks_cluster';

  AwsEksCluster({
    required super.localName,
    TfArg<bool>? bootstrapSelfManagedAddons,
    TfArg<bool>? deletionProtection,
    TfArg<List<String>>? enabledClusterLogTypes,
    TfArg<bool>? forceUpdateVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? version,
    EksClusterAccessConfig? accessConfig,
    EksClusterComputeConfig? computeConfig,
    EksClusterControlPlaneScalingConfig? controlPlaneScalingConfig,
    EksClusterEncryptionConfig? encryptionConfig,
    EksClusterKubeApiServerConfig? kubeApiServerConfig,
    EksClusterKubeControllerManagerConfig? kubeControllerManagerConfig,
    EksClusterKubeSchedulerConfig? kubeSchedulerConfig,
    EksClusterKubernetesNetworkConfig? kubernetesNetworkConfig,
    EksClusterOutpostConfig? outpostConfig,
    EksClusterRemoteNetworkConfig? remoteNetworkConfig,
    EksClusterStorageConfig? storageConfig,
    EksClusterUpgradePolicy? upgradePolicy,
    required EksClusterVpcConfig vpcConfig,
    EksClusterZonalShiftConfig? zonalShiftConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bootstrapSelfManagedAddons != null)
             'bootstrap_self_managed_addons': bootstrapSelfManagedAddons,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (enabledClusterLogTypes != null)
             'enabled_cluster_log_types': enabledClusterLogTypes,
           if (forceUpdateVersion != null)
             'force_update_version': forceUpdateVersion,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (version != null) 'version': version,
           if (accessConfig != null)
             'access_config': TfArg.literal(accessConfig.encode()),
           if (computeConfig != null)
             'compute_config': TfArg.literal(computeConfig.encode()),
           if (controlPlaneScalingConfig != null)
             'control_plane_scaling_config': TfArg.literal(
               controlPlaneScalingConfig.encode(),
             ),
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (kubeApiServerConfig != null)
             'kube_api_server_config': TfArg.literal(
               kubeApiServerConfig.encode(),
             ),
           if (kubeControllerManagerConfig != null)
             'kube_controller_manager_config': TfArg.literal(
               kubeControllerManagerConfig.encode(),
             ),
           if (kubeSchedulerConfig != null)
             'kube_scheduler_config': TfArg.literal(
               kubeSchedulerConfig.encode(),
             ),
           if (kubernetesNetworkConfig != null)
             'kubernetes_network_config': TfArg.literal(
               kubernetesNetworkConfig.encode(),
             ),
           if (outpostConfig != null)
             'outpost_config': TfArg.literal(outpostConfig.encode()),
           if (remoteNetworkConfig != null)
             'remote_network_config': TfArg.literal(
               remoteNetworkConfig.encode(),
             ),
           if (storageConfig != null)
             'storage_config': TfArg.literal(storageConfig.encode()),
           if (upgradePolicy != null)
             'upgrade_policy': TfArg.literal(upgradePolicy.encode()),
           'vpc_config': TfArg.literal(vpcConfig.encode()),
           if (zonalShiftConfig != null)
             'zonal_shift_config': TfArg.literal(zonalShiftConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_authority` attribute.
  TfRef<List<Map<String, Object?>>> get certificateAuthority =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_authority',
      );

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
