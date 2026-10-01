// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_persistent_resource`.
const Set<String> _googleVertexAiPersistentResourceSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceEncryptionSpec {
  const VertexAiPersistentResourceEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
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

  final List<VertexAiPersistentResourceDnsPeeringConfigs>? dnsPeeringConfigs;

  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceDnsPeeringConfigs {
  const VertexAiPersistentResourceDnsPeeringConfigs({
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
final class VertexAiPersistentResourcePools {
  const VertexAiPersistentResourcePools({
    this.id,
    this.replicaCount,
    this.autoscalingSpec,
    this.diskSpec,
    required this.machineSpec,
  });

  final TfArg<String>? id;

  final TfArg<String>? replicaCount;

  final VertexAiPersistentResourceAutoscalingSpec? autoscalingSpec;

  final VertexAiPersistentResourceDiskSpec? diskSpec;

  final VertexAiPersistentResourceMachineSpec machineSpec;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'replica_count': ?replicaCount?.toTfJson(),
    'autoscaling_spec': ?autoscalingSpec?.encode(),
    'disk_spec': ?diskSpec?.encode(),
    'machine_spec': machineSpec.encode(),
  };
}

/// Typed helper for the `resource_pools.autoscaling_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceAutoscalingSpec {
  const VertexAiPersistentResourceAutoscalingSpec({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  final TfArg<String>? maxReplicaCount;

  final TfArg<String>? minReplicaCount;

  Map<String, Object?> encode() => {
    'max_replica_count': ?maxReplicaCount?.toTfJson(),
    'min_replica_count': ?minReplicaCount?.toTfJson(),
  };
}

/// Typed helper for the `resource_pools.disk_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceDiskSpec {
  const VertexAiPersistentResourceDiskSpec({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<String>? bootDiskType;

  Map<String, Object?> encode() => {
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
  };
}

/// Typed helper for the `resource_pools.machine_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceMachineSpec {
  const VertexAiPersistentResourceMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
  };
}

/// Typed helper for the `resource_runtime_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceRuntimeSpec {
  const VertexAiPersistentResourceRuntimeSpec({this.serviceAccountSpec});

  final VertexAiPersistentResourceServiceAccountSpec? serviceAccountSpec;

  Map<String, Object?> encode() => {
    'service_account_spec': ?serviceAccountSpec?.encode(),
  };
}

/// Typed helper for the `resource_runtime_spec.service_account_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceServiceAccountSpec {
  const VertexAiPersistentResourceServiceAccountSpec({
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
    required List<VertexAiPersistentResourcePools> resourcePools,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<List<String>>? reservedIpRanges,
    VertexAiPersistentResourceEncryptionSpec? encryptionSpec,
    VertexAiPersistentResourcePscInterfaceConfig? pscInterfaceConfig,
    VertexAiPersistentResourceRuntimeSpec? resourceRuntimeSpec,
    TfArg<Map<String, String>>? labels,
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
           'location': ?location,
           'display_name': ?displayName,
           'resource_pools': TfArg.literal([
             for (final e in resourcePools) e.encode(),
           ]),
           'network': ?network?.encodeAs('id'),
           'reserved_ip_ranges': ?reservedIpRanges,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (pscInterfaceConfig != null)
             'psc_interface_config': TfArg.literal(pscInterfaceConfig.encode()),
           if (resourceRuntimeSpec != null)
             'resource_runtime_spec': TfArg.literal(
               resourceRuntimeSpec.encode(),
             ),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiPersistentResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiPersistentResource>`.
  RefTo<GoogleVertexAiPersistentResource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reserved_ip_ranges` attribute.
  TfRef<List<String>> get reservedIpRanges =>
      TfRef.attribute<List<String>>(this, 'reserved_ip_ranges');
}
