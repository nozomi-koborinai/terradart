// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (first != null) 'first': first!.toTfJson(),
    if (last != null) 'last': last!.toTfJson(),
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

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? command;

  final TfArg<Map<String, String>>? env;

  final TfArg<String>? image;

  final TfArg<num>? runAsUser;

  final TfArg<String>? workingDir;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (command != null) 'command': command!.toTfJson(),
    if (env != null) 'env': env!.toTfJson(),
    if (image != null) 'image': image!.toTfJson(),
    if (runAsUser != null) 'run_as_user': runAsUser!.toTfJson(),
    if (workingDir != null) 'working_dir': workingDir!.toTfJson(),
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

  final TfArg<String> kmsKey;

  final TfArg<String> kmsKeyServiceAccount;

  Map<String, Object?> encode() => {
    'kms_key': kmsKey.toTfJson(),
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
    if (mountPath != null) 'mount_path': mountPath!.toTfJson(),
    if (gcePd != null) 'gce_pd': gcePd!.encode(),
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
    if (diskType != null) 'disk_type': diskType!.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
    if (sourceImage != null) 'source_image': sourceImage!.toTfJson(),
    if (sourceSnapshot != null) 'source_snapshot': sourceSnapshot!.toTfJson(),
  };
}

/// Typed helper for the `host` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHost {
  const WorkstationsWorkstationConfigHost({this.gceInstance});

  final WorkstationsWorkstationConfigHostGceInstance? gceInstance;

  Map<String, Object?> encode() => {
    if (gceInstance != null) 'gce_instance': gceInstance!.encode(),
  };
}

/// Typed helper for the `host.gce_instance` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHostGceInstance {
  const WorkstationsWorkstationConfigHostGceInstance({
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

  final TfArg<String>? serviceAccount;

  final TfArg<List<Object?>>? serviceAccountScopes;

  final TfArg<List<Object?>>? tags;

  final TfArg<Map<String, String>>? vmTags;

  final List<WorkstationsWorkstationConfigHostGceInstanceAccelerators>?
  accelerators;

  final List<WorkstationsWorkstationConfigHostGceInstanceBoostConfigs>?
  boostConfigs;

  final WorkstationsWorkstationConfigHostGceInstanceConfidentialInstanceConfig?
  confidentialInstanceConfig;

  final WorkstationsWorkstationConfigHostGceInstanceShieldedInstanceConfig?
  shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (disablePublicIpAddresses != null)
      'disable_public_ip_addresses': disablePublicIpAddresses!.toTfJson(),
    if (disableSsh != null) 'disable_ssh': disableSsh!.toTfJson(),
    if (enableNestedVirtualization != null)
      'enable_nested_virtualization': enableNestedVirtualization!.toTfJson(),
    if (instanceMetadata != null)
      'instance_metadata': instanceMetadata!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (poolSize != null) 'pool_size': poolSize!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (serviceAccountScopes != null)
      'service_account_scopes': serviceAccountScopes!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (vmTags != null) 'vm_tags': vmTags!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
    if (boostConfigs != null)
      'boost_configs': [for (final e in boostConfigs!) e.encode()],
    if (confidentialInstanceConfig != null)
      'confidential_instance_config': confidentialInstanceConfig!.encode(),
    if (shieldedInstanceConfig != null)
      'shielded_instance_config': shieldedInstanceConfig!.encode(),
  };
}

