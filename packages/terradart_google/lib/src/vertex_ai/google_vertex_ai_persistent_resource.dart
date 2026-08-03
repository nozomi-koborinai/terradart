// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_persistent_resource`.
const Set<String> _googleVertexAiPersistentResourceSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceEncryptionSpec {
  const VertexAiPersistentResourceEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `psc_interface_config` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourcePscInterfaceConfig {
  const VertexAiPersistentResourcePscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<VertexAiPersistentResourcePscInterfaceConfigDnsPeeringConfigs>?
  dnsPeeringConfigs;

  Map<String, Object?> encode() => {
    if (networkAttachment != null)
      'network_attachment': networkAttachment!.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourcePscInterfaceConfigDnsPeeringConfigs {
  const VertexAiPersistentResourcePscInterfaceConfigDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `resource_pools` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceResourcePools {
  const VertexAiPersistentResourceResourcePools({
    this.id,
    this.replicaCount,
    this.autoscalingSpec,
    this.diskSpec,
    required this.machineSpec,
  });

  final TfArg<String>? id;

  final TfArg<String>? replicaCount;

  final VertexAiPersistentResourceResourcePoolsAutoscalingSpec? autoscalingSpec;

  final VertexAiPersistentResourceResourcePoolsDiskSpec? diskSpec;

  final VertexAiPersistentResourceResourcePoolsMachineSpec machineSpec;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (replicaCount != null) 'replica_count': replicaCount!.toTfJson(),
    if (autoscalingSpec != null) 'autoscaling_spec': autoscalingSpec!.encode(),
    if (diskSpec != null) 'disk_spec': diskSpec!.encode(),
    'machine_spec': machineSpec.encode(),
  };
}

/// Typed helper for the `resource_pools.autoscaling_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceResourcePoolsAutoscalingSpec {
  const VertexAiPersistentResourceResourcePoolsAutoscalingSpec({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  final TfArg<String>? maxReplicaCount;

  final TfArg<String>? minReplicaCount;

  Map<String, Object?> encode() => {
    if (maxReplicaCount != null)
      'max_replica_count': maxReplicaCount!.toTfJson(),
    if (minReplicaCount != null)
      'min_replica_count': minReplicaCount!.toTfJson(),
  };
}

/// Typed helper for the `resource_pools.disk_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceResourcePoolsDiskSpec {
  const VertexAiPersistentResourceResourcePoolsDiskSpec({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (bootDiskType != null) 'boot_disk_type': bootDiskType!.toTfJson(),
  };
}

/// Typed helper for the `resource_pools.machine_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceResourcePoolsMachineSpec {
  const VertexAiPersistentResourceResourcePoolsMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.toTfJson(),
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
  };
}

/// Typed helper for the `resource_runtime_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceResourceRuntimeSpec {
  const VertexAiPersistentResourceResourceRuntimeSpec({
    this.serviceAccountSpec,
  });

  final VertexAiPersistentResourceResourceRuntimeSpecServiceAccountSpec?
  serviceAccountSpec;

  Map<String, Object?> encode() => {
    if (serviceAccountSpec != null)
      'service_account_spec': serviceAccountSpec!.encode(),
  };
}

/// Typed helper for the `resource_runtime_spec.service_account_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceResourceRuntimeSpecServiceAccountSpec {
  const VertexAiPersistentResourceResourceRuntimeSpecServiceAccountSpec({
    required this.enableCustomServiceAccount,
  });

  final TfArg<bool> enableCustomServiceAccount;

  Map<String, Object?> encode() => {
    'enable_custom_service_account': enableCustomServiceAccount.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_persistent_resource`.
///
/// Represents long-lasting resources that are dedicated to users to runs custom
/// workloads. A PersistentResource can have multiple node pools and each node
/// pool can have its own machine spec.
///
/// Vertex AI **persistent resource** — reserved training / Ray-on-Vertex
/// machine pools (`resourcePools`, min 1) that stay up between jobs.
///
/// **Cost / apply:** Creating a pool reserves Vertex AI Training machine
/// capacity while the resource exists. Cloud Billing Catalog service
/// `C7E2-9256-1C43` bills those node-hours (Americas N1 Predefined
/// Instance Core SKU `2A57-4214-1832` **$0.03635265/h**, plus management
/// fee us-central1 N1 Core `A4CD-7C62-A250` **$0.0047416/h`). Destroy
/// deletes the resource and stops reservation charges. Too expensive for
/// apply-smoke — ships without a quickstart (`never_apply` /
/// `tool/example_debt.yaml`).
///
/// Requires [name] and at least one [resourcePools] entry. Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleVertexAiPersistentResource extends Resource {
  static const String tfType = 'google_vertex_ai_persistent_resource';

  GoogleVertexAiPersistentResource({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? displayName,
    required List<VertexAiPersistentResourceResourcePools> resourcePools,
    TfArg<String>? network,
    TfArg<List<String>>? reservedIpRanges,
    VertexAiPersistentResourceEncryptionSpec? encryptionSpec,
    VertexAiPersistentResourcePscInterfaceConfig? pscInterfaceConfig,
    VertexAiPersistentResourceResourceRuntimeSpec? resourceRuntimeSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (displayName != null) 'display_name': displayName,
           'resource_pools': TfArg.literal([
             for (final e in resourcePools) e.encode(),
           ]),
           if (network != null) 'network': network,
           if (reservedIpRanges != null) 'reserved_ip_ranges': reservedIpRanges,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (pscInterfaceConfig != null)
             'psc_interface_config': TfArg.literal(pscInterfaceConfig.encode()),
           if (resourceRuntimeSpec != null)
             'resource_runtime_spec': TfArg.literal(
               resourceRuntimeSpec.encode(),
             ),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiPersistentResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `resource_runtime` attribute.
  TfRef<List<Map<String, Object?>>> get resourceRuntime =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_runtime');

  /// Reference to `satisfies_pzi` attribute.
  TfRef<bool> get satisfiesPzi => TfRef.attribute<bool>(this, 'satisfies_pzi');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
