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

/// At most one of `snapshot_schedule_policy`, `group_placement_policy`, `instance_schedule_policy`, `disk_consistency_group_policy` on `google_compute_resource_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.snapshotSchedulePolicy(...)`.
sealed class ComputeResourcePolicyKind {
  const ComputeResourcePolicyKind();

  /// Sets `snapshot_schedule_policy`.
  const factory ComputeResourcePolicyKind.snapshotSchedulePolicy(
    ComputeResourcePolicySnapshotSchedulePolicy snapshotSchedulePolicy,
  ) = ComputeResourcePolicyKindSnapshotSchedulePolicy;

  /// Sets `group_placement_policy`.
  const factory ComputeResourcePolicyKind.groupPlacementPolicy(
    ComputeResourcePolicyGroupPlacementPolicy groupPlacementPolicy,
  ) = ComputeResourcePolicyKindGroupPlacementPolicy;

  /// Sets `instance_schedule_policy`.
  const factory ComputeResourcePolicyKind.instanceSchedulePolicy(
    ComputeResourcePolicyInstanceSchedulePolicy instanceSchedulePolicy,
  ) = ComputeResourcePolicyKindInstanceSchedulePolicy;

  /// Sets `disk_consistency_group_policy`.
  const factory ComputeResourcePolicyKind.diskConsistencyGroupPolicy(
    ComputeResourcePolicyDiskConsistencyGroupPolicy diskConsistencyGroupPolicy,
  ) = ComputeResourcePolicyKindDiskConsistencyGroupPolicy;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeResourcePolicyKind.snapshotSchedulePolicy] choice: sets `snapshot_schedule_policy`.
final class ComputeResourcePolicyKindSnapshotSchedulePolicy
    extends ComputeResourcePolicyKind {
  const ComputeResourcePolicyKindSnapshotSchedulePolicy(
    this.snapshotSchedulePolicy,
  );

  final ComputeResourcePolicySnapshotSchedulePolicy snapshotSchedulePolicy;

  @override
  String get blockKey => 'snapshot_schedule_policy';

  @override
  Map<String, Object?> encode() => {
    'snapshot_schedule_policy': snapshotSchedulePolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'snapshot_schedule_policy': TfArg.literal(snapshotSchedulePolicy.encode()),
  };
}

/// The [ComputeResourcePolicyKind.groupPlacementPolicy] choice: sets `group_placement_policy`.
final class ComputeResourcePolicyKindGroupPlacementPolicy
    extends ComputeResourcePolicyKind {
  const ComputeResourcePolicyKindGroupPlacementPolicy(
    this.groupPlacementPolicy,
  );

  final ComputeResourcePolicyGroupPlacementPolicy groupPlacementPolicy;

  @override
  String get blockKey => 'group_placement_policy';

  @override
  Map<String, Object?> encode() => {
    'group_placement_policy': groupPlacementPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'group_placement_policy': TfArg.literal(groupPlacementPolicy.encode()),
  };
}

/// The [ComputeResourcePolicyKind.instanceSchedulePolicy] choice: sets `instance_schedule_policy`.
final class ComputeResourcePolicyKindInstanceSchedulePolicy
    extends ComputeResourcePolicyKind {
  const ComputeResourcePolicyKindInstanceSchedulePolicy(
    this.instanceSchedulePolicy,
  );

  final ComputeResourcePolicyInstanceSchedulePolicy instanceSchedulePolicy;

  @override
  String get blockKey => 'instance_schedule_policy';

  @override
  Map<String, Object?> encode() => {
    'instance_schedule_policy': instanceSchedulePolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'instance_schedule_policy': TfArg.literal(instanceSchedulePolicy.encode()),
  };
}

/// The [ComputeResourcePolicyKind.diskConsistencyGroupPolicy] choice: sets `disk_consistency_group_policy`.
final class ComputeResourcePolicyKindDiskConsistencyGroupPolicy
    extends ComputeResourcePolicyKind {
  const ComputeResourcePolicyKindDiskConsistencyGroupPolicy(
    this.diskConsistencyGroupPolicy,
  );

  final ComputeResourcePolicyDiskConsistencyGroupPolicy
  diskConsistencyGroupPolicy;

  @override
  String get blockKey => 'disk_consistency_group_policy';

  @override
  Map<String, Object?> encode() => {
    'disk_consistency_group_policy': diskConsistencyGroupPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'disk_consistency_group_policy': TfArg.literal(
      diskConsistencyGroupPolicy.encode(),
    ),
  };
}

