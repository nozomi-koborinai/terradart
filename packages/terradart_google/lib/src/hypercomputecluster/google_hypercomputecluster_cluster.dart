// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_hypercomputecluster_cluster`.
const Set<String> _googleHypercomputeclusterClusterSensitive = <String>{};

/// Typed helper for the `compute_resources` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeResources {
  const HypercomputeclusterClusterComputeResources({
    required this.id,
    required this.config,
  });

  final TfArg<String> id;

  final HypercomputeclusterClusterComputeResourcesConfig config;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'config': config.encode(),
  };
}

/// Typed helper for the `compute_resources.config` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeResourcesConfig {
  const HypercomputeclusterClusterComputeResourcesConfig({
    this.newFlexStartInstances,
    this.newOnDemandInstances,
    this.newReservedInstances,
    this.newSpotInstances,
  });

  final HypercomputeclusterClusterComputeResourcesConfigNewFlexStartInstances?
  newFlexStartInstances;

  final HypercomputeclusterClusterComputeResourcesConfigNewOnDemandInstances?
  newOnDemandInstances;

  final HypercomputeclusterClusterComputeResourcesConfigNewReservedInstances?
  newReservedInstances;

  final HypercomputeclusterClusterComputeResourcesConfigNewSpotInstances?
  newSpotInstances;

  Map<String, Object?> encode() => {
    if (newFlexStartInstances != null)
      'new_flex_start_instances': newFlexStartInstances!.encode(),
    if (newOnDemandInstances != null)
      'new_on_demand_instances': newOnDemandInstances!.encode(),
    if (newReservedInstances != null)
      'new_reserved_instances': newReservedInstances!.encode(),
    if (newSpotInstances != null)
      'new_spot_instances': newSpotInstances!.encode(),
  };
}

/// Typed helper for the `compute_resources.config.new_flex_start_instances` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeResourcesConfigNewFlexStartInstances {
  const HypercomputeclusterClusterComputeResourcesConfigNewFlexStartInstances({
    required this.machineType,
    required this.maxDuration,
    required this.zone,
  });

  final TfArg<String> machineType;

  final TfArg<String> maxDuration;

  final TfArg<String> zone;

  Map<String, Object?> encode() => {
    'machine_type': machineType.toTfJson(),
    'max_duration': maxDuration.toTfJson(),
    'zone': zone.toTfJson(),
  };
}

/// Typed helper for the `compute_resources.config.new_on_demand_instances` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeResourcesConfigNewOnDemandInstances {
  const HypercomputeclusterClusterComputeResourcesConfigNewOnDemandInstances({
    required this.machineType,
    required this.zone,
  });

  final TfArg<String> machineType;

  final TfArg<String> zone;

  Map<String, Object?> encode() => {
    'machine_type': machineType.toTfJson(),
    'zone': zone.toTfJson(),
  };
}

/// Typed helper for the `compute_resources.config.new_reserved_instances` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeResourcesConfigNewReservedInstances {
  const HypercomputeclusterClusterComputeResourcesConfigNewReservedInstances({
    this.reservation,
  });

  final TfArg<String>? reservation;

  Map<String, Object?> encode() => {
    if (reservation != null) 'reservation': reservation!.toTfJson(),
  };
}

/// Typed helper for the `compute_resources.config.new_spot_instances` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeResourcesConfigNewSpotInstances {
  const HypercomputeclusterClusterComputeResourcesConfigNewSpotInstances({
    required this.machineType,
    this.terminationAction,
    required this.zone,
  });

  final TfArg<String> machineType;

  final TfArg<String>? terminationAction;

  final TfArg<String> zone;

  Map<String, Object?> encode() => {
    'machine_type': machineType.toTfJson(),
    if (terminationAction != null)
      'termination_action': terminationAction!.toTfJson(),
    'zone': zone.toTfJson(),
  };
}

/// Typed helper for the `network_resources` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNetworkResources {
  const HypercomputeclusterClusterNetworkResources({
    required this.id,
    this.config,
  });

  final TfArg<String> id;

  final HypercomputeclusterClusterNetworkResourcesConfig? config;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (config != null) 'config': config!.encode(),
  };
}

