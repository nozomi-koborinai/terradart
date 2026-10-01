// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_redis_cluster`.
const Set<String> _googleRedisClusterSensitive = <String>{};

/// Redis Cluster Authorization enum for `authorization_mode`.
extension type const RedisClusterAuthorizationMode._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterAuthorizationMode.variable(String name)
    : this._(TfArg.variable(name));
  RedisClusterAuthorizationMode.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterAuthorizationMode.arg(TfArg<String> arg) : this._(arg);

  static const authModeUnspecified = RedisClusterAuthorizationMode._(
    TfArgLiteral('AUTH_MODE_UNSPECIFIED'),
  );
  static const authModeIamAuth = RedisClusterAuthorizationMode._(
    TfArgLiteral('AUTH_MODE_IAM_AUTH'),
  );
  static const authModeDisabled = RedisClusterAuthorizationMode._(
    TfArgLiteral('AUTH_MODE_DISABLED'),
  );

  static const List<RedisClusterAuthorizationMode> values = [
    authModeUnspecified,
    authModeIamAuth,
    authModeDisabled,
  ];
}

/// Redis Cluster Node enum for `node_type`.
extension type const RedisClusterNodeType._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterNodeType.variable(String name) : this._(TfArg.variable(name));
  RedisClusterNodeType.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterNodeType.arg(TfArg<String> arg) : this._(arg);

  static const redisSharedCoreNano = RedisClusterNodeType._(
    TfArgLiteral('REDIS_SHARED_CORE_NANO'),
  );
  static const redisHighmemMedium = RedisClusterNodeType._(
    TfArgLiteral('REDIS_HIGHMEM_MEDIUM'),
  );
  static const redisHighcpuMedium = RedisClusterNodeType._(
    TfArgLiteral('REDIS_HIGHCPU_MEDIUM'),
  );
  static const redisStandardLarge = RedisClusterNodeType._(
    TfArgLiteral('REDIS_STANDARD_LARGE'),
  );
  static const redisHighmemXlarge = RedisClusterNodeType._(
    TfArgLiteral('REDIS_HIGHMEM_XLARGE'),
  );
  static const redisHighmem2xlarge = RedisClusterNodeType._(
    TfArgLiteral('REDIS_HIGHMEM_2XLARGE'),
  );
  static const redisStandardSmall = RedisClusterNodeType._(
    TfArgLiteral('REDIS_STANDARD_SMALL'),
  );

  static const List<RedisClusterNodeType> values = [
    redisSharedCoreNano,
    redisHighmemMedium,
    redisHighcpuMedium,
    redisStandardLarge,
    redisHighmemXlarge,
    redisHighmem2xlarge,
    redisStandardSmall,
  ];
}

/// Redis Cluster Server Ca enum for `server_ca_mode`.
extension type const RedisClusterServerCaMode._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterServerCaMode.variable(String name) : this._(TfArg.variable(name));
  RedisClusterServerCaMode.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterServerCaMode.arg(TfArg<String> arg) : this._(arg);

  static const serverCaModeGoogleManagedPerInstanceCa =
      RedisClusterServerCaMode._(
        TfArgLiteral('SERVER_CA_MODE_GOOGLE_MANAGED_PER_INSTANCE_CA'),
      );
  static const serverCaModeGoogleManagedSharedCa = RedisClusterServerCaMode._(
    TfArgLiteral('SERVER_CA_MODE_GOOGLE_MANAGED_SHARED_CA'),
  );
  static const serverCaModeCustomerManagedCasCa = RedisClusterServerCaMode._(
    TfArgLiteral('SERVER_CA_MODE_CUSTOMER_MANAGED_CAS_CA'),
  );
  static const serverCaModeUnspecified = RedisClusterServerCaMode._(
    TfArgLiteral('SERVER_CA_MODE_UNSPECIFIED'),
  );

  static const List<RedisClusterServerCaMode> values = [
    serverCaModeGoogleManagedPerInstanceCa,
    serverCaModeGoogleManagedSharedCa,
    serverCaModeCustomerManagedCasCa,
    serverCaModeUnspecified,
  ];
}

