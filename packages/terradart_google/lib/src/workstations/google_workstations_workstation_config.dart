// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_workstations_workstation_config`.
const Set<String> _googleWorkstationsWorkstationConfigSensitive = <String>{};

/// Typed helper for the `allowed_ports` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigAllowedPorts {
  const WorkstationsWorkstationConfigAllowedPorts({this.first, this.last});

  final TfArg<num>? first;

  final TfArg<num>? last;

  Map<String, Object?> encode() => {
    'first': ?first?.toTfJson(),
    'last': ?last?.toTfJson(),
  };
}

/// Typed helper for the `container` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigContainer {
  const WorkstationsWorkstationConfigContainer({
    this.args,
    this.command,
    this.env,
    this.image,
    this.runAsUser,
    this.workingDir,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<Map<String, String>>? env;

  final TfArg<String>? image;

  final TfArg<num>? runAsUser;

  final TfArg<String>? workingDir;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'env': ?env?.toTfJson(),
    'image': ?image?.toTfJson(),
    'run_as_user': ?runAsUser?.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
  };
}

/// Typed helper for the `encryption_key` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigEncryptionKey {
  const WorkstationsWorkstationConfigEncryptionKey({
    required this.kmsKey,
    required this.kmsKeyServiceAccount,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKey;

  final TfArg<String> kmsKeyServiceAccount;

  Map<String, Object?> encode() => {
    'kms_key': kmsKey.encodeAs('id').toTfJson(),
    'kms_key_service_account': kmsKeyServiceAccount.toTfJson(),
  };
}

/// Typed helper for the `ephemeral_directories` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigEphemeralDirectories {
  const WorkstationsWorkstationConfigEphemeralDirectories({
    this.mountPath,
    this.gcePd,
  });

  final TfArg<String>? mountPath;

  final WorkstationsWorkstationConfigEphemeralDirectoriesGcePd? gcePd;

  Map<String, Object?> encode() => {
    'mount_path': ?mountPath?.toTfJson(),
    'gce_pd': ?gcePd?.encode(),
  };
}

/// Typed helper for the `ephemeral_directories.gce_pd` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigEphemeralDirectoriesGcePd {
  const WorkstationsWorkstationConfigEphemeralDirectoriesGcePd({
    this.diskType,
    this.readOnly,
    this.sourceImage,
    this.sourceSnapshot,
  });

  final TfArg<String>? diskType;

  final TfArg<bool>? readOnly;

  final TfArg<String>? sourceImage;

  final TfArg<String>? sourceSnapshot;

  Map<String, Object?> encode() => {
    'disk_type': ?diskType?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'source_image': ?sourceImage?.toTfJson(),
    'source_snapshot': ?sourceSnapshot?.toTfJson(),
  };
}

/// Typed helper for the `host` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHost {
  const WorkstationsWorkstationConfigHost({this.gceInstance});

  final WorkstationsWorkstationConfigGceInstance? gceInstance;

  Map<String, Object?> encode() => {'gce_instance': ?gceInstance?.encode()};
}

/// Typed helper for the `host.gce_instance` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigGceInstance {
  const WorkstationsWorkstationConfigGceInstance({
    this.bootDiskSizeGb,
    this.disablePublicIpAddresses,
    this.disableSsh,
    this.enableNestedVirtualization,
    this.instanceMetadata,
    this.machineType,
    this.poolSize,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.tags,
    this.vmTags,
    this.accelerators,
    this.boostConfigs,
    this.confidentialInstanceConfig,
    this.shieldedInstanceConfig,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<bool>? disablePublicIpAddresses;

  final TfArg<bool>? disableSsh;

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<Map<String, String>>? instanceMetadata;

  final TfArg<String>? machineType;

  final TfArg<num>? poolSize;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<List<String>>? serviceAccountScopes;

  final TfArg<List<String>>? tags;

  final TfArg<Map<String, String>>? vmTags;

  final List<WorkstationsWorkstationConfigAccelerators>? accelerators;

  final List<WorkstationsWorkstationConfigBoostConfigs>? boostConfigs;

  final WorkstationsWorkstationConfigConfidentialInstanceConfig?
  confidentialInstanceConfig;

  final WorkstationsWorkstationConfigShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'disable_public_ip_addresses': ?disablePublicIpAddresses?.toTfJson(),
    'disable_ssh': ?disableSsh?.toTfJson(),
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'instance_metadata': ?instanceMetadata?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'pool_size': ?poolSize?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'service_account_scopes': ?serviceAccountScopes?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'vm_tags': ?vmTags?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (boostConfigs != null)
      'boost_configs': [for (final e in boostConfigs!) e.encode()],
    'confidential_instance_config': ?confidentialInstanceConfig?.encode(),
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
  };
}