/// Typed helper for the `network_resources.config` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNetworkResourcesConfig {
  const HypercomputeclusterClusterNetworkResourcesConfig({
    this.existingNetwork,
    this.newNetwork,
  });

  final HypercomputeclusterClusterNetworkResourcesConfigExistingNetwork?
  existingNetwork;

  final HypercomputeclusterClusterNetworkResourcesConfigNewNetwork? newNetwork;

  Map<String, Object?> encode() => {
    if (existingNetwork != null) 'existing_network': existingNetwork!.encode(),
    if (newNetwork != null) 'new_network': newNetwork!.encode(),
  };
}

/// Typed helper for the `network_resources.config.existing_network` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNetworkResourcesConfigExistingNetwork {
  const HypercomputeclusterClusterNetworkResourcesConfigExistingNetwork({
    required this.network,
    required this.subnetwork,
  });

  final TfArg<String> network;

  final TfArg<String> subnetwork;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    'subnetwork': subnetwork.toTfJson(),
  };
}

/// Typed helper for the `network_resources.config.new_network` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNetworkResourcesConfigNewNetwork {
  const HypercomputeclusterClusterNetworkResourcesConfigNewNetwork({
    this.description,
    required this.network,
  });

  final TfArg<String>? description;

  final TfArg<String> network;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'network': network.toTfJson(),
  };
}

/// Typed helper for the `orchestrator` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestrator {
  const HypercomputeclusterClusterOrchestrator({this.slurm});

  final HypercomputeclusterClusterOrchestratorSlurm? slurm;

  Map<String, Object?> encode() => {
    if (slurm != null) 'slurm': slurm!.encode(),
  };
}

/// Typed helper for the `orchestrator.slurm` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurm {
  const HypercomputeclusterClusterOrchestratorSlurm({
    this.defaultPartition,
    this.epilogBashScripts,
    this.prologBashScripts,
    required this.loginNodes,
    required this.nodeSets,
    required this.partitions,
  });

  final TfArg<String>? defaultPartition;

  final TfArg<List<Object?>>? epilogBashScripts;

  final TfArg<List<Object?>>? prologBashScripts;

  final HypercomputeclusterClusterOrchestratorSlurmLoginNodes loginNodes;

  final List<HypercomputeclusterClusterOrchestratorSlurmNodeSets> nodeSets;

  final List<HypercomputeclusterClusterOrchestratorSlurmPartitions> partitions;

  Map<String, Object?> encode() => {
    if (defaultPartition != null)
      'default_partition': defaultPartition!.toTfJson(),
    if (epilogBashScripts != null)
      'epilog_bash_scripts': epilogBashScripts!.toTfJson(),
    if (prologBashScripts != null)
      'prolog_bash_scripts': prologBashScripts!.toTfJson(),
    'login_nodes': loginNodes.encode(),
    'node_sets': [for (final e in nodeSets) e.encode()],
    'partitions': [for (final e in partitions) e.encode()],
  };
}

/// Typed helper for the `orchestrator.slurm.login_nodes` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmLoginNodes {
  const HypercomputeclusterClusterOrchestratorSlurmLoginNodes({
    required this.count,
    this.enableOsLogin,
    this.enablePublicIps,
    this.labels,
    required this.machineType,
    this.startupScript,
    required this.zone,
    this.bootDisk,
    this.storageConfigs,
  });

  final TfArg<String> count;

  final TfArg<bool>? enableOsLogin;

  final TfArg<bool>? enablePublicIps;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> machineType;

  final TfArg<String>? startupScript;

  final TfArg<String> zone;

  final HypercomputeclusterClusterOrchestratorSlurmLoginNodesBootDisk? bootDisk;

  final List<
    HypercomputeclusterClusterOrchestratorSlurmLoginNodesStorageConfigs
  >?
  storageConfigs;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    if (enableOsLogin != null) 'enable_os_login': enableOsLogin!.toTfJson(),
    if (enablePublicIps != null)
      'enable_public_ips': enablePublicIps!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    'machine_type': machineType.toTfJson(),
    if (startupScript != null) 'startup_script': startupScript!.toTfJson(),
    'zone': zone.toTfJson(),
    if (bootDisk != null) 'boot_disk': bootDisk!.encode(),
    if (storageConfigs != null)
      'storage_configs': [for (final e in storageConfigs!) e.encode()],
  };
}

