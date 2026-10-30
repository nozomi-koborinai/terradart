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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final VertexAiPersistentResourceBootDiskType? bootDiskType;

  @internal
  Map<String, Object?> encode() => {
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'boot_disk_type': ?bootDiskType?.toTfJson(),
  };
}

/// `boot_disk_type` — derived from the provider schema description.
extension type const VertexAiPersistentResourceBootDiskType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiPersistentResourceBootDiskType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiPersistentResourceBootDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiPersistentResourceBootDiskType.arg(TfArg<String> arg)
    : this._(arg);

  static const pdSsd = VertexAiPersistentResourceBootDiskType._(
    TfArgLiteral('pd-ssd'),
  );
  static const pdStandard = VertexAiPersistentResourceBootDiskType._(
    TfArgLiteral('pd-standard'),
  );
  static const hyperdiskBalanced = VertexAiPersistentResourceBootDiskType._(
    TfArgLiteral('hyperdisk-balanced'),
  );

  static const List<VertexAiPersistentResourceBootDiskType> values = [
    pdSsd,
    pdStandard,
    hyperdiskBalanced,
  ];
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

  final VertexAiPersistentResourceAcceleratorType? acceleratorType;

  final TfArg<String>? machineType;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
  };
}

/// `accelerator_type` — derived from the provider schema description.
extension type const VertexAiPersistentResourceAcceleratorType._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiPersistentResourceAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiPersistentResourceAcceleratorType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiPersistentResourceAcceleratorType.arg(TfArg<String> arg)
    : this._(arg);

  static const nvidiaTeslaK80 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_K80'),
  );
  static const nvidiaTeslaP100 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_P100'),
  );
  static const nvidiaTeslaV100 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_V100'),
  );
  static const nvidiaTeslaP4 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_P4'),
  );
  static const nvidiaTeslaT4 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_T4'),
  );
  static const nvidiaTeslaA100 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_A100'),
  );
  static const nvidiaA10080gb = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_A100_80GB'),
  );
  static const nvidiaL4 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_L4'),
  );
  static const nvidiaH10080gb = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_H100_80GB'),
  );
  static const nvidiaH100Mega80gb = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_H100_MEGA_80GB'),
  );
  static const nvidiaH200141gb = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_H200_141GB'),
  );
  static const nvidiaB200 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_B200'),
  );
  static const nvidiaGb200 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_GB200'),
  );
  static const nvidiaRtxPro6000 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('NVIDIA_RTX_PRO_6000'),
  );
  static const tpuV2 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('TPU_V2'),
  );
  static const tpuV3 = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('TPU_V3'),
  );
  static const tpuV4Pod = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('TPU_V4_POD'),
  );
  static const tpuV5Litepod = VertexAiPersistentResourceAcceleratorType._(
    TfArgLiteral('TPU_V5_LITEPOD'),
  );

  static const List<VertexAiPersistentResourceAcceleratorType> values = [
    nvidiaTeslaK80,
    nvidiaTeslaP100,
    nvidiaTeslaV100,
    nvidiaTeslaP4,
    nvidiaTeslaT4,
    nvidiaTeslaA100,
    nvidiaA10080gb,
    nvidiaL4,
    nvidiaH10080gb,
    nvidiaH100Mega80gb,
    nvidiaH200141gb,
    nvidiaB200,
    nvidiaGb200,
    nvidiaRtxPro6000,
    tpuV2,
    tpuV3,
    tpuV4Pod,
    tpuV5Litepod,
  ];
}

/// Typed helper for the `resource_runtime_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceRuntimeSpec {
  const VertexAiPersistentResourceRuntimeSpec({
    this.raySpec,
    this.serviceAccountSpec,
  });

  final VertexAiPersistentResourceRaySpec? raySpec;

  final VertexAiPersistentResourceServiceAccountSpec? serviceAccountSpec;

  @internal
  Map<String, Object?> encode() => {
    'ray_spec': ?raySpec?.encode(),
    'service_account_spec': ?serviceAccountSpec?.encode(),
  };
}

/// Typed helper for the `resource_runtime_spec.ray_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceRaySpec {
  const VertexAiPersistentResourceRaySpec({this.imageUri});

  final TfArg<String>? imageUri;

  @internal
  Map<String, Object?> encode() => {'image_uri': ?imageUri?.toTfJson()};
}

/// Typed helper for the `resource_runtime_spec.service_account_spec` block of
/// `google_vertex_ai_persistent_resource` (derived from provider schema).
@immutable
final class VertexAiPersistentResourceServiceAccountSpec {
  const VertexAiPersistentResourceServiceAccountSpec({
    required this.enableCustomServiceAccount,
  });

  final TfArg<bool> enableCustomServiceAccount;

  @internal
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

  GoogleVertexAiPersistentResource(
    super.localName, {
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
