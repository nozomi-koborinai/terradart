// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_memcache_instance`.
const Set<String> _googleMemcacheInstanceSensitive = <String>{};

/// `memcache_version` — major Memcached software version.
extension type const MemcacheInstanceVersion._(TfArg<String> _)
    implements TfArg<String> {
  MemcacheInstanceVersion.variable(String name) : this._(TfArg.variable(name));
  MemcacheInstanceVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MemcacheInstanceVersion.arg(TfArg<String> arg) : this._(arg);

  static const memcache15 = MemcacheInstanceVersion._(
    TfArgLiteral('MEMCACHE_1_5'),
  );
  static const memcache1615 = MemcacheInstanceVersion._(
    TfArgLiteral('MEMCACHE_1_6_15'),
  );

  static const List<MemcacheInstanceVersion> values = [
    memcache15,
    memcache1615,
  ];
}

/// `weekly_maintenance_window.day` on `google_memcache_instance`.
extension type const MemcacheInstanceWeeklyMaintenanceDay._(TfArg<String> _)
    implements TfArg<String> {
  MemcacheInstanceWeeklyMaintenanceDay.variable(String name)
    : this._(TfArg.variable(name));
  MemcacheInstanceWeeklyMaintenanceDay.expression(String template)
    : this._(TfArg.expression(template));
  const MemcacheInstanceWeeklyMaintenanceDay.arg(TfArg<String> arg)
    : this._(arg);

  static const dayOfWeekUnspecified = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('DAY_OF_WEEK_UNSPECIFIED'),
  );
  static const monday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('MONDAY'),
  );
  static const tuesday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('FRIDAY'),
  );
  static const saturday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = MemcacheInstanceWeeklyMaintenanceDay._(
    TfArgLiteral('SUNDAY'),
  );

  static const List<MemcacheInstanceWeeklyMaintenanceDay> values = [
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

/// `maintenance_policy.weekly_maintenance_window` nested block.
class MemcacheInstanceWeeklyMaintenanceWindow {
  const MemcacheInstanceWeeklyMaintenanceWindow({this.day});

  final MemcacheInstanceWeeklyMaintenanceDay? day;

  Map<String, Object?> toArgMap() => {if (day != null) 'day': day!.toTfJson()};
}

/// `node_config` nested block (required, max=1).
class MemcacheInstanceNodeConfig {
  const MemcacheInstanceNodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  final TfArg<num> cpuCount;
  final TfArg<num> memorySizeMb;

  Map<String, Object?> toArgMap() => {
    'cpu_count': cpuCount.toTfJson(),
    'memory_size_mb': memorySizeMb.toTfJson(),
  };
}

/// `maintenance_policy` nested block (max=1).
class MemcacheInstanceMaintenancePolicy {
  const MemcacheInstanceMaintenancePolicy({this.weeklyMaintenanceWindow});

  final MemcacheInstanceWeeklyMaintenanceWindow? weeklyMaintenanceWindow;

  Map<String, Object?> toArgMap() => {
    if (weeklyMaintenanceWindow != null)
      'weekly_maintenance_window': [weeklyMaintenanceWindow!.toArgMap()],
  };
}

/// Typed helper for the `memcache_parameters` block of
/// `google_memcache_instance` (derived from provider schema).
@immutable
final class MemcacheInstanceMemcacheParameters {
  const MemcacheInstanceMemcacheParameters({this.params});

  final TfArg<Map<String, String>>? params;

  @internal
  Map<String, Object?> encode() => {'params': ?params?.toTfJson()};
}

/// Factory wrapper for `google_memcache_instance`.
///
/// A Google Cloud Memcache instance.
///
/// Memorystore for Memcached instance — managed Memcached for session caches.
///
/// Pair with [GoogleVpcAccessConnector] or GCE/GKE on the same VPC via
/// [authorizedNetwork].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: instance ID.
/// - [nodeCount]: number of Memcached nodes.
///
/// Enable `memcache.googleapis.com` via [GoogleProjectService] or
/// [StackApis.enableApis] before apply.
///
/// Example:
/// ```dart
/// GoogleMemcacheInstance(
///   'sessions',
///   name: TfArg.literal('api-sessions'),
///   nodeCount: TfArg.literal(1),
///   nodeConfig: MemcacheInstanceNodeConfig(
///     cpuCount: TfArg.literal(1),
///     memorySizeMb: TfArg.literal(1024),
///   ),
///   region: TfArg.literal('asia-northeast1'),
///   authorizedNetwork: .literal('default'),
/// );
/// ```
final class GoogleMemcacheInstance extends Resource {
  static const String tfType = 'google_memcache_instance';

  GoogleMemcacheInstance(
    super.localName, {
    required TfArg<String> name,
    required TfArg<num> nodeCount,
    required MemcacheInstanceNodeConfig nodeConfig,
    TfArg<String>? region,
    RefTo<GoogleComputeNetwork>? authorizedNetwork,
    MemcacheInstanceVersion? memcacheVersion,
    TfArg<String>? displayName,
    MemcacheInstanceMaintenancePolicy? maintenancePolicy,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    MemcacheInstanceMemcacheParameters? memcacheParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'node_count': nodeCount,
           'node_config': TfArg.literal([nodeConfig.toArgMap()]),
           'region': ?region,
           'authorized_network': ?authorizedNetwork?.encodeAs('id'),
           'memcache_version': ?memcacheVersion,
           'display_name': ?displayName,
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal([
               maintenancePolicy.toArgMap(),
             ]),
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           if (memcacheParameters != null)
             'memcache_parameters': TfArg.literal(memcacheParameters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMemcacheInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMemcacheInstance>`.
  RefTo<GoogleMemcacheInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `discovery_endpoint` attribute.
  TfRef<String> get discoveryEndpoint =>
      TfRef.attribute<String>(this, 'discovery_endpoint');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `memcache_full_version` attribute.
  TfRef<String> get memcacheFullVersion =>
      TfRef.attribute<String>(this, 'memcache_full_version');

  /// Reference to `memcache_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get memcacheNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memcache_nodes');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetwork =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `memcache_version` attribute.
  TfRef<String> get memcacheVersion =>
      TfRef.attribute<String>(this, 'memcache_version');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `reserved_ip_range_id` attribute.
  TfRef<List<String>> get reservedIpRangeId =>
      TfRef.attribute<List<String>>(this, 'reserved_ip_range_id');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