/// Typed helper for the `orchestrator.slurm.login_nodes.boot_disk` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmLoginNodesBootDisk {
  const HypercomputeclusterClusterOrchestratorSlurmLoginNodesBootDisk({
    required this.sizeGb,
    required this.type,
  });

  final TfArg<String> sizeGb;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'size_gb': sizeGb.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `orchestrator.slurm.login_nodes.storage_configs` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmLoginNodesStorageConfigs {
  const HypercomputeclusterClusterOrchestratorSlurmLoginNodesStorageConfigs({
    required this.id,
    required this.localMount,
  });

  final TfArg<String> id;

  final TfArg<String> localMount;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'local_mount': localMount.toTfJson(),
  };
}

/// Typed helper for the `orchestrator.slurm.node_sets` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmNodeSets {
  const HypercomputeclusterClusterOrchestratorSlurmNodeSets({
    this.computeId,
    required this.id,
    this.maxDynamicNodeCount,
    this.staticNodeCount,
    this.computeInstance,
    this.storageConfigs,
  });

  final TfArg<String>? computeId;

  final TfArg<String> id;

  final TfArg<String>? maxDynamicNodeCount;

  final TfArg<String>? staticNodeCount;

  final HypercomputeclusterClusterOrchestratorSlurmNodeSetsComputeInstance?
  computeInstance;

  final List<HypercomputeclusterClusterOrchestratorSlurmNodeSetsStorageConfigs>?
  storageConfigs;

  Map<String, Object?> encode() => {
    if (computeId != null) 'compute_id': computeId!.toTfJson(),
    'id': id.toTfJson(),
    if (maxDynamicNodeCount != null)
      'max_dynamic_node_count': maxDynamicNodeCount!.toTfJson(),
    if (staticNodeCount != null)
      'static_node_count': staticNodeCount!.toTfJson(),
    if (computeInstance != null) 'compute_instance': computeInstance!.encode(),
    if (storageConfigs != null)
      'storage_configs': [for (final e in storageConfigs!) e.encode()],
  };
}

/// Typed helper for the `orchestrator.slurm.node_sets.compute_instance` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmNodeSetsComputeInstance {
  const HypercomputeclusterClusterOrchestratorSlurmNodeSetsComputeInstance({
    this.labels,
    this.startupScript,
    this.bootDisk,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? startupScript;

  final HypercomputeclusterClusterOrchestratorSlurmNodeSetsComputeInstanceBootDisk?
  bootDisk;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (startupScript != null) 'startup_script': startupScript!.toTfJson(),
    if (bootDisk != null) 'boot_disk': bootDisk!.encode(),
  };
}

/// Typed helper for the `orchestrator.slurm.node_sets.compute_instance.boot_disk` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmNodeSetsComputeInstanceBootDisk {
  const HypercomputeclusterClusterOrchestratorSlurmNodeSetsComputeInstanceBootDisk({
    required this.sizeGb,
    required this.type,
  });

  final TfArg<String> sizeGb;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'size_gb': sizeGb.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `orchestrator.slurm.node_sets.storage_configs` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmNodeSetsStorageConfigs {
  const HypercomputeclusterClusterOrchestratorSlurmNodeSetsStorageConfigs({
    required this.id,
    required this.localMount,
  });

  final TfArg<String> id;

  final TfArg<String> localMount;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'local_mount': localMount.toTfJson(),
  };
}

/// Typed helper for the `orchestrator.slurm.partitions` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestratorSlurmPartitions {
  const HypercomputeclusterClusterOrchestratorSlurmPartitions({
    required this.id,
    required this.nodeSetIds,
  });

  final TfArg<String> id;

  final TfArg<List<Object?>> nodeSetIds;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'node_set_ids': nodeSetIds.toTfJson(),
  };
}

/// Typed helper for the `storage_resources` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResources {
  const HypercomputeclusterClusterStorageResources({
    required this.id,
    required this.config,
  });

  final TfArg<String> id;

  final HypercomputeclusterClusterStorageResourcesConfig config;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'config': config.encode(),
  };
}

