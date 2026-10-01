// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_eks_cluster`.
const Set<String> _awsEksClusterSensitive = <String>{};

/// Eks Cluster Enabled Cluster Log enum for `enabled_cluster_log_types`.
extension type const EksClusterEnabledClusterLogTypes._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterEnabledClusterLogTypes.variable(String name)
    : this._(TfArg.variable(name));
  EksClusterEnabledClusterLogTypes.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterEnabledClusterLogTypes.arg(TfArg<String> arg) : this._(arg);

  static const api = EksClusterEnabledClusterLogTypes._(TfArgLiteral('api'));
  static const audit = EksClusterEnabledClusterLogTypes._(
    TfArgLiteral('audit'),
  );
  static const authenticator = EksClusterEnabledClusterLogTypes._(
    TfArgLiteral('authenticator'),
  );
  static const controllermanager = EksClusterEnabledClusterLogTypes._(
    TfArgLiteral('controllerManager'),
  );
  static const scheduler = EksClusterEnabledClusterLogTypes._(
    TfArgLiteral('scheduler'),
  );

  static const List<EksClusterEnabledClusterLogTypes> values = [
    api,
    audit,
    authenticator,
    controllermanager,
    scheduler,
  ];
}

/// Typed helper for the `access_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterAccessConfig {
  const EksClusterAccessConfig({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  final EksClusterAuthenticationMode? authenticationMode;

  final TfArg<bool>? bootstrapClusterCreatorAdminPermissions;

  Map<String, Object?> encode() => {
    'authentication_mode': ?authenticationMode?.toTfJson(),
    'bootstrap_cluster_creator_admin_permissions':
        ?bootstrapClusterCreatorAdminPermissions?.toTfJson(),
  };
}

/// `authentication_mode` — derived from the provider schema description.
extension type const EksClusterAuthenticationMode._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  EksClusterAuthenticationMode.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterAuthenticationMode.arg(TfArg<String> arg) : this._(arg);

  static const api = EksClusterAuthenticationMode._(TfArgLiteral('API'));
  static const apiAndConfigMap = EksClusterAuthenticationMode._(
    TfArgLiteral('API_AND_CONFIG_MAP'),
  );
  static const configMap = EksClusterAuthenticationMode._(
    TfArgLiteral('CONFIG_MAP'),
  );

  static const List<EksClusterAuthenticationMode> values = [
    api,
    apiAndConfigMap,
    configMap,
  ];
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

  final List<EksClusterNodePools>? nodePools;

  final TfArg<String>? nodeRoleArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (nodePools != null)
      'node_pools': [for (final e in nodePools!) e.toTfJson()],
    'node_role_arn': ?nodeRoleArn?.toTfJson(),
  };
}

/// `node_pools` — derived from the provider schema description.
extension type const EksClusterNodePools._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterNodePools.variable(String name) : this._(TfArg.variable(name));
  EksClusterNodePools.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterNodePools.arg(TfArg<String> arg) : this._(arg);

  static const generalPurpose = EksClusterNodePools._(
    TfArgLiteral('general-purpose'),
  );
  static const system = EksClusterNodePools._(TfArgLiteral('system'));

  static const List<EksClusterNodePools> values = [generalPurpose, system];
}

/// Typed helper for the `control_plane_scaling_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterControlPlaneScalingConfig {
  const EksClusterControlPlaneScalingConfig({this.tier});

  final EksClusterTier? tier;

  Map<String, Object?> encode() => {'tier': ?tier?.toTfJson()};
}

/// `tier` — derived from the provider schema description.
extension type const EksClusterTier._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterTier.variable(String name) : this._(TfArg.variable(name));
  EksClusterTier.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterTier.arg(TfArg<String> arg) : this._(arg);

  static const standard = EksClusterTier._(TfArgLiteral('standard'));
  static const tierXl = EksClusterTier._(TfArgLiteral('tier-xl'));
  static const tier2xl = EksClusterTier._(TfArgLiteral('tier-2xl'));
  static const tier4xl = EksClusterTier._(TfArgLiteral('tier-4xl'));
  static const tier8xl = EksClusterTier._(TfArgLiteral('tier-8xl'));

  static const List<EksClusterTier> values = [
    standard,
    tierXl,
    tier2xl,
    tier4xl,
    tier8xl,
  ];
}