/// Redis Cluster enum for `state`.
extension type const RedisClusterState._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterState.variable(String name) : this._(TfArg.variable(name));
  RedisClusterState.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterState.arg(TfArg<String> arg) : this._(arg);

  static const creating = RedisClusterState._(TfArgLiteral('CREATING'));
  static const ready = RedisClusterState._(TfArgLiteral('READY'));
  static const updating = RedisClusterState._(TfArgLiteral('UPDATING'));
  static const deleting = RedisClusterState._(TfArgLiteral('DELETING'));
  static const suspended = RedisClusterState._(TfArgLiteral('SUSPENDED'));

  static const List<RedisClusterState> values = [
    creating,
    ready,
    updating,
    deleting,
    suspended,
  ];
}

/// Redis Cluster Transit Encryption enum for `transit_encryption_mode`.
extension type const RedisClusterTransitEncryptionMode._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterTransitEncryptionMode.variable(String name)
    : this._(TfArg.variable(name));
  RedisClusterTransitEncryptionMode.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterTransitEncryptionMode.arg(TfArg<String> arg) : this._(arg);

  static const transitEncryptionModeUnspecified =
      RedisClusterTransitEncryptionMode._(
        TfArgLiteral('TRANSIT_ENCRYPTION_MODE_UNSPECIFIED'),
      );
  static const transitEncryptionModeDisabled =
      RedisClusterTransitEncryptionMode._(
        TfArgLiteral('TRANSIT_ENCRYPTION_MODE_DISABLED'),
      );
  static const transitEncryptionModeServerAuthentication =
      RedisClusterTransitEncryptionMode._(
        TfArgLiteral('TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION'),
      );

  static const List<RedisClusterTransitEncryptionMode> values = [
    transitEncryptionModeUnspecified,
    transitEncryptionModeDisabled,
    transitEncryptionModeServerAuthentication,
  ];
}

/// At most one of `gcs_source`, `managed_backup_source` on `google_redis_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.gcsSource(...)`.
sealed class RedisClusterSource {
  const RedisClusterSource();

  /// Sets `gcs_source`.
  const factory RedisClusterSource.gcsSource(RedisClusterGcsSource gcsSource) =
      RedisClusterGcsSourceChoice;

  /// Sets `managed_backup_source`.
  const factory RedisClusterSource.managedBackupSource(
    RedisClusterManagedBackupSource managedBackupSource,
  ) = RedisClusterManagedBackupSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedisClusterSource.gcsSource] choice: sets `gcs_source`.
final class RedisClusterGcsSourceChoice extends RedisClusterSource {
  const RedisClusterGcsSourceChoice(this.gcsSource);

  final RedisClusterGcsSource gcsSource;

  @override
  String get blockKey => 'gcs_source';

  @override
  Map<String, Object?> encode() => {'gcs_source': gcsSource.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gcs_source': TfArg.literal(gcsSource.encode()),
  };
}

/// The [RedisClusterSource.managedBackupSource] choice: sets `managed_backup_source`.
final class RedisClusterManagedBackupSourceChoice extends RedisClusterSource {
  const RedisClusterManagedBackupSourceChoice(this.managedBackupSource);

  final RedisClusterManagedBackupSource managedBackupSource;

  @override
  String get blockKey => 'managed_backup_source';

  @override
  Map<String, Object?> encode() => {
    'managed_backup_source': managedBackupSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'managed_backup_source': TfArg.literal(managedBackupSource.encode()),
  };
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

  final RedisClusterFixedFrequencySchedule fixedFrequencySchedule;

  Map<String, Object?> encode() => {
    'retention': retention.toTfJson(),
    'fixed_frequency_schedule': fixedFrequencySchedule.encode(),
  };
}

/// Typed helper for the `automated_backup_config.fixed_frequency_schedule` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterFixedFrequencySchedule {
  const RedisClusterFixedFrequencySchedule({required this.startTime});

  final RedisClusterFixedFrequencyScheduleStartTime startTime;

  Map<String, Object?> encode() => {'start_time': startTime.encode()};
}

/// Typed helper for the `automated_backup_config.fixed_frequency_schedule.start_time` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterFixedFrequencyScheduleStartTime {
  const RedisClusterFixedFrequencyScheduleStartTime({required this.hours});

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

  final RedisClusterRole? clusterRole;

  final RedisClusterPrimaryCluster? primaryCluster;

  final List<RedisClusterSecondaryClusters>? secondaryClusters;

  Map<String, Object?> encode() => {
    'cluster_role': ?clusterRole?.toTfJson(),
    'primary_cluster': ?primaryCluster?.encode(),
    if (secondaryClusters != null)
      'secondary_clusters': [for (final e in secondaryClusters!) e.encode()],
  };
}