/// Typed helper for the `storage_resources.config` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfig {
  const HypercomputeclusterClusterStorageResourcesConfig({
    this.existingBucket,
    this.existingFilestore,
    this.existingLustre,
    this.newBucket,
    this.newFilestore,
    this.newLustre,
  });

  final HypercomputeclusterClusterStorageResourcesConfigExistingBucket?
  existingBucket;

  final HypercomputeclusterClusterStorageResourcesConfigExistingFilestore?
  existingFilestore;

  final HypercomputeclusterClusterStorageResourcesConfigExistingLustre?
  existingLustre;

  final HypercomputeclusterClusterStorageResourcesConfigNewBucket? newBucket;

  final HypercomputeclusterClusterStorageResourcesConfigNewFilestore?
  newFilestore;

  final HypercomputeclusterClusterStorageResourcesConfigNewLustre? newLustre;

  Map<String, Object?> encode() => {
    if (existingBucket != null) 'existing_bucket': existingBucket!.encode(),
    if (existingFilestore != null)
      'existing_filestore': existingFilestore!.encode(),
    if (existingLustre != null) 'existing_lustre': existingLustre!.encode(),
    if (newBucket != null) 'new_bucket': newBucket!.encode(),
    if (newFilestore != null) 'new_filestore': newFilestore!.encode(),
    if (newLustre != null) 'new_lustre': newLustre!.encode(),
  };
}

/// Typed helper for the `storage_resources.config.existing_bucket` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigExistingBucket {
  const HypercomputeclusterClusterStorageResourcesConfigExistingBucket({
    required this.bucket,
  });

  final TfArg<String> bucket;

  Map<String, Object?> encode() => {'bucket': bucket.toTfJson()};
}

/// Typed helper for the `storage_resources.config.existing_filestore` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigExistingFilestore {
  const HypercomputeclusterClusterStorageResourcesConfigExistingFilestore({
    required this.filestore,
  });

  final TfArg<String> filestore;

  Map<String, Object?> encode() => {'filestore': filestore.toTfJson()};
}

/// Typed helper for the `storage_resources.config.existing_lustre` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigExistingLustre {
  const HypercomputeclusterClusterStorageResourcesConfigExistingLustre({
    required this.lustre,
  });

  final TfArg<String> lustre;

  Map<String, Object?> encode() => {'lustre': lustre.toTfJson()};
}

/// Typed helper for the `storage_resources.config.new_bucket` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigNewBucket {
  const HypercomputeclusterClusterStorageResourcesConfigNewBucket({
    required this.bucket,
    this.storageClass,
    this.autoclass,
    this.hierarchicalNamespace,
  });

  final TfArg<String> bucket;

  final TfArg<String>? storageClass;

  final HypercomputeclusterClusterStorageResourcesConfigNewBucketAutoclass?
  autoclass;

  final HypercomputeclusterClusterStorageResourcesConfigNewBucketHierarchicalNamespace?
  hierarchicalNamespace;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
    if (autoclass != null) 'autoclass': autoclass!.encode(),
    if (hierarchicalNamespace != null)
      'hierarchical_namespace': hierarchicalNamespace!.encode(),
  };
}

/// Typed helper for the `storage_resources.config.new_bucket.autoclass` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigNewBucketAutoclass {
  const HypercomputeclusterClusterStorageResourcesConfigNewBucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? terminalStorageClass;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (terminalStorageClass != null)
      'terminal_storage_class': terminalStorageClass!.toTfJson(),
  };
}

