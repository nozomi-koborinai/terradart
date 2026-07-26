// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_cluster`.
const Set<String> _googleDataprocClusterSensitive = <String>{};

/// Typed helper for the `cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfig {
  const DataprocClusterClusterConfig({
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

  final DataprocClusterClusterConfigAutoscalingConfig? autoscalingConfig;

  final List<DataprocClusterClusterConfigAuxiliaryNodeGroups>?
  auxiliaryNodeGroups;

  final DataprocClusterClusterConfigDataprocMetricConfig? dataprocMetricConfig;

  final DataprocClusterClusterConfigEncryptionConfig? encryptionConfig;

  final DataprocClusterClusterConfigEndpointConfig? endpointConfig;

  final DataprocClusterClusterConfigGceClusterConfig? gceClusterConfig;

  final List<DataprocClusterClusterConfigInitializationAction>?
  initializationAction;

  final DataprocClusterClusterConfigLifecycleConfig? lifecycleConfig;

  final DataprocClusterClusterConfigMasterConfig? masterConfig;

  final DataprocClusterClusterConfigMetastoreConfig? metastoreConfig;

  final DataprocClusterClusterConfigPreemptibleWorkerConfig?
  preemptibleWorkerConfig;

  final DataprocClusterClusterConfigSecurityConfig? securityConfig;

  final DataprocClusterClusterConfigSoftwareConfig? softwareConfig;

  final DataprocClusterClusterConfigWorkerConfig? workerConfig;

  Map<String, Object?> encode() => {
    if (clusterTier != null) 'cluster_tier': clusterTier!.toTfJson(),
    if (clusterType != null) 'cluster_type': clusterType!.toTfJson(),
    if (engine != null) 'engine': engine!.toTfJson(),
    if (stagingBucket != null) 'staging_bucket': stagingBucket!.toTfJson(),
    if (tempBucket != null) 'temp_bucket': tempBucket!.toTfJson(),
    if (autoscalingConfig != null)
      'autoscaling_config': autoscalingConfig!.encode(),
    if (auxiliaryNodeGroups != null)
      'auxiliary_node_groups': [
        for (final e in auxiliaryNodeGroups!) e.encode(),
      ],
    if (dataprocMetricConfig != null)
      'dataproc_metric_config': dataprocMetricConfig!.encode(),
    if (encryptionConfig != null)
      'encryption_config': encryptionConfig!.encode(),
    if (endpointConfig != null) 'endpoint_config': endpointConfig!.encode(),
    if (gceClusterConfig != null)
      'gce_cluster_config': gceClusterConfig!.encode(),
    if (initializationAction != null)
      'initialization_action': [
        for (final e in initializationAction!) e.encode(),
      ],
    if (lifecycleConfig != null) 'lifecycle_config': lifecycleConfig!.encode(),
    if (masterConfig != null) 'master_config': masterConfig!.encode(),
    if (metastoreConfig != null) 'metastore_config': metastoreConfig!.encode(),
    if (preemptibleWorkerConfig != null)
      'preemptible_worker_config': preemptibleWorkerConfig!.encode(),
    if (securityConfig != null) 'security_config': securityConfig!.encode(),
    if (softwareConfig != null) 'software_config': softwareConfig!.encode(),
    if (workerConfig != null) 'worker_config': workerConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.autoscaling_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigAutoscalingConfig {
  const DataprocClusterClusterConfigAutoscalingConfig({
    required this.policyUri,
  });

  final TfArg<String> policyUri;

  Map<String, Object?> encode() => {'policy_uri': policyUri.toTfJson()};
}

/// Typed helper for the `cluster_config.auxiliary_node_groups` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigAuxiliaryNodeGroups {
  const DataprocClusterClusterConfigAuxiliaryNodeGroups({
    this.nodeGroupId,
    required this.nodeGroup,
  });

  final TfArg<String>? nodeGroupId;

  final List<DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroup>
  nodeGroup;

  Map<String, Object?> encode() => {
    if (nodeGroupId != null) 'node_group_id': nodeGroupId!.toTfJson(),
    'node_group': [for (final e in nodeGroup) e.encode()],
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroup {
  const DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroup({
    required this.roles,
    this.nodeGroupConfig,
  });

  final TfArg<List<Object?>> roles;

  final DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfig?
  nodeGroupConfig;

  Map<String, Object?> encode() => {
    'roles': roles.toTfJson(),
    if (nodeGroupConfig != null) 'node_group_config': nodeGroupConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group.node_group_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfig {
  const DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfig({
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
    this.accelerators,
    this.diskConfig,
  });

  final TfArg<String>? machineType;

  final TfArg<String>? minCpuPlatform;

  final TfArg<num>? numInstances;

  final List<
    DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfigAccelerators
  >?
  accelerators;

  final DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfigDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group.node_group_config.accelerators` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfigAccelerators {
  const DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfigAccelerators({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  final TfArg<num> acceleratorCount;

  final TfArg<String> acceleratorType;

  Map<String, Object?> encode() => {
    'accelerator_count': acceleratorCount.toTfJson(),
    'accelerator_type': acceleratorType.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.auxiliary_node_groups.node_group.node_group_config.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfigDiskConfig {
  const DataprocClusterClusterConfigAuxiliaryNodeGroupsNodeGroupNodeGroupConfigDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.dataproc_metric_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigDataprocMetricConfig {
  const DataprocClusterClusterConfigDataprocMetricConfig({
    required this.metrics,
  });

  final List<DataprocClusterClusterConfigDataprocMetricConfigMetrics> metrics;

  Map<String, Object?> encode() => {
    'metrics': [for (final e in metrics) e.encode()],
  };
}

/// Typed helper for the `cluster_config.dataproc_metric_config.metrics` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigDataprocMetricConfigMetrics {
  const DataprocClusterClusterConfigDataprocMetricConfigMetrics({
    this.metricOverrides,
    required this.metricSource,
  });

  final TfArg<List<Object?>>? metricOverrides;

  final TfArg<String> metricSource;

  Map<String, Object?> encode() => {
    if (metricOverrides != null)
      'metric_overrides': metricOverrides!.toTfJson(),
    'metric_source': metricSource.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.encryption_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigEncryptionConfig {
  const DataprocClusterClusterConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `cluster_config.endpoint_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigEndpointConfig {
  const DataprocClusterClusterConfigEndpointConfig({
    required this.enableHttpPortAccess,
  });

  final TfArg<bool> enableHttpPortAccess;

  Map<String, Object?> encode() => {
    'enable_http_port_access': enableHttpPortAccess.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigGceClusterConfig {
  const DataprocClusterClusterConfigGceClusterConfig({
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

  final TfArg<String>? network;

  final TfArg<Map<String, String>>? resourceManagerTags;

  final TfArg<String>? serviceAccount;

  final TfArg<List<Object?>>? serviceAccountScopes;

  final TfArg<String>? subnetwork;

  final TfArg<List<Object?>>? tags;

  final TfArg<String>? zone;

  final DataprocClusterClusterConfigGceClusterConfigConfidentialInstanceConfig?
  confidentialInstanceConfig;

  final DataprocClusterClusterConfigGceClusterConfigNodeGroupAffinity?
  nodeGroupAffinity;

  final DataprocClusterClusterConfigGceClusterConfigReservationAffinity?
  reservationAffinity;

  final DataprocClusterClusterConfigGceClusterConfigShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    if (internalIpOnly != null) 'internal_ip_only': internalIpOnly!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (serviceAccountScopes != null)
      'service_account_scopes': serviceAccountScopes!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
    if (confidentialInstanceConfig != null)
      'confidential_instance_config': confidentialInstanceConfig!.encode(),
    if (nodeGroupAffinity != null)
      'node_group_affinity': nodeGroupAffinity!.encode(),
    if (reservationAffinity != null)
      'reservation_affinity': reservationAffinity!.encode(),
    if (shieldedInstanceConfig != null)
      'shielded_instance_config': shieldedInstanceConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config.confidential_instance_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigGceClusterConfigConfidentialInstanceConfig {
  const DataprocClusterClusterConfigGceClusterConfigConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  final TfArg<String>? confidentialInstanceType;

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    if (confidentialInstanceType != null)
      'confidential_instance_type': confidentialInstanceType!.toTfJson(),
    if (enableConfidentialCompute != null)
      'enable_confidential_compute': enableConfidentialCompute!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config.node_group_affinity` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigGceClusterConfigNodeGroupAffinity {
  const DataprocClusterClusterConfigGceClusterConfigNodeGroupAffinity({
    required this.nodeGroupUri,
  });

  final TfArg<String> nodeGroupUri;

  Map<String, Object?> encode() => {'node_group_uri': nodeGroupUri.toTfJson()};
}

/// Typed helper for the `cluster_config.gce_cluster_config.reservation_affinity` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigGceClusterConfigReservationAffinity {
  const DataprocClusterClusterConfigGceClusterConfigReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<String>? consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (consumeReservationType != null)
      'consume_reservation_type': consumeReservationType!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.gce_cluster_config.shielded_instance_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigGceClusterConfigShieldedInstanceConfig {
  const DataprocClusterClusterConfigGceClusterConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    if (enableIntegrityMonitoring != null)
      'enable_integrity_monitoring': enableIntegrityMonitoring!.toTfJson(),
    if (enableSecureBoot != null)
      'enable_secure_boot': enableSecureBoot!.toTfJson(),
    if (enableVtpm != null) 'enable_vtpm': enableVtpm!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.initialization_action` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigInitializationAction {
  const DataprocClusterClusterConfigInitializationAction({
    required this.script,
    this.timeoutSec,
  });

  final TfArg<String> script;

  final TfArg<num>? timeoutSec;

  Map<String, Object?> encode() => {
    'script': script.toTfJson(),
    if (timeoutSec != null) 'timeout_sec': timeoutSec!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.lifecycle_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigLifecycleConfig {
  const DataprocClusterClusterConfigLifecycleConfig({
    this.autoDeleteTime,
    this.autoStopTime,
    this.idleDeleteTtl,
    this.idleStopTtl,
  });

  final TfArg<String>? autoDeleteTime;

  final TfArg<String>? autoStopTime;

  final TfArg<String>? idleDeleteTtl;

  final TfArg<String>? idleStopTtl;

  Map<String, Object?> encode() => {
    if (autoDeleteTime != null) 'auto_delete_time': autoDeleteTime!.toTfJson(),
    if (autoStopTime != null) 'auto_stop_time': autoStopTime!.toTfJson(),
    if (idleDeleteTtl != null) 'idle_delete_ttl': idleDeleteTtl!.toTfJson(),
    if (idleStopTtl != null) 'idle_stop_ttl': idleStopTtl!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.master_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMasterConfig {
  const DataprocClusterClusterConfigMasterConfig({
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

  final List<DataprocClusterClusterConfigMasterConfigAccelerators>?
  accelerators;

  final DataprocClusterClusterConfigMasterConfigDiskConfig? diskConfig;

  final DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  Map<String, Object?> encode() => {
    if (imageUri != null) 'image_uri': imageUri!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
    if (instanceFlexibilityPolicy != null)
      'instance_flexibility_policy': instanceFlexibilityPolicy!.encode(),
  };
}

/// Typed helper for the `cluster_config.master_config.accelerators` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMasterConfigAccelerators {
  const DataprocClusterClusterConfigMasterConfigAccelerators({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  final TfArg<num> acceleratorCount;

  final TfArg<String> acceleratorType;

  Map<String, Object?> encode() => {
    'accelerator_count': acceleratorCount.toTfJson(),
    'accelerator_type': acceleratorType.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.master_config.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMasterConfigDiskConfig {
  const DataprocClusterClusterConfigMasterConfigDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.master_config.instance_flexibility_policy` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicy {
  const DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
  });

  final List<
    DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList
  >?
  instanceSelectionList;

  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
  };
}

/// Typed helper for the `cluster_config.master_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList {
  const DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<Object?>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (machineTypes != null) 'machine_types': machineTypes!.toTfJson(),
    if (rank != null) 'rank': rank!.toTfJson(),
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.master_config.instance_flexibility_policy.instance_selection_list.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  const DataprocClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.metastore_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigMetastoreConfig {
  const DataprocClusterClusterConfigMetastoreConfig({
    required this.dataprocMetastoreService,
  });

  final TfArg<String> dataprocMetastoreService;

  Map<String, Object?> encode() => {
    'dataproc_metastore_service': dataprocMetastoreService.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigPreemptibleWorkerConfig {
  const DataprocClusterClusterConfigPreemptibleWorkerConfig({
    this.numInstances,
    this.preemptibility,
    this.diskConfig,
    this.instanceFlexibilityPolicy,
  });

  final TfArg<num>? numInstances;

  final TfArg<String>? preemptibility;

  final DataprocClusterClusterConfigPreemptibleWorkerConfigDiskConfig?
  diskConfig;

  final DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  Map<String, Object?> encode() => {
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (preemptibility != null) 'preemptibility': preemptibility!.toTfJson(),
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
    if (instanceFlexibilityPolicy != null)
      'instance_flexibility_policy': instanceFlexibilityPolicy!.encode(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigPreemptibleWorkerConfigDiskConfig {
  const DataprocClusterClusterConfigPreemptibleWorkerConfigDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.instance_flexibility_policy` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy {
  const DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
    this.provisioningModelMix,
  });

  final List<
    DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList
  >?
  instanceSelectionList;

  final DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix?
  provisioningModelMix;

  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
    if (provisioningModelMix != null)
      'provisioning_model_mix': provisioningModelMix!.encode(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  const DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<Object?>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (machineTypes != null) 'machine_types': machineTypes!.toTfJson(),
    if (rank != null) 'rank': rank!.toTfJson(),
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.instance_flexibility_policy.instance_selection_list.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  const DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.preemptible_worker_config.instance_flexibility_policy.provisioning_model_mix` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix {
  const DataprocClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix({
    this.standardCapacityBase,
    this.standardCapacityPercentAboveBase,
  });

  final TfArg<num>? standardCapacityBase;

  final TfArg<num>? standardCapacityPercentAboveBase;

  Map<String, Object?> encode() => {
    if (standardCapacityBase != null)
      'standard_capacity_base': standardCapacityBase!.toTfJson(),
    if (standardCapacityPercentAboveBase != null)
      'standard_capacity_percent_above_base': standardCapacityPercentAboveBase!
          .toTfJson(),
  };
}

/// Typed helper for the `cluster_config.security_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigSecurityConfig {
  const DataprocClusterClusterConfigSecurityConfig({
    this.identityConfig,
    this.kerberosConfig,
  });

  final DataprocClusterClusterConfigSecurityConfigIdentityConfig?
  identityConfig;

  final DataprocClusterClusterConfigSecurityConfigKerberosConfig?
  kerberosConfig;

  Map<String, Object?> encode() => {
    if (identityConfig != null) 'identity_config': identityConfig!.encode(),
    if (kerberosConfig != null) 'kerberos_config': kerberosConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.security_config.identity_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigSecurityConfigIdentityConfig {
  const DataprocClusterClusterConfigSecurityConfigIdentityConfig({
    required this.userServiceAccountMapping,
  });

  final TfArg<Map<String, String>> userServiceAccountMapping;

  Map<String, Object?> encode() => {
    'user_service_account_mapping': userServiceAccountMapping.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.security_config.kerberos_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigSecurityConfigKerberosConfig {
  const DataprocClusterClusterConfigSecurityConfigKerberosConfig({
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

  Map<String, Object?> encode() => {
    if (crossRealmTrustAdminServer != null)
      'cross_realm_trust_admin_server': crossRealmTrustAdminServer!.toTfJson(),
    if (crossRealmTrustKdc != null)
      'cross_realm_trust_kdc': crossRealmTrustKdc!.toTfJson(),
    if (crossRealmTrustRealm != null)
      'cross_realm_trust_realm': crossRealmTrustRealm!.toTfJson(),
    if (crossRealmTrustSharedPasswordUri != null)
      'cross_realm_trust_shared_password_uri': crossRealmTrustSharedPasswordUri!
          .toTfJson(),
    if (enableKerberos != null) 'enable_kerberos': enableKerberos!.toTfJson(),
    if (kdcDbKeyUri != null) 'kdc_db_key_uri': kdcDbKeyUri!.toTfJson(),
    if (keyPasswordUri != null) 'key_password_uri': keyPasswordUri!.toTfJson(),
    if (keystorePasswordUri != null)
      'keystore_password_uri': keystorePasswordUri!.toTfJson(),
    if (keystoreUri != null) 'keystore_uri': keystoreUri!.toTfJson(),
    'kms_key_uri': kmsKeyUri.toTfJson(),
    if (realm != null) 'realm': realm!.toTfJson(),
    'root_principal_password_uri': rootPrincipalPasswordUri.toTfJson(),
    if (tgtLifetimeHours != null)
      'tgt_lifetime_hours': tgtLifetimeHours!.toTfJson(),
    if (truststorePasswordUri != null)
      'truststore_password_uri': truststorePasswordUri!.toTfJson(),
    if (truststoreUri != null) 'truststore_uri': truststoreUri!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.software_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigSoftwareConfig {
  const DataprocClusterClusterConfigSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.overrideProperties,
  });

  final TfArg<String>? imageVersion;

  final TfArg<List<Object?>>? optionalComponents;

  final TfArg<Map<String, String>>? overrideProperties;

  Map<String, Object?> encode() => {
    if (imageVersion != null) 'image_version': imageVersion!.toTfJson(),
    if (optionalComponents != null)
      'optional_components': optionalComponents!.toTfJson(),
    if (overrideProperties != null)
      'override_properties': overrideProperties!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.worker_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigWorkerConfig {
  const DataprocClusterClusterConfigWorkerConfig({
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

  final List<DataprocClusterClusterConfigWorkerConfigAccelerators>?
  accelerators;

  final DataprocClusterClusterConfigWorkerConfigDiskConfig? diskConfig;

  final DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy?
  instanceFlexibilityPolicy;

  Map<String, Object?> encode() => {
    if (imageUri != null) 'image_uri': imageUri!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (minNumInstances != null)
      'min_num_instances': minNumInstances!.toTfJson(),
    if (numInstances != null) 'num_instances': numInstances!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
    if (instanceFlexibilityPolicy != null)
      'instance_flexibility_policy': instanceFlexibilityPolicy!.encode(),
  };
}

/// Typed helper for the `cluster_config.worker_config.accelerators` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigWorkerConfigAccelerators {
  const DataprocClusterClusterConfigWorkerConfigAccelerators({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  final TfArg<num> acceleratorCount;

  final TfArg<String> acceleratorType;

  Map<String, Object?> encode() => {
    'accelerator_count': acceleratorCount.toTfJson(),
    'accelerator_type': acceleratorType.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.worker_config.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigWorkerConfigDiskConfig {
  const DataprocClusterClusterConfigWorkerConfigDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
  };
}

/// Typed helper for the `cluster_config.worker_config.instance_flexibility_policy` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy {
  const DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionList,
  });

  final List<
    DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList
  >?
  instanceSelectionList;

  Map<String, Object?> encode() => {
    if (instanceSelectionList != null)
      'instance_selection_list': [
        for (final e in instanceSelectionList!) e.encode(),
      ],
  };
}

/// Typed helper for the `cluster_config.worker_config.instance_flexibility_policy.instance_selection_list` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  const DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.machineTypes,
    this.rank,
    this.diskConfig,
  });

  final TfArg<List<Object?>>? machineTypes;

  final TfArg<num>? rank;

  final DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?
  diskConfig;

  Map<String, Object?> encode() => {
    if (machineTypes != null) 'machine_types': machineTypes!.toTfJson(),
    if (rank != null) 'rank': rank!.toTfJson(),
    if (diskConfig != null) 'disk_config': diskConfig!.encode(),
  };
}

/// Typed helper for the `cluster_config.worker_config.instance_flexibility_policy.instance_selection_list.disk_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  const DataprocClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
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

  Map<String, Object?> encode() => {
    if (bootDiskProvisionedIops != null)
      'boot_disk_provisioned_iops': bootDiskProvisionedIops!.toTfJson(),
    if (bootDiskProvisionedThroughput != null)
      'boot_disk_provisioned_throughput': bootDiskProvisionedThroughput!
          .toTfJson(),
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
    if (localSsdInterface != null)
      'local_ssd_interface': localSsdInterface!.toTfJson(),
    if (numLocalSsds != null) 'num_local_ssds': numLocalSsds!.toTfJson(),
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

  final DataprocClusterVirtualClusterConfigAuxiliaryServicesConfig?
  auxiliaryServicesConfig;

  final DataprocClusterVirtualClusterConfigKubernetesClusterConfig?
  kubernetesClusterConfig;

  Map<String, Object?> encode() => {
    if (stagingBucket != null) 'staging_bucket': stagingBucket!.toTfJson(),
    if (auxiliaryServicesConfig != null)
      'auxiliary_services_config': auxiliaryServicesConfig!.encode(),
    if (kubernetesClusterConfig != null)
      'kubernetes_cluster_config': kubernetesClusterConfig!.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.auxiliary_services_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigAuxiliaryServicesConfig {
  const DataprocClusterVirtualClusterConfigAuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  final DataprocClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig?
  metastoreConfig;

  final DataprocClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig?
  sparkHistoryServerConfig;

  Map<String, Object?> encode() => {
    if (metastoreConfig != null) 'metastore_config': metastoreConfig!.encode(),
    if (sparkHistoryServerConfig != null)
      'spark_history_server_config': sparkHistoryServerConfig!.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.auxiliary_services_config.metastore_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig {
  const DataprocClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig({
    this.dataprocMetastoreService,
  });

  final TfArg<String>? dataprocMetastoreService;

  Map<String, Object?> encode() => {
    if (dataprocMetastoreService != null)
      'dataproc_metastore_service': dataprocMetastoreService!.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.auxiliary_services_config.spark_history_server_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig {
  const DataprocClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  final TfArg<String>? dataprocCluster;

  Map<String, Object?> encode() => {
    if (dataprocCluster != null)
      'dataproc_cluster': dataprocCluster!.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfig {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfig({
    this.kubernetesNamespace,
    required this.gkeClusterConfig,
    required this.kubernetesSoftwareConfig,
  });

  final TfArg<String>? kubernetesNamespace;

  final DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig
  gkeClusterConfig;

  final DataprocClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig
  kubernetesSoftwareConfig;

  Map<String, Object?> encode() => {
    if (kubernetesNamespace != null)
      'kubernetes_namespace': kubernetesNamespace!.toTfJson(),
    'gke_cluster_config': gkeClusterConfig.encode(),
    'kubernetes_software_config': kubernetesSoftwareConfig.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig({
    this.gkeClusterTarget,
    this.nodePoolTarget,
  });

  final TfArg<String>? gkeClusterTarget;

  final List<
    DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget
  >?
  nodePoolTarget;

  Map<String, Object?> encode() => {
    if (gkeClusterTarget != null)
      'gke_cluster_target': gkeClusterTarget!.toTfJson(),
    if (nodePoolTarget != null)
      'node_pool_target': [for (final e in nodePoolTarget!) e.encode()],
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget({
    required this.nodePool,
    required this.roles,
    this.nodePoolConfig,
  });

  final TfArg<String> nodePool;

  final TfArg<List<Object?>> roles;

  final DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig?
  nodePoolConfig;

  Map<String, Object?> encode() => {
    'node_pool': nodePool.toTfJson(),
    'roles': roles.toTfJson(),
    if (nodePoolConfig != null) 'node_pool_config': nodePoolConfig!.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig({
    required this.locations,
    this.autoscaling,
    this.config,
  });

  final TfArg<List<Object?>> locations;

  final DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling?
  autoscaling;

  final DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig?
  config;

  Map<String, Object?> encode() => {
    'locations': locations.toTfJson(),
    if (autoscaling != null) 'autoscaling': autoscaling!.encode(),
    if (config != null) 'config': config!.encode(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling({
    this.maxNodeCount,
    this.minNodeCount,
  });

  final TfArg<num>? maxNodeCount;

  final TfArg<num>? minNodeCount;

  Map<String, Object?> encode() => {
    if (maxNodeCount != null) 'max_node_count': maxNodeCount!.toTfJson(),
    if (minNodeCount != null) 'min_node_count': minNodeCount!.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig({
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

  Map<String, Object?> encode() => {
    if (localSsdCount != null) 'local_ssd_count': localSsdCount!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (preemptible != null) 'preemptible': preemptible!.toTfJson(),
    if (spot != null) 'spot': spot!.toTfJson(),
  };
}

/// Typed helper for the `virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config` block of
/// `google_dataproc_cluster` (derived from provider schema).
@immutable
final class DataprocClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig {
  const DataprocClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig({
    required this.componentVersion,
    this.properties,
  });

  final TfArg<Map<String, String>> componentVersion;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    'component_version': componentVersion.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
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
///   localName: 'spark',
///   name: TfArg.literal('terradart-dataproc'),
///   region: TfArg.literal('us-central1'),
///   clusterConfig: DataprocClusterClusterConfig(
///     masterConfig: DataprocClusterClusterConfigMasterConfig(
///       numInstances: TfArg.literal(1),
///       machineType: TfArg.literal('e2-standard-4'),
///     ),
///     workerConfig: DataprocClusterClusterConfigWorkerConfig(
///       numInstances: TfArg.literal(2),
///       machineType: TfArg.literal('e2-standard-4'),
///     ),
///   ),
/// );
/// ```
final class GoogleDataprocCluster extends Resource {
  static const String tfType = 'google_dataproc_cluster';

  GoogleDataprocCluster({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    DataprocClusterClusterConfig? clusterConfig,
    DataprocClusterVirtualClusterConfig? virtualClusterConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? gracefulDecommissionTimeout,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (clusterConfig != null)
             'cluster_config': TfArg.literal(clusterConfig.encode()),
           if (virtualClusterConfig != null)
             'virtual_cluster_config': TfArg.literal(
               virtualClusterConfig.encode(),
             ),
           if (labels != null) 'labels': labels,
           if (gracefulDecommissionTimeout != null)
             'graceful_decommission_timeout': gracefulDecommissionTimeout,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
