// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataproc_cluster`.
const Set<String> _googleDataprocClusterSensitive = <String>{};

/// Typed helper for the `cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterConfig {
  const DataprocClusterConfig({
    this.clusterTier,
    this.clusterType,
    this.engine,
    this.stagingBucket,
    this.tempBucket,
    this.autoscalingConfig,
    this.auxiliaryNodeGroups,
    this.dataprocMetricConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.initializationAction,
    this.lifecycleConfig,
    this.masterConfig,
    this.metastoreConfig,
    this.preemptibleWorkerConfig,
    this.securityConfig,
    this.softwareConfig,
    this.workerConfig,
  });

  final TfArg<String>? clusterTier;

  final TfArg<String>? clusterType;

  final TfArg<String>? engine;

  final TfArg<String>? stagingBucket;

  final TfArg<String>? tempBucket;

  final DataprocClusterAutoscalingConfig? autoscalingConfig;

  final List<DataprocClusterAuxiliaryNodeGroups>? auxiliaryNodeGroups;

  final DataprocClusterDataprocMetricConfig? dataprocMetricConfig;

  final DataprocClusterEncryptionConfig? encryptionConfig;

  final DataprocClusterEndpointConfig? endpointConfig;

  final DataprocClusterGceClusterConfig? gceClusterConfig;

  final List<DataprocClusterInitializationAction>? initializationAction;

  final DataprocClusterLifecycleConfig? lifecycleConfig;

  final DataprocClusterMasterConfig? masterConfig;

  final DataprocClusterMetastoreConfig? metastoreConfig;

  final DataprocClusterPreemptibleWorkerConfig? preemptibleWorkerConfig;

  final DataprocClusterSecurityConfig? securityConfig;

  final DataprocClusterSoftwareConfig? softwareConfig;

  final DataprocClusterWorkerConfig? workerConfig;

  @internal
  Map<String, Object?> encode() => {
    'cluster_tier': ?clusterTier?.toTfJson(),
    'cluster_type': ?clusterType?.toTfJson(),
    'engine': ?engine?.toTfJson(),
    'staging_bucket': ?stagingBucket?.toTfJson(),
    'temp_bucket': ?tempBucket?.toTfJson(),
    'autoscaling_config': ?autoscalingConfig?.encode(),
    if (auxiliaryNodeGroups != null)
      'auxiliary_node_groups': [
        for (final e in auxiliaryNodeGroups!) e.encode(),
      ],
    'dataproc_metric_config': ?dataprocMetricConfig?.encode(),
    'encryption_config': ?encryptionConfig?.encode(),
    'endpoint_config': ?endpointConfig?.encode(),
    'gce_cluster_config': ?gceClusterConfig?.encode(),
    if (initializationAction != null)
      'initialization_action': [
        for (final e in initializationAction!) e.encode(),
      ],
    'lifecycle_config': ?lifecycleConfig?.encode(),
    'master_config': ?masterConfig?.encode(),
    'metastore_config': ?metastoreConfig?.encode(),
    'preemptible_worker_config': ?preemptibleWorkerConfig?.encode(),
    'security_config': ?securityConfig?.encode(),
    'software_config': ?softwareConfig?.encode(),
    'worker_config': ?workerConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.autoscaling_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterAutoscalingConfig {
  const DataprocClusterAutoscalingConfig({required this.policyUri});

  final TfArg<String> policyUri;

  @internal
  Map<String, Object?> encode() => {'policy_uri': policyUri.toTfJson()};
}

/// Typed helper for the `cluster_config.auxiliary_node_groups` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterAuxiliaryNodeGroups {
  const DataprocClusterAuxiliaryNodeGroups({
    this.nodeGroupId,
    required this.nodeGroup,
  });

  final TfArg<String>? nodeGroupId;

  final List<DataprocClusterNodeGroup> nodeGroup;

  @internal
  Map<String, Object?> encode() => {
    'node_group_id': ?nodeGroupId?.toTfJson(),
    'node_group': [for (final e in nodeGroup) e.encode()],
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodeGroup {
  const DataprocClusterNodeGroup({required this.roles, this.nodeGroupConfig});

  final TfArg<List<String>> roles;

  final DataprocClusterNodeGroupConfig? nodeGroupConfig;

  @internal
  Map<String, Object?> encode() => {
    'roles': roles.toTfJson(),
    'node_group_config': ?nodeGroupConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group.node_group_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodeGroupConfig {
  const DataprocClusterNodeGroupConfig({
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
    this.accelerators,
    this.diskConfig,
  });

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? numInstances;

  final List<DataprocClusterAccelerators>? accelerators;

  final DataprocClusterNodeGroupConfigDiskConfig? diskConfig;

  @internal
  Map<String, Object?> encode() => {
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'num_instances': ?numInstances?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    'disk_config': ?diskConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.master_config.accelerators` block of
/// `google_dataproc_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataprocClusterAccelerators {
  const DataprocClusterAccelerators({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  final TfArg<num> acceleratorCount;

  final TfArg<String> acceleratorType;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': acceleratorCount.toTfJson(),
    'accelerator_type': acceleratorType.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group.node_group_config.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodeGroupConfigDiskConfig {
  const DataprocClusterNodeGroupConfigDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  @internal
  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.dataproc_metric_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterDataprocMetricConfig {
  const DataprocClusterDataprocMetricConfig({required this.metrics});

  final List<DataprocClusterMetrics> metrics;

  @internal
  Map<String, Object?> encode() => {
    'metrics': [for (final e in metrics) e.encode()],
  };
}

/// Typed helper for the `cluster_config.dataproc_metric_config.metrics` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterMetrics {
  const DataprocClusterMetrics({
    this.metricOverrides,
    required this.metricSource,
  });

  final TfArg<List<String>>? metricOverrides;

  final TfArg<String> metricSource;

  @internal
  Map<String, Object?> encode() => {
    'metric_overrides': ?metricOverrides?.toTfJson(),
    'metric_source': metricSource.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.encryption_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterEncryptionConfig {
  const DataprocClusterEncryptionConfig({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `cluster_config.endpoint_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterEndpointConfig {
  const DataprocClusterEndpointConfig({required this.enableHttpPortAccess});

  final TfArg<bool> enableHttpPortAccess;

  @internal
  Map<String, Object?> encode() => {
    'enable_http_port_access': enableHttpPortAccess.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterGceClusterConfig {
  const DataprocClusterGceClusterConfig({
    this.internalIpOnly,
    this.metadata,
    this.network,
    this.resourceManagerTags,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.subnetwork,
    this.tags,
    this.zone,
    this.confidentialInstanceConfig,
    this.nodeGroupAffinity,
    this.reservationAffinity,
    this.shieldedInstanceConfig,
  });

  final TfArg<bool>? internalIpOnly;

  final TfArg<Map<String, String>>? metadata;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<List<String>>? serviceAccountScopes;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<List<String>>? tags;

  final TfArg<String>? zone;

  final DataprocClusterConfidentialInstanceConfig? confidentialInstanceConfig;

  final DataprocClusterNodeGroupAffinity? nodeGroupAffinity;

  final DataprocClusterReservationAffinity? reservationAffinity;

  final DataprocClusterShieldedInstanceConfig? shieldedInstanceConfig;

  @internal
  Map<String, Object?> encode() => {
    'internal_ip_only': ?internalIpOnly?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'service_account_scopes': ?serviceAccountScopes?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'zone': ?zone?.toTfJson(),
    'confidential_instance_config': ?confidentialInstanceConfig?.encode(),
    'node_group_affinity': ?nodeGroupAffinity?.encode(),
    'reservation_affinity': ?reservationAffinity?.encode(),
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config.confidential_instance_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterConfidentialInstanceConfig {
  const DataprocClusterConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final TfArg<String>? confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  @internal
  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config.node_group_affinity` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodeGroupAffinity {
  const DataprocClusterNodeGroupAffinity({required this.nodeGroupUri});

  final TfArg<String> nodeGroupUri;

  @internal
  Map<String, Object?> encode() => {'node_group_uri': nodeGroupUri.toTfJson()};
}

/// Typed helper for the `cluster_config.gce_cluster_config.reservation_affinity` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterReservationAffinity {
  const DataprocClusterReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<String>? consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'consume_reservation_type': ?consumeReservationType?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config.shielded_instance_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterShieldedInstanceConfig {
  const DataprocClusterShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  @internal
  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.initialization_action` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterInitializationAction {
  const DataprocClusterInitializationAction({
    required this.script,
    this.timeoutSec,
  });

  final TfArg<String> script;

  final TfArg<num>? timeoutSec;

  @internal
  Map<String, Object?> encode() => {
    'script': script.toTfJson(),
    'timeout_sec': ?timeoutSec?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.lifecycle_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterLifecycleConfig {
  const DataprocClusterLifecycleConfig({
    this.autoDeleteTime,
    this.autoStopTime,
    this.idleDeleteTtl,
    this.idleStopTtl,
  });

  final TfArg<String>? autoDeleteTime;

  final TfArg<String>? autoStopTime;

  final TfArg<String>? idleDeleteTtl;

  final TfArg<String>? idleStopTtl;

  @internal
  Map<String, Object?> encode() => {
    'auto_delete_time': ?autoDeleteTime?.toTfJson(),
    'auto_stop_time': ?autoStopTime?.toTfJson(),
    'idle_delete_ttl': ?idleDeleteTtl?.toTfJson(),
    'idle_stop_ttl': ?idleStopTtl?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.master_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterMasterConfig {
  const DataprocClusterMasterConfig({
    this.imageUri,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
    this.accelerators,
    this.diskConfig,
    this.instanceFlexibilityPolicy,
  });

  final TfArg<String>? imageUri;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? numInstances;

  final List<DataprocClusterAccelerators>? accelerators;

  final DataprocClusterDiskConfig? diskConfig;

  final DataprocClusterMasterConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'image_uri': ?imageUri?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'num_instances': ?numInstances?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    'disk_config': ?diskConfig?.encode(),
    'instance_flexibility_policy': ?instanceFlexibilityPolicy?.encode(),
  };
}

/// Typed helper for the `cluster_config.master_config.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataprocClusterDiskConfig {
  const DataprocClusterDiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
    this.attachedDiskConfig,
  });

  final TfArg<num>? bootDiskProvisionedIops;

  final TfArg<num>? bootDiskProvisionedThroughput;

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  final TfArg<String>? localSsdInterface;

  final TfArg<num>? numLocalSsds;

  final List<DataprocClusterAttachedDiskConfig>? attachedDiskConfig;

  @internal
  Map<String, Object?> encode() => {
    'boot_disk_provisioned_iops': ?bootDiskProvisionedIops?.toTfJson(),
    'boot_disk_provisioned_throughput': ?bootDiskProvisionedThroughput
        ?.toTfJson(),
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
    'local_ssd_interface': ?localSsdInterface?.toTfJson(),
    'num_local_ssds': ?numLocalSsds?.toTfJson(),
    if (attachedDiskConfig != null)
      'attached_disk_config': [for (final e in attachedDiskConfig!) e.encode()],
  };
}

/// Typed helper for the `cluster_config.master_config.disk_config.attached_disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataprocClusterAttachedDiskConfig {
  const DataprocClusterAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  final TfArg<num>? provisionedIops;

  final TfArg<num>? provisionedThroughput;

  @internal
  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'provisioned_iops': ?provisionedIops?.toTfJson(),
    'provisioned_throughput': ?provisionedThroughput?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.master_config.instance_flexibility_policy` block of
/// `google_dataproc_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataprocClusterMasterConfigInstanceFlexibilityPolicy {
  const DataprocClusterMasterConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
  });

  final List<DataprocClusterInstanceSelectionList>? instanceSelectionList;

  @internal
  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
  };
}

/// Typed helper for the `cluster_config.master_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataprocClusterInstanceSelectionList {
  const DataprocClusterInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<String>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocClusterDiskConfig? diskConfig;

  @internal
  Map<String, Object?> encode() => {
    'machine_types': ?machineTypes?.toTfJson(),
    'rank': ?rank?.toTfJson(),
    'disk_config': ?diskConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.metastore_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterMetastoreConfig {
  const DataprocClusterMetastoreConfig({
    required this.dataprocMetastoreService,
  });

  final TfArg<String> dataprocMetastoreService;

  @internal
  Map<String, Object?> encode() => {
    'dataproc_metastore_service': dataprocMetastoreService.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterPreemptibleWorkerConfig {
  const DataprocClusterPreemptibleWorkerConfig({
    this.numInstances,
    this.preemptibility,
    this.diskConfig,
    this.instanceFlexibilityPolicy,
  });

  final TfArg<num>? numInstances;

  final TfArg<String>? preemptibility;

  final DataprocClusterDiskConfig? diskConfig;

  final DataprocClusterPreemptibleWorkerConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'num_instances': ?numInstances?.toTfJson(),
    'preemptibility': ?preemptibility?.toTfJson(),
    'disk_config': ?diskConfig?.encode(),
    'instance_flexibility_policy': ?instanceFlexibilityPolicy?.encode(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.instance_flexibility_policy` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterPreemptibleWorkerConfigInstanceFlexibilityPolicy {
  const DataprocClusterPreemptibleWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
    this.provisioningModelMix,
  });

  final List<DataprocClusterInstanceSelectionList>? instanceSelectionList;

  final DataprocClusterProvisioningModelMix? provisioningModelMix;

  @internal
  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
    'provisioning_model_mix': ?provisioningModelMix?.encode(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.instance_flexibility_policy.provisioning_model_mix` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterProvisioningModelMix {
  const DataprocClusterProvisioningModelMix({
    this.standardCapacityBase,
    this.standardCapacityPercentAboveBase,
  });

  final TfArg<num>? standardCapacityBase;

  final TfArg<num>? standardCapacityPercentAboveBase;

  @internal
  Map<String, Object?> encode() => {
    'standard_capacity_base': ?standardCapacityBase?.toTfJson(),
    'standard_capacity_percent_above_base': ?standardCapacityPercentAboveBase
        ?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.security_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterSecurityConfig {
  const DataprocClusterSecurityConfig({
    this.identityConfig,
    this.kerberosConfig,
  });

  final DataprocClusterIdentityConfig? identityConfig;

  final DataprocClusterKerberosConfig? kerberosConfig;

  @internal
  Map<String, Object?> encode() => {
    'identity_config': ?identityConfig?.encode(),
    'kerberos_config': ?kerberosConfig?.encode(),
  };
}

/// Typed helper for the `cluster_config.security_config.identity_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterIdentityConfig {
  const DataprocClusterIdentityConfig({
    required this.userServiceAccountMapping,
  });

  final TfArg<Map<String, String>> userServiceAccountMapping;

  @internal
  Map<String, Object?> encode() => {
    'user_service_account_mapping': userServiceAccountMapping.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.security_config.kerberos_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterKerberosConfig {
  const DataprocClusterKerberosConfig({
    this.crossRealmTrustAdminServer,
    this.crossRealmTrustKdc,
    this.crossRealmTrustRealm,
    this.crossRealmTrustSharedPasswordUri,
    this.enableKerberos,
    this.kdcDbKeyUri,
    this.keyPasswordUri,
    this.keystorePasswordUri,
    this.keystoreUri,
    required this.kmsKeyUri,
    this.realm,
    required this.rootPrincipalPasswordUri,
    this.tgtLifetimeHours,
    this.truststorePasswordUri,
    this.truststoreUri,
  });

  final TfArg<String>? crossRealmTrustAdminServer;

  final TfArg<String>? crossRealmTrustKdc;

  final TfArg<String>? crossRealmTrustRealm;

  final TfArg<String>? crossRealmTrustSharedPasswordUri;

  final TfArg<bool>? enableKerberos;

  final TfArg<String>? kdcDbKeyUri;

  final TfArg<String>? keyPasswordUri;

  final TfArg<String>? keystorePasswordUri;

  final TfArg<String>? keystoreUri;

  final TfArg<String> kmsKeyUri;

  final TfArg<String>? realm;

  final TfArg<String> rootPrincipalPasswordUri;

  final TfArg<num>? tgtLifetimeHours;

  final TfArg<String>? truststorePasswordUri;

  final TfArg<String>? truststoreUri;

  @internal
  Map<String, Object?> encode() => {
    'cross_realm_trust_admin_server': ?crossRealmTrustAdminServer?.toTfJson(),
    'cross_realm_trust_kdc': ?crossRealmTrustKdc?.toTfJson(),
    'cross_realm_trust_realm': ?crossRealmTrustRealm?.toTfJson(),
    'cross_realm_trust_shared_password_uri': ?crossRealmTrustSharedPasswordUri
        ?.toTfJson(),
    'enable_kerberos': ?enableKerberos?.toTfJson(),
    'kdc_db_key_uri': ?kdcDbKeyUri?.toTfJson(),
    'key_password_uri': ?keyPasswordUri?.toTfJson(),
    'keystore_password_uri': ?keystorePasswordUri?.toTfJson(),
    'keystore_uri': ?keystoreUri?.toTfJson(),
    'kms_key_uri': kmsKeyUri.toTfJson(),
    'realm': ?realm?.toTfJson(),
    'root_principal_password_uri': rootPrincipalPasswordUri.toTfJson(),
    'tgt_lifetime_hours': ?tgtLifetimeHours?.toTfJson(),
    'truststore_password_uri': ?truststorePasswordUri?.toTfJson(),
    'truststore_uri': ?truststoreUri?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.software_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterSoftwareConfig {
  const DataprocClusterSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.overrideProperties,
  });

  final TfArg<String>? imageVersion;

  final TfArg<List<String>>? optionalComponents;

  final TfArg<Map<String, String>>? overrideProperties;

  @internal
  Map<String, Object?> encode() => {
    'image_version': ?imageVersion?.toTfJson(),
    'optional_components': ?optionalComponents?.toTfJson(),
    'override_properties': ?overrideProperties?.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.worker_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterWorkerConfig {
  const DataprocClusterWorkerConfig({
    this.imageUri,
    this.machineType,
    this.minCpuPlatform,
    this.minNumInstances,
    this.numInstances,
    this.accelerators,
    this.diskConfig,
    this.instanceFlexibilityPolicy,
  });

  final TfArg<String>? imageUri;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? minNumInstances;

  final TfArg<num>? numInstances;

  final List<DataprocClusterAccelerators>? accelerators;

  final DataprocClusterDiskConfig? diskConfig;

  final DataprocClusterMasterConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'image_uri': ?imageUri?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'min_num_instances': ?minNumInstances?.toTfJson(),
    'num_instances': ?numInstances?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    'disk_config': ?diskConfig?.encode(),
    'instance_flexibility_policy': ?instanceFlexibilityPolicy?.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfig {
  const DataprocClusterVirtualClusterConfig({
    this.stagingBucket,
    this.auxiliaryServicesConfig,
    this.kubernetesClusterConfig,
  });

  final TfArg<String>? stagingBucket;

  final DataprocClusterAuxiliaryServicesConfig? auxiliaryServicesConfig;

  final DataprocClusterKubernetesClusterConfig? kubernetesClusterConfig;

  @internal
  Map<String, Object?> encode() => {
    'staging_bucket': ?stagingBucket?.toTfJson(),
    'auxiliary_services_config': ?auxiliaryServicesConfig?.encode(),
    'kubernetes_cluster_config': ?kubernetesClusterConfig?.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.auxiliary_services_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterAuxiliaryServicesConfig {
  const DataprocClusterAuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  final DataprocClusterAuxiliaryServicesConfigMetastoreConfig? metastoreConfig;

  final DataprocClusterSparkHistoryServerConfig? sparkHistoryServerConfig;

  @internal
  Map<String, Object?> encode() => {
    'metastore_config': ?metastoreConfig?.encode(),
    'spark_history_server_config': ?sparkHistoryServerConfig?.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.auxiliary_services_config.metastore_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterAuxiliaryServicesConfigMetastoreConfig {
  const DataprocClusterAuxiliaryServicesConfigMetastoreConfig({
    this.dataprocMetastoreService,
  });

  final TfArg<String>? dataprocMetastoreService;

  @internal
  Map<String, Object?> encode() => {
    'dataproc_metastore_service': ?dataprocMetastoreService?.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.auxiliary_services_config.spark_history_server_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterSparkHistoryServerConfig {
  const DataprocClusterSparkHistoryServerConfig({this.dataprocCluster});

  final TfArg<String>? dataprocCluster;

  @internal
  Map<String, Object?> encode() => {
    'dataproc_cluster': ?dataprocCluster?.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterKubernetesClusterConfig {
  const DataprocClusterKubernetesClusterConfig({
    this.kubernetesNamespace,
    required this.gkeClusterConfig,
    required this.kubernetesSoftwareConfig,
  });

  final TfArg<String>? kubernetesNamespace;

  final DataprocClusterGkeClusterConfig gkeClusterConfig;

  final DataprocClusterKubernetesSoftwareConfig kubernetesSoftwareConfig;

  @internal
  Map<String, Object?> encode() => {
    'kubernetes_namespace': ?kubernetesNamespace?.toTfJson(),
    'gke_cluster_config': gkeClusterConfig.encode(),
    'kubernetes_software_config': kubernetesSoftwareConfig.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterGkeClusterConfig {
  const DataprocClusterGkeClusterConfig({
    this.gkeClusterTarget,
    this.nodePoolTarget,
  });

  final TfArg<String>? gkeClusterTarget;

  final List<DataprocClusterNodePoolTarget>? nodePoolTarget;

  @internal
  Map<String, Object?> encode() => {
    'gke_cluster_target': ?gkeClusterTarget?.toTfJson(),
    if (nodePoolTarget != null)
      'node_pool_target': [for (final e in nodePoolTarget!) e.encode()],
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodePoolTarget {
  const DataprocClusterNodePoolTarget({
    required this.nodePool,
    required this.roles,
    this.nodePoolConfig,
  });

  final TfArg<String> nodePool;

  final TfArg<List<String>> roles;

  final DataprocClusterNodePoolConfig? nodePoolConfig;

  @internal
  Map<String, Object?> encode() => {
    'node_pool': nodePool.toTfJson(),
    'roles': roles.toTfJson(),
    'node_pool_config': ?nodePoolConfig?.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodePoolConfig {
  const DataprocClusterNodePoolConfig({
    required this.locations,
    this.autoscaling,
    this.config,
  });

  final TfArg<List<String>> locations;

  final DataprocClusterAutoscaling? autoscaling;

  final DataprocClusterNodePoolConfigConfig? config;

  @internal
  Map<String, Object?> encode() => {
    'locations': locations.toTfJson(),
    'autoscaling': ?autoscaling?.encode(),
    'config': ?config?.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterAutoscaling {
  const DataprocClusterAutoscaling({this.maxNodeCount, this.minNodeCount});

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  @internal
  Map<String, Object?> encode() => {
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterNodePoolConfigConfig {
  const DataprocClusterNodePoolConfigConfig({
    this.localSsdCount,
    this.machineType,
    this.minCpuPlatform,
    this.preemptible,
    this.spot,
  });

  final TfArg<num>? localSsdCount;

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<bool>? preemptible;

  final TfArg<bool>? spot;

  @internal
  Map<String, Object?> encode() => {
    'local_ssd_count': ?localSsdCount?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'preemptible': ?preemptible?.toTfJson(),
    'spot': ?spot?.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterKubernetesSoftwareConfig {
  const DataprocClusterKubernetesSoftwareConfig({
    required this.componentVersion,
    this.properties,
  });

  final TfArg<Map<String, String>> componentVersion;

  final TfArg<Map<String, String>>? properties;

  @internal
  Map<String, Object?> encode() => {
    'component_version': componentVersion.toTfJson(),
    'properties': ?properties?.toTfJson(),
  };
}

/// Factory wrapper for `google_dataproc_cluster`.
///
/// Dataproc **cluster** — managed Apache Hadoop / Spark VMs (classic) or
/// a Dataproc-on-GKE virtual cluster.
///
/// **Cost:** Cloud Billing Catalog service `363B-8851-170D` currently
/// lists **Serverless** SKUs only in us-central1 (e.g. Batch DCU
/// `EC7A-EF05-537E` **$0.06/h**; Interactive DCU `A486-6040-07FE`
/// **$0.089/h**) — **no classic cluster premium SKU** after MCP
/// `list_skus`. Classic clusters still **materialize GCE VMs** (plus
/// Dataproc premium per docs) while the cluster exists; destroy stops
/// those charges. Too expensive for apply-smoke — factories ship
/// without a quickstart.
///
/// Provide [clusterConfig] (classic) or [virtualClusterConfig]
/// (Dataproc on GKE). Enable `dataproc.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleDataprocCluster(
///   'spark',
///   name: TfArg.literal('terradart-dataproc'),
///   region: TfArg.literal('us-central1'),
///   clusterConfig: DataprocClusterConfig(
///     masterConfig: .new(
///       numInstances: TfArg.literal(1),
///       machineType: TfArg.literal('e2-standard-4'),
///     ),
///     workerConfig: .new(
///       numInstances: TfArg.literal(2),
///       machineType: TfArg.literal('e2-standard-4'),
///     ),
///   ),
/// );
/// ```
final class GoogleDataprocCluster extends Resource {
  static const String tfType = 'google_dataproc_cluster';

  GoogleDataprocCluster(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    DataprocClusterConfig? clusterConfig,
    DataprocClusterVirtualClusterConfig? virtualClusterConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? gracefulDecommissionTimeout,
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
           'region': ?region,
           if (clusterConfig != null)
             'cluster_config': TfArg.literal(clusterConfig.encode()),
           if (virtualClusterConfig != null)
             'virtual_cluster_config': TfArg.literal(
               virtualClusterConfig.encode(),
             ),
           'labels': ?labels,
           'graceful_decommission_timeout': ?gracefulDecommissionTimeout,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocCluster>`.
  RefTo<GoogleDataprocCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `graceful_decommission_timeout` attribute.
  TfRef<String> get gracefulDecommissionTimeout =>
      TfRef.attribute<String>(this, 'graceful_decommission_timeout');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
