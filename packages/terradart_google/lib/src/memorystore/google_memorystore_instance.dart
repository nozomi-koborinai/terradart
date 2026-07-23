// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_memorystore_instance`.
const Set<String> _googleMemorystoreInstanceSensitive = <String>{};

/// Memorystore Instance enum for `mode`.
enum MemorystoreInstanceMode implements TerraformEnum {
  cluster('CLUSTER'),
  clusterDisabled('CLUSTER_DISABLED');

  const MemorystoreInstanceMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Memorystore Instance Server Ca enum for `server_ca_mode`.
enum MemorystoreInstanceServerCaMode implements TerraformEnum {
  googleManagedPerInstanceCa('GOOGLE_MANAGED_PER_INSTANCE_CA'),
  googleManagedSharedCa('GOOGLE_MANAGED_SHARED_CA'),
  customerManagedCasCa('CUSTOMER_MANAGED_CAS_CA'),
  serverCaModeUnspecified('SERVER_CA_MODE_UNSPECIFIED');

  const MemorystoreInstanceServerCaMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `automated_backup_config` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceAutomatedBackupConfig {
  const MemorystoreInstanceAutomatedBackupConfig({
    required this.retention,
    required this.fixedFrequencySchedule,
  });

  final TfArg<String> retention;

  final MemorystoreInstanceAutomatedBackupConfigFixedFrequencySchedule
  fixedFrequencySchedule;

  Map<String, Object?> encode() => {
    'retention': retention.toTfJson(),
    'fixed_frequency_schedule': fixedFrequencySchedule.encode(),
  };
}

/// Typed helper for the `automated_backup_config.fixed_frequency_schedule` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceAutomatedBackupConfigFixedFrequencySchedule {
  const MemorystoreInstanceAutomatedBackupConfigFixedFrequencySchedule({
    required this.startTime,
  });

  final MemorystoreInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime
  startTime;

  Map<String, Object?> encode() => {'start_time': startTime.encode()};
}

/// Typed helper for the `automated_backup_config.fixed_frequency_schedule.start_time` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  const MemorystoreInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  final TfArg<num> hours;

  Map<String, Object?> encode() => {'hours': hours.toTfJson()};
}

/// Typed helper for the `cross_instance_replication_config` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceCrossInstanceReplicationConfig {
  const MemorystoreInstanceCrossInstanceReplicationConfig({
    this.instanceRole,
    this.primaryInstance,
    this.secondaryInstances,
  });

  final TfArg<MemorystoreInstanceCrossInstanceReplicationConfigInstanceRole>?
  instanceRole;

  final MemorystoreInstanceCrossInstanceReplicationConfigPrimaryInstance?
  primaryInstance;

  final List<
    MemorystoreInstanceCrossInstanceReplicationConfigSecondaryInstances
  >?
  secondaryInstances;

  Map<String, Object?> encode() => {
    if (instanceRole != null) 'instance_role': instanceRole!.toTfJson(),
    if (primaryInstance != null) 'primary_instance': primaryInstance!.encode(),
    if (secondaryInstances != null)
      'secondary_instances': [for (final e in secondaryInstances!) e.encode()],
  };
}

/// `instance_role` — derived from the provider schema description.
enum MemorystoreInstanceCrossInstanceReplicationConfigInstanceRole
    implements TerraformEnum {
  instanceRoleUnspecified('INSTANCE_ROLE_UNSPECIFIED'),
  none('NONE'),
  primary('PRIMARY'),
  secondary('SECONDARY');

  const MemorystoreInstanceCrossInstanceReplicationConfigInstanceRole(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `cross_instance_replication_config.primary_instance` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceCrossInstanceReplicationConfigPrimaryInstance {
  const MemorystoreInstanceCrossInstanceReplicationConfigPrimaryInstance({
    this.instance,
  });

  final TfArg<String>? instance;

  Map<String, Object?> encode() => {
    if (instance != null) 'instance': instance!.toTfJson(),
  };
}

/// Typed helper for the `cross_instance_replication_config.secondary_instances` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceCrossInstanceReplicationConfigSecondaryInstances {
  const MemorystoreInstanceCrossInstanceReplicationConfigSecondaryInstances({
    this.instance,
  });

  final TfArg<String>? instance;

  Map<String, Object?> encode() => {
    if (instance != null) 'instance': instance!.toTfJson(),
  };
}

/// Typed helper for the `desired_auto_created_endpoints` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceDesiredAutoCreatedEndpoints {
  const MemorystoreInstanceDesiredAutoCreatedEndpoints({
    required this.network,
    required this.projectId,
  });

  final TfArg<String> network;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `desired_psc_auto_connections` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceDesiredPscAutoConnections {
  const MemorystoreInstanceDesiredPscAutoConnections({
    required this.network,
    required this.projectId,
  });

  final TfArg<String> network;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `gcs_source` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceGcsSource {
  const MemorystoreInstanceGcsSource({required this.uris});

  final TfArg<List<Object?>> uris;

  Map<String, Object?> encode() => {'uris': uris.toTfJson()};
}

/// Typed helper for the `maintenance_policy` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceMaintenancePolicy {
  const MemorystoreInstanceMaintenancePolicy({this.weeklyMaintenanceWindow});

  final List<MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindow>?
  weeklyMaintenanceWindow;

  Map<String, Object?> encode() => {
    if (weeklyMaintenanceWindow != null)
      'weekly_maintenance_window': [
        for (final e in weeklyMaintenanceWindow!) e.encode(),
      ],
  };
}

/// Typed helper for the `maintenance_policy.weekly_maintenance_window` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindow {
  const MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  final TfArg<MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindowDay>
  day;

  final MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime
  startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// `day` — derived from the provider schema description.
enum MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindowDay
    implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindowDay(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `maintenance_policy.weekly_maintenance_window.start_time` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime {
  const MemorystoreInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
  };
}

/// Typed helper for the `managed_backup_source` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceManagedBackupSource {
  const MemorystoreInstanceManagedBackupSource({required this.backup});

  final TfArg<String> backup;

  Map<String, Object?> encode() => {'backup': backup.toTfJson()};
}