/// Typed helper for the `storage_resources.config.new_bucket.hierarchical_namespace` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigNewBucketHierarchicalNamespace {
  const HypercomputeclusterClusterStorageResourcesConfigNewBucketHierarchicalNamespace({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `storage_resources.config.new_filestore` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigNewFilestore {
  const HypercomputeclusterClusterStorageResourcesConfigNewFilestore({
    this.description,
    required this.filestore,
    this.protocol,
    required this.tier,
    required this.fileShares,
  });

  final TfArg<String>? description;

  final TfArg<String> filestore;

  final TfArg<
    HypercomputeclusterClusterStorageResourcesConfigNewFilestoreProtocol
  >?
  protocol;

  final TfArg<HypercomputeclusterClusterStorageResourcesConfigNewFilestoreTier>
  tier;

  final List<
    HypercomputeclusterClusterStorageResourcesConfigNewFilestoreFileShares
  >
  fileShares;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'filestore': filestore.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    'tier': tier.toTfJson(),
    'file_shares': [for (final e in fileShares) e.encode()],
  };
}

/// `protocol` — derived from the provider schema description.
enum HypercomputeclusterClusterStorageResourcesConfigNewFilestoreProtocol
    implements TerraformEnum {
  protocolUnspecified('PROTOCOL_UNSPECIFIED'),
  nfsv3('NFSV3'),
  nfsv41('NFSV41');

  const HypercomputeclusterClusterStorageResourcesConfigNewFilestoreProtocol(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `tier` — derived from the provider schema description.
enum HypercomputeclusterClusterStorageResourcesConfigNewFilestoreTier
    implements TerraformEnum {
  tierUnspecified('TIER_UNSPECIFIED'),
  zonal('ZONAL'),
  regional('REGIONAL');

  const HypercomputeclusterClusterStorageResourcesConfigNewFilestoreTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_resources.config.new_filestore.file_shares` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigNewFilestoreFileShares {
  const HypercomputeclusterClusterStorageResourcesConfigNewFilestoreFileShares({
    required this.capacityGb,
    required this.fileShare,
  });

  final TfArg<String> capacityGb;

  final TfArg<String> fileShare;

  Map<String, Object?> encode() => {
    'capacity_gb': capacityGb.toTfJson(),
    'file_share': fileShare.toTfJson(),
  };
}

/// Typed helper for the `storage_resources.config.new_lustre` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterStorageResourcesConfigNewLustre {
  const HypercomputeclusterClusterStorageResourcesConfigNewLustre({
    required this.capacityGb,
    this.description,
    required this.filesystem,
    required this.lustre,
    this.perUnitStorageThroughput,
  });

  final TfArg<String> capacityGb;

  final TfArg<String>? description;

  final TfArg<String> filesystem;

  final TfArg<String> lustre;

  final TfArg<String>? perUnitStorageThroughput;

  Map<String, Object?> encode() => {
    'capacity_gb': capacityGb.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'filesystem': filesystem.toTfJson(),
    'lustre': lustre.toTfJson(),
    if (perUnitStorageThroughput != null)
      'per_unit_storage_throughput': perUnitStorageThroughput!.toTfJson(),
  };
}

/// Factory wrapper for `google_hypercomputecluster_cluster`.
///
/// A collection of virtual machines and connected resources forming a
/// high-performance computing cluster capable of running large-scale, tightly
/// coupled workloads. A cluster combines a set a compute resources that perform
/// computations, storage resources that contain inputs and store outputs, an
/// orchestrator that is responsible for assigning jobs to compute resources,
/// and network resources that connect everything together.
///
/// Cluster Director (**Hypercompute Cluster**) — HPC cluster combining
/// compute, storage, network, and an orchestrator.
///
/// **Cost / apply:** No dedicated "Cluster Director" / Hypercompute Cluster
/// SKU after MCP `list_services` (Hypercompute / Cluster Director → empty).
/// The cluster provisions billable compute capacity (e.g. Cloud TPU
/// `E000-3F24-B8AA` TPU-v2 Accelerator USA SKU `3B3D-4CB4-AECC` **$4.5/h**
/// in us-central1, plus GCE / storage / networking). Far too expensive for
/// apply-smoke — debt-only. **Never** wire into apply-smoke.
///
/// Enable `hypercomputecluster.googleapis.com` via [GoogleProjectService]
/// before apply. [networkResources] is required.
final class GoogleHypercomputeclusterCluster extends Resource {
  static const String tfType = 'google_hypercomputecluster_cluster';

  GoogleHypercomputeclusterCluster({
    required super.localName,
    required TfArg<String> clusterId,
    required TfArg<String> location,
    required List<HypercomputeclusterClusterNetworkResources> networkResources,
    List<HypercomputeclusterClusterComputeResources>? computeResources,
    List<HypercomputeclusterClusterStorageResources>? storageResources,
    HypercomputeclusterClusterOrchestrator? orchestrator,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'location': location,
           'network_resources': TfArg.literal([
             for (final e in networkResources) e.encode(),
           ]),
           if (computeResources != null)
             'compute_resources': TfArg.literal([
               for (final e in computeResources) e.encode(),
             ]),
           if (storageResources != null)
             'storage_resources': TfArg.literal([
               for (final e in storageResources) e.encode(),
             ]),
           if (orchestrator != null)
             'orchestrator': TfArg.literal(orchestrator.encode()),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHypercomputeclusterClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `cluster_id` / name segment.
  TfRef<String> get clusterIdRef => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