/// Typed helper for the `disk_consistency_group_policy` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicyDiskConsistencyGroupPolicy {
  const ComputeResourcePolicyDiskConsistencyGroupPolicy({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `group_placement_policy` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicyGroupPlacementPolicy {
  const ComputeResourcePolicyGroupPlacementPolicy({
    this.availabilityDomainCount,
    this.collocation,
    this.gpuTopology,
    this.vmCount,
  });

  final TfArg<num>? availabilityDomainCount;

  final TfArg<String>? collocation;

  final TfArg<String>? gpuTopology;

  final TfArg<num>? vmCount;

  Map<String, Object?> encode() => {
    'availability_domain_count': ?availabilityDomainCount?.toTfJson(),
    'collocation': ?collocation?.toTfJson(),
    'gpu_topology': ?gpuTopology?.toTfJson(),
    'vm_count': ?vmCount?.toTfJson(),
  };
}

/// Typed helper for the `instance_schedule_policy` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicyInstanceSchedulePolicy {
  const ComputeResourcePolicyInstanceSchedulePolicy({
    this.expirationTime,
    this.startTime,
    required this.timeZone,
    this.vmStartSchedule,
    this.vmStopSchedule,
  });

  final TfArg<String>? expirationTime;

  final TfArg<String>? startTime;

  final TfArg<String> timeZone;

  final ComputeResourcePolicyInstanceSchedulePolicyVmStartSchedule?
  vmStartSchedule;

  final ComputeResourcePolicyInstanceSchedulePolicyVmStopSchedule?
  vmStopSchedule;

  Map<String, Object?> encode() => {
    'expiration_time': ?expirationTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'time_zone': timeZone.toTfJson(),
    'vm_start_schedule': ?vmStartSchedule?.encode(),
    'vm_stop_schedule': ?vmStopSchedule?.encode(),
  };
}

/// Typed helper for the `instance_schedule_policy.vm_start_schedule` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicyInstanceSchedulePolicyVmStartSchedule {
  const ComputeResourcePolicyInstanceSchedulePolicyVmStartSchedule({
    required this.schedule,
  });

  final TfArg<String> schedule;

  Map<String, Object?> encode() => {'schedule': schedule.toTfJson()};
}

/// Typed helper for the `instance_schedule_policy.vm_stop_schedule` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicyInstanceSchedulePolicyVmStopSchedule {
  const ComputeResourcePolicyInstanceSchedulePolicyVmStopSchedule({
    required this.schedule,
  });

  final TfArg<String> schedule;

  Map<String, Object?> encode() => {'schedule': schedule.toTfJson()};
}

/// Typed helper for the `snapshot_schedule_policy` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicy {
  const ComputeResourcePolicySnapshotSchedulePolicy({
    this.retentionPolicy,
    required this.schedule,
    this.snapshotProperties,
  });

  final ComputeResourcePolicySnapshotSchedulePolicyRetentionPolicy?
  retentionPolicy;

  final ComputeResourcePolicySnapshotSchedulePolicySchedule schedule;

  final ComputeResourcePolicySnapshotSchedulePolicySnapshotProperties?
  snapshotProperties;

  Map<String, Object?> encode() => {
    'retention_policy': ?retentionPolicy?.encode(),
    'schedule': schedule.encode(),
    'snapshot_properties': ?snapshotProperties?.encode(),
  };
}

/// Typed helper for the `snapshot_schedule_policy.retention_policy` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  const ComputeResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    required this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  final TfArg<num> maxRetentionDays;

  final TfArg<ComputeResourcePolicyOnSourceDiskDelete>? onSourceDiskDelete;

  Map<String, Object?> encode() => {
    'max_retention_days': maxRetentionDays.toTfJson(),
    'on_source_disk_delete': ?onSourceDiskDelete?.toTfJson(),
  };
}

/// Exactly one of `hourly_schedule`, `daily_schedule`, `weekly_schedule` on the `snapshot_schedule_policy.schedule` block of `google_compute_resource_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.hourlySchedule(...)`.
sealed class ComputeResourcePolicySnapshotSchedulePolicySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicySchedule();

  /// Sets `hourly_schedule`.
  const factory ComputeResourcePolicySnapshotSchedulePolicySchedule.hourlySchedule(
    ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule
    hourlySchedule,
  ) = ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleChoice;

  /// Sets `daily_schedule`.
  const factory ComputeResourcePolicySnapshotSchedulePolicySchedule.dailySchedule(
    ComputeResourcePolicySnapshotSchedulePolicyScheduleDailySchedule
    dailySchedule,
  ) = ComputeResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleChoice;

  /// Sets `weekly_schedule`.
  const factory ComputeResourcePolicySnapshotSchedulePolicySchedule.weeklySchedule(
    ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule
    weeklySchedule,
  ) = ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeResourcePolicySnapshotSchedulePolicySchedule.hourlySchedule] choice: sets `hourly_schedule`.
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleChoice
    extends ComputeResourcePolicySnapshotSchedulePolicySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleChoice(
    this.hourlySchedule,
  );

  final ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule
  hourlySchedule;

  @override
  String get blockKey => 'hourly_schedule';

  @override
  Map<String, Object?> encode() => {'hourly_schedule': hourlySchedule.encode()};
}

