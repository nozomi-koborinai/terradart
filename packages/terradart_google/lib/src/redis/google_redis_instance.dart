// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

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
/// [Apis.enable] before apply.
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
    RefTo<GoogleComputeNetwork>? authorizedNetwork,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'memory_size_gb': memorySizeGb,
           'region': ?region,
           'tier': ?tier,
           'authorized_network': ?authorizedNetwork?.encodeAs('id'),
           'connect_mode': ?connectMode,
           'auth_enabled': ?authEnabled,
           'transit_encryption_mode': ?transitEncryptionMode,
           'replica_count': ?replicaCount,
           'read_replicas_mode': ?readReplicasMode,
           'redis_version': ?redisVersion,
           'display_name': ?displayName,
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRedisInstance>`.
  RefTo<GoogleRedisInstance> get ref => RefTo.of(this);

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

  /// Reference to `alternative_location_id` attribute.
  TfRef<String> get alternativeLocationIdRef =>
      TfRef.attribute<String>(this, 'alternative_location_id');

  /// Reference to `auth_enabled` attribute.
  TfRef<bool> get authEnabledRef => TfRef.attribute<bool>(this, 'auth_enabled');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetworkRef =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `connect_mode` attribute.
  TfRef<String> get connectModeRef =>
      TfRef.attribute<String>(this, 'connect_mode');

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKeyRef =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location_id` attribute.
  TfRef<String> get locationIdRef =>
      TfRef.attribute<String>(this, 'location_id');

  /// Reference to `maintenance_version` attribute.
  TfRef<String> get maintenanceVersionRef =>
      TfRef.attribute<String>(this, 'maintenance_version');

  /// Reference to `memory_size_gb` attribute.
  TfRef<num> get memorySizeGbRef =>
      TfRef.attribute<num>(this, 'memory_size_gb');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `read_replicas_mode` attribute.
  TfRef<String> get readReplicasModeRef =>
      TfRef.attribute<String>(this, 'read_replicas_mode');

  /// Reference to `redis_configs` attribute.
  TfRef<Map<String, String>> get redisConfigsRef =>
      TfRef.attribute<Map<String, String>>(this, 'redis_configs');

  /// Reference to `redis_version` attribute.
  TfRef<String> get redisVersionRef =>
      TfRef.attribute<String>(this, 'redis_version');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCountRef => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `reserved_ip_range` attribute.
  TfRef<String> get reservedIpRangeRef =>
      TfRef.attribute<String>(this, 'reserved_ip_range');

  /// Reference to `secondary_ip_range` attribute.
  TfRef<String> get secondaryIpRangeRef =>
      TfRef.attribute<String>(this, 'secondary_ip_range');

  /// Reference to `tier` attribute.
  TfRef<String> get tierRef => TfRef.attribute<String>(this, 'tier');

  /// Reference to `transit_encryption_mode` attribute.
  TfRef<String> get transitEncryptionModeRef =>
      TfRef.attribute<String>(this, 'transit_encryption_mode');
}