/// Typed helper for the `encryption_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterEncryptionConfig {
  const EksClusterEncryptionConfig({
    required this.resources,
    required this.provider,
  });

  final List<EksClusterResources> resources;

  final EksClusterProvider provider;

  Map<String, Object?> encode() => {
    'resources': [for (final e in resources) e.toTfJson()],
    'provider': provider.encode(),
  };
}

/// `resources` — derived from the provider schema description.
extension type const EksClusterResources._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterResources.variable(String name) : this._(TfArg.variable(name));
  EksClusterResources.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterResources.arg(TfArg<String> arg) : this._(arg);

  static const secrets = EksClusterResources._(TfArgLiteral('secrets'));

  static const List<EksClusterResources> values = [secrets];
}

/// Typed helper for the `encryption_config.provider` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterProvider {
  const EksClusterProvider({required this.keyArn});

  final RefTo<AwsKmsKey> keyArn;

  Map<String, Object?> encode() => {
    'key_arn': keyArn.encodeAs('arn').toTfJson(),
  };
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

  final EksClusterServiceNodePortRange? serviceNodePortRange;

  Map<String, Object?> encode() => {
    'event_ttl': ?eventTtl?.toTfJson(),
    'service_node_port_range': ?serviceNodePortRange?.encode(),
  };
}

/// Typed helper for the `kube_api_server_config.service_node_port_range` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterServiceNodePortRange {
  const EksClusterServiceNodePortRange({this.maxPort, this.minPort});

  final TfArg<num>? maxPort;

  final TfArg<num>? minPort;

  Map<String, Object?> encode() => {
    'max_port': ?maxPort?.toTfJson(),
    'min_port': ?minPort?.toTfJson(),
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

  final EksClusterHorizontalPodAutoscalerControllerConfig?
  horizontalPodAutoscalerControllerConfig;

  final EksClusterPodGcControllerConfig? podGcControllerConfig;

  Map<String, Object?> encode() => {
    'horizontal_pod_autoscaler_controller_config':
        ?horizontalPodAutoscalerControllerConfig?.encode(),
    'pod_gc_controller_config': ?podGcControllerConfig?.encode(),
  };
}

/// Typed helper for the `kube_controller_manager_config.horizontal_pod_autoscaler_controller_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterHorizontalPodAutoscalerControllerConfig {
  const EksClusterHorizontalPodAutoscalerControllerConfig({
    this.horizontalPodAutoscalerSyncPeriod,
  });

  final TfArg<String>? horizontalPodAutoscalerSyncPeriod;

  Map<String, Object?> encode() => {
    'horizontal_pod_autoscaler_sync_period': ?horizontalPodAutoscalerSyncPeriod
        ?.toTfJson(),
  };
}

/// Typed helper for the `kube_controller_manager_config.pod_gc_controller_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterPodGcControllerConfig {
  const EksClusterPodGcControllerConfig({this.terminatedPodGcThreshold});

  final TfArg<num>? terminatedPodGcThreshold;

  Map<String, Object?> encode() => {
    'terminated_pod_gc_threshold': ?terminatedPodGcThreshold?.toTfJson(),
  };
}

/// Typed helper for the `kube_scheduler_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterKubeSchedulerConfig {
  const EksClusterKubeSchedulerConfig({this.nodeResourcesFit});

  final EksClusterNodeResourcesFit? nodeResourcesFit;

  Map<String, Object?> encode() => {
    'node_resources_fit': ?nodeResourcesFit?.encode(),
  };
}

/// Typed helper for the `kube_scheduler_config.node_resources_fit` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterNodeResourcesFit {
  const EksClusterNodeResourcesFit({this.scoringStrategy});

  final EksClusterScoringStrategy? scoringStrategy;

  Map<String, Object?> encode() => {
    'scoring_strategy': ?scoringStrategy?.encode(),
  };
}