/// The [ComputeResourcePolicySnapshotSchedulePolicySchedule.dailySchedule] choice: sets `daily_schedule`.
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleChoice
    extends ComputeResourcePolicySnapshotSchedulePolicySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleChoice(
    this.dailySchedule,
  );

  final ComputeResourcePolicySnapshotSchedulePolicyScheduleDailySchedule
  dailySchedule;

  @override
  String get blockKey => 'daily_schedule';

  @override
  Map<String, Object?> encode() => {'daily_schedule': dailySchedule.encode()};
}

/// The [ComputeResourcePolicySnapshotSchedulePolicySchedule.weeklySchedule] choice: sets `weekly_schedule`.
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleChoice
    extends ComputeResourcePolicySnapshotSchedulePolicySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleChoice(
    this.weeklySchedule,
  );

  final ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule
  weeklySchedule;

  @override
  String get blockKey => 'weekly_schedule';

  @override
  Map<String, Object?> encode() => {'weekly_schedule': weeklySchedule.encode()};
}

/// Typed helper for the `snapshot_schedule_policy.schedule.daily_schedule` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleDailySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleDailySchedule({
    required this.daysInCycle,
    required this.startTime,
  });

  final TfArg<num> daysInCycle;

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'days_in_cycle': daysInCycle.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `snapshot_schedule_policy.schedule.hourly_schedule` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule({
    required this.hoursInCycle,
    required this.startTime,
  });

  final TfArg<num> hoursInCycle;

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'hours_in_cycle': hoursInCycle.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `snapshot_schedule_policy.schedule.weekly_schedule` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule({
    required this.dayOfWeeks,
  });

  final List<
    ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks
  >
  dayOfWeeks;

  Map<String, Object?> encode() => {
    'day_of_weeks': [for (final e in dayOfWeeks) e.encode()],
  };
}

/// Typed helper for the `snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks {
  const ComputeResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks({
    required this.day,
    required this.startTime,
  });

  final TfArg<ComputeResourcePolicySnapshotDayOfWeek> day;

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `snapshot_schedule_policy.snapshot_properties` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicySnapshotSchedulePolicySnapshotProperties {
  const ComputeResourcePolicySnapshotSchedulePolicySnapshotProperties({
    this.chainName,
    this.guestFlush,
    this.labels,
    this.storageLocations,
  });

  final TfArg<String>? chainName;

  final TfArg<bool>? guestFlush;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<String>>? storageLocations;

  Map<String, Object?> encode() => {
    'chain_name': ?chainName?.toTfJson(),
    'guest_flush': ?guestFlush?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'storage_locations': ?storageLocations?.toTfJson(),
  };
}

/// Typed helper for the `workload_policy` block of
/// `google_compute_resource_policy` (derived from provider schema).
@immutable
final class ComputeResourcePolicyWorkloadPolicy {
  const ComputeResourcePolicyWorkloadPolicy({
    this.acceleratorTopology,
    this.maxTopologyDistance,
    required this.type,
  });

  final TfArg<String>? acceleratorTopology;

  final TfArg<ComputeResourcePolicyMaxTopologyDistance>? maxTopologyDistance;

  final TfArg<ComputeResourcePolicyWorkloadType> type;

  Map<String, Object?> encode() => {
    'accelerator_topology': ?acceleratorTopology?.toTfJson(),
    'max_topology_distance': ?maxTopologyDistance?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_resource_policy`.
///
/// A policy that can be attached to a resource to specify or schedule actions
/// on that resource.
///
/// A Compute Engine resource policy. Set at most one policy [kind]
/// (`.snapshotSchedulePolicy(...)`, `.groupPlacementPolicy(...)`,
/// `.instanceSchedulePolicy(...)`, `.diskConsistencyGroupPolicy(...)`);
/// [workloadPolicy] places instances for HA / throughput workloads.
///
/// Example (daily snapshot schedule, keep 7 days):
/// ```dart
/// GoogleComputeResourcePolicy(
///   localName: 'daily_snapshots',
///   name: .literal('daily-snapshots'),
///   region: .literal('us-central1'),
///   kind: .snapshotSchedulePolicy(
///     ComputeResourcePolicySnapshotSchedulePolicy(
///       schedule: .dailySchedule(
///         ComputeResourcePolicySnapshotSchedulePolicyScheduleDailySchedule(
///           daysInCycle: .literal(1),
///           startTime: .literal('04:00'),
///         ),
///       ),
///       retentionPolicy:
///           ComputeResourcePolicySnapshotSchedulePolicyRetentionPolicy(
///             maxRetentionDays: .literal(7),
///             onSourceDiskDelete: .literal(.applyRetentionPolicy),
///           ),
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
    ComputeResourcePolicyKind? kind,
    ComputeResourcePolicyWorkloadPolicy? workloadPolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'description': ?description,
           ...?kind?.argMap,
           if (workloadPolicy != null)
             'workload_policy': TfArg.literal(workloadPolicy.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeResourcePolicy>`.
  RefTo<GoogleComputeResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
