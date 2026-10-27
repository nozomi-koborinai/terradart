// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_snapshot_policy`.
const Set<String> _azurermNetappSnapshotPolicySensitive = <String>{};

/// Typed helper for the `daily_schedule` block of
/// `azurerm_netapp_snapshot_policy` (derived from provider schema).
@immutable
final class NetappSnapshotPolicyDailySchedule {
  const NetappSnapshotPolicyDailySchedule({
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<num> hour;

  final TfArg<num> minute;

  final TfArg<num> snapshotsToKeep;

  @internal
  Map<String, Object?> encode() => {
    'hour': hour.toTfJson(),
    'minute': minute.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `hourly_schedule` block of
/// `azurerm_netapp_snapshot_policy` (derived from provider schema).
@immutable
final class NetappSnapshotPolicyHourlySchedule {
  const NetappSnapshotPolicyHourlySchedule({
    required this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<num> minute;

  final TfArg<num> snapshotsToKeep;

  @internal
  Map<String, Object?> encode() => {
    'minute': minute.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `monthly_schedule` block of
/// `azurerm_netapp_snapshot_policy` (derived from provider schema).
@immutable
final class NetappSnapshotPolicyMonthlySchedule {
  const NetappSnapshotPolicyMonthlySchedule({
    required this.daysOfMonth,
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<List<num>> daysOfMonth;

  final TfArg<num> hour;

  final TfArg<num> minute;

  final TfArg<num> snapshotsToKeep;

  @internal
  Map<String, Object?> encode() => {
    'days_of_month': daysOfMonth.toTfJson(),
    'hour': hour.toTfJson(),
    'minute': minute.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `weekly_schedule` block of
/// `azurerm_netapp_snapshot_policy` (derived from provider schema).
@immutable
final class NetappSnapshotPolicyWeeklySchedule {
  const NetappSnapshotPolicyWeeklySchedule({
    required this.daysOfWeek,
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<List<String>> daysOfWeek;

  final TfArg<num> hour;

  final TfArg<num> minute;

  final TfArg<num> snapshotsToKeep;

  @internal
  Map<String, Object?> encode() => {
    'days_of_week': daysOfWeek.toTfJson(),
    'hour': hour.toTfJson(),
    'minute': minute.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_netapp_snapshot_policy`.
final class AzurermNetappSnapshotPolicy extends Resource {
  static const String tfType = 'azurerm_netapp_snapshot_policy';

  AzurermNetappSnapshotPolicy(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<bool> enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    NetappSnapshotPolicyDailySchedule? dailySchedule,
    NetappSnapshotPolicyHourlySchedule? hourlySchedule,
    NetappSnapshotPolicyMonthlySchedule? monthlySchedule,
    NetappSnapshotPolicyWeeklySchedule? weeklySchedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'enabled': enabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (dailySchedule != null)
             'daily_schedule': TfArg.literal(dailySchedule.encode()),
           if (hourlySchedule != null)
             'hourly_schedule': TfArg.literal(hourlySchedule.encode()),
           if (monthlySchedule != null)
             'monthly_schedule': TfArg.literal(monthlySchedule.encode()),
           if (weeklySchedule != null)
             'weekly_schedule': TfArg.literal(weeklySchedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappSnapshotPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappSnapshotPolicy>`.
  RefTo<AzurermNetappSnapshotPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