/// Typed helper for the `kube_scheduler_config.node_resources_fit.scoring_strategy` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterScoringStrategy {
  const EksClusterScoringStrategy({this.type, this.resource});

  final EksClusterType? type;

  final List<EksClusterResource>? resource;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    if (resource != null) 'resource': [for (final e in resource!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
extension type const EksClusterType._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterType.variable(String name) : this._(TfArg.variable(name));
  EksClusterType.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterType.arg(TfArg<String> arg) : this._(arg);

  static const leastallocated = EksClusterType._(
    TfArgLiteral('LeastAllocated'),
  );
  static const mostallocated = EksClusterType._(TfArgLiteral('MostAllocated'));

  static const List<EksClusterType> values = [leastallocated, mostallocated];
}

/// Typed helper for the `kube_scheduler_config.node_resources_fit.scoring_strategy.resource` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterResource {
  const EksClusterResource({this.name, this.weight});

  final TfArg<String>? name;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'weight': ?weight?.toTfJson(),
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

  final EksClusterIpFamily? ipFamily;

  final TfArg<String>? serviceIpv4Cidr;

  final EksClusterElasticLoadBalancing? elasticLoadBalancing;

  Map<String, Object?> encode() => {
    'ip_family': ?ipFamily?.toTfJson(),
    'service_ipv4_cidr': ?serviceIpv4Cidr?.toTfJson(),
    'elastic_load_balancing': ?elasticLoadBalancing?.encode(),
  };
}

/// `ip_family` — derived from the provider schema description.
extension type const EksClusterIpFamily._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterIpFamily.variable(String name) : this._(TfArg.variable(name));
  EksClusterIpFamily.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterIpFamily.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = EksClusterIpFamily._(TfArgLiteral('ipv4'));
  static const ipv6 = EksClusterIpFamily._(TfArgLiteral('ipv6'));

  static const List<EksClusterIpFamily> values = [ipv4, ipv6];
}

/// Typed helper for the `kubernetes_network_config.elastic_load_balancing` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterElasticLoadBalancing {
  const EksClusterElasticLoadBalancing({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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

  final TfArg<List<String>> outpostArns;

  final EksClusterControlPlanePlacement? controlPlanePlacement;

  final EksClusterEtcdPlacement? etcdPlacement;

  Map<String, Object?> encode() => {
    'control_plane_instance_type': controlPlaneInstanceType.toTfJson(),
    'etcd_instance_type': ?etcdInstanceType?.toTfJson(),
    'outpost_arns': outpostArns.toTfJson(),
    'control_plane_placement': ?controlPlanePlacement?.encode(),
    'etcd_placement': ?etcdPlacement?.encode(),
  };
}

/// Typed helper for the `outpost_config.control_plane_placement` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterControlPlanePlacement {
  const EksClusterControlPlanePlacement({this.groupName, this.spreadLevel});

  final TfArg<String>? groupName;

  final EksClusterSpreadLevel? spreadLevel;

  Map<String, Object?> encode() => {
    'group_name': ?groupName?.toTfJson(),
    'spread_level': ?spreadLevel?.toTfJson(),
  };
}

/// `spread_level` — derived from the provider schema description.
extension type const EksClusterSpreadLevel._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterSpreadLevel.variable(String name) : this._(TfArg.variable(name));
  EksClusterSpreadLevel.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterSpreadLevel.arg(TfArg<String> arg) : this._(arg);

  static const host = EksClusterSpreadLevel._(TfArgLiteral('host'));
  static const rack = EksClusterSpreadLevel._(TfArgLiteral('rack'));

  static const List<EksClusterSpreadLevel> values = [host, rack];
}

/// Typed helper for the `outpost_config.etcd_placement` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterEtcdPlacement {
  const EksClusterEtcdPlacement({this.spreadLevel});

  final EksClusterSpreadLevel? spreadLevel;

  Map<String, Object?> encode() => {'spread_level': ?spreadLevel?.toTfJson()};
}

/// Typed helper for the `remote_network_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterRemoteNetworkConfig {
  const EksClusterRemoteNetworkConfig({
    this.remoteNodeNetworks,
    this.remotePodNetworks,
  });

  final EksClusterRemoteNodeNetworks? remoteNodeNetworks;

  final EksClusterRemotePodNetworks? remotePodNetworks;

  Map<String, Object?> encode() => {
    'remote_node_networks': ?remoteNodeNetworks?.encode(),
    'remote_pod_networks': ?remotePodNetworks?.encode(),
  };
}

/// Typed helper for the `remote_network_config.remote_node_networks` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterRemoteNodeNetworks {
  const EksClusterRemoteNodeNetworks({this.cidrs});

  final TfArg<List<String>>? cidrs;

  Map<String, Object?> encode() => {'cidrs': ?cidrs?.toTfJson()};
}

/// Typed helper for the `remote_network_config.remote_pod_networks` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterRemotePodNetworks {
  const EksClusterRemotePodNetworks({this.cidrs});

  final TfArg<List<String>>? cidrs;

  Map<String, Object?> encode() => {'cidrs': ?cidrs?.toTfJson()};
}