/// `cluster_role` — derived from the provider schema description.
extension type const RedisClusterRole._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterRole.variable(String name) : this._(TfArg.variable(name));
  RedisClusterRole.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterRole.arg(TfArg<String> arg) : this._(arg);

  static const clusterRoleUnspecified = RedisClusterRole._(
    TfArgLiteral('CLUSTER_ROLE_UNSPECIFIED'),
  );
  static const none = RedisClusterRole._(TfArgLiteral('NONE'));
  static const primary = RedisClusterRole._(TfArgLiteral('PRIMARY'));
  static const secondary = RedisClusterRole._(TfArgLiteral('SECONDARY'));

  static const List<RedisClusterRole> values = [
    clusterRoleUnspecified,
    none,
    primary,
    secondary,
  ];
}

/// Typed helper for the `cross_cluster_replication_config.primary_cluster` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterPrimaryCluster {
  const RedisClusterPrimaryCluster({this.cluster});

  final TfArg<String>? cluster;

  Map<String, Object?> encode() => {'cluster': ?cluster?.toTfJson()};
}

/// Typed helper for the `cross_cluster_replication_config.secondary_clusters` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterSecondaryClusters {
  const RedisClusterSecondaryClusters({this.cluster});

  final TfArg<String>? cluster;

  Map<String, Object?> encode() => {'cluster': ?cluster?.toTfJson()};
}

/// Typed helper for the `gcs_source` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterGcsSource {
  const RedisClusterGcsSource({required this.uris});

  final TfArg<List<String>> uris;

  Map<String, Object?> encode() => {'uris': uris.toTfJson()};
}

/// Typed helper for the `maintenance_policy` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterMaintenancePolicy {
  const RedisClusterMaintenancePolicy({this.weeklyMaintenanceWindow});

  final List<RedisClusterWeeklyMaintenanceWindow>? weeklyMaintenanceWindow;

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
final class RedisClusterWeeklyMaintenanceWindow {
  const RedisClusterWeeklyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  final RedisClusterDay day;

  final RedisClusterWeeklyMaintenanceWindowStartTime startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// `day` — derived from the provider schema description.
extension type const RedisClusterDay._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterDay.variable(String name) : this._(TfArg.variable(name));
  RedisClusterDay.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterDay.arg(TfArg<String> arg) : this._(arg);

  static const dayOfWeekUnspecified = RedisClusterDay._(
    TfArgLiteral('DAY_OF_WEEK_UNSPECIFIED'),
  );
  static const monday = RedisClusterDay._(TfArgLiteral('MONDAY'));
  static const tuesday = RedisClusterDay._(TfArgLiteral('TUESDAY'));
  static const wednesday = RedisClusterDay._(TfArgLiteral('WEDNESDAY'));
  static const thursday = RedisClusterDay._(TfArgLiteral('THURSDAY'));
  static const friday = RedisClusterDay._(TfArgLiteral('FRIDAY'));
  static const saturday = RedisClusterDay._(TfArgLiteral('SATURDAY'));
  static const sunday = RedisClusterDay._(TfArgLiteral('SUNDAY'));

