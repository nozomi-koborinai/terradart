// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_redis_cluster`.
const Set<String> _googleRedisClusterSensitive = <String>{};

/// Redis Cluster Authorization enum for `authorization_mode`.
enum RedisClusterAuthorizationMode implements TerraformEnum {
  authModeUnspecified('AUTH_MODE_UNSPECIFIED'),
  authModeIamAuth('AUTH_MODE_IAM_AUTH'),
  authModeDisabled('AUTH_MODE_DISABLED');

  const RedisClusterAuthorizationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redis Cluster Node enum for `node_type`.
enum RedisClusterNodeType implements TerraformEnum {
  redisSharedCoreNano('REDIS_SHARED_CORE_NANO'),
  redisHighmemMedium('REDIS_HIGHMEM_MEDIUM'),
  redisHighcpuMedium('REDIS_HIGHCPU_MEDIUM'),
  redisStandardLarge('REDIS_STANDARD_LARGE'),
  redisHighmemXlarge('REDIS_HIGHMEM_XLARGE'),
  redisHighmem2xlarge('REDIS_HIGHMEM_2XLARGE'),
  redisStandardSmall('REDIS_STANDARD_SMALL');

  const RedisClusterNodeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redis Cluster Server Ca enum for `server_ca_mode`.
enum RedisClusterServerCaMode implements TerraformEnum {
  serverCaModeGoogleManagedPerInstanceCa(
    'SERVER_CA_MODE_GOOGLE_MANAGED_PER_INSTANCE_CA',
  ),
  serverCaModeGoogleManagedSharedCa('SERVER_CA_MODE_GOOGLE_MANAGED_SHARED_CA'),
  serverCaModeCustomerManagedCasCa('SERVER_CA_MODE_CUSTOMER_MANAGED_CAS_CA'),
  serverCaModeUnspecified('SERVER_CA_MODE_UNSPECIFIED');

  const RedisClusterServerCaMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redis Cluster enum for `state`.
enum RedisClusterState implements TerraformEnum {
  creating('CREATING'),
  ready('READY'),
  updating('UPDATING'),
  deleting('DELETING'),
  suspended('SUSPENDED');

  const RedisClusterState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redis Cluster Transit Encryption enum for `transit_encryption_mode`.
enum RedisClusterTransitEncryptionMode implements TerraformEnum {
  transitEncryptionModeUnspecified('TRANSIT_ENCRYPTION_MODE_UNSPECIFIED'),
  transitEncryptionModeDisabled('TRANSIT_ENCRYPTION_MODE_DISABLED'),
  transitEncryptionModeServerAuthentication(
    'TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION',
  );

  const RedisClusterTransitEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `automated_backup_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterAutomatedBackupConfig {
  const RedisClusterAutomatedBackupConfig({
    required this.retention,
    required this.fixedFrequencySchedule,
  });

  final TfArg<String> retention;

  final RedisClusterAutomatedBackupConfigFixedFrequencySchedule
  fixedFrequencySchedule;

  Map<String, Object?> encode() => {
    'retention': retention.toTfJson(),
    'fixed_frequency_schedule': fixedFrequencySchedule.encode(),
  };
}

/// Typed helper for the `automated_backup_config.fixed_frequency_schedule` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterAutomatedBackupConfigFixedFrequencySchedule {
  const RedisClusterAutomatedBackupConfigFixedFrequencySchedule({
    required this.startTime,
  });

  final RedisClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime
  startTime;

  Map<String, Object?> encode() => {'start_time': startTime.encode()};
}

/// Typed helper for the `automated_backup_config.fixed_frequency_schedule.start_time` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  const RedisClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  final TfArg<num> hours;

  Map<String, Object?> encode() => {'hours': hours.toTfJson()};
}

/// Typed helper for the `cross_cluster_replication_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterCrossClusterReplicationConfig {
  const RedisClusterCrossClusterReplicationConfig({
    this.clusterRole,
    this.primaryCluster,
    this.secondaryClusters,
  });

  final TfArg<RedisClusterCrossClusterReplicationConfigClusterRole>?
  clusterRole;

  final RedisClusterCrossClusterReplicationConfigPrimaryCluster? primaryCluster;

  final List<RedisClusterCrossClusterReplicationConfigSecondaryClusters>?
  secondaryClusters;

  Map<String, Object?> encode() => {
    if (clusterRole != null) 'cluster_role': clusterRole!.toTfJson(),
    if (primaryCluster != null) 'primary_cluster': primaryCluster!.encode(),
    if (secondaryClusters != null)
      'secondary_clusters': [for (final e in secondaryClusters!) e.encode()],
  };
}

/// `cluster_role` — derived from the provider schema description.
enum RedisClusterCrossClusterReplicationConfigClusterRole
    implements TerraformEnum {
  clusterRoleUnspecified('CLUSTER_ROLE_UNSPECIFIED'),
  none('NONE'),
  primary('PRIMARY'),
  secondary('SECONDARY');

  const RedisClusterCrossClusterReplicationConfigClusterRole(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `cross_cluster_replication_config.primary_cluster` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterCrossClusterReplicationConfigPrimaryCluster {
  const RedisClusterCrossClusterReplicationConfigPrimaryCluster({this.cluster});

  final TfArg<String>? cluster;

  Map<String, Object?> encode() => {
    if (cluster != null) 'cluster': cluster!.toTfJson(),
  };
}

/// Typed helper for the `cross_cluster_replication_config.secondary_clusters` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterCrossClusterReplicationConfigSecondaryClusters {
  const RedisClusterCrossClusterReplicationConfigSecondaryClusters({
    this.cluster,
  });

  final TfArg<String>? cluster;

  Map<String, Object?> encode() => {
    if (cluster != null) 'cluster': cluster!.toTfJson(),
  };
}

/// Typed helper for the `gcs_source` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterGcsSource {
  const RedisClusterGcsSource({required this.uris});

  final TfArg<List<Object?>> uris;

  Map<String, Object?> encode() => {'uris': uris.toTfJson()};
}

/// Typed helper for the `maintenance_policy` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterMaintenancePolicy {
  const RedisClusterMaintenancePolicy({this.weeklyMaintenanceWindow});

