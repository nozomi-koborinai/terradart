// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_lustre_instance`.
const Set<String> _googleLustreInstanceSensitive = <String>{};

/// Typed helper for the `access_rules_options` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceAccessRulesOptions {
  const LustreInstanceAccessRulesOptions({
    this.defaultSquashGid,
    required this.defaultSquashMode,
    this.defaultSquashUid,
    this.accessRules,
  });

  final TfArg<num>? defaultSquashGid;

  final TfArg<String> defaultSquashMode;

  final TfArg<num>? defaultSquashUid;

  final List<LustreInstanceAccessRules>? accessRules;

  Map<String, Object?> encode() => {
    'default_squash_gid': ?defaultSquashGid?.toTfJson(),
    'default_squash_mode': defaultSquashMode.toTfJson(),
    'default_squash_uid': ?defaultSquashUid?.toTfJson(),
    if (accessRules != null)
      'access_rules': [for (final e in accessRules!) e.encode()],
  };
}

/// Typed helper for the `access_rules_options.access_rules` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceAccessRules {
  const LustreInstanceAccessRules({
    required this.ipAddressRanges,
    required this.name,
    required this.squashMode,
  });

  final TfArg<List<String>> ipAddressRanges;

  final TfArg<String> name;

  final TfArg<String> squashMode;

  Map<String, Object?> encode() => {
    'ip_address_ranges': ipAddressRanges.toTfJson(),
    'name': name.toTfJson(),
    'squash_mode': squashMode.toTfJson(),
  };
}

/// Typed helper for the `dynamic_tier_options` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceDynamicTierOptions {
  const LustreInstanceDynamicTierOptions({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Typed helper for the `maintenance_policy` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceMaintenancePolicy {
  const LustreInstanceMaintenancePolicy({
    this.maintenanceExclusionWindow,
    required this.weeklyMaintenanceWindows,
  });

  final LustreInstanceMaintenanceExclusionWindow? maintenanceExclusionWindow;

  final LustreInstanceWeeklyMaintenanceWindows weeklyMaintenanceWindows;

  Map<String, Object?> encode() => {
    'maintenance_exclusion_window': ?maintenanceExclusionWindow?.encode(),
    'weekly_maintenance_windows': weeklyMaintenanceWindows.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusion_window` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceMaintenanceExclusionWindow {
  const LustreInstanceMaintenanceExclusionWindow({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  final LustreInstanceEndDate endDate;

  final LustreInstanceStartDate startDate;

  final LustreInstanceTime time;

  Map<String, Object?> encode() => {
    'end_date': endDate.encode(),
    'start_date': startDate.encode(),
    'time': time.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusion_window.end_date` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceEndDate {
  const LustreInstanceEndDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusion_window.start_date` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceStartDate {
  const LustreInstanceStartDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusion_window.time` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceTime {
  const LustreInstanceTime({
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

/// Typed helper for the `maintenance_policy.weekly_maintenance_windows` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceWeeklyMaintenanceWindows {
  const LustreInstanceWeeklyMaintenanceWindows({
    required this.dayOfWeek,
    required this.startTime,
  });

  final TfArg<String> dayOfWeek;

  final LustreInstanceStartTime startTime;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// Typed helper for the `maintenance_policy.weekly_maintenance_windows.start_time` block of
/// `google_lustre_instance` (derived from provider schema).
@immutable
final class LustreInstanceStartTime {
  const LustreInstanceStartTime({
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

/// Factory wrapper for `google_lustre_instance`.
///
/// A Managed Lustre instance
///
/// Managed Lustre **instance** — Google-managed Lustre parallel file
/// system capacity.
///
/// **Cost:** Managed Lustre `B384-1FDE-A709` bills provisioned capacity
/// while the instance exists — e.g. Capacity 125-Perf us-central1
/// (Iowa) SKU `517C-E77D-C11A` **$0.145/GiBy·mo** (250/500/1000-Perf and
/// Dynamic-Perf SKUs also listed). Destroy stops capacity charges. TiB-scale
/// minimums make this too expensive for apply-smoke — ships without a
/// quickstart (`tool/example_debt.yaml`).
///
/// Enable `lustre.googleapis.com` via [GoogleProjectService] before apply.
/// [network] is a VPC network self-link / id; [capacityGib] is provisioned
/// size.
final class GoogleLustreInstance extends Resource {
  static const String tfType = 'google_lustre_instance';

  GoogleLustreInstance({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> location,
    required TfArg<String> filesystem,
    required TfArg<String> capacityGib,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? description,
    TfArg<String>? perUnitStorageThroughput,
    TfArg<bool>? gkeSupportEnabled,
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    TfArg<String>? placementPolicy,
    LustreInstanceAccessRulesOptions? accessRulesOptions,
    LustreInstanceDynamicTierOptions? dynamicTierOptions,
    LustreInstanceMaintenancePolicy? maintenancePolicy,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'location': location,
           'filesystem': filesystem,
           'capacity_gib': capacityGib,
           'network': network.encodeAs('id'),
           'description': ?description,
           'per_unit_storage_throughput': ?perUnitStorageThroughput,
           'gke_support_enabled': ?gkeSupportEnabled,
           'kms_key': ?kmsKey?.encodeAs('id'),
           'placement_policy': ?placementPolicy,
           if (accessRulesOptions != null)
             'access_rules_options': TfArg.literal(accessRulesOptions.encode()),
           if (dynamicTierOptions != null)
             'dynamic_tier_options': TfArg.literal(dynamicTierOptions.encode()),
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal(maintenancePolicy.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLustreInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLustreInstance>`.
  RefTo<GoogleLustreInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `mount_point` attribute.
  TfRef<String> get mountPoint => TfRef.attribute<String>(this, 'mount_point');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<String> get stateReason =>
      TfRef.attribute<String>(this, 'state_reason');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `upcoming_maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get upcomingMaintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'upcoming_maintenance_schedule',
      );

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `capacity_gib` attribute.
  TfRef<String> get capacityGibRef =>
      TfRef.attribute<String>(this, 'capacity_gib');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `filesystem` attribute.
  TfRef<String> get filesystemRef =>
      TfRef.attribute<String>(this, 'filesystem');

  /// Reference to `gke_support_enabled` attribute.
  TfRef<bool> get gkeSupportEnabledRef =>
      TfRef.attribute<bool>(this, 'gke_support_enabled');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKeyRef => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `per_unit_storage_throughput` attribute.
  TfRef<String> get perUnitStorageThroughputRef =>
      TfRef.attribute<String>(this, 'per_unit_storage_throughput');

  /// Reference to `placement_policy` attribute.
  TfRef<String> get placementPolicyRef =>
      TfRef.attribute<String>(this, 'placement_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `instance_id` / name segment.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');
}