/// Typed helper for the `storage_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterStorageConfig {
  const EksClusterStorageConfig({this.blockStorage});

  final EksClusterBlockStorage? blockStorage;

  Map<String, Object?> encode() => {'block_storage': ?blockStorage?.encode()};
}

/// Typed helper for the `storage_config.block_storage` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterBlockStorage {
  const EksClusterBlockStorage({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `upgrade_policy` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterUpgradePolicy {
  const EksClusterUpgradePolicy({this.supportType});

  final EksClusterSupportType? supportType;

  Map<String, Object?> encode() => {'support_type': ?supportType?.toTfJson()};
}

/// `support_type` — derived from the provider schema description.
extension type const EksClusterSupportType._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterSupportType.variable(String name) : this._(TfArg.variable(name));
  EksClusterSupportType.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterSupportType.arg(TfArg<String> arg) : this._(arg);

  static const standard = EksClusterSupportType._(TfArgLiteral('STANDARD'));
  static const extended = EksClusterSupportType._(TfArgLiteral('EXTENDED'));

  static const List<EksClusterSupportType> values = [standard, extended];
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

  final EksClusterControlPlaneEgressMode? controlPlaneEgressMode;

  final TfArg<bool>? endpointPrivateAccess;

  final TfArg<bool>? endpointPublicAccess;

  final TfArg<List<String>>? publicAccessCidrs;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'control_plane_egress_mode': ?controlPlaneEgressMode?.toTfJson(),
    'endpoint_private_access': ?endpointPrivateAccess?.toTfJson(),
    'endpoint_public_access': ?endpointPublicAccess?.toTfJson(),
    'public_access_cidrs': ?publicAccessCidrs?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// `control_plane_egress_mode` — derived from the provider schema description.
extension type const EksClusterControlPlaneEgressMode._(TfArg<String> _)
    implements TfArg<String> {
  EksClusterControlPlaneEgressMode.variable(String name)
    : this._(TfArg.variable(name));
  EksClusterControlPlaneEgressMode.expression(String template)
    : this._(TfArg.expression(template));
  const EksClusterControlPlaneEgressMode.arg(TfArg<String> arg) : this._(arg);

  static const awsManaged = EksClusterControlPlaneEgressMode._(
    TfArgLiteral('AWS_MANAGED'),
  );
  static const customerRouted = EksClusterControlPlaneEgressMode._(
    TfArgLiteral('CUSTOMER_ROUTED'),
  );
  static const customerIsolated = EksClusterControlPlaneEgressMode._(
    TfArgLiteral('CUSTOMER_ISOLATED'),
  );

  static const List<EksClusterControlPlaneEgressMode> values = [
    awsManaged,
    customerRouted,
    customerIsolated,
  ];
}

/// Typed helper for the `zonal_shift_config` block of
/// `aws_eks_cluster` (derived from provider schema).
@immutable
final class EksClusterZonalShiftConfig {
  const EksClusterZonalShiftConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `aws_eks_cluster`.
final class AwsEksCluster extends Resource {
  static const String tfType = 'aws_eks_cluster';

  AwsEksCluster(
    super.localName, {
    TfArg<bool>? bootstrapSelfManagedAddons,
    TfArg<bool>? deletionProtection,
    List<EksClusterEnabledClusterLogTypes>? enabledClusterLogTypes,
    TfArg<bool>? forceUpdateVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'bootstrap_self_managed_addons': ?bootstrapSelfManagedAddons,
           'deletion_protection': ?deletionProtection,
           if (enabledClusterLogTypes != null)
             'enabled_cluster_log_types': TfArg.literal([
               for (final e in enabledClusterLogTypes) e.toTfJson(),
             ]),
           'force_update_version': ?forceUpdateVersion,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'version': ?version,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksCluster>`.
  RefTo<AwsEksCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `bootstrap_self_managed_addons` attribute.
  TfRef<bool> get bootstrapSelfManagedAddons =>
      TfRef.attribute<bool>(this, 'bootstrap_self_managed_addons');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `enabled_cluster_log_types` attribute.
  TfRef<List<String>> get enabledClusterLogTypes =>
      TfRef.attribute<List<String>>(this, 'enabled_cluster_log_types');

  /// Reference to `force_update_version` attribute.
  TfRef<bool> get forceUpdateVersion =>
      TfRef.attribute<bool>(this, 'force_update_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