  final List<RedisClusterMaintenancePolicyWeeklyMaintenanceWindow>?
  weeklyMaintenanceWindow;

  Map<String, Object?> encode() => {
    if (weeklyMaintenanceWindow != null)
      'weekly_maintenance_window': [
        for (final e in weeklyMaintenanceWindow!) e.encode(),
      ],
  };
}

/// Typed helper for the `maintenance_policy.weekly_maintenance_window` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterMaintenancePolicyWeeklyMaintenanceWindow {
  const RedisClusterMaintenancePolicyWeeklyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  final TfArg<RedisClusterMaintenancePolicyWeeklyMaintenanceWindowDay> day;

  final RedisClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// `day` — derived from the provider schema description.
enum RedisClusterMaintenancePolicyWeeklyMaintenanceWindowDay
    implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const RedisClusterMaintenancePolicyWeeklyMaintenanceWindowDay(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `maintenance_policy.weekly_maintenance_window.start_time` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime {
  const RedisClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime({
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
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterManagedBackupSource {
  const RedisClusterManagedBackupSource({required this.backup});

  final TfArg<String> backup;

  Map<String, Object?> encode() => {'backup': backup.toTfJson()};
}

/// Typed helper for the `persistence_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterPersistenceConfig {
  const RedisClusterPersistenceConfig({
    this.mode,
    this.aofConfig,
    this.rdbConfig,
  });

  final TfArg<RedisClusterPersistenceConfigMode>? mode;

  final RedisClusterPersistenceConfigAofConfig? aofConfig;

  final RedisClusterPersistenceConfigRdbConfig? rdbConfig;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (aofConfig != null) 'aof_config': aofConfig!.encode(),
    if (rdbConfig != null) 'rdb_config': rdbConfig!.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum RedisClusterPersistenceConfigMode implements TerraformEnum {
  persistenceModeUnspecified('PERSISTENCE_MODE_UNSPECIFIED'),
  disabled('DISABLED'),
  rdb('RDB'),
  aof('AOF');

  const RedisClusterPersistenceConfigMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `persistence_config.aof_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterPersistenceConfigAofConfig {
  const RedisClusterPersistenceConfigAofConfig({this.appendFsync});

  final TfArg<RedisClusterPersistenceConfigAofConfigAppendFsync>? appendFsync;

  Map<String, Object?> encode() => {
    if (appendFsync != null) 'append_fsync': appendFsync!.toTfJson(),
  };
}

/// `append_fsync` — derived from the provider schema description.
enum RedisClusterPersistenceConfigAofConfigAppendFsync
    implements TerraformEnum {
  appendFsyncUnspecified('APPEND_FSYNC_UNSPECIFIED'),
  no('NO'),
  everysec('EVERYSEC'),
  always('ALWAYS');

  const RedisClusterPersistenceConfigAofConfigAppendFsync(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `persistence_config.rdb_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterPersistenceConfigRdbConfig {
  const RedisClusterPersistenceConfigRdbConfig({
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  final TfArg<RedisClusterPersistenceConfigRdbConfigRdbSnapshotPeriod>?
  rdbSnapshotPeriod;

  final TfArg<String>? rdbSnapshotStartTime;

  Map<String, Object?> encode() => {
    if (rdbSnapshotPeriod != null)
      'rdb_snapshot_period': rdbSnapshotPeriod!.toTfJson(),
    if (rdbSnapshotStartTime != null)
      'rdb_snapshot_start_time': rdbSnapshotStartTime!.toTfJson(),
  };
}

/// `rdb_snapshot_period` — derived from the provider schema description.
enum RedisClusterPersistenceConfigRdbConfigRdbSnapshotPeriod
    implements TerraformEnum {
  snapshotPeriodUnspecified('SNAPSHOT_PERIOD_UNSPECIFIED'),
  oneHour('ONE_HOUR'),
  sixHours('SIX_HOURS'),
  twelveHours('TWELVE_HOURS'),
  twentyFourHours('TWENTY_FOUR_HOURS');

  const RedisClusterPersistenceConfigRdbConfigRdbSnapshotPeriod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `psc_configs` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterPscConfigs {
  const RedisClusterPscConfigs({required this.network});

  final TfArg<String> network;

  Map<String, Object?> encode() => {'network': network.toTfJson()};
}

/// Typed helper for the `zone_distribution_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterZoneDistributionConfig {
  const RedisClusterZoneDistributionConfig({this.mode, this.zone});

  final TfArg<RedisClusterZoneDistributionConfigMode>? mode;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum RedisClusterZoneDistributionConfigMode implements TerraformEnum {
  multiZone('MULTI_ZONE'),
  singleZone('SINGLE_ZONE');

  const RedisClusterZoneDistributionConfigMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_redis_cluster`.
///
/// A Google Cloud Redis Cluster instance.
///
/// Memorystore for Redis **Cluster** — sharded Redis with PSC networking.
///
/// **Cost:** Cloud Billing Catalog service `5AF5-2C11-D467` bills **per
/// node-hour** while the cluster exists (us-central1 Shared Core Nano
/// SKU `B4D9-BD1A-3BBC` **$0.0318/h**; Standard Small `02F6-0CB2-BDE1`
/// **$0.1425/h**; Default 13 GB `8513-DCBC-92D7` **$0.1923/h**) ×
/// shards × (1 + replicas). Destroy stops node charges. Too expensive
/// for apply-smoke — factories ship without a quickstart.
///
/// Requires [shardCount] and typically [pscConfigs] (consumer VPC
/// network). Enable `redis.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleRedisCluster(
///   localName: 'rc',
///   name: TfArg.literal('terradart-rc'),
///   region: TfArg.literal('us-central1'),
///   shardCount: TfArg.literal(1),
///   replicaCount: TfArg.literal(0),
///   nodeType: TfArg.literal(RedisClusterNodeType.redisSharedCoreNano),
///   pscConfigs: [
///     RedisClusterPscConfigs(network: TfArg.ref(network.id)),
///   ],
///   deletionProtectionEnabled: TfArg.literal(false),
/// );
/// ```
final class GoogleRedisCluster extends Resource {
  static const String tfType = 'google_redis_cluster';

  GoogleRedisCluster({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<num> shardCount,
    TfArg<num>? replicaCount,
    TfArg<RedisClusterNodeType>? nodeType,
    List<RedisClusterPscConfigs>? pscConfigs,
    TfArg<RedisClusterAuthorizationMode>? authorizationMode,
    TfArg<RedisClusterTransitEncryptionMode>? transitEncryptionMode,
    TfArg<Map<String, String>>? redisConfigs,
    RedisClusterPersistenceConfig? persistenceConfig,
    RedisClusterZoneDistributionConfig? zoneDistributionConfig,
    RedisClusterMaintenancePolicy? maintenancePolicy,
    RedisClusterAutomatedBackupConfig? automatedBackupConfig,
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
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           'shard_count': shardCount,
           if (replicaCount != null) 'replica_count': replicaCount,
           if (nodeType != null) 'node_type': nodeType,
           if (pscConfigs != null)
             'psc_configs': TfArg.literal([
               for (final e in pscConfigs) e.encode(),
             ]),
           if (authorizationMode != null)
             'authorization_mode': authorizationMode,
           if (transitEncryptionMode != null)
             'transit_encryption_mode': transitEncryptionMode,
           if (redisConfigs != null) 'redis_configs': redisConfigs,
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
           if (kmsKey != null) 'kms_key': kmsKey,
           if (labels != null) 'labels': labels,
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisClusterSensitive;

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

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `managed_server_ca` attribute.
  TfRef<List<Map<String, Object?>>> get managedServerCa =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_server_ca');

  /// Reference to `precise_size_gb` attribute.
  TfRef<num> get preciseSizeGb => TfRef.attribute<num>(this, 'precise_size_gb');

  /// Reference to `psc_connections` attribute.
  TfRef<List<Map<String, Object?>>> get pscConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_connections');

  /// Reference to `psc_service_attachments` attribute.
  TfRef<List<Map<String, Object?>>> get pscServiceAttachments =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'psc_service_attachments',
      );

  /// Reference to `size_gb` attribute.
  TfRef<num> get sizeGb => TfRef.attribute<num>(this, 'size_gb');

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
