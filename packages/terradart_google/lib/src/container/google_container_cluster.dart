// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_container_cluster`.
const Set<String> _googleContainerClusterSensitive = <String>{
  'master_auth.client_key',
};

/// Typed helper for the `addons_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAddonsConfig {
  const ContainerClusterAddonsConfig({
    this.agentSandboxConfig,
    this.cloudrunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.highScaleCheckpointingConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.lustreCsiDriverConfig,
    this.networkPolicyConfig,
    this.nodeReadinessConfig,
    this.parallelstoreCsiDriverConfig,
    this.podSnapshotConfig,
    this.rayOperatorConfig,
    this.sliceControllerConfig,
    this.slurmOperatorConfig,
    this.statefulHaConfig,
  });

  final ContainerClusterAgentSandboxConfig? agentSandboxConfig;

  final ContainerClusterCloudrunConfig? cloudrunConfig;

  final ContainerClusterConfigConnectorConfig? configConnectorConfig;

  final ContainerClusterDnsCacheConfig? dnsCacheConfig;

  final ContainerClusterGcePersistentDiskCsiDriverConfig?
  gcePersistentDiskCsiDriverConfig;

  final ContainerClusterGcpFilestoreCsiDriverConfig?
  gcpFilestoreCsiDriverConfig;

  final ContainerClusterGcsFuseCsiDriverConfig? gcsFuseCsiDriverConfig;

  final ContainerClusterGkeBackupAgentConfig? gkeBackupAgentConfig;

  final ContainerClusterHighScaleCheckpointingConfig?
  highScaleCheckpointingConfig;

  final ContainerClusterHorizontalPodAutoscaling? horizontalPodAutoscaling;

  final ContainerClusterHttpLoadBalancing? httpLoadBalancing;

  final ContainerClusterLustreCsiDriverConfig? lustreCsiDriverConfig;

  final ContainerClusterNetworkPolicyConfig? networkPolicyConfig;

  final ContainerClusterNodeReadinessConfig? nodeReadinessConfig;

  final ContainerClusterParallelstoreCsiDriverConfig?
  parallelstoreCsiDriverConfig;

  final ContainerClusterPodSnapshotConfig? podSnapshotConfig;

  final List<ContainerClusterRayOperatorConfig>? rayOperatorConfig;

  final ContainerClusterSliceControllerConfig? sliceControllerConfig;

  final ContainerClusterSlurmOperatorConfig? slurmOperatorConfig;

  final ContainerClusterStatefulHaConfig? statefulHaConfig;

  Map<String, Object?> encode() => {
    'agent_sandbox_config': ?agentSandboxConfig?.encode(),
    'cloudrun_config': ?cloudrunConfig?.encode(),
    'config_connector_config': ?configConnectorConfig?.encode(),
    'dns_cache_config': ?dnsCacheConfig?.encode(),
    'gce_persistent_disk_csi_driver_config': ?gcePersistentDiskCsiDriverConfig
        ?.encode(),
    'gcp_filestore_csi_driver_config': ?gcpFilestoreCsiDriverConfig?.encode(),
    'gcs_fuse_csi_driver_config': ?gcsFuseCsiDriverConfig?.encode(),
    'gke_backup_agent_config': ?gkeBackupAgentConfig?.encode(),
    'high_scale_checkpointing_config': ?highScaleCheckpointingConfig?.encode(),
    'horizontal_pod_autoscaling': ?horizontalPodAutoscaling?.encode(),
    'http_load_balancing': ?httpLoadBalancing?.encode(),
    'lustre_csi_driver_config': ?lustreCsiDriverConfig?.encode(),
    'network_policy_config': ?networkPolicyConfig?.encode(),
    'node_readiness_config': ?nodeReadinessConfig?.encode(),
    'parallelstore_csi_driver_config': ?parallelstoreCsiDriverConfig?.encode(),
    'pod_snapshot_config': ?podSnapshotConfig?.encode(),
    if (rayOperatorConfig != null)
      'ray_operator_config': [for (final e in rayOperatorConfig!) e.encode()],
    'slice_controller_config': ?sliceControllerConfig?.encode(),
    'slurm_operator_config': ?slurmOperatorConfig?.encode(),
    'stateful_ha_config': ?statefulHaConfig?.encode(),
  };
}

/// Typed helper for the `addons_config.agent_sandbox_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAgentSandboxConfig {
  const ContainerClusterAgentSandboxConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.cloudrun_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterCloudrunConfig {
  const ContainerClusterCloudrunConfig({
    required this.disabled,
    this.loadBalancerType,
  });

  final TfArg<bool> disabled;

  final TfArg<String>? loadBalancerType;

  Map<String, Object?> encode() => {
    'disabled': disabled.toTfJson(),
    'load_balancer_type': ?loadBalancerType?.toTfJson(),
  };
}

