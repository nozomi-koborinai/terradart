// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_redis_instance`.
const Set<String> _googleRedisInstanceSensitive = <String>{'auth_string'};

/// `tier` — Memorystore service tier.
enum RedisInstanceTier implements TerraformEnum {
  basic('BASIC'),
  standardHa('STANDARD_HA');

  const RedisInstanceTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// `connect_mode` — how clients reach the instance.
enum RedisInstanceConnectMode implements TerraformEnum {
  directPeering('DIRECT_PEERING'),
  privateServiceAccess('PRIVATE_SERVICE_ACCESS');

  const RedisInstanceConnectMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `transit_encryption_mode` — in-transit TLS mode (provider default
/// `DISABLED`). When `SERVER_AUTHENTICATION` is set, clients verify the
/// server against [GoogleRedisInstance.serverCaCerts].
enum RedisInstanceTransitEncryptionMode implements TerraformEnum {
  serverAuthentication('SERVER_AUTHENTICATION'),
  disabled('DISABLED');

  const RedisInstanceTransitEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `read_replicas_mode` — read replica support (`STANDARD_HA` tier only;
/// pair with `replica_count`).
enum RedisInstanceReadReplicasMode implements TerraformEnum {
  readReplicasDisabled('READ_REPLICAS_DISABLED'),
  readReplicasEnabled('READ_REPLICAS_ENABLED');

  const RedisInstanceReadReplicasMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `weekly_maintenance_window.day` on `google_redis_instance`.
enum RedisInstanceWeeklyMaintenanceDay implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const RedisInstanceWeeklyMaintenanceDay(this.terraformValue);
  @override
  final String terraformValue;
}

/// `persistence_config.persistence_mode` on `google_redis_instance`.
enum RedisInstancePersistenceMode implements TerraformEnum {
  disabled('DISABLED'),
  rdb('RDB');

  const RedisInstancePersistenceMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `persistence_config.rdb_snapshot_period` on `google_redis_instance`.
enum RedisInstanceRdbSnapshotPeriod implements TerraformEnum {
  oneHour('ONE_HOUR'),
  sixHours('SIX_HOURS'),
  twelveHours('TWELVE_HOURS'),
  twentyFourHours('TWENTY_FOUR_HOURS');

  const RedisInstanceRdbSnapshotPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `weekly_maintenance_window.start_time` nested block (required, max=1) —
/// UTC time of day the maintenance window opens (`google.type.TimeOfDay`;
/// unset fields default to 0).
class RedisInstanceMaintenanceStartTime {
  const RedisInstanceMaintenanceStartTime({
    this.hours,
    this.minutes,
    this.seconds,
    this.nanos,
  });

  /// Hour of day in UTC (0-23).
  final TfArg<num>? hours;

  /// Minutes of hour (0-59).
  final TfArg<num>? minutes;

  final TfArg<num>? seconds;
  final TfArg<num>? nanos;

  Map<String, Object?> toArgMap() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
  };
}

/// `weekly_maintenance_window` nested block — the weekly window
/// maintenance updates may start in. The provider requires [startTime]
/// (`start_time` carries `min_items = 1`).
class RedisInstanceWeeklyMaintenanceWindow {
  const RedisInstanceWeeklyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  final TfArg<RedisInstanceWeeklyMaintenanceDay> day;
  final RedisInstanceMaintenanceStartTime startTime;

  Map<String, Object?> toArgMap() => {
    'day': day.toTfJson(),
    'start_time': [startTime.toArgMap()],
  };
}

/// `maintenance_policy` nested block (max=1).
class RedisInstanceMaintenancePolicy {
  const RedisInstanceMaintenancePolicy({required this.weeklyMaintenanceWindow});

  final RedisInstanceWeeklyMaintenanceWindow weeklyMaintenanceWindow;

  Map<String, Object?> toArgMap() => {
    'weekly_maintenance_window': [weeklyMaintenanceWindow.toArgMap()],
  };
}

/// `persistence_config` nested block (max=1).
///
/// Set [persistenceMode] to [RedisInstancePersistenceMode.rdb] to turn
/// RDB snapshots on; [rdbSnapshotPeriod] then controls the cadence.
class RedisInstancePersistenceConfig {
  const RedisInstancePersistenceConfig({
    this.persistenceMode,
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  final TfArg<RedisInstancePersistenceMode>? persistenceMode;

  final TfArg<RedisInstanceRdbSnapshotPeriod>? rdbSnapshotPeriod;

  /// RFC3339 timestamp the first snapshot was/will be attempted at, and
  /// to which future snapshots align.
  final TfArg<String>? rdbSnapshotStartTime;

  Map<String, Object?> toArgMap() => {
    if (persistenceMode != null)
      'persistence_mode': persistenceMode!.toTfJson(),
    if (rdbSnapshotPeriod != null)
      'rdb_snapshot_period': rdbSnapshotPeriod!.toTfJson(),
    if (rdbSnapshotStartTime != null)
      'rdb_snapshot_start_time': rdbSnapshotStartTime!.toTfJson(),
  };
}

/// Factory wrapper for `google_redis_instance`.
///
/// A Google Cloud Redis instance.
///
/// Memorystore for Redis instance — managed Redis for app caches and sessions.
///
/// Pair with [GoogleVpcAccessConnector] (Cloud Run) or GCE/GKE workloads on
/// the same VPC via [authorizedNetwork].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: instance ID.
/// - [memorySizeGb]: memory size in GiB.
///
/// Optional hardening / operations:
/// - [authEnabled] turns Redis AUTH on (read the password via [authString]).
/// - [transitEncryptionMode] enables in-transit TLS ([serverCaCerts]).
/// - [replicaCount] / [readReplicasMode] add read replicas on
///   `STANDARD_HA` instances ([readEndpoint], [readEndpointPort]).
/// - [maintenancePolicy] pins the weekly maintenance window.
/// - [persistenceConfig] turns on RDB snapshots.
///
/// Enable `redis.googleapis.com` via [GoogleProjectService] or
/// [ApisEnablement.enable] before apply.
///
/// Example (basic tier on the default VPC):
/// ```dart
/// GoogleRedisInstance(
///   localName: 'cache',
///   name: TfArg.literal('api-cache'),
///   memorySizeGb: TfArg.literal(1),
///   region: TfArg.literal('us-central1'),
///   tier: TfArg.literal(RedisInstanceTier.basic),
///   authorizedNetwork: TfArg.literal('default'),
/// );
/// ```
final class GoogleRedisInstance extends Resource {
  static const String tfType = 'google_redis_instance';

  GoogleRedisInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<num> memorySizeGb,
    TfArg<String>? region,
    TfArg<RedisInstanceTier>? tier,
    TfArg<String>? authorizedNetwork,
    TfArg<RedisInstanceConnectMode>? connectMode,
    TfArg<bool>? authEnabled,
    TfArg<RedisInstanceTransitEncryptionMode>? transitEncryptionMode,
    TfArg<num>? replicaCount,
    TfArg<RedisInstanceReadReplicasMode>? readReplicasMode,
    TfArg<String>? redisVersion,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    RedisInstanceMaintenancePolicy? maintenancePolicy,
    RedisInstancePersistenceConfig? persistenceConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'memory_size_gb': memorySizeGb,
           if (region != null) 'region': region,
           if (tier != null) 'tier': tier,
           if (authorizedNetwork != null)
             'authorized_network': authorizedNetwork,
           if (connectMode != null) 'connect_mode': connectMode,
           if (authEnabled != null) 'auth_enabled': authEnabled,
           if (transitEncryptionMode != null)
             'transit_encryption_mode': transitEncryptionMode,
           if (replicaCount != null) 'replica_count': replicaCount,
           if (readReplicasMode != null) 'read_replicas_mode': readReplicasMode,
           if (redisVersion != null) 'redis_version': redisVersion,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal([
               maintenancePolicy.toArgMap(),
             ]),
           if (persistenceConfig != null)
             'persistence_config': TfArg.literal([
               persistenceConfig.toArgMap(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auth_string` attribute.
  TfRef<String> get authString => TfRef.attribute<String>(this, 'auth_string');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `current_location_id` attribute.
  TfRef<String> get currentLocationId =>
      TfRef.attribute<String>(this, 'current_location_id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_reserved_ip_range` attribute.
  TfRef<String> get effectiveReservedIpRange =>
      TfRef.attribute<String>(this, 'effective_reserved_ip_range');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `nodes` attribute.
  TfRef<List<Map<String, Object?>>> get nodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nodes');

  /// Reference to `persistence_iam_identity` attribute.
  TfRef<String> get persistenceIamIdentity =>
      TfRef.attribute<String>(this, 'persistence_iam_identity');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `read_endpoint` attribute.
  TfRef<String> get readEndpoint =>
      TfRef.attribute<String>(this, 'read_endpoint');

  /// Reference to `read_endpoint_port` attribute.
  TfRef<num> get readEndpointPort =>
      TfRef.attribute<num>(this, 'read_endpoint_port');

  /// Reference to `server_ca_certs` attribute.
  TfRef<List<Map<String, Object?>>> get serverCaCerts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'server_ca_certs');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