/// Typed helper for the `persistence_config` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstancePersistenceConfig {
  const MemorystoreInstancePersistenceConfig({
    this.mode,
    this.aofConfig,
    this.rdbConfig,
  });

  final TfArg<MemorystoreInstancePersistenceConfigMode>? mode;

  final MemorystoreInstancePersistenceConfigAofConfig? aofConfig;

  final MemorystoreInstancePersistenceConfigRdbConfig? rdbConfig;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (aofConfig != null) 'aof_config': aofConfig!.encode(),
    if (rdbConfig != null) 'rdb_config': rdbConfig!.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum MemorystoreInstancePersistenceConfigMode implements TerraformEnum {
  disabled('DISABLED'),
  rdb('RDB'),
  aof('AOF');

  const MemorystoreInstancePersistenceConfigMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `persistence_config.aof_config` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstancePersistenceConfigAofConfig {
  const MemorystoreInstancePersistenceConfigAofConfig({this.appendFsync});

  final TfArg<String>? appendFsync;

  Map<String, Object?> encode() => {
    if (appendFsync != null) 'append_fsync': appendFsync!.toTfJson(),
  };
}

/// Typed helper for the `persistence_config.rdb_config` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstancePersistenceConfigRdbConfig {
  const MemorystoreInstancePersistenceConfigRdbConfig({
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  final TfArg<String>? rdbSnapshotPeriod;

  final TfArg<String>? rdbSnapshotStartTime;

  Map<String, Object?> encode() => {
    if (rdbSnapshotPeriod != null)
      'rdb_snapshot_period': rdbSnapshotPeriod!.toTfJson(),
    if (rdbSnapshotStartTime != null)
      'rdb_snapshot_start_time': rdbSnapshotStartTime!.toTfJson(),
  };
}

/// Typed helper for the `zone_distribution_config` block of
/// `google_memorystore_instance` (derived from provider schema).
@immutable
final class MemorystoreInstanceZoneDistributionConfig {
  const MemorystoreInstanceZoneDistributionConfig({this.mode, this.zone});

  final TfArg<MemorystoreInstanceZoneDistributionConfigMode>? mode;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum MemorystoreInstanceZoneDistributionConfigMode implements TerraformEnum {
  multiZone('MULTI_ZONE'),
  singleZone('SINGLE_ZONE');

  const MemorystoreInstanceZoneDistributionConfigMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_memorystore_instance`.
///
/// A Google Cloud Memorystore instance.
///
/// Memorystore for Valkey **instance** — sharded Valkey with PSC
/// networking (`memorystore.googleapis.com`).
///
/// **Cost:** Cloud Billing Catalog service `A2B5-E0F1-B0F3` bills **per
/// node-hour** while the instance exists (us-central1 Shared Core Nano
/// SKU `1E97-7EC7-226D` **$0.0318/h**; Standard Small `7054-E9DE-8B60`
/// **$0.1425/h**) × shards × (1 + replicas). Destroy stops node charges.
/// Too expensive for apply-smoke — factories ship without a quickstart.
///
/// Requires [instanceId], [location], and [shardCount]. Prefer
/// [desiredAutoCreatedEndpoints] (or the sibling
/// [GoogleMemorystoreInstanceDesiredUserCreatedEndpoints]) over the
/// deprecated `psc_auto_connections` / `discovery_endpoints` outputs.
/// Enable `memorystore.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleMemorystoreInstance(
///   localName: 'valkey',
///   instanceId: TfArg.literal('terradart-valkey'),
///   location: TfArg.literal('us-central1'),
///   shardCount: TfArg.literal(1),
///   replicaCount: TfArg.literal(0),
///   nodeType: TfArg.literal('SHARED_CORE_NANO'),
///   desiredAutoCreatedEndpoints: [
///     MemorystoreInstanceDesiredAutoCreatedEndpoints(
///       network: TfArg.ref(network.id),
///       projectId: TfArg.literal(projectId),
///     ),
///   ],
///   deletionProtectionEnabled: TfArg.literal(false),
/// );
/// ```
final class GoogleMemorystoreInstance extends Resource {
  static const String tfType = 'google_memorystore_instance';

  GoogleMemorystoreInstance({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> location,
    required TfArg<num> shardCount,
    TfArg<num>? replicaCount,
    TfArg<String>? nodeType,
    TfArg<String>? mode,
    TfArg<String>? engineVersion,
    TfArg<String>? authorizationMode,
    TfArg<String>? transitEncryptionMode,
    List<MemorystoreInstanceDesiredAutoCreatedEndpoints>?
    desiredAutoCreatedEndpoints,
    List<MemorystoreInstanceDesiredPscAutoConnections>?
    desiredPscAutoConnections,
    MemorystoreInstancePersistenceConfig? persistenceConfig,
    MemorystoreInstanceZoneDistributionConfig? zoneDistributionConfig,
    MemorystoreInstanceMaintenancePolicy? maintenancePolicy,
    MemorystoreInstanceAutomatedBackupConfig? automatedBackupConfig,
    MemorystoreInstanceCrossInstanceReplicationConfig?
    crossInstanceReplicationConfig,
    MemorystoreInstanceGcsSource? gcsSource,
    MemorystoreInstanceManagedBackupSource? managedBackupSource,
    TfArg<String>? kmsKey,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'location': location,
           'shard_count': shardCount,
           if (replicaCount != null) 'replica_count': replicaCount,
           if (nodeType != null) 'node_type': nodeType,
           if (mode != null) 'mode': mode,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (authorizationMode != null)
             'authorization_mode': authorizationMode,
           if (transitEncryptionMode != null)
             'transit_encryption_mode': transitEncryptionMode,
           if (desiredAutoCreatedEndpoints != null)
             'desired_auto_created_endpoints': TfArg.literal([
               for (final e in desiredAutoCreatedEndpoints) e.encode(),
             ]),
           if (desiredPscAutoConnections != null)
             'desired_psc_auto_connections': TfArg.literal([
               for (final e in desiredPscAutoConnections) e.encode(),
             ]),
           if (persistenceConfig != null)
             'persistence_config': TfArg.literal(persistenceConfig.encode()),
           if (zoneDistributionConfig != null)
             'zone_distribution_config': TfArg.literal(
               zoneDistributionConfig.encode(),
             ),
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal(maintenancePolicy.encode()),
           if (automatedBackupConfig != null)
             'automated_backup_config': TfArg.literal(
               automatedBackupConfig.encode(),
             ),
           if (crossInstanceReplicationConfig != null)
             'cross_instance_replication_config': TfArg.literal(
               crossInstanceReplicationConfig.encode(),
             ),
           if (gcsSource != null)
             'gcs_source': TfArg.literal(gcsSource.encode()),
           if (managedBackupSource != null)
             'managed_backup_source': TfArg.literal(
               managedBackupSource.encode(),
             ),
           if (kmsKey != null) 'kms_key': kmsKey,
           if (labels != null) 'labels': labels,
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMemorystoreInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_maintenance_versions` attribute.
  TfRef<List<String>> get availableMaintenanceVersions =>
      TfRef.attribute<List<String>>(this, 'available_maintenance_versions');

  /// Reference to `backup_collection` attribute.
  TfRef<String> get backupCollection =>
      TfRef.attribute<String>(this, 'backup_collection');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `discovery_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get discoveryEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'discovery_endpoints');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_maintenance_version` attribute.
  TfRef<String> get effectiveMaintenanceVersion =>
      TfRef.attribute<String>(this, 'effective_maintenance_version');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `managed_server_ca` attribute.
  TfRef<List<Map<String, Object?>>> get managedServerCa =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_server_ca');

  /// Reference to `node_config` attribute.
  TfRef<List<Map<String, Object?>>> get nodeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_config');

  /// Reference to `psc_attachment_details` attribute.
  TfRef<List<Map<String, Object?>>> get pscAttachmentDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'psc_attachment_details',
      );

  /// Reference to `psc_auto_connections` attribute.
  TfRef<List<Map<String, Object?>>> get pscAutoConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_auto_connections');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_info` attribute.
  TfRef<List<Map<String, Object?>>> get stateInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state_info');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