/// Typed helper for the `host.gce_instance.accelerators` block of
/// `google_workstations_workstation_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkstationsWorkstationConfigAccelerators {
  const WorkstationsWorkstationConfigAccelerators({
    required this.count,
    required this.type,
  });

  final TfArg<num> count;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `host.gce_instance.boost_configs` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigBoostConfigs {
  const WorkstationsWorkstationConfigBoostConfigs({
    this.bootDiskSizeGb,
    this.enableNestedVirtualization,
    required this.id,
    this.machineType,
    this.poolSize,
    this.accelerators,
  });

  final TfArg<num>? bootDiskSizeGb;

  final TfArg<bool>? enableNestedVirtualization;

  final TfArg<String> id;

  final TfArg<String>? machineType;

  final TfArg<num>? poolSize;

  final List<WorkstationsWorkstationConfigAccelerators>? accelerators;

  Map<String, Object?> encode() => {
    'boot_disk_size_gb': ?bootDiskSizeGb?.toTfJson(),
    'enable_nested_virtualization': ?enableNestedVirtualization?.toTfJson(),
    'id': id.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'pool_size': ?poolSize?.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
  };
}

/// Typed helper for the `host.gce_instance.confidential_instance_config` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigConfidentialInstanceConfig {
  const WorkstationsWorkstationConfigConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    'enable_confidential_compute': ?enableConfidentialCompute?.toTfJson(),
  };
}

/// Typed helper for the `host.gce_instance.shielded_instance_config` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigShieldedInstanceConfig {
  const WorkstationsWorkstationConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
  };
}

/// Typed helper for the `persistent_directories` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigPersistentDirectories {
  const WorkstationsWorkstationConfigPersistentDirectories({
    this.mountPath,
    this.gceHd,
    this.gcePd,
  });

  final TfArg<String>? mountPath;

  final WorkstationsWorkstationConfigGceHd? gceHd;

  final WorkstationsWorkstationConfigPersistentDirectoriesGcePd? gcePd;

  Map<String, Object?> encode() => {
    'mount_path': ?mountPath?.toTfJson(),
    'gce_hd': ?gceHd?.encode(),
    'gce_pd': ?gcePd?.encode(),
  };
}