/// Typed helper for the `addons_config.config_connector_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterConfigConnectorConfig {
  const ContainerClusterConfigConnectorConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.dns_cache_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDnsCacheConfig {
  const ContainerClusterDnsCacheConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.gce_persistent_disk_csi_driver_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterGcePersistentDiskCsiDriverConfig {
  const ContainerClusterGcePersistentDiskCsiDriverConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.gcp_filestore_csi_driver_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterGcpFilestoreCsiDriverConfig {
  const ContainerClusterGcpFilestoreCsiDriverConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.gcs_fuse_csi_driver_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterGcsFuseCsiDriverConfig {
  const ContainerClusterGcsFuseCsiDriverConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.gke_backup_agent_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterGkeBackupAgentConfig {
  const ContainerClusterGkeBackupAgentConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.high_scale_checkpointing_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterHighScaleCheckpointingConfig {
  const ContainerClusterHighScaleCheckpointingConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.horizontal_pod_autoscaling` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterHorizontalPodAutoscaling {
  const ContainerClusterHorizontalPodAutoscaling({required this.disabled});

  final TfArg<bool> disabled;

  Map<String, Object?> encode() => {'disabled': disabled.toTfJson()};
}

/// Typed helper for the `addons_config.http_load_balancing` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterHttpLoadBalancing {
  const ContainerClusterHttpLoadBalancing({required this.disabled});

  final TfArg<bool> disabled;

  Map<String, Object?> encode() => {'disabled': disabled.toTfJson()};
}

/// Typed helper for the `addons_config.lustre_csi_driver_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterLustreCsiDriverConfig {
  const ContainerClusterLustreCsiDriverConfig({
    this.disableMultiNic,
    this.enableLegacyLustrePort,
    required this.enabled,
  });

  final TfArg<bool>? disableMultiNic;

  final TfArg<bool>? enableLegacyLustrePort;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'disable_multi_nic': ?disableMultiNic?.toTfJson(),
    'enable_legacy_lustre_port': ?enableLegacyLustrePort?.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `addons_config.network_policy_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNetworkPolicyConfig {
  const ContainerClusterNetworkPolicyConfig({required this.disabled});

  final TfArg<bool> disabled;

  Map<String, Object?> encode() => {'disabled': disabled.toTfJson()};
}

/// Typed helper for the `addons_config.node_readiness_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodeReadinessConfig {
  const ContainerClusterNodeReadinessConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.parallelstore_csi_driver_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterParallelstoreCsiDriverConfig {
  const ContainerClusterParallelstoreCsiDriverConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.pod_snapshot_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterPodSnapshotConfig {
  const ContainerClusterPodSnapshotConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.ray_operator_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRayOperatorConfig {
  const ContainerClusterRayOperatorConfig({
    required this.enabled,
    this.rayClusterLoggingConfig,
    this.rayClusterMonitoringConfig,
  });

  final TfArg<bool> enabled;

  final ContainerClusterRayClusterLoggingConfig? rayClusterLoggingConfig;

  final ContainerClusterRayClusterMonitoringConfig? rayClusterMonitoringConfig;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'ray_cluster_logging_config': ?rayClusterLoggingConfig?.encode(),
    'ray_cluster_monitoring_config': ?rayClusterMonitoringConfig?.encode(),
  };
}

/// Typed helper for the `addons_config.ray_operator_config.ray_cluster_logging_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRayClusterLoggingConfig {
  const ContainerClusterRayClusterLoggingConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.ray_operator_config.ray_cluster_monitoring_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRayClusterMonitoringConfig {
  const ContainerClusterRayClusterMonitoringConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.slice_controller_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterSliceControllerConfig {
  const ContainerClusterSliceControllerConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.slurm_operator_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterSlurmOperatorConfig {
  const ContainerClusterSlurmOperatorConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `addons_config.stateful_ha_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterStatefulHaConfig {
  const ContainerClusterStatefulHaConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `anonymous_authentication_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAnonymousAuthenticationConfig {
  const ContainerClusterAnonymousAuthenticationConfig({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Typed helper for the `authenticator_groups_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAuthenticatorGroupsConfig {
  const ContainerClusterAuthenticatorGroupsConfig({
    required this.securityGroup,
  });

  final TfArg<String> securityGroup;

  Map<String, Object?> encode() => {'security_group': securityGroup.toTfJson()};
}

/// Typed helper for the `autopilot_cluster_policy_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAutopilotClusterPolicyConfig {
  const ContainerClusterAutopilotClusterPolicyConfig({
    this.noStandardNodePools,
    this.noSystemImpersonation,
    this.noSystemMutation,
    this.noUnsafeWebhooks,
  });

  final TfArg<bool>? noStandardNodePools;

  final TfArg<bool>? noSystemImpersonation;

  final TfArg<bool>? noSystemMutation;

  final TfArg<bool>? noUnsafeWebhooks;

  Map<String, Object?> encode() => {
    'no_standard_node_pools': ?noStandardNodePools?.toTfJson(),
    'no_system_impersonation': ?noSystemImpersonation?.toTfJson(),
    'no_system_mutation': ?noSystemMutation?.toTfJson(),
    'no_unsafe_webhooks': ?noUnsafeWebhooks?.toTfJson(),
  };
}

/// Typed helper for the `binary_authorization` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterBinaryAuthorization {
  const ContainerClusterBinaryAuthorization({
    this.enabled,
    this.evaluationMode,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? evaluationMode;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'evaluation_mode': ?evaluationMode?.toTfJson(),
  };
}

/// Typed helper for the `cluster_autoscaling` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAutoscaling {
  const ContainerClusterAutoscaling({
    this.autoProvisioningLocations,
    this.autoscalingProfile,
    this.defaultComputeClassEnabled,
    this.enabled,
    this.autoProvisioningDefaults,
    this.resourceLimits,
  });

  final TfArg<List<String>>? autoProvisioningLocations;

  final TfArg<String>? autoscalingProfile;

  final TfArg<bool>? defaultComputeClassEnabled;

  final TfArg<bool>? enabled;

  final ContainerClusterAutoProvisioningDefaults? autoProvisioningDefaults;

  final List<ContainerClusterResourceLimits>? resourceLimits;

  Map<String, Object?> encode() => {
    'auto_provisioning_locations': ?autoProvisioningLocations?.toTfJson(),
    'autoscaling_profile': ?autoscalingProfile?.toTfJson(),
    'default_compute_class_enabled': ?defaultComputeClassEnabled?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'auto_provisioning_defaults': ?autoProvisioningDefaults?.encode(),
    if (resourceLimits != null)
      'resource_limits': [for (final e in resourceLimits!) e.encode()],
  };
}

/// Typed helper for the `cluster_autoscaling.auto_provisioning_defaults` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAutoProvisioningDefaults {
  const ContainerClusterAutoProvisioningDefaults({
    this.bootDiskKmsKey,
    this.diskSize,
    this.diskType,
    this.imageType,
    this.minCpuPlatform,
    this.oauthScopes,
    this.serviceAccount,
    this.management,
    this.shieldedInstanceConfig,
    this.upgradeSettings,
  });

  final TfArg<String>? bootDiskKmsKey;

  final TfArg<num>? diskSize;

  final TfArg<String>? diskType;

  final TfArg<String>? imageType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<List<String>>? oauthScopes;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final ContainerClusterManagement? management;

  final ContainerClusterShieldedInstanceConfig? shieldedInstanceConfig;

  final ContainerClusterAutoProvisioningDefaultsUpgradeSettings?
  upgradeSettings;

  Map<String, Object?> encode() => {
    'boot_disk_kms_key': ?bootDiskKmsKey?.toTfJson(),
    'disk_size': ?diskSize?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'image_type': ?imageType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'management': ?management?.encode(),
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
    'upgrade_settings': ?upgradeSettings?.encode(),
  };
}

/// Typed helper for the `node_pool.management` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterManagement {
  const ContainerClusterManagement({this.autoRepair, this.autoUpgrade});

  final TfArg<bool>? autoRepair;

  final TfArg<bool>? autoUpgrade;

  Map<String, Object?> encode() => {
    'auto_repair': ?autoRepair?.toTfJson(),
    'auto_upgrade': ?autoUpgrade?.toTfJson(),
  };
}

/// Typed helper for the `node_config.shielded_instance_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterShieldedInstanceConfig {
  const ContainerClusterShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
  };
}

/// Typed helper for the `cluster_autoscaling.auto_provisioning_defaults.upgrade_settings` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAutoProvisioningDefaultsUpgradeSettings {
  const ContainerClusterAutoProvisioningDefaultsUpgradeSettings({
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
    this.blueGreenSettings,
  });

  final TfArg<num>? maxSurge;

  final TfArg<num>? maxUnavailable;

  final TfArg<String>? strategy;

  final ContainerClusterUpgradeSettingsBlueGreenSettings? blueGreenSettings;

  Map<String, Object?> encode() => {
    'max_surge': ?maxSurge?.toTfJson(),
    'max_unavailable': ?maxUnavailable?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'blue_green_settings': ?blueGreenSettings?.encode(),
  };
}

/// Typed helper for the `cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterUpgradeSettingsBlueGreenSettings {
  const ContainerClusterUpgradeSettingsBlueGreenSettings({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  final TfArg<String>? nodePoolSoakDuration;

  final ContainerClusterStandardRolloutPolicy? standardRolloutPolicy;

  Map<String, Object?> encode() => {
    'node_pool_soak_duration': ?nodePoolSoakDuration?.toTfJson(),
    'standard_rollout_policy': ?standardRolloutPolicy?.encode(),
  };
}

/// Typed helper for the `node_pool.upgrade_settings.blue_green_settings.standard_rollout_policy` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterStandardRolloutPolicy {
  const ContainerClusterStandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  final TfArg<num>? batchNodeCount;

  final TfArg<num>? batchPercentage;

  final TfArg<String>? batchSoakDuration;

  Map<String, Object?> encode() => {
    'batch_node_count': ?batchNodeCount?.toTfJson(),
    'batch_percentage': ?batchPercentage?.toTfJson(),
    'batch_soak_duration': ?batchSoakDuration?.toTfJson(),
  };
}

/// Typed helper for the `cluster_autoscaling.resource_limits` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterResourceLimits {
  const ContainerClusterResourceLimits({
    required this.maximum,
    this.minimum,
    required this.resourceType,
  });

  final TfArg<num> maximum;

  final TfArg<num>? minimum;

  final TfArg<String> resourceType;

  Map<String, Object?> encode() => {
    'maximum': maximum.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Typed helper for the `confidential_nodes` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterConfidentialNodes {
  const ContainerClusterConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  final TfArg<String>? confidentialInstanceType;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `control_plane_endpoints_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterControlPlaneEndpointsConfig {
  const ContainerClusterControlPlaneEndpointsConfig({
    this.dnsEndpointConfig,
    this.ipEndpointsConfig,
  });

  final ContainerClusterDnsEndpointConfig? dnsEndpointConfig;

  final ContainerClusterIpEndpointsConfig? ipEndpointsConfig;

  Map<String, Object?> encode() => {
    'dns_endpoint_config': ?dnsEndpointConfig?.encode(),
    'ip_endpoints_config': ?ipEndpointsConfig?.encode(),
  };
}

/// Typed helper for the `control_plane_endpoints_config.dns_endpoint_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDnsEndpointConfig {
  const ContainerClusterDnsEndpointConfig({
    this.allowExternalTraffic,
    this.enableK8sCertsViaDns,
    this.enableK8sTokensViaDns,
    this.endpoint,
  });

  final TfArg<bool>? allowExternalTraffic;

  final TfArg<bool>? enableK8sCertsViaDns;

  final TfArg<bool>? enableK8sTokensViaDns;

  final TfArg<String>? endpoint;

  Map<String, Object?> encode() => {
    'allow_external_traffic': ?allowExternalTraffic?.toTfJson(),
    'enable_k8s_certs_via_dns': ?enableK8sCertsViaDns?.toTfJson(),
    'enable_k8s_tokens_via_dns': ?enableK8sTokensViaDns?.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
  };
}

/// Typed helper for the `control_plane_endpoints_config.ip_endpoints_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterIpEndpointsConfig {
  const ContainerClusterIpEndpointsConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `cost_management_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterCostManagementConfig {
  const ContainerClusterCostManagementConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `database_encryption` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDatabaseEncryption {
  const ContainerClusterDatabaseEncryption({this.keyName, required this.state});

  final RefTo<GoogleKmsCryptoKey>? keyName;

  final TfArg<String> state;

  Map<String, Object?> encode() => {
    'key_name': ?keyName?.encodeAs('id').toTfJson(),
    'state': state.toTfJson(),
  };
}

/// Typed helper for the `default_snat_status` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDefaultSnatStatus {
  const ContainerClusterDefaultSnatStatus({required this.disabled});

  final TfArg<bool> disabled;

  Map<String, Object?> encode() => {'disabled': disabled.toTfJson()};
}

/// Typed helper for the `dns_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDnsConfig {
  const ContainerClusterDnsConfig({
    this.additiveVpcScopeDnsDomain,
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  final TfArg<String>? additiveVpcScopeDnsDomain;

  final TfArg<String>? clusterDns;

  final TfArg<String>? clusterDnsDomain;

  final TfArg<String>? clusterDnsScope;

  Map<String, Object?> encode() => {
    'additive_vpc_scope_dns_domain': ?additiveVpcScopeDnsDomain?.toTfJson(),
    'cluster_dns': ?clusterDns?.toTfJson(),
    'cluster_dns_domain': ?clusterDnsDomain?.toTfJson(),
    'cluster_dns_scope': ?clusterDnsScope?.toTfJson(),
  };
}

/// Typed helper for the `enable_k8s_beta_apis` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterEnableK8sBetaApis {
  const ContainerClusterEnableK8sBetaApis({required this.enabledApis});

  final TfArg<List<String>> enabledApis;

  Map<String, Object?> encode() => {'enabled_apis': enabledApis.toTfJson()};
}

/// Typed helper for the `enterprise_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterEnterpriseConfig {
  const ContainerClusterEnterpriseConfig({this.desiredTier});

  final TfArg<String>? desiredTier;

  Map<String, Object?> encode() => {'desired_tier': ?desiredTier?.toTfJson()};
}

/// Typed helper for the `fleet` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterFleet {
  const ContainerClusterFleet({this.membershipType, this.project});

  final TfArg<String>? membershipType;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    'membership_type': ?membershipType?.toTfJson(),
    'project': ?project?.toTfJson(),
  };
}

/// Typed helper for the `gateway_api_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterGatewayApiConfig {
  const ContainerClusterGatewayApiConfig({required this.channel});

  final TfArg<String> channel;

  Map<String, Object?> encode() => {'channel': channel.toTfJson()};
}

/// Typed helper for the `gke_auto_upgrade_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterGkeAutoUpgradeConfig {
  const ContainerClusterGkeAutoUpgradeConfig({required this.patchMode});

  final TfArg<String> patchMode;

  Map<String, Object?> encode() => {'patch_mode': patchMode.toTfJson()};
}

/// Typed helper for the `identity_service_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterIdentityServiceConfig {
  const ContainerClusterIdentityServiceConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `ip_allocation_policy` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterIpAllocationPolicy {
  const ContainerClusterIpAllocationPolicy({
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.stackType,
    this.additionalIpRangesConfig,
    this.additionalPodRangesConfig,
    this.autoIpamConfig,
    this.networkTierConfig,
    this.podCidrOverprovisionConfig,
  });

  final TfArg<String>? clusterIpv4CidrBlock;

  final TfArg<String>? clusterSecondaryRangeName;

  final TfArg<String>? servicesIpv4CidrBlock;

  final TfArg<String>? servicesSecondaryRangeName;

  final TfArg<String>? stackType;

  final List<ContainerClusterAdditionalIpRangesConfig>?
  additionalIpRangesConfig;

  final ContainerClusterAdditionalPodRangesConfig? additionalPodRangesConfig;

  final ContainerClusterAutoIpamConfig? autoIpamConfig;

  final ContainerClusterNetworkTierConfig? networkTierConfig;

  final ContainerClusterPodCidrOverprovisionConfig? podCidrOverprovisionConfig;

  Map<String, Object?> encode() => {
    'cluster_ipv4_cidr_block': ?clusterIpv4CidrBlock?.toTfJson(),
    'cluster_secondary_range_name': ?clusterSecondaryRangeName?.toTfJson(),
    'services_ipv4_cidr_block': ?servicesIpv4CidrBlock?.toTfJson(),
    'services_secondary_range_name': ?servicesSecondaryRangeName?.toTfJson(),
    'stack_type': ?stackType?.toTfJson(),
    if (additionalIpRangesConfig != null)
      'additional_ip_ranges_config': [
        for (final e in additionalIpRangesConfig!) e.encode(),
      ],
    'additional_pod_ranges_config': ?additionalPodRangesConfig?.encode(),
    'auto_ipam_config': ?autoIpamConfig?.encode(),
    'network_tier_config': ?networkTierConfig?.encode(),
    'pod_cidr_overprovision_config': ?podCidrOverprovisionConfig?.encode(),
  };
}

/// Typed helper for the `ip_allocation_policy.additional_ip_ranges_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAdditionalIpRangesConfig {
  const ContainerClusterAdditionalIpRangesConfig({
    this.podIpv4RangeNames,
    this.status,
    required this.subnetwork,
  });

  final TfArg<List<String>>? podIpv4RangeNames;

  final TfArg<String>? status;

  final RefTo<GoogleComputeSubnetwork> subnetwork;

  Map<String, Object?> encode() => {
    'pod_ipv4_range_names': ?podIpv4RangeNames?.toTfJson(),
    'status': ?status?.toTfJson(),
    'subnetwork': subnetwork.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `ip_allocation_policy.additional_pod_ranges_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAdditionalPodRangesConfig {
  const ContainerClusterAdditionalPodRangesConfig({
    required this.podRangeNames,
  });

  final TfArg<List<String>> podRangeNames;

  Map<String, Object?> encode() => {
    'pod_range_names': podRangeNames.toTfJson(),
  };
}

/// Typed helper for the `ip_allocation_policy.auto_ipam_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAutoIpamConfig {
  const ContainerClusterAutoIpamConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `ip_allocation_policy.network_tier_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNetworkTierConfig {
  const ContainerClusterNetworkTierConfig({required this.networkTier});

  final TfArg<String> networkTier;

  Map<String, Object?> encode() => {'network_tier': networkTier.toTfJson()};
}

/// Typed helper for the `ip_allocation_policy.pod_cidr_overprovision_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterPodCidrOverprovisionConfig {
  const ContainerClusterPodCidrOverprovisionConfig({required this.disabled});

  final TfArg<bool> disabled;

  Map<String, Object?> encode() => {'disabled': disabled.toTfJson()};
}

/// Typed helper for the `logging_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterLoggingConfig {
  const ContainerClusterLoggingConfig({required this.enableComponents});

  final TfArg<List<String>> enableComponents;

  Map<String, Object?> encode() => {
    'enable_components': enableComponents.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMaintenancePolicy {
  const ContainerClusterMaintenancePolicy({
    this.dailyMaintenanceWindow,
    this.disruptionBudget,
    this.maintenanceExclusion,
    this.recurringMaintenanceWindow,
    this.recurringWindow,
  });

  final ContainerClusterDailyMaintenanceWindow? dailyMaintenanceWindow;

  final ContainerClusterDisruptionBudget? disruptionBudget;

  final List<ContainerClusterMaintenanceExclusion>? maintenanceExclusion;

  final ContainerClusterRecurringMaintenanceWindow? recurringMaintenanceWindow;

  final ContainerClusterRecurringWindow? recurringWindow;

  Map<String, Object?> encode() => {
    'daily_maintenance_window': ?dailyMaintenanceWindow?.encode(),
    'disruption_budget': ?disruptionBudget?.encode(),
    if (maintenanceExclusion != null)
      'maintenance_exclusion': [
        for (final e in maintenanceExclusion!) e.encode(),
      ],
    'recurring_maintenance_window': ?recurringMaintenanceWindow?.encode(),
    'recurring_window': ?recurringWindow?.encode(),
  };
}

/// Typed helper for the `maintenance_policy.daily_maintenance_window` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDailyMaintenanceWindow {
  const ContainerClusterDailyMaintenanceWindow({required this.startTime});

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {'start_time': startTime.toTfJson()};
}

/// Typed helper for the `maintenance_policy.disruption_budget` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDisruptionBudget {
  const ContainerClusterDisruptionBudget({
    this.minorVersionDisruptionInterval,
    this.patchVersionDisruptionInterval,
  });

  final TfArg<String>? minorVersionDisruptionInterval;

  final TfArg<String>? patchVersionDisruptionInterval;

  Map<String, Object?> encode() => {
    'minor_version_disruption_interval': ?minorVersionDisruptionInterval
        ?.toTfJson(),
    'patch_version_disruption_interval': ?patchVersionDisruptionInterval
        ?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusion` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMaintenanceExclusion {
  const ContainerClusterMaintenanceExclusion({
    this.endTime,
    required this.exclusionName,
    required this.startTime,
    this.exclusionOptions,
  });

  final TfArg<String>? endTime;

  final TfArg<String> exclusionName;

  final TfArg<String> startTime;

  final ContainerClusterExclusionOptions? exclusionOptions;

  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'exclusion_name': exclusionName.toTfJson(),
    'start_time': startTime.toTfJson(),
    'exclusion_options': ?exclusionOptions?.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusion.exclusion_options` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterExclusionOptions {
  const ContainerClusterExclusionOptions({
    this.endTimeBehavior,
    required this.scope,
  });

  final TfArg<String>? endTimeBehavior;

  final TfArg<String> scope;

  Map<String, Object?> encode() => {
    'end_time_behavior': ?endTimeBehavior?.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.recurring_maintenance_window` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRecurringMaintenanceWindow {
  const ContainerClusterRecurringMaintenanceWindow({
    required this.recurrence,
    required this.windowDuration,
    this.delayUntil,
    required this.windowStartTime,
  });

  final TfArg<String> recurrence;

  final TfArg<String> windowDuration;

  final ContainerClusterDelayUntil? delayUntil;

  final ContainerClusterWindowStartTime windowStartTime;

  Map<String, Object?> encode() => {
    'recurrence': recurrence.toTfJson(),
    'window_duration': windowDuration.toTfJson(),
    'delay_until': ?delayUntil?.encode(),
    'window_start_time': windowStartTime.encode(),
  };
}

/// Typed helper for the `maintenance_policy.recurring_maintenance_window.delay_until` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterDelayUntil {
  const ContainerClusterDelayUntil({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.recurring_maintenance_window.window_start_time` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterWindowStartTime {
  const ContainerClusterWindowStartTime({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  final TfArg<num> hours;

  final TfArg<num> minutes;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.recurring_window` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRecurringWindow {
  const ContainerClusterRecurringWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  final TfArg<String> endTime;

  final TfArg<String> recurrence;

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'end_time': endTime.toTfJson(),
    'recurrence': recurrence.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `master_auth` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMasterAuth {
  const ContainerClusterMasterAuth({required this.clientCertificateConfig});

  final ContainerClusterClientCertificateConfig clientCertificateConfig;

  Map<String, Object?> encode() => {
    'client_certificate_config': clientCertificateConfig.encode(),
  };
}

/// Typed helper for the `master_auth.client_certificate_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterClientCertificateConfig {
  const ContainerClusterClientCertificateConfig({
    required this.issueClientCertificate,
  });

  final TfArg<bool> issueClientCertificate;

  Map<String, Object?> encode() => {
    'issue_client_certificate': issueClientCertificate.toTfJson(),
  };
}

/// Typed helper for the `master_authorized_networks_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMasterAuthorizedNetworksConfig {
  const ContainerClusterMasterAuthorizedNetworksConfig({
    this.gcpPublicCidrsAccessEnabled,
    this.privateEndpointEnforcementEnabled,
    this.cidrBlocks,
  });

  final TfArg<bool>? gcpPublicCidrsAccessEnabled;

  final TfArg<bool>? privateEndpointEnforcementEnabled;

  final List<ContainerClusterCidrBlocks>? cidrBlocks;

  Map<String, Object?> encode() => {
    'gcp_public_cidrs_access_enabled': ?gcpPublicCidrsAccessEnabled?.toTfJson(),
    'private_endpoint_enforcement_enabled': ?privateEndpointEnforcementEnabled
        ?.toTfJson(),
    if (cidrBlocks != null)
      'cidr_blocks': [for (final e in cidrBlocks!) e.encode()],
  };
}

/// Typed helper for the `master_authorized_networks_config.cidr_blocks` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterCidrBlocks {
  const ContainerClusterCidrBlocks({required this.cidrBlock, this.displayName});

  final TfArg<String> cidrBlock;

  final TfArg<String>? displayName;

  Map<String, Object?> encode() => {
    'cidr_block': cidrBlock.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
  };
}

/// Typed helper for the `mesh_certificates` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMeshCertificates {
  const ContainerClusterMeshCertificates({required this.enableCertificates});

  final TfArg<bool> enableCertificates;

  Map<String, Object?> encode() => {
    'enable_certificates': enableCertificates.toTfJson(),
  };
}

/// Typed helper for the `monitoring_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMonitoringConfig {
  const ContainerClusterMonitoringConfig({
    this.enableComponents,
    this.advancedDatapathObservabilityConfig,
    this.managedPrometheus,
  });

  final TfArg<List<String>>? enableComponents;

  final ContainerClusterAdvancedDatapathObservabilityConfig?
  advancedDatapathObservabilityConfig;

  final ContainerClusterManagedPrometheus? managedPrometheus;

  Map<String, Object?> encode() => {
    'enable_components': ?enableComponents?.toTfJson(),
    'advanced_datapath_observability_config':
        ?advancedDatapathObservabilityConfig?.encode(),
    'managed_prometheus': ?managedPrometheus?.encode(),
  };
}

/// Typed helper for the `monitoring_config.advanced_datapath_observability_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAdvancedDatapathObservabilityConfig {
  const ContainerClusterAdvancedDatapathObservabilityConfig({
    required this.enableMetrics,
    required this.enableRelay,
  });

  final TfArg<bool> enableMetrics;

  final TfArg<bool> enableRelay;

  Map<String, Object?> encode() => {
    'enable_metrics': enableMetrics.toTfJson(),
    'enable_relay': enableRelay.toTfJson(),
  };
}

/// Typed helper for the `monitoring_config.managed_prometheus` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterManagedPrometheus {
  const ContainerClusterManagedPrometheus({
    required this.enabled,
    this.autoMonitoringConfig,
  });

  final TfArg<bool> enabled;

  final ContainerClusterAutoMonitoringConfig? autoMonitoringConfig;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'auto_monitoring_config': ?autoMonitoringConfig?.encode(),
  };
}

/// Typed helper for the `monitoring_config.managed_prometheus.auto_monitoring_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAutoMonitoringConfig {
  const ContainerClusterAutoMonitoringConfig({required this.scope});

  final TfArg<String> scope;

  Map<String, Object?> encode() => {'scope': scope.toTfJson()};
}

/// Typed helper for the `network_performance_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterNetworkPerformanceConfig {
  const ContainerClusterNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  final TfArg<String> totalEgressBandwidthTier;

  Map<String, Object?> encode() => {
    'total_egress_bandwidth_tier': totalEgressBandwidthTier.toTfJson(),
  };
}

/// Typed helper for the `network_policy` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNetworkPolicy {
  const ContainerClusterNetworkPolicy({required this.enabled, this.provider});

  final TfArg<bool> enabled;

  final TfArg<String>? provider;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'provider': ?provider?.toTfJson(),
  };
}

/// Typed helper for the `node_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterNodeConfig {
  const ContainerClusterNodeConfig({
    this.bootDiskKmsKey,
    this.diskSizeGb,
    this.diskType,
    this.enableConfidentialStorage,
    this.flexStart,
    this.gpudirectStrategy,
    this.imageType,
    this.labels,
    this.localSsdCount,
    this.localSsdEncryptionMode,
    this.loggingVariant,
    this.machineType,
    this.maxRunDuration,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.resourceLabels,
    this.resourceManagerTags,
    this.serviceAccount,
    this.spot,
    this.storagePools,
    this.tags,
    this.advancedMachineFeatures,
    this.bootDisk,
    this.confidentialNodes,
    this.containerdConfig,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.gcfsConfig,
    this.guestAccelerator,
    this.gvnic,
    this.kubeletConfig,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.nodeImageConfig,
    this.reservationAffinity,
    this.sandboxConfig,
    this.secondaryBootDisks,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.taint,
    this.taintConfig,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  final TfArg<String>? bootDiskKmsKey;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<bool>? enableConfidentialStorage;

  final TfArg<bool>? flexStart;

  final TfArg<String>? gpudirectStrategy;

  final TfArg<String>? imageType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? localSsdCount;

  final TfArg<String>? localSsdEncryptionMode;

  final TfArg<String>? loggingVariant;

  final TfArg<String>? machineType;

  final TfArg<String>? maxRunDuration;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String>? minCpuPlatform;

  final TfArg<String>? nodeGroup;

  final TfArg<List<String>>? oauthScopes;

  final TfArg<bool>? preemptible;

  final TfArg<Map<String, String>>? resourceLabels;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<bool>? spot;

  final TfArg<List<String>>? storagePools;

  final TfArg<List<String>>? tags;

  final ContainerClusterAdvancedMachineFeatures? advancedMachineFeatures;

  final ContainerClusterBootDisk? bootDisk;

  final ContainerClusterConfidentialNodes? confidentialNodes;

  final ContainerClusterContainerdConfig? containerdConfig;

  final ContainerClusterEphemeralStorageLocalSsdConfig?
  ephemeralStorageLocalSsdConfig;

  final ContainerClusterFastSocket? fastSocket;

  final ContainerClusterGcfsConfig? gcfsConfig;

  final List<ContainerClusterGuestAccelerator>? guestAccelerator;

  final ContainerClusterGvnic? gvnic;

  final ContainerClusterKubeletConfig? kubeletConfig;

  final ContainerClusterNodeConfigLinuxNodeConfig? linuxNodeConfig;

  final ContainerClusterLocalNvmeSsdBlockConfig? localNvmeSsdBlockConfig;

  final List<ContainerClusterNodeImageConfig>? nodeImageConfig;

  final ContainerClusterReservationAffinity? reservationAffinity;

  final ContainerClusterSandboxConfig? sandboxConfig;

  final List<ContainerClusterSecondaryBootDisks>? secondaryBootDisks;

  final ContainerClusterShieldedInstanceConfig? shieldedInstanceConfig;

  final ContainerClusterSoleTenantConfig? soleTenantConfig;

  final List<ContainerClusterTaint>? taint;

  final ContainerClusterTaintConfig? taintConfig;

  final ContainerClusterWindowsNodeConfig? windowsNodeConfig;

  final ContainerClusterWorkloadMetadataConfig? workloadMetadataConfig;

  Map<String, Object?> encode() => {
    'boot_disk_kms_key': ?bootDiskKmsKey?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'enable_confidential_storage': ?enableConfidentialStorage?.toTfJson(),
    'flex_start': ?flexStart?.toTfJson(),
    'gpudirect_strategy': ?gpudirectStrategy?.toTfJson(),
    'image_type': ?imageType?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'local_ssd_count': ?localSsdCount?.toTfJson(),
    'local_ssd_encryption_mode': ?localSsdEncryptionMode?.toTfJson(),
    'logging_variant': ?loggingVariant?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'max_run_duration': ?maxRunDuration?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'node_group': ?nodeGroup?.toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
    'preemptible': ?preemptible?.toTfJson(),
    'resource_labels': ?resourceLabels?.toTfJson(),
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'spot': ?spot?.toTfJson(),
    'storage_pools': ?storagePools?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'advanced_machine_features': ?advancedMachineFeatures?.encode(),
    'boot_disk': ?bootDisk?.encode(),
    'confidential_nodes': ?confidentialNodes?.encode(),
    'containerd_config': ?containerdConfig?.encode(),
    'ephemeral_storage_local_ssd_config': ?ephemeralStorageLocalSsdConfig
        ?.encode(),
    'fast_socket': ?fastSocket?.encode(),
    'gcfs_config': ?gcfsConfig?.encode(),
    if (guestAccelerator != null)
      'guest_accelerator': [for (final e in guestAccelerator!) e.encode()],
    'gvnic': ?gvnic?.encode(),
    'kubelet_config': ?kubeletConfig?.encode(),
    'linux_node_config': ?linuxNodeConfig?.encode(),
    'local_nvme_ssd_block_config': ?localNvmeSsdBlockConfig?.encode(),
    if (nodeImageConfig != null)
      'node_image_config': [for (final e in nodeImageConfig!) e.encode()],
    'reservation_affinity': ?reservationAffinity?.encode(),
    'sandbox_config': ?sandboxConfig?.encode(),
    if (secondaryBootDisks != null)
      'secondary_boot_disks': [for (final e in secondaryBootDisks!) e.encode()],
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
    'sole_tenant_config': ?soleTenantConfig?.encode(),
    if (taint != null) 'taint': [for (final e in taint!) e.encode()],
    'taint_config': ?taintConfig?.encode(),
    'windows_node_config': ?windowsNodeConfig?.encode(),
    'workload_metadata_config': ?workloadMetadataConfig?.encode(),
  };
}

/// Typed helper for the `node_config.advanced_machine_features` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterAdvancedMachineFeatures {
  const ContainerClusterAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<String>? performanceMonitoringUnit;

  final TfArg<num> threadsPerCore;

  Map<String, Object?> encode() => {
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'performance_monitoring_unit': ?performanceMonitoringUnit?.toTfJson(),
    'threads_per_core': threadsPerCore.toTfJson(),
  };
}

/// Typed helper for the `node_config.boot_disk` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterBootDisk {
  const ContainerClusterBootDisk({
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
    this.sizeGb,
  });

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  final TfArg<num>? sizeGb;

  Map<String, Object?> encode() => {
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterContainerdConfig {
  const ContainerClusterContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  final ContainerClusterPrivateRegistryAccessConfig?
  privateRegistryAccessConfig;

  final List<ContainerClusterRegistryHosts>? registryHosts;

  final ContainerClusterWritableCgroups? writableCgroups;

  Map<String, Object?> encode() => {
    'private_registry_access_config': ?privateRegistryAccessConfig?.encode(),
    if (registryHosts != null)
      'registry_hosts': [for (final e in registryHosts!) e.encode()],
    'writable_cgroups': ?writableCgroups?.encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterPrivateRegistryAccessConfig {
  const ContainerClusterPrivateRegistryAccessConfig({
    required this.enabled,
    this.certificateAuthorityDomainConfig,
  });

  final TfArg<bool> enabled;

  final List<ContainerClusterCertificateAuthorityDomainConfig>?
  certificateAuthorityDomainConfig;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (certificateAuthorityDomainConfig != null)
      'certificate_authority_domain_config': [
        for (final e in certificateAuthorityDomainConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config.certificate_authority_domain_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterCertificateAuthorityDomainConfig {
  const ContainerClusterCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfig,
  });

  final TfArg<List<String>> fqdns;

  final ContainerClusterGcpSecretManagerCertificateConfig
  gcpSecretManagerCertificateConfig;

  Map<String, Object?> encode() => {
    'fqdns': fqdns.toTfJson(),
    'gcp_secret_manager_certificate_config': gcpSecretManagerCertificateConfig
        .encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.private_registry_access_config.certificate_authority_domain_config.gcp_secret_manager_certificate_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterGcpSecretManagerCertificateConfig {
  const ContainerClusterGcpSecretManagerCertificateConfig({
    required this.secretUri,
  });

  final TfArg<String> secretUri;

  Map<String, Object?> encode() => {'secret_uri': secretUri.toTfJson()};
}

/// Typed helper for the `node_config.containerd_config.registry_hosts` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterRegistryHosts {
  const ContainerClusterRegistryHosts({required this.server, this.hosts});

  final TfArg<String> server;

  final List<ContainerClusterHosts>? hosts;

  Map<String, Object?> encode() => {
    'server': server.toTfJson(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterHosts {
  const ContainerClusterHosts({
    this.capabilities,
    this.dialTimeout,
    required this.host,
    this.overridePath,
    this.ca,
    this.client,
    this.header,
  });

  final TfArg<List<String>>? capabilities;

  final TfArg<String>? dialTimeout;

  final TfArg<String> host;

  final TfArg<bool>? overridePath;

  final List<ContainerClusterCa>? ca;

  final List<ContainerClusterClient>? client;

  final List<ContainerClusterHeader>? header;

  Map<String, Object?> encode() => {
    'capabilities': ?capabilities?.toTfJson(),
    'dial_timeout': ?dialTimeout?.toTfJson(),
    'host': host.toTfJson(),
    'override_path': ?overridePath?.toTfJson(),
    if (ca != null) 'ca': [for (final e in ca!) e.encode()],
    if (client != null) 'client': [for (final e in client!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.ca` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterCa {
  const ContainerClusterCa({this.gcpSecretManagerSecretUri});

  final TfArg<String>? gcpSecretManagerSecretUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterClient {
  const ContainerClusterClient({required this.cert, this.key});

  final ContainerClusterCert cert;

  final ContainerClusterKey? key;

  Map<String, Object?> encode() => {
    'cert': cert.encode(),
    'key': ?key?.encode(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client.cert` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterCert {
  const ContainerClusterCert({this.gcpSecretManagerSecretUri});

  final TfArg<String>? gcpSecretManagerSecretUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.client.key` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterKey {
  const ContainerClusterKey({this.gcpSecretManagerSecretUri});

  final TfArg<String>? gcpSecretManagerSecretUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.registry_hosts.hosts.header` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterHeader {
  const ContainerClusterHeader({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<List<String>> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `node_config.containerd_config.writable_cgroups` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterWritableCgroups {
  const ContainerClusterWritableCgroups({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.ephemeral_storage_local_ssd_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterEphemeralStorageLocalSsdConfig {
  const ContainerClusterEphemeralStorageLocalSsdConfig({
    this.dataCacheCount,
    required this.localSsdCount,
  });

  final TfArg<num>? dataCacheCount;

  final TfArg<num> localSsdCount;

  Map<String, Object?> encode() => {
    'data_cache_count': ?dataCacheCount?.toTfJson(),
    'local_ssd_count': localSsdCount.toTfJson(),
  };
}

/// Typed helper for the `node_config.fast_socket` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterFastSocket {
  const ContainerClusterFastSocket({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.gcfs_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterGcfsConfig {
  const ContainerClusterGcfsConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.guest_accelerator` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterGuestAccelerator {
  const ContainerClusterGuestAccelerator({
    required this.count,
    this.gpuPartitionSize,
    required this.type,
    this.gpuDriverInstallationConfig,
    this.gpuSharingConfig,
  });

  final TfArg<num> count;

  final TfArg<String>? gpuPartitionSize;

  final TfArg<String> type;

  final ContainerClusterGpuDriverInstallationConfig?
  gpuDriverInstallationConfig;

  final ContainerClusterGpuSharingConfig? gpuSharingConfig;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'gpu_partition_size': ?gpuPartitionSize?.toTfJson(),
    'type': type.toTfJson(),
    'gpu_driver_installation_config': ?gpuDriverInstallationConfig?.encode(),
    'gpu_sharing_config': ?gpuSharingConfig?.encode(),
  };
}

/// Typed helper for the `node_config.guest_accelerator.gpu_driver_installation_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterGpuDriverInstallationConfig {
  const ContainerClusterGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  final TfArg<String> gpuDriverVersion;

  Map<String, Object?> encode() => {
    'gpu_driver_version': gpuDriverVersion.toTfJson(),
  };
}

/// Typed helper for the `node_config.guest_accelerator.gpu_sharing_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterGpuSharingConfig {
  const ContainerClusterGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  final TfArg<String> gpuSharingStrategy;

  final TfArg<num> maxSharedClientsPerGpu;

  Map<String, Object?> encode() => {
    'gpu_sharing_strategy': gpuSharingStrategy.toTfJson(),
    'max_shared_clients_per_gpu': maxSharedClientsPerGpu.toTfJson(),
  };
}

/// Typed helper for the `node_config.gvnic` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterGvnic {
  const ContainerClusterGvnic({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_config.kubelet_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterKubeletConfig {
  const ContainerClusterKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSize,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.evictionMaxPodGracePeriodSeconds,
    this.imageGcHighThresholdPercent,
    this.imageGcLowThresholdPercent,
    this.imageMaximumGcAge,
    this.imageMinimumGcAge,
    this.insecureKubeletReadonlyPortEnabled,
    this.maxParallelImagePulls,
    this.podPidsLimit,
    this.shutdownGracePeriodCriticalPodsSeconds,
    this.shutdownGracePeriodSeconds,
    this.singleProcessOomKill,
    this.crashLoopBackOff,
    this.evictionMinimumReclaim,
    this.evictionSoft,
    this.evictionSoftGracePeriod,
    this.memoryManager,
    this.topologyManager,
  });

  final TfArg<List<String>>? allowedUnsafeSysctls;

  final TfArg<num>? containerLogMaxFiles;

  final TfArg<String>? containerLogMaxSize;

  final TfArg<bool>? cpuCfsQuota;

  final TfArg<String>? cpuCfsQuotaPeriod;

  final TfArg<String>? cpuManagerPolicy;

  final TfArg<num>? evictionMaxPodGracePeriodSeconds;

  final TfArg<num>? imageGcHighThresholdPercent;

  final TfArg<num>? imageGcLowThresholdPercent;

  final TfArg<String>? imageMaximumGcAge;

  final TfArg<String>? imageMinimumGcAge;

  final TfArg<String>? insecureKubeletReadonlyPortEnabled;

  final TfArg<num>? maxParallelImagePulls;

  final TfArg<num>? podPidsLimit;

  final TfArg<num>? shutdownGracePeriodCriticalPodsSeconds;

  final TfArg<num>? shutdownGracePeriodSeconds;

  final TfArg<bool>? singleProcessOomKill;

  final ContainerClusterCrashLoopBackOff? crashLoopBackOff;

  final ContainerClusterEvictionMinimumReclaim? evictionMinimumReclaim;

  final ContainerClusterEvictionSoft? evictionSoft;

  final ContainerClusterEvictionSoftGracePeriod? evictionSoftGracePeriod;

  final ContainerClusterMemoryManager? memoryManager;

  final ContainerClusterTopologyManager? topologyManager;

  Map<String, Object?> encode() => {
    'allowed_unsafe_sysctls': ?allowedUnsafeSysctls?.toTfJson(),
    'container_log_max_files': ?containerLogMaxFiles?.toTfJson(),
    'container_log_max_size': ?containerLogMaxSize?.toTfJson(),
    'cpu_cfs_quota': ?cpuCfsQuota?.toTfJson(),
    'cpu_cfs_quota_period': ?cpuCfsQuotaPeriod?.toTfJson(),
    'cpu_manager_policy': ?cpuManagerPolicy?.toTfJson(),
    'eviction_max_pod_grace_period_seconds': ?evictionMaxPodGracePeriodSeconds
        ?.toTfJson(),
    'image_gc_high_threshold_percent': ?imageGcHighThresholdPercent?.toTfJson(),
    'image_gc_low_threshold_percent': ?imageGcLowThresholdPercent?.toTfJson(),
    'image_maximum_gc_age': ?imageMaximumGcAge?.toTfJson(),
    'image_minimum_gc_age': ?imageMinimumGcAge?.toTfJson(),
    'insecure_kubelet_readonly_port_enabled':
        ?insecureKubeletReadonlyPortEnabled?.toTfJson(),
    'max_parallel_image_pulls': ?maxParallelImagePulls?.toTfJson(),
    'pod_pids_limit': ?podPidsLimit?.toTfJson(),
    'shutdown_grace_period_critical_pods_seconds':
        ?shutdownGracePeriodCriticalPodsSeconds?.toTfJson(),
    'shutdown_grace_period_seconds': ?shutdownGracePeriodSeconds?.toTfJson(),
    'single_process_oom_kill': ?singleProcessOomKill?.toTfJson(),
    'crash_loop_back_off': ?crashLoopBackOff?.encode(),
    'eviction_minimum_reclaim': ?evictionMinimumReclaim?.encode(),
    'eviction_soft': ?evictionSoft?.encode(),
    'eviction_soft_grace_period': ?evictionSoftGracePeriod?.encode(),
    'memory_manager': ?memoryManager?.encode(),
    'topology_manager': ?topologyManager?.encode(),
  };
}

/// Typed helper for the `node_config.kubelet_config.crash_loop_back_off` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterCrashLoopBackOff {
  const ContainerClusterCrashLoopBackOff({this.maxContainerRestartPeriod});

  final TfArg<String>? maxContainerRestartPeriod;

  Map<String, Object?> encode() => {
    'max_container_restart_period': ?maxContainerRestartPeriod?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_minimum_reclaim` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterEvictionMinimumReclaim {
  const ContainerClusterEvictionMinimumReclaim({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  final TfArg<String>? imagefsAvailable;

  final TfArg<String>? imagefsInodesFree;

  final TfArg<String>? memoryAvailable;

  final TfArg<String>? nodefsAvailable;

  final TfArg<String>? nodefsInodesFree;

  final TfArg<String>? pidAvailable;

  Map<String, Object?> encode() => {
    'imagefs_available': ?imagefsAvailable?.toTfJson(),
    'imagefs_inodes_free': ?imagefsInodesFree?.toTfJson(),
    'memory_available': ?memoryAvailable?.toTfJson(),
    'nodefs_available': ?nodefsAvailable?.toTfJson(),
    'nodefs_inodes_free': ?nodefsInodesFree?.toTfJson(),
    'pid_available': ?pidAvailable?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_soft` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterEvictionSoft {
  const ContainerClusterEvictionSoft({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  final TfArg<String>? imagefsAvailable;

  final TfArg<String>? imagefsInodesFree;

  final TfArg<String>? memoryAvailable;

  final TfArg<String>? nodefsAvailable;

  final TfArg<String>? nodefsInodesFree;

  final TfArg<String>? pidAvailable;

  Map<String, Object?> encode() => {
    'imagefs_available': ?imagefsAvailable?.toTfJson(),
    'imagefs_inodes_free': ?imagefsInodesFree?.toTfJson(),
    'memory_available': ?memoryAvailable?.toTfJson(),
    'nodefs_available': ?nodefsAvailable?.toTfJson(),
    'nodefs_inodes_free': ?nodefsInodesFree?.toTfJson(),
    'pid_available': ?pidAvailable?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.eviction_soft_grace_period` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterEvictionSoftGracePeriod {
  const ContainerClusterEvictionSoftGracePeriod({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  final TfArg<String>? imagefsAvailable;

  final TfArg<String>? imagefsInodesFree;

  final TfArg<String>? memoryAvailable;

  final TfArg<String>? nodefsAvailable;

  final TfArg<String>? nodefsInodesFree;

  final TfArg<String>? pidAvailable;

  Map<String, Object?> encode() => {
    'imagefs_available': ?imagefsAvailable?.toTfJson(),
    'imagefs_inodes_free': ?imagefsInodesFree?.toTfJson(),
    'memory_available': ?memoryAvailable?.toTfJson(),
    'nodefs_available': ?nodefsAvailable?.toTfJson(),
    'nodefs_inodes_free': ?nodefsInodesFree?.toTfJson(),
    'pid_available': ?pidAvailable?.toTfJson(),
  };
}

/// Typed helper for the `node_config.kubelet_config.memory_manager` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterMemoryManager {
  const ContainerClusterMemoryManager({this.policy});

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// Typed helper for the `node_config.kubelet_config.topology_manager` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterTopologyManager {
  const ContainerClusterTopologyManager({this.policy, this.scope});

  final TfArg<String>? policy;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'policy': ?policy?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterNodeConfigLinuxNodeConfig {
  const ContainerClusterNodeConfigLinuxNodeConfig({
    this.cgroupMode,
    this.sysctls,
    this.transparentHugepageDefrag,
    this.transparentHugepageEnabled,
    this.accurateTimeConfig,
    this.customNodeInit,
    this.hugepagesConfig,
    this.nodeKernelModuleLoading,
    this.swapConfig,
  });

  final TfArg<String>? cgroupMode;

  final TfArg<Map<String, String>>? sysctls;

  final TfArg<String>? transparentHugepageDefrag;

  final TfArg<String>? transparentHugepageEnabled;

  final ContainerClusterAccurateTimeConfig? accurateTimeConfig;

  final ContainerClusterCustomNodeInit? customNodeInit;

  final ContainerClusterHugepagesConfig? hugepagesConfig;

  final ContainerClusterNodeKernelModuleLoading? nodeKernelModuleLoading;

  final ContainerClusterSwapConfig? swapConfig;

  Map<String, Object?> encode() => {
    'cgroup_mode': ?cgroupMode?.toTfJson(),
    'sysctls': ?sysctls?.toTfJson(),
    'transparent_hugepage_defrag': ?transparentHugepageDefrag?.toTfJson(),
    'transparent_hugepage_enabled': ?transparentHugepageEnabled?.toTfJson(),
    'accurate_time_config': ?accurateTimeConfig?.encode(),
    'custom_node_init': ?customNodeInit?.encode(),
    'hugepages_config': ?hugepagesConfig?.encode(),
    'node_kernel_module_loading': ?nodeKernelModuleLoading?.encode(),
    'swap_config': ?swapConfig?.encode(),
  };
}

/// Typed helper for the `node_config.linux_node_config.accurate_time_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterAccurateTimeConfig {
  const ContainerClusterAccurateTimeConfig({this.enablePtpKvmTimeSync});

  final TfArg<bool>? enablePtpKvmTimeSync;

  Map<String, Object?> encode() => {
    'enable_ptp_kvm_time_sync': ?enablePtpKvmTimeSync?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.custom_node_init` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterCustomNodeInit {
  const ContainerClusterCustomNodeInit({this.initScript});

  final ContainerClusterInitScript? initScript;

  Map<String, Object?> encode() => {'init_script': ?initScript?.encode()};
}

/// Typed helper for the `node_config.linux_node_config.custom_node_init.init_script` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterInitScript {
  const ContainerClusterInitScript({
    this.gcpSecretManagerSecretUri,
    this.gcsGeneration,
    this.gcsUri,
  });

  final TfArg<String>? gcpSecretManagerSecretUri;

  final TfArg<num>? gcsGeneration;

  final TfArg<String>? gcsUri;

  Map<String, Object?> encode() => {
    'gcp_secret_manager_secret_uri': ?gcpSecretManagerSecretUri?.toTfJson(),
    'gcs_generation': ?gcsGeneration?.toTfJson(),
    'gcs_uri': ?gcsUri?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.hugepages_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterHugepagesConfig {
  const ContainerClusterHugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  final TfArg<num>? hugepageSize1g;

  final TfArg<num>? hugepageSize2m;

  Map<String, Object?> encode() => {
    'hugepage_size_1g': ?hugepageSize1g?.toTfJson(),
    'hugepage_size_2m': ?hugepageSize2m?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.node_kernel_module_loading` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterNodeKernelModuleLoading {
  const ContainerClusterNodeKernelModuleLoading({this.policy});

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterSwapConfig {
  const ContainerClusterSwapConfig({
    this.enabled,
    this.bootDiskProfile,
    this.dedicatedLocalSsdProfile,
    this.encryptionConfig,
    this.ephemeralLocalSsdProfile,
  });

  final TfArg<bool>? enabled;

  final ContainerClusterBootDiskProfile? bootDiskProfile;

  final ContainerClusterDedicatedLocalSsdProfile? dedicatedLocalSsdProfile;

  final ContainerClusterEncryptionConfig? encryptionConfig;

  final ContainerClusterEphemeralLocalSsdProfile? ephemeralLocalSsdProfile;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'boot_disk_profile': ?bootDiskProfile?.encode(),
    'dedicated_local_ssd_profile': ?dedicatedLocalSsdProfile?.encode(),
    'encryption_config': ?encryptionConfig?.encode(),
    'ephemeral_local_ssd_profile': ?ephemeralLocalSsdProfile?.encode(),
  };
}

/// Typed helper for the `node_config.linux_node_config.swap_config.boot_disk_profile` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterBootDiskProfile {
  const ContainerClusterBootDiskProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  final TfArg<num>? swapSizeGib;

  final TfArg<num>? swapSizePercent;

  Map<String, Object?> encode() => {
    'swap_size_gib': ?swapSizeGib?.toTfJson(),
    'swap_size_percent': ?swapSizePercent?.toTfJson(),
  };
}

/// Typed helper for the `node_config.linux_node_config.swap_config.dedicated_local_ssd_profile` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterDedicatedLocalSsdProfile {
  const ContainerClusterDedicatedLocalSsdProfile({this.diskCount});

  final TfArg<num>? diskCount;

  Map<String, Object?> encode() => {'disk_count': ?diskCount?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config.encryption_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterEncryptionConfig {
  const ContainerClusterEncryptionConfig({this.disabled});

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {'disabled': ?disabled?.toTfJson()};
}

/// Typed helper for the `node_config.linux_node_config.swap_config.ephemeral_local_ssd_profile` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterEphemeralLocalSsdProfile {
  const ContainerClusterEphemeralLocalSsdProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  final TfArg<num>? swapSizeGib;

  final TfArg<num>? swapSizePercent;

  Map<String, Object?> encode() => {
    'swap_size_gib': ?swapSizeGib?.toTfJson(),
    'swap_size_percent': ?swapSizePercent?.toTfJson(),
  };
}

/// Typed helper for the `node_config.local_nvme_ssd_block_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterLocalNvmeSsdBlockConfig {
  const ContainerClusterLocalNvmeSsdBlockConfig({required this.localSsdCount});

  final TfArg<num> localSsdCount;

  Map<String, Object?> encode() => {
    'local_ssd_count': localSsdCount.toTfJson(),
  };
}

/// Typed helper for the `node_config.node_image_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterNodeImageConfig {
  const ContainerClusterNodeImageConfig({this.image, this.imageProject});

  final TfArg<String>? image;

  final TfArg<String>? imageProject;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'image_project': ?imageProject?.toTfJson(),
  };
}

/// Typed helper for the `node_config.reservation_affinity` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterReservationAffinity {
  const ContainerClusterReservationAffinity({
    required this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<String> consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'consume_reservation_type': consumeReservationType.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `node_config.sandbox_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterSandboxConfig {
  const ContainerClusterSandboxConfig({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `node_config.secondary_boot_disks` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterSecondaryBootDisks {
  const ContainerClusterSecondaryBootDisks({
    required this.diskImage,
    this.mode,
  });

  final TfArg<String> diskImage;

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {
    'disk_image': diskImage.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// Typed helper for the `node_config.sole_tenant_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterSoleTenantConfig {
  const ContainerClusterSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinity,
  });

  final TfArg<num>? minNodeCpus;

  final List<ContainerClusterNodeAffinity> nodeAffinity;

  Map<String, Object?> encode() => {
    'min_node_cpus': ?minNodeCpus?.toTfJson(),
    'node_affinity': [for (final e in nodeAffinity) e.encode()],
  };
}

/// Typed helper for the `node_config.sole_tenant_config.node_affinity` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterNodeAffinity {
  const ContainerClusterNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `node_config.taint` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterTaint {
  const ContainerClusterTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  final TfArg<String> effect;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `node_config.taint_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterTaintConfig {
  const ContainerClusterTaintConfig({required this.architectureTaintBehavior});

  final TfArg<String> architectureTaintBehavior;

  Map<String, Object?> encode() => {
    'architecture_taint_behavior': architectureTaintBehavior.toTfJson(),
  };
}

/// Typed helper for the `node_config.windows_node_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterWindowsNodeConfig {
  const ContainerClusterWindowsNodeConfig({this.osversion});

  final TfArg<String>? osversion;

  Map<String, Object?> encode() => {'osversion': ?osversion?.toTfJson()};
}

/// Typed helper for the `node_config.workload_metadata_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterWorkloadMetadataConfig {
  const ContainerClusterWorkloadMetadataConfig({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Typed helper for the `node_creation_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodeCreationConfig {
  const ContainerClusterNodeCreationConfig({required this.nodeCreationMode});

  final TfArg<String> nodeCreationMode;

  Map<String, Object?> encode() => {
    'node_creation_mode': nodeCreationMode.toTfJson(),
  };
}

/// Typed helper for the `node_pool` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodePool {
  const ContainerClusterNodePool({
    this.ignoreNodeCountChanges,
    this.initialNodeCount,
    this.maxPodsPerNode,
    this.name,
    this.namePrefix,
    this.nodeCount,
    this.nodeLocations,
    this.version,
    this.autoscaling,
    this.maintenancePolicy,
    this.management,
    this.networkConfig,
    this.nodeConfig,
    this.nodeDrainConfig,
    this.placementPolicy,
    this.queuedProvisioning,
    this.upgradeSettings,
  });

  final TfArg<bool>? ignoreNodeCountChanges;

  final TfArg<num>? initialNodeCount;

  final TfArg<num>? maxPodsPerNode;

  final TfArg<String>? name;

  final TfArg<String>? namePrefix;

  final TfArg<num>? nodeCount;

  final TfArg<List<String>>? nodeLocations;

  final TfArg<String>? version;

  final ContainerClusterNodePoolAutoscaling? autoscaling;

  final List<ContainerClusterNodePoolMaintenancePolicy>? maintenancePolicy;

  final ContainerClusterManagement? management;

  final ContainerClusterNetworkConfig? networkConfig;

  final ContainerClusterNodeConfig? nodeConfig;

  final List<ContainerClusterNodeDrainConfig>? nodeDrainConfig;

  final ContainerClusterPlacementPolicy? placementPolicy;

  final ContainerClusterQueuedProvisioning? queuedProvisioning;

  final ContainerClusterUpgradeSettings? upgradeSettings;

  Map<String, Object?> encode() => {
    'ignore_node_count_changes': ?ignoreNodeCountChanges?.toTfJson(),
    'initial_node_count': ?initialNodeCount?.toTfJson(),
    'max_pods_per_node': ?maxPodsPerNode?.toTfJson(),
    'name': ?name?.toTfJson(),
    'name_prefix': ?namePrefix?.toTfJson(),
    'node_count': ?nodeCount?.toTfJson(),
    'node_locations': ?nodeLocations?.toTfJson(),
    'version': ?version?.toTfJson(),
    'autoscaling': ?autoscaling?.encode(),
    if (maintenancePolicy != null)
      'maintenance_policy': [for (final e in maintenancePolicy!) e.encode()],
    'management': ?management?.encode(),
    'network_config': ?networkConfig?.encode(),
    'node_config': ?nodeConfig?.encode(),
    if (nodeDrainConfig != null)
      'node_drain_config': [for (final e in nodeDrainConfig!) e.encode()],
    'placement_policy': ?placementPolicy?.encode(),
    'queued_provisioning': ?queuedProvisioning?.encode(),
    'upgrade_settings': ?upgradeSettings?.encode(),
  };
}

/// Typed helper for the `node_pool.autoscaling` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodePoolAutoscaling {
  const ContainerClusterNodePoolAutoscaling({
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  final TfArg<String>? locationPolicy;

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  final TfArg<num>? totalMaxNodeCount;

  final TfArg<num>? totalMinNodeCount;

  Map<String, Object?> encode() => {
    'location_policy': ?locationPolicy?.toTfJson(),
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
    'total_max_node_count': ?totalMaxNodeCount?.toTfJson(),
    'total_min_node_count': ?totalMinNodeCount?.toTfJson(),
  };
}

/// Typed helper for the `node_pool.maintenance_policy` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodePoolMaintenancePolicy {
  const ContainerClusterNodePoolMaintenancePolicy({
    this.exclusionUntilEndOfSupport,
  });

  final List<ContainerClusterExclusionUntilEndOfSupport>?
  exclusionUntilEndOfSupport;

  Map<String, Object?> encode() => {
    if (exclusionUntilEndOfSupport != null)
      'exclusion_until_end_of_support': [
        for (final e in exclusionUntilEndOfSupport!) e.encode(),
      ],
  };
}

/// Typed helper for the `node_pool.maintenance_policy.exclusion_until_end_of_support` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterExclusionUntilEndOfSupport {
  const ContainerClusterExclusionUntilEndOfSupport({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `node_pool.network_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNetworkConfig {
  const ContainerClusterNetworkConfig({
    this.acceleratorNetworkProfile,
    this.createPodRange,
    this.enablePrivateNodes,
    this.podIpv4CidrBlock,
    this.podRange,
    this.subnetwork,
    this.additionalNodeNetworkConfigs,
    this.additionalPodNetworkConfigs,
    this.networkPerformanceConfig,
    this.podCidrOverprovisionConfig,
  });

  final TfArg<String>? acceleratorNetworkProfile;

  final TfArg<bool>? createPodRange;

  final TfArg<bool>? enablePrivateNodes;

  final TfArg<String>? podIpv4CidrBlock;

  final TfArg<String>? podRange;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final List<ContainerClusterAdditionalNodeNetworkConfigs>?
  additionalNodeNetworkConfigs;

  final List<ContainerClusterAdditionalPodNetworkConfigs>?
  additionalPodNetworkConfigs;

  final ContainerClusterNetworkPerformanceConfig? networkPerformanceConfig;

  final ContainerClusterPodCidrOverprovisionConfig? podCidrOverprovisionConfig;

  Map<String, Object?> encode() => {
    'accelerator_network_profile': ?acceleratorNetworkProfile?.toTfJson(),
    'create_pod_range': ?createPodRange?.toTfJson(),
    'enable_private_nodes': ?enablePrivateNodes?.toTfJson(),
    'pod_ipv4_cidr_block': ?podIpv4CidrBlock?.toTfJson(),
    'pod_range': ?podRange?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    if (additionalNodeNetworkConfigs != null)
      'additional_node_network_configs': [
        for (final e in additionalNodeNetworkConfigs!) e.encode(),
      ],
    if (additionalPodNetworkConfigs != null)
      'additional_pod_network_configs': [
        for (final e in additionalPodNetworkConfigs!) e.encode(),
      ],
    'network_performance_config': ?networkPerformanceConfig?.encode(),
    'pod_cidr_overprovision_config': ?podCidrOverprovisionConfig?.encode(),
  };
}

/// Typed helper for the `node_pool.network_config.additional_node_network_configs` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAdditionalNodeNetworkConfigs {
  const ContainerClusterAdditionalNodeNetworkConfigs({
    this.network,
    this.subnetwork,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('name').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `node_pool.network_config.additional_pod_network_configs` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterAdditionalPodNetworkConfigs {
  const ContainerClusterAdditionalPodNetworkConfigs({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  final TfArg<num>? maxPodsPerNode;

  final TfArg<String>? secondaryPodRange;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'max_pods_per_node': ?maxPodsPerNode?.toTfJson(),
    'secondary_pod_range': ?secondaryPodRange?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `node_pool.node_drain_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodeDrainConfig {
  const ContainerClusterNodeDrainConfig({
    this.graceTerminationDuration,
    this.pdbTimeoutDuration,
    this.respectPdbDuringNodePoolDeletion,
  });

  final TfArg<String>? graceTerminationDuration;

  final TfArg<String>? pdbTimeoutDuration;

  final TfArg<bool>? respectPdbDuringNodePoolDeletion;

  Map<String, Object?> encode() => {
    'grace_termination_duration': ?graceTerminationDuration?.toTfJson(),
    'pdb_timeout_duration': ?pdbTimeoutDuration?.toTfJson(),
    'respect_pdb_during_node_pool_deletion': ?respectPdbDuringNodePoolDeletion
        ?.toTfJson(),
  };
}

/// Typed helper for the `node_pool.placement_policy` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterPlacementPolicy {
  const ContainerClusterPlacementPolicy({
    this.policyName,
    this.tpuTopology,
    required this.type,
  });

  final TfArg<String>? policyName;

  final TfArg<String>? tpuTopology;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'policy_name': ?policyName?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `node_pool.queued_provisioning` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterQueuedProvisioning {
  const ContainerClusterQueuedProvisioning({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `node_pool.upgrade_settings` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterUpgradeSettings {
  const ContainerClusterUpgradeSettings({
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
    this.blueGreenSettings,
  });

  final TfArg<num>? maxSurge;

  final TfArg<num>? maxUnavailable;

  final TfArg<String>? strategy;

  final ContainerClusterBlueGreenSettings? blueGreenSettings;

  Map<String, Object?> encode() => {
    'max_surge': ?maxSurge?.toTfJson(),
    'max_unavailable': ?maxUnavailable?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'blue_green_settings': ?blueGreenSettings?.encode(),
  };
}

/// Typed helper for the `node_pool.upgrade_settings.blue_green_settings` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterBlueGreenSettings {
  const ContainerClusterBlueGreenSettings({
    this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  final TfArg<String>? nodePoolSoakDuration;

  final ContainerClusterStandardRolloutPolicy standardRolloutPolicy;

  Map<String, Object?> encode() => {
    'node_pool_soak_duration': ?nodePoolSoakDuration?.toTfJson(),
    'standard_rollout_policy': standardRolloutPolicy.encode(),
  };
}

/// Typed helper for the `node_pool_auto_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodePoolAutoConfig {
  const ContainerClusterNodePoolAutoConfig({
    this.resourceManagerTags,
    this.linuxNodeConfig,
    this.networkTags,
    this.nodeKubeletConfig,
  });

  final TfArg<Map<String, String>>? resourceManagerTags;

  final ContainerClusterNodePoolAutoConfigLinuxNodeConfig? linuxNodeConfig;

  final ContainerClusterNetworkTags? networkTags;

  final ContainerClusterNodeKubeletConfig? nodeKubeletConfig;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
    'linux_node_config': ?linuxNodeConfig?.encode(),
    'network_tags': ?networkTags?.encode(),
    'node_kubelet_config': ?nodeKubeletConfig?.encode(),
  };
}

/// Typed helper for the `node_pool_auto_config.linux_node_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodePoolAutoConfigLinuxNodeConfig {
  const ContainerClusterNodePoolAutoConfigLinuxNodeConfig({
    this.cgroupMode,
    this.nodeKernelModuleLoading,
  });

  final TfArg<String>? cgroupMode;

  final ContainerClusterNodeKernelModuleLoading? nodeKernelModuleLoading;

  Map<String, Object?> encode() => {
    'cgroup_mode': ?cgroupMode?.toTfJson(),
    'node_kernel_module_loading': ?nodeKernelModuleLoading?.encode(),
  };
}

/// Typed helper for the `node_pool_auto_config.network_tags` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNetworkTags {
  const ContainerClusterNetworkTags({this.tags});

  final TfArg<List<String>>? tags;

  Map<String, Object?> encode() => {'tags': ?tags?.toTfJson()};
}

/// Typed helper for the `node_pool_auto_config.node_kubelet_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodeKubeletConfig {
  const ContainerClusterNodeKubeletConfig({
    this.insecureKubeletReadonlyPortEnabled,
  });

  final TfArg<String>? insecureKubeletReadonlyPortEnabled;

  Map<String, Object?> encode() => {
    'insecure_kubelet_readonly_port_enabled':
        ?insecureKubeletReadonlyPortEnabled?.toTfJson(),
  };
}

/// Typed helper for the `node_pool_defaults` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodePoolDefaults {
  const ContainerClusterNodePoolDefaults({this.nodeConfigDefaults});

  final ContainerClusterNodeConfigDefaults? nodeConfigDefaults;

  Map<String, Object?> encode() => {
    'node_config_defaults': ?nodeConfigDefaults?.encode(),
  };
}

/// Typed helper for the `node_pool_defaults.node_config_defaults` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNodeConfigDefaults {
  const ContainerClusterNodeConfigDefaults({
    this.insecureKubeletReadonlyPortEnabled,
    this.loggingVariant,
    this.containerdConfig,
    this.gcfsConfig,
  });

  final TfArg<String>? insecureKubeletReadonlyPortEnabled;

  final TfArg<String>? loggingVariant;

  final ContainerClusterContainerdConfig? containerdConfig;

  final ContainerClusterGcfsConfig? gcfsConfig;

  Map<String, Object?> encode() => {
    'insecure_kubelet_readonly_port_enabled':
        ?insecureKubeletReadonlyPortEnabled?.toTfJson(),
    'logging_variant': ?loggingVariant?.toTfJson(),
    'containerd_config': ?containerdConfig?.encode(),
    'gcfs_config': ?gcfsConfig?.encode(),
  };
}

/// Typed helper for the `notification_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterNotificationConfig {
  const ContainerClusterNotificationConfig({required this.pubsub});

  final ContainerClusterPubsub pubsub;

  Map<String, Object?> encode() => {'pubsub': pubsub.encode()};
}

/// Typed helper for the `notification_config.pubsub` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterPubsub {
  const ContainerClusterPubsub({
    required this.enabled,
    this.topic,
    this.filter,
  });

  final TfArg<bool> enabled;

  final RefTo<GooglePubsubTopic>? topic;

  final ContainerClusterFilter? filter;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'topic': ?topic?.encodeAs('id').toTfJson(),
    'filter': ?filter?.encode(),
  };
}

/// Typed helper for the `notification_config.pubsub.filter` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterFilter {
  const ContainerClusterFilter({required this.eventType});

  final TfArg<List<String>> eventType;

  Map<String, Object?> encode() => {'event_type': eventType.toTfJson()};
}

/// Typed helper for the `pod_autoscaling` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterPodAutoscaling {
  const ContainerClusterPodAutoscaling({required this.hpaProfile});

  final TfArg<String> hpaProfile;

  Map<String, Object?> encode() => {'hpa_profile': hpaProfile.toTfJson()};
}

/// Typed helper for the `private_cluster_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterPrivateClusterConfig {
  const ContainerClusterPrivateClusterConfig({
    this.enablePrivateEndpoint,
    this.enablePrivateNodes,
    this.masterIpv4CidrBlock,
    this.privateEndpointSubnetwork,
    this.masterGlobalAccessConfig,
  });

  final TfArg<bool>? enablePrivateEndpoint;

  final TfArg<bool>? enablePrivateNodes;

  final TfArg<String>? masterIpv4CidrBlock;

  final TfArg<String>? privateEndpointSubnetwork;

  final ContainerClusterMasterGlobalAccessConfig? masterGlobalAccessConfig;

  Map<String, Object?> encode() => {
    'enable_private_endpoint': ?enablePrivateEndpoint?.toTfJson(),
    'enable_private_nodes': ?enablePrivateNodes?.toTfJson(),
    'master_ipv4_cidr_block': ?masterIpv4CidrBlock?.toTfJson(),
    'private_endpoint_subnetwork': ?privateEndpointSubnetwork?.toTfJson(),
    'master_global_access_config': ?masterGlobalAccessConfig?.encode(),
  };
}

/// Typed helper for the `private_cluster_config.master_global_access_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterMasterGlobalAccessConfig {
  const ContainerClusterMasterGlobalAccessConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `rbac_binding_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRbacBindingConfig {
  const ContainerClusterRbacBindingConfig({
    this.enableInsecureBindingSystemAuthenticated,
    this.enableInsecureBindingSystemUnauthenticated,
  });

  final TfArg<bool>? enableInsecureBindingSystemAuthenticated;

  final TfArg<bool>? enableInsecureBindingSystemUnauthenticated;

  Map<String, Object?> encode() => {
    'enable_insecure_binding_system_authenticated':
        ?enableInsecureBindingSystemAuthenticated?.toTfJson(),
    'enable_insecure_binding_system_unauthenticated':
        ?enableInsecureBindingSystemUnauthenticated?.toTfJson(),
  };
}

/// Typed helper for the `release_channel` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterReleaseChannel {
  const ContainerClusterReleaseChannel({required this.channel});

  final TfArg<String> channel;

  Map<String, Object?> encode() => {'channel': channel.toTfJson()};
}

/// Typed helper for the `resource_usage_export_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterResourceUsageExportConfig {
  const ContainerClusterResourceUsageExportConfig({
    this.enableNetworkEgressMetering,
    this.enableResourceConsumptionMetering,
    required this.bigqueryDestination,
  });

  final TfArg<bool>? enableNetworkEgressMetering;

  final TfArg<bool>? enableResourceConsumptionMetering;

  final ContainerClusterBigqueryDestination bigqueryDestination;

  Map<String, Object?> encode() => {
    'enable_network_egress_metering': ?enableNetworkEgressMetering?.toTfJson(),
    'enable_resource_consumption_metering': ?enableResourceConsumptionMetering
        ?.toTfJson(),
    'bigquery_destination': bigqueryDestination.encode(),
  };
}

/// Typed helper for the `resource_usage_export_config.bigquery_destination` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterBigqueryDestination {
  const ContainerClusterBigqueryDestination({required this.datasetId});

  final RefTo<GoogleBigqueryDataset> datasetId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
  };
}

/// Typed helper for the `rollback_safe_upgrade` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterRollbackSafeUpgrade {
  const ContainerClusterRollbackSafeUpgrade({this.controlPlaneSoakDuration});

  final TfArg<String>? controlPlaneSoakDuration;

  Map<String, Object?> encode() => {
    'control_plane_soak_duration': ?controlPlaneSoakDuration?.toTfJson(),
  };
}

/// Typed helper for the `secret_manager_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterSecretManagerConfig {
  const ContainerClusterSecretManagerConfig({
    required this.enabled,
    this.rotationConfig,
  });

  final TfArg<bool> enabled;

  final ContainerClusterRotationConfig? rotationConfig;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'rotation_config': ?rotationConfig?.encode(),
  };
}

/// Typed helper for the `secret_manager_config.rotation_config` block of
/// `google_container_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerClusterRotationConfig {
  const ContainerClusterRotationConfig({
    required this.enabled,
    this.rotationInterval,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? rotationInterval;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'rotation_interval': ?rotationInterval?.toTfJson(),
  };
}

/// Typed helper for the `secret_sync_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterSecretSyncConfig {
  const ContainerClusterSecretSyncConfig({
    required this.enabled,
    this.rotationConfig,
  });

  final TfArg<bool> enabled;

  final ContainerClusterRotationConfig? rotationConfig;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'rotation_config': ?rotationConfig?.encode(),
  };
}

/// Typed helper for the `security_posture_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterSecurityPostureConfig {
  const ContainerClusterSecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  final TfArg<String>? mode;

  final TfArg<String>? vulnerabilityMode;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'vulnerability_mode': ?vulnerabilityMode?.toTfJson(),
  };
}

/// Typed helper for the `service_external_ips_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterServiceExternalIpsConfig {
  const ContainerClusterServiceExternalIpsConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `user_managed_keys_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterUserManagedKeysConfig {
  const ContainerClusterUserManagedKeysConfig({
    this.aggregationCa,
    this.clusterCa,
    this.controlPlaneDiskEncryptionKey,
    this.etcdApiCa,
    this.etcdPeerCa,
    this.gkeopsEtcdBackupEncryptionKey,
    this.serviceAccountSigningKeys,
    this.serviceAccountVerificationKeys,
  });

  final TfArg<String>? aggregationCa;

  final TfArg<String>? clusterCa;

  final TfArg<String>? controlPlaneDiskEncryptionKey;

  final TfArg<String>? etcdApiCa;

  final TfArg<String>? etcdPeerCa;

  final TfArg<String>? gkeopsEtcdBackupEncryptionKey;

  final TfArg<List<String>>? serviceAccountSigningKeys;

  final TfArg<List<String>>? serviceAccountVerificationKeys;

  Map<String, Object?> encode() => {
    'aggregation_ca': ?aggregationCa?.toTfJson(),
    'cluster_ca': ?clusterCa?.toTfJson(),
    'control_plane_disk_encryption_key': ?controlPlaneDiskEncryptionKey
        ?.toTfJson(),
    'etcd_api_ca': ?etcdApiCa?.toTfJson(),
    'etcd_peer_ca': ?etcdPeerCa?.toTfJson(),
    'gkeops_etcd_backup_encryption_key': ?gkeopsEtcdBackupEncryptionKey
        ?.toTfJson(),
    'service_account_signing_keys': ?serviceAccountSigningKeys?.toTfJson(),
    'service_account_verification_keys': ?serviceAccountVerificationKeys
        ?.toTfJson(),
  };
}

/// Typed helper for the `vertical_pod_autoscaling` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterVerticalPodAutoscaling {
  const ContainerClusterVerticalPodAutoscaling({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `workload_identity_config` block of
/// `google_container_cluster` (derived from provider schema).
@immutable
final class ContainerClusterWorkloadIdentityConfig {
  const ContainerClusterWorkloadIdentityConfig({this.workloadPool});

  final TfArg<String>? workloadPool;

  Map<String, Object?> encode() => {'workload_pool': ?workloadPool?.toTfJson()};
}

/// Factory wrapper for `google_container_cluster`.
///
/// Container Cluster
///
/// Example (GKE Standard on an existing VPC / subnetwork):
/// ```dart
/// final cluster = GoogleContainerCluster(
///   localName: 'main',
///   name: TfArg.literal('main-gke'),
///   location: TfArg.literal('asia-northeast1'),
///   initialNodeCount: TfArg.literal(1),
///   removeDefaultNodePool: TfArg.literal(true),
///   network: vpc.ref,
///   subnetwork: subnet.ref,
/// );
/// ```
///
/// Pair with [GoogleContainerNodePool] when `removeDefaultNodePool` is
/// true — the default pool is deleted after cluster creation.
final class GoogleContainerCluster extends Resource {
  static const String tfType = 'google_container_cluster';

  GoogleContainerCluster({
    required super.localName,
    TfArg<bool>? allowNetAdmin,
    TfArg<List<String>>? autopilotPrivilegedAdmission,
    TfArg<String>? clusterIpv4Cidr,
    TfArg<String>? datapathProvider,
    TfArg<String>? dataplaneOptimizationMode,
    TfArg<num>? defaultMaxPodsPerNode,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? description,
    TfArg<String>? desiredEmulatedVersion,
    TfArg<bool>? disableL4LbFirewallReconciliation,
    TfArg<bool>? enableAutopilot,
    TfArg<bool>? enableCiliumClusterwideNetworkPolicy,
    TfArg<bool>? enableFqdnNetworkPolicy,
    TfArg<bool>? enableIntranodeVisibility,
    TfArg<bool>? enableKubernetesAlpha,
    TfArg<bool>? enableL4IlbSubsetting,
    TfArg<bool>? enableLegacyAbac,
    TfArg<bool>? enableMultiNetworking,
    TfArg<bool>? enableShieldedNodes,
    TfArg<bool>? enableTpu,
    TfArg<bool>? ignoreNodeCountChanges,
    TfArg<String>? inTransitEncryptionConfig,
    TfArg<num>? initialNodeCount,
    TfArg<String>? location,
    TfArg<String>? loggingService,
    TfArg<String>? minMasterVersion,
    TfArg<String>? monitoringService,
    required TfArg<String> name,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? networkingMode,
    TfArg<List<String>>? nodeLocations,
    TfArg<String>? nodeVersion,
    TfArg<String>? privateIpv6GoogleAccess,
    TfArg<String>? project,
    TfArg<bool>? removeDefaultNodePool,
    TfArg<Map<String, String>>? resourceLabels,
    TfArg<bool>? skipNodePoolRefresh,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    ContainerClusterAddonsConfig? addonsConfig,
    ContainerClusterAnonymousAuthenticationConfig?
    anonymousAuthenticationConfig,
    ContainerClusterAuthenticatorGroupsConfig? authenticatorGroupsConfig,
    ContainerClusterAutopilotClusterPolicyConfig? autopilotClusterPolicyConfig,
    ContainerClusterBinaryAuthorization? binaryAuthorization,
    ContainerClusterAutoscaling? clusterAutoscaling,
    ContainerClusterConfidentialNodes? confidentialNodes,
    ContainerClusterControlPlaneEndpointsConfig? controlPlaneEndpointsConfig,
    ContainerClusterCostManagementConfig? costManagementConfig,
    ContainerClusterDatabaseEncryption? databaseEncryption,
    ContainerClusterDefaultSnatStatus? defaultSnatStatus,
    ContainerClusterDnsConfig? dnsConfig,
    ContainerClusterEnableK8sBetaApis? enableK8sBetaApis,
    ContainerClusterEnterpriseConfig? enterpriseConfig,
    ContainerClusterFleet? fleet,
    ContainerClusterGatewayApiConfig? gatewayApiConfig,
    ContainerClusterGkeAutoUpgradeConfig? gkeAutoUpgradeConfig,
    ContainerClusterIdentityServiceConfig? identityServiceConfig,
    ContainerClusterIpAllocationPolicy? ipAllocationPolicy,
    ContainerClusterLoggingConfig? loggingConfig,
    ContainerClusterMaintenancePolicy? maintenancePolicy,
    ContainerClusterMasterAuth? masterAuth,
    ContainerClusterMasterAuthorizedNetworksConfig?
    masterAuthorizedNetworksConfig,
    ContainerClusterMeshCertificates? meshCertificates,
    ContainerClusterMonitoringConfig? monitoringConfig,
    ContainerClusterNetworkPerformanceConfig? networkPerformanceConfig,
    ContainerClusterNetworkPolicy? networkPolicy,
    ContainerClusterNodeConfig? nodeConfig,
    ContainerClusterNodeCreationConfig? nodeCreationConfig,
    List<ContainerClusterNodePool>? nodePool,
    ContainerClusterNodePoolAutoConfig? nodePoolAutoConfig,
    ContainerClusterNodePoolDefaults? nodePoolDefaults,
    ContainerClusterNotificationConfig? notificationConfig,
    ContainerClusterPodAutoscaling? podAutoscaling,
    ContainerClusterPrivateClusterConfig? privateClusterConfig,
    ContainerClusterRbacBindingConfig? rbacBindingConfig,
    ContainerClusterReleaseChannel? releaseChannel,
    ContainerClusterResourceUsageExportConfig? resourceUsageExportConfig,
    ContainerClusterRollbackSafeUpgrade? rollbackSafeUpgrade,
    ContainerClusterSecretManagerConfig? secretManagerConfig,
    ContainerClusterSecretSyncConfig? secretSyncConfig,
    ContainerClusterSecurityPostureConfig? securityPostureConfig,
    ContainerClusterServiceExternalIpsConfig? serviceExternalIpsConfig,
    ContainerClusterUserManagedKeysConfig? userManagedKeysConfig,
    ContainerClusterVerticalPodAutoscaling? verticalPodAutoscaling,
    ContainerClusterWorkloadIdentityConfig? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_net_admin': ?allowNetAdmin,
           'autopilot_privileged_admission': ?autopilotPrivilegedAdmission,
           'cluster_ipv4_cidr': ?clusterIpv4Cidr,
           'datapath_provider': ?datapathProvider,
           'dataplane_optimization_mode': ?dataplaneOptimizationMode,
           'default_max_pods_per_node': ?defaultMaxPodsPerNode,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'description': ?description,
           'desired_emulated_version': ?desiredEmulatedVersion,
           'disable_l4_lb_firewall_reconciliation':
               ?disableL4LbFirewallReconciliation,
           'enable_autopilot': ?enableAutopilot,
           'enable_cilium_clusterwide_network_policy':
               ?enableCiliumClusterwideNetworkPolicy,
           'enable_fqdn_network_policy': ?enableFqdnNetworkPolicy,
           'enable_intranode_visibility': ?enableIntranodeVisibility,
           'enable_kubernetes_alpha': ?enableKubernetesAlpha,
           'enable_l4_ilb_subsetting': ?enableL4IlbSubsetting,
           'enable_legacy_abac': ?enableLegacyAbac,
           'enable_multi_networking': ?enableMultiNetworking,
           'enable_shielded_nodes': ?enableShieldedNodes,
           'enable_tpu': ?enableTpu,
           'ignore_node_count_changes': ?ignoreNodeCountChanges,
           'in_transit_encryption_config': ?inTransitEncryptionConfig,
           'initial_node_count': ?initialNodeCount,
           'location': ?location,
           'logging_service': ?loggingService,
           'min_master_version': ?minMasterVersion,
           'monitoring_service': ?monitoringService,
           'name': name,
           'network': ?network?.encodeAs('id'),
           'networking_mode': ?networkingMode,
           'node_locations': ?nodeLocations,
           'node_version': ?nodeVersion,
           'private_ipv6_google_access': ?privateIpv6GoogleAccess,
           'project': ?project,
           'remove_default_node_pool': ?removeDefaultNodePool,
           'resource_labels': ?resourceLabels,
           'skip_node_pool_refresh': ?skipNodePoolRefresh,
           'subnetwork': ?subnetwork?.encodeAs('id'),
           if (addonsConfig != null)
             'addons_config': TfArg.literal(addonsConfig.encode()),
           if (anonymousAuthenticationConfig != null)
             'anonymous_authentication_config': TfArg.literal(
               anonymousAuthenticationConfig.encode(),
             ),
           if (authenticatorGroupsConfig != null)
             'authenticator_groups_config': TfArg.literal(
               authenticatorGroupsConfig.encode(),
             ),
           if (autopilotClusterPolicyConfig != null)
             'autopilot_cluster_policy_config': TfArg.literal(
               autopilotClusterPolicyConfig.encode(),
             ),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           if (clusterAutoscaling != null)
             'cluster_autoscaling': TfArg.literal(clusterAutoscaling.encode()),
           if (confidentialNodes != null)
             'confidential_nodes': TfArg.literal(confidentialNodes.encode()),
           if (controlPlaneEndpointsConfig != null)
             'control_plane_endpoints_config': TfArg.literal(
               controlPlaneEndpointsConfig.encode(),
             ),
           if (costManagementConfig != null)
             'cost_management_config': TfArg.literal(
               costManagementConfig.encode(),
             ),
           if (databaseEncryption != null)
             'database_encryption': TfArg.literal(databaseEncryption.encode()),
           if (defaultSnatStatus != null)
             'default_snat_status': TfArg.literal(defaultSnatStatus.encode()),
           if (dnsConfig != null)
             'dns_config': TfArg.literal(dnsConfig.encode()),
           if (enableK8sBetaApis != null)
             'enable_k8s_beta_apis': TfArg.literal(enableK8sBetaApis.encode()),
           if (enterpriseConfig != null)
             'enterprise_config': TfArg.literal(enterpriseConfig.encode()),
           if (fleet != null) 'fleet': TfArg.literal(fleet.encode()),
           if (gatewayApiConfig != null)
             'gateway_api_config': TfArg.literal(gatewayApiConfig.encode()),
           if (gkeAutoUpgradeConfig != null)
             'gke_auto_upgrade_config': TfArg.literal(
               gkeAutoUpgradeConfig.encode(),
             ),
           if (identityServiceConfig != null)
             'identity_service_config': TfArg.literal(
               identityServiceConfig.encode(),
             ),
           if (ipAllocationPolicy != null)
             'ip_allocation_policy': TfArg.literal(ipAllocationPolicy.encode()),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal(maintenancePolicy.encode()),
           if (masterAuth != null)
             'master_auth': TfArg.literal(masterAuth.encode()),
           if (masterAuthorizedNetworksConfig != null)
             'master_authorized_networks_config': TfArg.literal(
               masterAuthorizedNetworksConfig.encode(),
             ),
           if (meshCertificates != null)
             'mesh_certificates': TfArg.literal(meshCertificates.encode()),
           if (monitoringConfig != null)
             'monitoring_config': TfArg.literal(monitoringConfig.encode()),
           if (networkPerformanceConfig != null)
             'network_performance_config': TfArg.literal(
               networkPerformanceConfig.encode(),
             ),
           if (networkPolicy != null)
             'network_policy': TfArg.literal(networkPolicy.encode()),
           if (nodeConfig != null)
             'node_config': TfArg.literal(nodeConfig.encode()),
           if (nodeCreationConfig != null)
             'node_creation_config': TfArg.literal(nodeCreationConfig.encode()),
           if (nodePool != null)
             'node_pool': TfArg.literal([for (final e in nodePool) e.encode()]),
           if (nodePoolAutoConfig != null)
             'node_pool_auto_config': TfArg.literal(
               nodePoolAutoConfig.encode(),
             ),
           if (nodePoolDefaults != null)
             'node_pool_defaults': TfArg.literal(nodePoolDefaults.encode()),
           if (notificationConfig != null)
             'notification_config': TfArg.literal(notificationConfig.encode()),
           if (podAutoscaling != null)
             'pod_autoscaling': TfArg.literal(podAutoscaling.encode()),
           if (privateClusterConfig != null)
             'private_cluster_config': TfArg.literal(
               privateClusterConfig.encode(),
             ),
           if (rbacBindingConfig != null)
             'rbac_binding_config': TfArg.literal(rbacBindingConfig.encode()),
           if (releaseChannel != null)
             'release_channel': TfArg.literal(releaseChannel.encode()),
           if (resourceUsageExportConfig != null)
             'resource_usage_export_config': TfArg.literal(
               resourceUsageExportConfig.encode(),
             ),
           if (rollbackSafeUpgrade != null)
             'rollback_safe_upgrade': TfArg.literal(
               rollbackSafeUpgrade.encode(),
             ),
           if (secretManagerConfig != null)
             'secret_manager_config': TfArg.literal(
               secretManagerConfig.encode(),
             ),
           if (secretSyncConfig != null)
             'secret_sync_config': TfArg.literal(secretSyncConfig.encode()),
           if (securityPostureConfig != null)
             'security_posture_config': TfArg.literal(
               securityPostureConfig.encode(),
             ),
           if (serviceExternalIpsConfig != null)
             'service_external_ips_config': TfArg.literal(
               serviceExternalIpsConfig.encode(),
             ),
           if (userManagedKeysConfig != null)
             'user_managed_keys_config': TfArg.literal(
               userManagedKeysConfig.encode(),
             ),
           if (verticalPodAutoscaling != null)
             'vertical_pod_autoscaling': TfArg.literal(
               verticalPodAutoscaling.encode(),
             ),
           if (workloadIdentityConfig != null)
             'workload_identity_config': TfArg.literal(
               workloadIdentityConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerCluster>`.
  RefTo<GoogleContainerCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `emulated_version` attribute.
  TfRef<String> get emulatedVersion =>
      TfRef.attribute<String>(this, 'emulated_version');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `master_version` attribute.
  TfRef<String> get masterVersion =>
      TfRef.attribute<String>(this, 'master_version');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `services_ipv4_cidr` attribute.
  TfRef<String> get servicesIpv4Cidr =>
      TfRef.attribute<String>(this, 'services_ipv4_cidr');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tpu_ipv4_cidr_block` attribute.
  TfRef<String> get tpuIpv4CidrBlock =>
      TfRef.attribute<String>(this, 'tpu_ipv4_cidr_block');

  /// Reference to `allow_net_admin` attribute.
  TfRef<bool> get allowNetAdmin =>
      TfRef.attribute<bool>(this, 'allow_net_admin');

  /// Reference to `autopilot_privileged_admission` attribute.
  TfRef<List<String>> get autopilotPrivilegedAdmission =>
      TfRef.attribute<List<String>>(this, 'autopilot_privileged_admission');

  /// Reference to `cluster_ipv4_cidr` attribute.
  TfRef<String> get clusterIpv4Cidr =>
      TfRef.attribute<String>(this, 'cluster_ipv4_cidr');

  /// Reference to `datapath_provider` attribute.
  TfRef<String> get datapathProvider =>
      TfRef.attribute<String>(this, 'datapath_provider');

  /// Reference to `dataplane_optimization_mode` attribute.
  TfRef<String> get dataplaneOptimizationMode =>
      TfRef.attribute<String>(this, 'dataplane_optimization_mode');

  /// Reference to `default_max_pods_per_node` attribute.
  TfRef<num> get defaultMaxPodsPerNode =>
      TfRef.attribute<num>(this, 'default_max_pods_per_node');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_emulated_version` attribute.
  TfRef<String> get desiredEmulatedVersion =>
      TfRef.attribute<String>(this, 'desired_emulated_version');

  /// Reference to `disable_l4_lb_firewall_reconciliation` attribute.
  TfRef<bool> get disableL4LbFirewallReconciliation =>
      TfRef.attribute<bool>(this, 'disable_l4_lb_firewall_reconciliation');

  /// Reference to `enable_autopilot` attribute.
  TfRef<bool> get enableAutopilot =>
      TfRef.attribute<bool>(this, 'enable_autopilot');

  /// Reference to `enable_cilium_clusterwide_network_policy` attribute.
  TfRef<bool> get enableCiliumClusterwideNetworkPolicy =>
      TfRef.attribute<bool>(this, 'enable_cilium_clusterwide_network_policy');

  /// Reference to `enable_fqdn_network_policy` attribute.
  TfRef<bool> get enableFqdnNetworkPolicy =>
      TfRef.attribute<bool>(this, 'enable_fqdn_network_policy');

  /// Reference to `enable_intranode_visibility` attribute.
  TfRef<bool> get enableIntranodeVisibility =>
      TfRef.attribute<bool>(this, 'enable_intranode_visibility');

  /// Reference to `enable_kubernetes_alpha` attribute.
  TfRef<bool> get enableKubernetesAlpha =>
      TfRef.attribute<bool>(this, 'enable_kubernetes_alpha');

  /// Reference to `enable_l4_ilb_subsetting` attribute.
  TfRef<bool> get enableL4IlbSubsetting =>
      TfRef.attribute<bool>(this, 'enable_l4_ilb_subsetting');

  /// Reference to `enable_legacy_abac` attribute.
  TfRef<bool> get enableLegacyAbac =>
      TfRef.attribute<bool>(this, 'enable_legacy_abac');

  /// Reference to `enable_multi_networking` attribute.
  TfRef<bool> get enableMultiNetworking =>
      TfRef.attribute<bool>(this, 'enable_multi_networking');

  /// Reference to `enable_shielded_nodes` attribute.
  TfRef<bool> get enableShieldedNodes =>
      TfRef.attribute<bool>(this, 'enable_shielded_nodes');

  /// Reference to `enable_tpu` attribute.
  TfRef<bool> get enableTpu => TfRef.attribute<bool>(this, 'enable_tpu');

  /// Reference to `ignore_node_count_changes` attribute.
  TfRef<bool> get ignoreNodeCountChanges =>
      TfRef.attribute<bool>(this, 'ignore_node_count_changes');

  /// Reference to `in_transit_encryption_config` attribute.
  TfRef<String> get inTransitEncryptionConfig =>
      TfRef.attribute<String>(this, 'in_transit_encryption_config');

  /// Reference to `initial_node_count` attribute.
  TfRef<num> get initialNodeCount =>
      TfRef.attribute<num>(this, 'initial_node_count');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logging_service` attribute.
  TfRef<String> get loggingService =>
      TfRef.attribute<String>(this, 'logging_service');

  /// Reference to `min_master_version` attribute.
  TfRef<String> get minMasterVersion =>
      TfRef.attribute<String>(this, 'min_master_version');

  /// Reference to `monitoring_service` attribute.
  TfRef<String> get monitoringService =>
      TfRef.attribute<String>(this, 'monitoring_service');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `networking_mode` attribute.
  TfRef<String> get networkingMode =>
      TfRef.attribute<String>(this, 'networking_mode');

  /// Reference to `node_locations` attribute.
  TfRef<List<String>> get nodeLocations =>
      TfRef.attribute<List<String>>(this, 'node_locations');

  /// Reference to `node_version` attribute.
  TfRef<String> get nodeVersion =>
      TfRef.attribute<String>(this, 'node_version');

  /// Reference to `private_ipv6_google_access` attribute.
  TfRef<String> get privateIpv6GoogleAccess =>
      TfRef.attribute<String>(this, 'private_ipv6_google_access');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `remove_default_node_pool` attribute.
  TfRef<bool> get removeDefaultNodePool =>
      TfRef.attribute<bool>(this, 'remove_default_node_pool');

  /// Reference to `resource_labels` attribute.
  TfRef<Map<String, String>> get resourceLabels =>
      TfRef.attribute<Map<String, String>>(this, 'resource_labels');

  /// Reference to `skip_node_pool_refresh` attribute.
  TfRef<bool> get skipNodePoolRefresh =>
      TfRef.attribute<bool>(this, 'skip_node_pool_refresh');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');
}
