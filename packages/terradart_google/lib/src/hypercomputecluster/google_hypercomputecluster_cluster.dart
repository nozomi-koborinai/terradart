// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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

  final HypercomputeclusterClusterNewFlexStartInstances? newFlexStartInstances;

  final HypercomputeclusterClusterNewOnDemandInstances? newOnDemandInstances;

  final HypercomputeclusterClusterNewReservedInstances? newReservedInstances;

  final HypercomputeclusterClusterNewSpotInstances? newSpotInstances;

  Map<String, Object?> encode() => {
    'new_flex_start_instances': ?newFlexStartInstances?.encode(),
    'new_on_demand_instances': ?newOnDemandInstances?.encode(),
    'new_reserved_instances': ?newReservedInstances?.encode(),
    'new_spot_instances': ?newSpotInstances?.encode(),
  };
}

/// Typed helper for the `compute_resources.config.new_flex_start_instances` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNewFlexStartInstances {
  const HypercomputeclusterClusterNewFlexStartInstances({
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
final class HypercomputeclusterClusterNewOnDemandInstances {
  const HypercomputeclusterClusterNewOnDemandInstances({
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
final class HypercomputeclusterClusterNewReservedInstances {
  const HypercomputeclusterClusterNewReservedInstances({this.reservation});

  final TfArg<String>? reservation;

  Map<String, Object?> encode() => {'reservation': ?reservation?.toTfJson()};
}

/// Typed helper for the `compute_resources.config.new_spot_instances` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNewSpotInstances {
  const HypercomputeclusterClusterNewSpotInstances({
    required this.machineType,
    this.terminationAction,
    required this.zone,
  });

  final TfArg<String> machineType;

  final TfArg<String>? terminationAction;

  final TfArg<String> zone;

  Map<String, Object?> encode() => {
    'machine_type': machineType.toTfJson(),
    'termination_action': ?terminationAction?.toTfJson(),
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
    'config': ?config?.encode(),
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

  final HypercomputeclusterClusterExistingNetwork? existingNetwork;

  final HypercomputeclusterClusterNewNetwork? newNetwork;

  Map<String, Object?> encode() => {
    'existing_network': ?existingNetwork?.encode(),
    'new_network': ?newNetwork?.encode(),
  };
}

/// Typed helper for the `network_resources.config.existing_network` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterExistingNetwork {
  const HypercomputeclusterClusterExistingNetwork({
    required this.network,
    required this.subnetwork,
  });

  final RefTo<GoogleComputeNetwork> network;

  final RefTo<GoogleComputeSubnetwork> subnetwork;

  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
    'subnetwork': subnetwork.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `network_resources.config.new_network` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNewNetwork {
  const HypercomputeclusterClusterNewNetwork({
    this.description,
    required this.network,
  });

  final TfArg<String>? description;

  final TfArg<String> network;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'network': network.toTfJson(),
  };
}

/// Typed helper for the `orchestrator` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterOrchestrator {
  const HypercomputeclusterClusterOrchestrator({this.slurm});

  final HypercomputeclusterClusterSlurm? slurm;

  Map<String, Object?> encode() => {'slurm': ?slurm?.encode()};
}

/// Typed helper for the `orchestrator.slurm` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterSlurm {
  const HypercomputeclusterClusterSlurm({
    this.defaultPartition,
    this.epilogBashScripts,
    this.prologBashScripts,
    required this.loginNodes,
    required this.nodeSets,
    required this.partitions,
  });

  final TfArg<String>? defaultPartition;

  final TfArg<List<String>>? epilogBashScripts;

  final TfArg<List<String>>? prologBashScripts;

  final HypercomputeclusterClusterLoginNodes loginNodes;

  final List<HypercomputeclusterClusterNodeSets> nodeSets;

  final List<HypercomputeclusterClusterPartitions> partitions;

  Map<String, Object?> encode() => {
    'default_partition': ?defaultPartition?.toTfJson(),
    'epilog_bash_scripts': ?epilogBashScripts?.toTfJson(),
    'prolog_bash_scripts': ?prologBashScripts?.toTfJson(),
    'login_nodes': loginNodes.encode(),
    'node_sets': [for (final e in nodeSets) e.encode()],
    'partitions': [for (final e in partitions) e.encode()],
  };
}

/// Typed helper for the `orchestrator.slurm.login_nodes` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterLoginNodes {
  const HypercomputeclusterClusterLoginNodes({
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

  final HypercomputeclusterClusterBootDisk? bootDisk;

  final List<HypercomputeclusterClusterStorageConfigs>? storageConfigs;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'enable_os_login': ?enableOsLogin?.toTfJson(),
    'enable_public_ips': ?enablePublicIps?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'machine_type': machineType.toTfJson(),
    'startup_script': ?startupScript?.toTfJson(),
    'zone': zone.toTfJson(),
    'boot_disk': ?bootDisk?.encode(),
    if (storageConfigs != null)
      'storage_configs': [for (final e in storageConfigs!) e.encode()],
  };
}

/// Typed helper for the `orchestrator.slurm.login_nodes.boot_disk` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class HypercomputeclusterClusterBootDisk {
  const HypercomputeclusterClusterBootDisk({
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
/// Shared by every block of this shape in the resource.
@immutable
final class HypercomputeclusterClusterStorageConfigs {
  const HypercomputeclusterClusterStorageConfigs({
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
final class HypercomputeclusterClusterNodeSets {
  const HypercomputeclusterClusterNodeSets({
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

  final HypercomputeclusterClusterComputeInstance? computeInstance;

  final List<HypercomputeclusterClusterStorageConfigs>? storageConfigs;

  Map<String, Object?> encode() => {
    'compute_id': ?computeId?.toTfJson(),
    'id': id.toTfJson(),
    'max_dynamic_node_count': ?maxDynamicNodeCount?.toTfJson(),
    'static_node_count': ?staticNodeCount?.toTfJson(),
    'compute_instance': ?computeInstance?.encode(),
    if (storageConfigs != null)
      'storage_configs': [for (final e in storageConfigs!) e.encode()],
  };
}

/// Typed helper for the `orchestrator.slurm.node_sets.compute_instance` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterComputeInstance {
  const HypercomputeclusterClusterComputeInstance({
    this.labels,
    this.startupScript,
    this.bootDisk,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? startupScript;

  final HypercomputeclusterClusterBootDisk? bootDisk;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'startup_script': ?startupScript?.toTfJson(),
    'boot_disk': ?bootDisk?.encode(),
  };
}

/// Typed helper for the `orchestrator.slurm.partitions` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterPartitions {
  const HypercomputeclusterClusterPartitions({
    required this.id,
    required this.nodeSetIds,
  });

  final TfArg<String> id;

  final TfArg<List<String>> nodeSetIds;

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

  final HypercomputeclusterClusterExistingBucket? existingBucket;

  final HypercomputeclusterClusterExistingFilestore? existingFilestore;

  final HypercomputeclusterClusterExistingLustre? existingLustre;

  final HypercomputeclusterClusterNewBucket? newBucket;

  final HypercomputeclusterClusterNewFilestore? newFilestore;

  final HypercomputeclusterClusterNewLustre? newLustre;

  Map<String, Object?> encode() => {
    'existing_bucket': ?existingBucket?.encode(),
    'existing_filestore': ?existingFilestore?.encode(),
    'existing_lustre': ?existingLustre?.encode(),
    'new_bucket': ?newBucket?.encode(),
    'new_filestore': ?newFilestore?.encode(),
    'new_lustre': ?newLustre?.encode(),
  };
}

/// Typed helper for the `storage_resources.config.existing_bucket` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterExistingBucket {
  const HypercomputeclusterClusterExistingBucket({required this.bucket});

  final RefTo<GoogleStorageBucket> bucket;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `storage_resources.config.existing_filestore` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterExistingFilestore {
  const HypercomputeclusterClusterExistingFilestore({required this.filestore});

  final TfArg<String> filestore;

  Map<String, Object?> encode() => {'filestore': filestore.toTfJson()};
}

/// Typed helper for the `storage_resources.config.existing_lustre` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterExistingLustre {
  const HypercomputeclusterClusterExistingLustre({required this.lustre});

  final TfArg<String> lustre;

  Map<String, Object?> encode() => {'lustre': lustre.toTfJson()};
}

/// Typed helper for the `storage_resources.config.new_bucket` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNewBucket {
  const HypercomputeclusterClusterNewBucket({
    required this.bucket,
    this.storageClass,
    this.autoclass,
    this.hierarchicalNamespace,
  });

  final TfArg<String> bucket;

  final TfArg<String>? storageClass;

  final HypercomputeclusterClusterAutoclass? autoclass;

  final HypercomputeclusterClusterHierarchicalNamespace? hierarchicalNamespace;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'storage_class': ?storageClass?.toTfJson(),
    'autoclass': ?autoclass?.encode(),
    'hierarchical_namespace': ?hierarchicalNamespace?.encode(),
  };
}

/// Typed helper for the `storage_resources.config.new_bucket.autoclass` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterAutoclass {
  const HypercomputeclusterClusterAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? terminalStorageClass;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'terminal_storage_class': ?terminalStorageClass?.toTfJson(),
  };
}

/// Typed helper for the `storage_resources.config.new_bucket.hierarchical_namespace` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterHierarchicalNamespace {
  const HypercomputeclusterClusterHierarchicalNamespace({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `storage_resources.config.new_filestore` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterNewFilestore {
  const HypercomputeclusterClusterNewFilestore({
    this.description,
    required this.filestore,
    this.protocol,
    required this.tier,
    required this.fileShares,
  });

  final TfArg<String>? description;

  final TfArg<String> filestore;

  final HypercomputeclusterClusterProtocol? protocol;

  final HypercomputeclusterClusterTier tier;

  final List<HypercomputeclusterClusterFileShares> fileShares;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'filestore': filestore.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'tier': tier.toTfJson(),
    'file_shares': [for (final e in fileShares) e.encode()],
  };
}

/// `protocol` — derived from the provider schema description.
extension type const HypercomputeclusterClusterProtocol._(TfArg<String> _)
    implements TfArg<String> {
  HypercomputeclusterClusterProtocol.variable(String name)
    : this._(TfArg.variable(name));
  HypercomputeclusterClusterProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const HypercomputeclusterClusterProtocol.arg(TfArg<String> arg) : this._(arg);

  static const protocolUnspecified = HypercomputeclusterClusterProtocol._(
    TfArgLiteral('PROTOCOL_UNSPECIFIED'),
  );
  static const nfsv3 = HypercomputeclusterClusterProtocol._(
    TfArgLiteral('NFSV3'),
  );
  static const nfsv41 = HypercomputeclusterClusterProtocol._(
    TfArgLiteral('NFSV41'),
  );

  static const List<HypercomputeclusterClusterProtocol> values = [
    protocolUnspecified,
    nfsv3,
    nfsv41,
  ];
}

/// `tier` — derived from the provider schema description.
extension type const HypercomputeclusterClusterTier._(TfArg<String> _)
    implements TfArg<String> {
  HypercomputeclusterClusterTier.variable(String name)
    : this._(TfArg.variable(name));
  HypercomputeclusterClusterTier.expression(String template)
    : this._(TfArg.expression(template));
  const HypercomputeclusterClusterTier.arg(TfArg<String> arg) : this._(arg);

  static const tierUnspecified = HypercomputeclusterClusterTier._(
    TfArgLiteral('TIER_UNSPECIFIED'),
  );
  static const zonal = HypercomputeclusterClusterTier._(TfArgLiteral('ZONAL'));
  static const regional = HypercomputeclusterClusterTier._(
    TfArgLiteral('REGIONAL'),
  );

  static const List<HypercomputeclusterClusterTier> values = [
    tierUnspecified,
    zonal,
    regional,
  ];
}

/// Typed helper for the `storage_resources.config.new_filestore.file_shares` block of
/// `google_hypercomputecluster_cluster` (derived from provider schema).
@immutable
final class HypercomputeclusterClusterFileShares {
  const HypercomputeclusterClusterFileShares({
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
final class HypercomputeclusterClusterNewLustre {
  const HypercomputeclusterClusterNewLustre({
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
    'description': ?description?.toTfJson(),
    'filesystem': filesystem.toTfJson(),
    'lustre': lustre.toTfJson(),
    'per_unit_storage_throughput': ?perUnitStorageThroughput?.toTfJson(),
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

  GoogleHypercomputeclusterCluster(
    super.localName, {
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
    super.provider,
    super.timeouts,
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
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHypercomputeclusterClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHypercomputeclusterCluster>`.
  RefTo<GoogleHypercomputeclusterCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