/// Typed helper for the `persistent_directories.gce_hd` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigGceHd {
  const WorkstationsWorkstationConfigGceHd({
    this.archiveTimeout,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  final TfArg<String>? archiveTimeout;

  final TfArg<WorkstationsWorkstationConfigReclaimPolicy>? reclaimPolicy;

  final TfArg<num>? sizeGb;

  final TfArg<String>? sourceSnapshot;

  Map<String, Object?> encode() => {
    'archive_timeout': ?archiveTimeout?.toTfJson(),
    'reclaim_policy': ?reclaimPolicy?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
    'source_snapshot': ?sourceSnapshot?.toTfJson(),
  };
}

/// `reclaim_policy` — derived from the provider schema description.
enum WorkstationsWorkstationConfigReclaimPolicy implements TerraformEnum {
  delete('DELETE'),
  retain('RETAIN');

  const WorkstationsWorkstationConfigReclaimPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `persistent_directories.gce_pd` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigPersistentDirectoriesGcePd {
  const WorkstationsWorkstationConfigPersistentDirectoriesGcePd({
    this.diskType,
    this.fsType,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  final TfArg<String>? diskType;

  final TfArg<String>? fsType;

  final TfArg<WorkstationsWorkstationConfigReclaimPolicy>? reclaimPolicy;

  final TfArg<num>? sizeGb;

  final TfArg<String>? sourceSnapshot;

  Map<String, Object?> encode() => {
    'disk_type': ?diskType?.toTfJson(),
    'fs_type': ?fsType?.toTfJson(),
    'reclaim_policy': ?reclaimPolicy?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
    'source_snapshot': ?sourceSnapshot?.toTfJson(),
  };
}

/// Typed helper for the `readiness_checks` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigReadinessChecks {
  const WorkstationsWorkstationConfigReadinessChecks({
    required this.path,
    required this.port,
  });

  final TfArg<String> path;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Factory wrapper for `google_workstations_workstation_config`.
///
/// A set of configuration options describing how a workstation will be run.
/// Workstation configurations are intended to be shared across multiple
/// workstations.
///
/// Cloud Workstations **config** — machine image, disk, and timeout
/// template for workstations in a [GoogleWorkstationsWorkstationCluster].
///
/// **Cost:** no separate control-plane SKU for the config itself under
/// `4528-FDD0-A2A0` — running workstations bill VM management fees (and
/// Compute). Deferred with the cluster (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleWorkstationsWorkstationConfig(
///   localName: 'cfg',
///   workstationConfigId: TfArg.literal('dev'),
///   workstationClusterId: TfArg.ref(cluster.workstationClusterIdRef),
///   location: TfArg.literal('us-central1'),
///   host: WorkstationsWorkstationConfigHost(
///     gceInstance: .new(
///       machineType: TfArg.literal('e2-standard-4'),
///       bootDiskSizeGb: TfArg.literal(50),
///     ),
///   ),
/// );
/// ```
final class GoogleWorkstationsWorkstationConfig extends Resource {
  static const String tfType = 'google_workstations_workstation_config';

  GoogleWorkstationsWorkstationConfig({
    required super.localName,
    required TfArg<String> workstationConfigId,
    required TfArg<String> workstationClusterId,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? idleTimeout,
    TfArg<String>? runningTimeout,
    WorkstationsWorkstationConfigHost? host,
    WorkstationsWorkstationConfigContainer? container,
    List<WorkstationsWorkstationConfigPersistentDirectories>?
    persistentDirectories,
    List<WorkstationsWorkstationConfigEphemeralDirectories>?
    ephemeralDirectories,
    WorkstationsWorkstationConfigEncryptionKey? encryptionKey,
    List<WorkstationsWorkstationConfigAllowedPorts>? allowedPorts,
    List<WorkstationsWorkstationConfigReadinessChecks>? readinessChecks,
    TfArg<bool>? disableTcpConnections,
    TfArg<bool>? enableAuditAgent,
    TfArg<num>? maxUsableWorkstations,
    TfArg<List<String>>? replicaZones,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_config_id': workstationConfigId,
           'workstation_cluster_id': workstationClusterId,
           'location': location,
           'display_name': ?displayName,
           'labels': ?labels,
           'annotations': ?annotations,
           'idle_timeout': ?idleTimeout,
           'running_timeout': ?runningTimeout,
           if (host != null) 'host': TfArg.literal(host.encode()),
           if (container != null)
             'container': TfArg.literal(container.encode()),
           if (persistentDirectories != null)
             'persistent_directories': TfArg.literal([
               for (final e in persistentDirectories) e.encode(),
             ]),
           if (ephemeralDirectories != null)
             'ephemeral_directories': TfArg.literal([
               for (final e in ephemeralDirectories) e.encode(),
             ]),
           if (encryptionKey != null)
             'encryption_key': TfArg.literal(encryptionKey.encode()),
           if (allowedPorts != null)
             'allowed_ports': TfArg.literal([
               for (final e in allowedPorts) e.encode(),
             ]),
           if (readinessChecks != null)
             'readiness_checks': TfArg.literal([
               for (final e in readinessChecks) e.encode(),
             ]),
           'disable_tcp_connections': ?disableTcpConnections,
           'enable_audit_agent': ?enableAuditAgent,
           'max_usable_workstations': ?maxUsableWorkstations,
           'replica_zones': ?replicaZones,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationConfig>`.
  RefTo<GoogleWorkstationsWorkstationConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `degraded` attribute.
  TfRef<bool> get degraded => TfRef.attribute<bool>(this, 'degraded');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_tcp_connections` attribute.
  TfRef<bool> get disableTcpConnectionsRef =>
      TfRef.attribute<bool>(this, 'disable_tcp_connections');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_audit_agent` attribute.
  TfRef<bool> get enableAuditAgentRef =>
      TfRef.attribute<bool>(this, 'enable_audit_agent');

  /// Reference to `idle_timeout` attribute.
  TfRef<String> get idleTimeoutRef =>
      TfRef.attribute<String>(this, 'idle_timeout');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_usable_workstations` attribute.
  TfRef<num> get maxUsableWorkstationsRef =>
      TfRef.attribute<num>(this, 'max_usable_workstations');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `replica_zones` attribute.
  TfRef<List<String>> get replicaZonesRef =>
      TfRef.attribute<List<String>>(this, 'replica_zones');

  /// Reference to `running_timeout` attribute.
  TfRef<String> get runningTimeoutRef =>
      TfRef.attribute<String>(this, 'running_timeout');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterIdRef =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigIdRef =>
      TfRef.attribute<String>(this, 'workstation_config_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
