// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_memcache_instance`.
const Set<String> _googleMemcacheInstanceSensitive = <String>{};

/// `memcache_version` — major Memcached software version.
enum MemcacheInstanceVersion implements TerraformEnum {
  memcache15('MEMCACHE_1_5'),
  memcache1615('MEMCACHE_1_6_15');

  const MemcacheInstanceVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `weekly_maintenance_window.day` on `google_memcache_instance`.
enum MemcacheInstanceWeeklyMaintenanceDay implements TerraformEnum {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const MemcacheInstanceWeeklyMaintenanceDay(this.terraformValue);
  @override
  final String terraformValue;
}

/// `maintenance_policy.weekly_maintenance_window` nested block.
class MemcacheInstanceWeeklyMaintenanceWindow {
  const MemcacheInstanceWeeklyMaintenanceWindow({this.day});

  final MemcacheInstanceWeeklyMaintenanceDay? day;

  Map<String, Object?> toArgMap() => {
    if (day != null) 'day': day!.terraformValue,
  };
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

/// Factory wrapper for `google_memcache_instance`.
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
/// [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleMemcacheInstance(
///   localName: 'sessions',
///   name: TfArg.literal('api-sessions'),
///   nodeCount: TfArg.literal(1),
///   nodeConfig: MemcacheInstanceNodeConfig(
///     cpuCount: TfArg.literal(1),
///     memorySizeMb: TfArg.literal(1024),
///   ),
///   region: TfArg.literal('asia-northeast1'),
///   authorizedNetwork: TfArg.literal('default'),
/// );
/// ```
final class GoogleMemcacheInstance extends Resource {
  static const String tfType = 'google_memcache_instance';

  GoogleMemcacheInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<num> nodeCount,
    required MemcacheInstanceNodeConfig nodeConfig,
    TfArg<String>? region,
    TfArg<String>? authorizedNetwork,
    TfArg<MemcacheInstanceVersion>? memcacheVersion,
    TfArg<String>? displayName,
    MemcacheInstanceMaintenancePolicy? maintenancePolicy,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'node_count': nodeCount,
           'node_config': TfArg.literal([nodeConfig.toArgMap()]),
           if (region != null) 'region': region,
           if (authorizedNetwork != null)
             'authorized_network': authorizedNetwork,
           if (memcacheVersion != null) 'memcache_version': memcacheVersion,
           if (displayName != null) 'display_name': displayName,
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal([
               maintenancePolicy.toArgMap(),
             ]),
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMemcacheInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
