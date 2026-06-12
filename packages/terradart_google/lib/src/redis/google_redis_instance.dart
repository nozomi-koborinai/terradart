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

/// `weekly_maintenance_window` nested block (max=1).
class RedisInstanceWeeklyMaintenanceWindow {
  const RedisInstanceWeeklyMaintenanceWindow({required this.day});

  final TfArg<RedisInstanceWeeklyMaintenanceDay> day;

  Map<String, Object?> toArgMap() => {'day': day.toTfJson()};
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
class RedisInstancePersistenceConfig {
  const RedisInstancePersistenceConfig({this.rdbSnapshotPeriod});

  final TfArg<RedisInstanceRdbSnapshotPeriod>? rdbSnapshotPeriod;

  Map<String, Object?> toArgMap() => {
    if (rdbSnapshotPeriod != null)
      'rdb_snapshot_period': rdbSnapshotPeriod!.toTfJson(),
  };
}

/// Factory wrapper for `google_redis_instance`.
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
    TfArg<String>? redisVersion,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
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
           if (redisVersion != null) 'redis_version': redisVersion,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
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