  static const List<RedisClusterDay> values = [
    dayOfWeekUnspecified,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// Typed helper for the `maintenance_policy.weekly_maintenance_window.start_time` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterWeeklyMaintenanceWindowStartTime {
  const RedisClusterWeeklyMaintenanceWindowStartTime({
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
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
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

  final RedisClusterPersistenceConfigMode? mode;

  final RedisClusterAofConfig? aofConfig;

  final RedisClusterRdbConfig? rdbConfig;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'aof_config': ?aofConfig?.encode(),
    'rdb_config': ?rdbConfig?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const RedisClusterPersistenceConfigMode._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterPersistenceConfigMode.variable(String name)
    : this._(TfArg.variable(name));
  RedisClusterPersistenceConfigMode.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterPersistenceConfigMode.arg(TfArg<String> arg) : this._(arg);

  static const persistenceModeUnspecified = RedisClusterPersistenceConfigMode._(
    TfArgLiteral('PERSISTENCE_MODE_UNSPECIFIED'),
  );
  static const disabled = RedisClusterPersistenceConfigMode._(
    TfArgLiteral('DISABLED'),
  );
  static const rdb = RedisClusterPersistenceConfigMode._(TfArgLiteral('RDB'));
  static const aof = RedisClusterPersistenceConfigMode._(TfArgLiteral('AOF'));

  static const List<RedisClusterPersistenceConfigMode> values = [
    persistenceModeUnspecified,
    disabled,
    rdb,
    aof,
  ];
}

/// Typed helper for the `persistence_config.aof_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterAofConfig {
  const RedisClusterAofConfig({this.appendFsync});

  final RedisClusterAppendFsync? appendFsync;

  Map<String, Object?> encode() => {'append_fsync': ?appendFsync?.toTfJson()};
}

/// `append_fsync` — derived from the provider schema description.
extension type const RedisClusterAppendFsync._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterAppendFsync.variable(String name) : this._(TfArg.variable(name));
  RedisClusterAppendFsync.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterAppendFsync.arg(TfArg<String> arg) : this._(arg);

  static const appendFsyncUnspecified = RedisClusterAppendFsync._(
    TfArgLiteral('APPEND_FSYNC_UNSPECIFIED'),
  );
  static const no = RedisClusterAppendFsync._(TfArgLiteral('NO'));
  static const everysec = RedisClusterAppendFsync._(TfArgLiteral('EVERYSEC'));
  static const always = RedisClusterAppendFsync._(TfArgLiteral('ALWAYS'));

  static const List<RedisClusterAppendFsync> values = [
    appendFsyncUnspecified,
    no,
    everysec,
    always,
  ];
}

/// Typed helper for the `persistence_config.rdb_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterRdbConfig {
  const RedisClusterRdbConfig({
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  final RedisClusterRdbSnapshotPeriod? rdbSnapshotPeriod;

  final TfArg<String>? rdbSnapshotStartTime;

  Map<String, Object?> encode() => {
    'rdb_snapshot_period': ?rdbSnapshotPeriod?.toTfJson(),
    'rdb_snapshot_start_time': ?rdbSnapshotStartTime?.toTfJson(),
  };
}

/// `rdb_snapshot_period` — derived from the provider schema description.
extension type const RedisClusterRdbSnapshotPeriod._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterRdbSnapshotPeriod.variable(String name)
    : this._(TfArg.variable(name));
  RedisClusterRdbSnapshotPeriod.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterRdbSnapshotPeriod.arg(TfArg<String> arg) : this._(arg);

  static const snapshotPeriodUnspecified = RedisClusterRdbSnapshotPeriod._(
    TfArgLiteral('SNAPSHOT_PERIOD_UNSPECIFIED'),
  );
  static const oneHour = RedisClusterRdbSnapshotPeriod._(
    TfArgLiteral('ONE_HOUR'),
  );
  static const sixHours = RedisClusterRdbSnapshotPeriod._(
    TfArgLiteral('SIX_HOURS'),
  );
  static const twelveHours = RedisClusterRdbSnapshotPeriod._(
    TfArgLiteral('TWELVE_HOURS'),
  );
  static const twentyFourHours = RedisClusterRdbSnapshotPeriod._(
    TfArgLiteral('TWENTY_FOUR_HOURS'),
  );

  static const List<RedisClusterRdbSnapshotPeriod> values = [
    snapshotPeriodUnspecified,
    oneHour,
    sixHours,
    twelveHours,
    twentyFourHours,
  ];
}

/// Typed helper for the `psc_configs` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterPscConfigs {
  const RedisClusterPscConfigs({required this.network});

  final RefTo<GoogleComputeNetwork> network;

  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `zone_distribution_config` block of
/// `google_redis_cluster` (derived from provider schema).
@immutable
final class RedisClusterZoneDistributionConfig {
  const RedisClusterZoneDistributionConfig({this.mode, this.zone});

