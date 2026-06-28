// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_resource_policy`.
const Set<String> _googleComputeResourcePolicySensitive = <String>{};

/// Day of week for a weekly snapshot schedule.
enum ComputeResourcePolicySnapshotDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const ComputeResourcePolicySnapshotDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Behaviour when the source disk of a scheduled snapshot is deleted.
enum ComputeResourcePolicyOnSourceDiskDelete implements TerraformEnum {
  /// Keep auto-created snapshots when the source disk is deleted.
  keepAutoSnapshots('KEEP_AUTO_SNAPSHOTS'),

  /// Apply the retention policy to auto-created snapshots.
  applyRetentionPolicy('APPLY_RETENTION_POLICY');

  const ComputeResourcePolicyOnSourceDiskDelete(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workload-placement intent for a [GoogleComputeResourcePolicy].
enum ComputeResourcePolicyWorkloadType implements TerraformEnum {
  /// Spread instances to maximize availability.
  highAvailability('HIGH_AVAILABILITY'),

  /// Pack instances to maximize throughput.
  highThroughput('HIGH_THROUGHPUT');

  const ComputeResourcePolicyWorkloadType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Maximum topology distance for a high-throughput workload policy.
enum ComputeResourcePolicyMaxTopologyDistance implements TerraformEnum {
  block('BLOCK'),
  cluster('CLUSTER'),
  subblock('SUBBLOCK');

  const ComputeResourcePolicyMaxTopologyDistance(this.terraformValue);
  @override
  final String terraformValue;
}

/// One entry of a weekly snapshot schedule.
@immutable
class ComputeResourcePolicyDayOfWeek {
  const ComputeResourcePolicyDayOfWeek({
    required this.day,
    required this.startTime,
  });

  final TfArg<ComputeResourcePolicySnapshotDayOfWeek> day;

  /// Start time in `HH:MM` (UTC).
  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Snapshot cadence — choose exactly one of hourly / daily / weekly.
sealed class ComputeResourcePolicySnapshotSchedule {
  const ComputeResourcePolicySnapshotSchedule();

  Map<String, Object?> encode();
}

/// Hourly snapshot schedule.
@immutable
final class ComputeResourcePolicyHourlySchedule
    extends ComputeResourcePolicySnapshotSchedule {
  const ComputeResourcePolicyHourlySchedule({
    required this.hoursInCycle,
    required this.startTime,
  });

  final TfArg<int> hoursInCycle;
  final TfArg<String> startTime;

  @override
  Map<String, Object?> encode() => {
    'hourly_schedule': {
      'hours_in_cycle': hoursInCycle.toTfJson(),
      'start_time': startTime.toTfJson(),
    },
  };
}

/// Daily snapshot schedule.
@immutable
final class ComputeResourcePolicyDailySchedule
    extends ComputeResourcePolicySnapshotSchedule {
  const ComputeResourcePolicyDailySchedule({
    required this.daysInCycle,
    required this.startTime,
  });

  final TfArg<int> daysInCycle;
  final TfArg<String> startTime;

  @override
  Map<String, Object?> encode() => {
    'daily_schedule': {
      'days_in_cycle': daysInCycle.toTfJson(),
      'start_time': startTime.toTfJson(),
    },
  };
}

/// Weekly snapshot schedule (one or more [ComputeResourcePolicyDayOfWeek]).
@immutable
final class ComputeResourcePolicyWeeklySchedule
    extends ComputeResourcePolicySnapshotSchedule {
  const ComputeResourcePolicyWeeklySchedule(this.dayOfWeeks);

  final List<ComputeResourcePolicyDayOfWeek> dayOfWeeks;

  @override
  Map<String, Object?> encode() => {
    'weekly_schedule': {
      'day_of_weeks': dayOfWeeks.map((d) => d.encode()).toList(),
    },
  };
}

/// Retention policy for scheduled snapshots.
@immutable
class ComputeResourcePolicyRetentionPolicy {
  const ComputeResourcePolicyRetentionPolicy({
    required this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  final TfArg<int> maxRetentionDays;
  final TfArg<ComputeResourcePolicyOnSourceDiskDelete>? onSourceDiskDelete;

  Map<String, Object?> encode() => {
    'max_retention_days': maxRetentionDays.toTfJson(),
    if (onSourceDiskDelete != null)
      'on_source_disk_delete': onSourceDiskDelete!.toTfJson(),
  };
}

/// Properties applied to snapshots created by the schedule.
@immutable
class ComputeResourcePolicySnapshotProperties {
  const ComputeResourcePolicySnapshotProperties({
    this.labels,
    this.storageLocations,
    this.guestFlush,
    this.chainName,
  });

  final TfArg<Map<String, String>>? labels;
  final TfArg<List<String>>? storageLocations;
  final TfArg<bool>? guestFlush;
  final TfArg<String>? chainName;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (storageLocations != null)
      'storage_locations': storageLocations!.toTfJson(),
    if (guestFlush != null) 'guest_flush': guestFlush!.toTfJson(),
    if (chainName != null) 'chain_name': chainName!.toTfJson(),
  };
}

/// `snapshot_schedule_policy` block.
@immutable
class ComputeResourcePolicySnapshotSchedulePolicy {
  const ComputeResourcePolicySnapshotSchedulePolicy({
    required this.schedule,
    this.retentionPolicy,
    this.snapshotProperties,
  });

  final ComputeResourcePolicySnapshotSchedule schedule;
  final ComputeResourcePolicyRetentionPolicy? retentionPolicy;
  final ComputeResourcePolicySnapshotProperties? snapshotProperties;

  Map<String, Object?> encode() => {
    'schedule': schedule.encode(),
    if (retentionPolicy != null) 'retention_policy': retentionPolicy!.encode(),
    if (snapshotProperties != null)
      'snapshot_properties': snapshotProperties!.encode(),
  };
}

/// `workload_policy` block.
@immutable
class ComputeResourcePolicyWorkloadPolicy {
  const ComputeResourcePolicyWorkloadPolicy({
    required this.type,
    this.maxTopologyDistance,
    this.acceleratorTopology,
  });

  final TfArg<ComputeResourcePolicyWorkloadType> type;
  final TfArg<ComputeResourcePolicyMaxTopologyDistance>? maxTopologyDistance;
  final TfArg<String>? acceleratorTopology;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (maxTopologyDistance != null)
      'max_topology_distance': maxTopologyDistance!.toTfJson(),
    if (acceleratorTopology != null)
      'accelerator_topology': acceleratorTopology!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_resource_policy`.
///
/// A policy that can be attached to a resource to specify or schedule actions
/// on that resource.
///
/// A Compute Engine resource policy. Attach **exactly one** policy kind:
/// - [snapshotSchedulePolicy] — scheduled persistent-disk snapshots;
/// - [workloadPolicy] — instance placement for HA / throughput workloads;
/// - [groupPlacementPolicy] / [instanceSchedulePolicy] /
///   [diskConsistencyGroupPolicy] — passed as structured maps.
///
/// Example (daily snapshot schedule, keep 7 days):
/// ```dart
/// GoogleComputeResourcePolicy(
///   localName: 'daily_snapshots',
///   name: TfArg.literal('daily-snapshots'),
///   region: TfArg.literal('us-central1'),
///   snapshotSchedulePolicy: ComputeResourcePolicySnapshotSchedulePolicy(
///     schedule: ComputeResourcePolicyDailySchedule(
///       daysInCycle: TfArg.literal(1),
///       startTime: TfArg.literal('04:00'),
///     ),
///     retentionPolicy: ComputeResourcePolicyRetentionPolicy(
///       maxRetentionDays: TfArg.literal(7),
///       onSourceDiskDelete: TfArg.literal(
///         ComputeResourcePolicyOnSourceDiskDelete.applyRetentionPolicy),
///     ),
///   ),
/// );
/// ```
final class GoogleComputeResourcePolicy extends Resource {
  static const String tfType = 'google_compute_resource_policy';

  GoogleComputeResourcePolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    ComputeResourcePolicySnapshotSchedulePolicy? snapshotSchedulePolicy,
    ComputeResourcePolicyWorkloadPolicy? workloadPolicy,
    TfArg<Map<String, dynamic>>? groupPlacementPolicy,
    TfArg<Map<String, dynamic>>? instanceSchedulePolicy,
    TfArg<Map<String, dynamic>>? diskConsistencyGroupPolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (snapshotSchedulePolicy != null)
             'snapshot_schedule_policy': TfArg.literal(
               snapshotSchedulePolicy.encode(),
             ),
           if (workloadPolicy != null)
             'workload_policy': TfArg.literal(workloadPolicy.encode()),
           if (groupPlacementPolicy != null)
             'group_placement_policy': groupPlacementPolicy,
           if (instanceSchedulePolicy != null)
             'instance_schedule_policy': instanceSchedulePolicy,
           if (diskConsistencyGroupPolicy != null)
             'disk_consistency_group_policy': diskConsistencyGroupPolicy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeResourcePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