/// Typed helper for the `host.gce_instance.accelerators` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHostGceInstanceAccelerators {
  const WorkstationsWorkstationConfigHostGceInstanceAccelerators({
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
final class WorkstationsWorkstationConfigHostGceInstanceBoostConfigs {
  const WorkstationsWorkstationConfigHostGceInstanceBoostConfigs({
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

  final List<
    WorkstationsWorkstationConfigHostGceInstanceBoostConfigsAccelerators
  >?
  accelerators;

  Map<String, Object?> encode() => {
    if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb!.toTfJson(),
    if (enableNestedVirtualization != null)
      'enable_nested_virtualization': enableNestedVirtualization!.toTfJson(),
    'id': id.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (poolSize != null) 'pool_size': poolSize!.toTfJson(),
    if (accelerators != null)
      'accelerators': [for (final e in accelerators!) e.encode()],
  };
}

/// Typed helper for the `host.gce_instance.boost_configs.accelerators` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHostGceInstanceBoostConfigsAccelerators {
  const WorkstationsWorkstationConfigHostGceInstanceBoostConfigsAccelerators({
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

/// Typed helper for the `host.gce_instance.confidential_instance_config` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHostGceInstanceConfidentialInstanceConfig {
  const WorkstationsWorkstationConfigHostGceInstanceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  final TfArg<bool>? enableConfidentialCompute;

  Map<String, Object?> encode() => {
    if (enableConfidentialCompute != null)
      'enable_confidential_compute': enableConfidentialCompute!.toTfJson(),
  };
}

/// Typed helper for the `host.gce_instance.shielded_instance_config` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigHostGceInstanceShieldedInstanceConfig {
  const WorkstationsWorkstationConfigHostGceInstanceShieldedInstanceConfig({
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

  final WorkstationsWorkstationConfigPersistentDirectoriesGceHd? gceHd;

  final WorkstationsWorkstationConfigPersistentDirectoriesGcePd? gcePd;

  Map<String, Object?> encode() => {
    if (mountPath != null) 'mount_path': mountPath!.toTfJson(),
    if (gceHd != null) 'gce_hd': gceHd!.encode(),
    if (gcePd != null) 'gce_pd': gcePd!.encode(),
  };
}

/// Typed helper for the `persistent_directories.gce_hd` block of
/// `google_workstations_workstation_config` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigPersistentDirectoriesGceHd {
  const WorkstationsWorkstationConfigPersistentDirectoriesGceHd({
    this.archiveTimeout,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  final TfArg<String>? archiveTimeout;

  final TfArg<
    WorkstationsWorkstationConfigPersistentDirectoriesGceHdReclaimPolicy
  >?
  reclaimPolicy;

  final TfArg<num>? sizeGb;

  final TfArg<String>? sourceSnapshot;

  Map<String, Object?> encode() => {
    if (archiveTimeout != null) 'archive_timeout': archiveTimeout!.toTfJson(),
    if (reclaimPolicy != null) 'reclaim_policy': reclaimPolicy!.toTfJson(),
    if (sizeGb != null) 'size_gb': sizeGb!.toTfJson(),
    if (sourceSnapshot != null) 'source_snapshot': sourceSnapshot!.toTfJson(),
  };
}

/// `reclaim_policy` — derived from the provider schema description.
enum WorkstationsWorkstationConfigPersistentDirectoriesGceHdReclaimPolicy
    implements TerraformEnum {
  delete('DELETE'),
  retain('RETAIN');

  const WorkstationsWorkstationConfigPersistentDirectoriesGceHdReclaimPolicy(
    this.terraformValue,
  );
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

  final TfArg<
    WorkstationsWorkstationConfigPersistentDirectoriesGcePdReclaimPolicy
  >?
  reclaimPolicy;

  final TfArg<num>? sizeGb;

  final TfArg<String>? sourceSnapshot;

  Map<String, Object?> encode() => {
    if (diskType != null) 'disk_type': diskType!.toTfJson(),
    if (fsType != null) 'fs_type': fsType!.toTfJson(),
    if (reclaimPolicy != null) 'reclaim_policy': reclaimPolicy!.toTfJson(),
    if (sizeGb != null) 'size_gb': sizeGb!.toTfJson(),
    if (sourceSnapshot != null) 'source_snapshot': sourceSnapshot!.toTfJson(),
  };
}

/// `reclaim_policy` — derived from the provider schema description.
enum WorkstationsWorkstationConfigPersistentDirectoriesGcePdReclaimPolicy
    implements TerraformEnum {
  delete('DELETE'),
  retain('RETAIN');

  const WorkstationsWorkstationConfigPersistentDirectoriesGcePdReclaimPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
///     gceInstance: WorkstationsWorkstationConfigHostGceInstance(
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_config_id': workstationConfigId,
           'workstation_cluster_id': workstationClusterId,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (idleTimeout != null) 'idle_timeout': idleTimeout,
           if (runningTimeout != null) 'running_timeout': runningTimeout,
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
           if (disableTcpConnections != null)
             'disable_tcp_connections': disableTcpConnections,
           if (enableAuditAgent != null) 'enable_audit_agent': enableAuditAgent,
           if (maxUsableWorkstations != null)
             'max_usable_workstations': maxUsableWorkstations,
           if (replicaZones != null) 'replica_zones': replicaZones,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigSensitive;

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

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigIdRef =>
      TfRef.attribute<String>(this, 'workstation_config_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