  final RedisClusterZoneDistributionConfigMode? mode;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'zone': ?zone?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const RedisClusterZoneDistributionConfigMode._(TfArg<String> _)
    implements TfArg<String> {
  RedisClusterZoneDistributionConfigMode.variable(String name)
    : this._(TfArg.variable(name));
  RedisClusterZoneDistributionConfigMode.expression(String template)
    : this._(TfArg.expression(template));
  const RedisClusterZoneDistributionConfigMode.arg(TfArg<String> arg)
    : this._(arg);

  static const multiZone = RedisClusterZoneDistributionConfigMode._(
    TfArgLiteral('MULTI_ZONE'),
  );
  static const singleZone = RedisClusterZoneDistributionConfigMode._(
    TfArgLiteral('SINGLE_ZONE'),
  );

  static const List<RedisClusterZoneDistributionConfigMode> values = [
    multiZone,
    singleZone,
  ];
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
///   'rc',
///   name: TfArg.literal('terradart-rc'),
///   region: TfArg.literal('us-central1'),
///   shardCount: TfArg.literal(1),
///   replicaCount: TfArg.literal(0),
///   nodeType: RedisClusterNodeType.redisSharedCoreNano,
///   pscConfigs: [
///     RedisClusterPscConfigs(network: network.ref),
///   ],
///   deletionProtectionEnabled: TfArg.literal(false),
/// );
/// ```
final class GoogleRedisCluster extends Resource {
  static const String tfType = 'google_redis_cluster';

  GoogleRedisCluster(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<num> shardCount,
    TfArg<num>? replicaCount,
    RedisClusterNodeType? nodeType,
    List<RedisClusterPscConfigs>? pscConfigs,
    RedisClusterAuthorizationMode? authorizationMode,
    RedisClusterTransitEncryptionMode? transitEncryptionMode,
    TfArg<Map<String, String>>? redisConfigs,
    RedisClusterPersistenceConfig? persistenceConfig,
    RedisClusterZoneDistributionConfig? zoneDistributionConfig,
    RedisClusterMaintenancePolicy? maintenancePolicy,
    RedisClusterAutomatedBackupConfig? automatedBackupConfig,
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? aclPolicy,
    TfArg<String>? maintenanceVersion,
    RedisClusterServerCaMode? serverCaMode,
    TfArg<String>? serverCaPool,
    RedisClusterCrossClusterReplicationConfig? crossClusterReplicationConfig,
    RedisClusterSource? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'shard_count': shardCount,
           'replica_count': ?replicaCount,
           'node_type': ?nodeType,
           if (pscConfigs != null)
             'psc_configs': TfArg.literal([
               for (final e in pscConfigs) e.encode(),
             ]),
           'authorization_mode': ?authorizationMode,
           'transit_encryption_mode': ?transitEncryptionMode,
           'redis_configs': ?redisConfigs,
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
           'kms_key': ?kmsKey?.encodeAs('id'),
           'labels': ?labels,
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'acl_policy': ?aclPolicy,
           'maintenance_version': ?maintenanceVersion,
           'server_ca_mode': ?serverCaMode,
           'server_ca_pool': ?serverCaPool,
           if (crossClusterReplicationConfig != null)
             'cross_cluster_replication_config': TfArg.literal(
               crossClusterReplicationConfig.encode(),
             ),
           ...?source?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRedisCluster>`.
  RefTo<GoogleRedisCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `is_acl_policy_in_sync` attribute.
  TfRef<bool> get isAclPolicyInSync =>
      TfRef.attribute<bool>(this, 'is_acl_policy_in_sync');

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

  /// Reference to `acl_policy` attribute.
  TfRef<String> get aclPolicy => TfRef.attribute<String>(this, 'acl_policy');

  /// Reference to `authorization_mode` attribute.
  TfRef<String> get authorizationMode =>
      TfRef.attribute<String>(this, 'authorization_mode');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `maintenance_version` attribute.
  TfRef<String> get maintenanceVersion =>
      TfRef.attribute<String>(this, 'maintenance_version');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `redis_configs` attribute.
  TfRef<Map<String, String>> get redisConfigs =>
      TfRef.attribute<Map<String, String>>(this, 'redis_configs');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCount => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `server_ca_mode` attribute.
  TfRef<String> get serverCaMode =>
      TfRef.attribute<String>(this, 'server_ca_mode');

  /// Reference to `server_ca_pool` attribute.
  TfRef<String> get serverCaPool =>
      TfRef.attribute<String>(this, 'server_ca_pool');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCount => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `transit_encryption_mode` attribute.
  TfRef<String> get transitEncryptionMode =>
      TfRef.attribute<String>(this, 'transit_encryption_mode');
}
