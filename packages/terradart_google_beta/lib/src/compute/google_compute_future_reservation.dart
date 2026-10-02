// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_future_reservation`.
const Set<String> _googleComputeFutureReservationSensitive = <String>{};

/// Compute Future Reservation Deployment enum for `deployment_type`.
extension type const ComputeFutureReservationDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationDeploymentType.arg(TfArg<String> arg)
    : this._(arg);

  static const dense = ComputeFutureReservationDeploymentType._(
    TfArgLiteral('DENSE'),
  );
  static const flexible = ComputeFutureReservationDeploymentType._(
    TfArgLiteral('FLEXIBLE'),
  );

  static const List<ComputeFutureReservationDeploymentType> values = [
    dense,
    flexible,
  ];
}

/// Compute Future Reservation Planning enum for `planning_status`.
extension type const ComputeFutureReservationPlanningStatus._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationPlanningStatus.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationPlanningStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationPlanningStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const draft = ComputeFutureReservationPlanningStatus._(
    TfArgLiteral('DRAFT'),
  );
  static const submitted = ComputeFutureReservationPlanningStatus._(
    TfArgLiteral('SUBMITTED'),
  );

  static const List<ComputeFutureReservationPlanningStatus> values = [
    draft,
    submitted,
  ];
}

/// Compute Future Reservation enum for `reservation_mode`.
extension type const ComputeFutureReservationMode._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationMode.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationMode.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationMode.arg(TfArg<String> arg) : this._(arg);

  static const calendar = ComputeFutureReservationMode._(
    TfArgLiteral('CALENDAR'),
  );
  static const defaultCase = ComputeFutureReservationMode._(
    TfArgLiteral('DEFAULT'),
  );

  static const List<ComputeFutureReservationMode> values = [
    calendar,
    defaultCase,
  ];
}

/// Compute Future Reservation Scheduling enum for `scheduling_type`.
extension type const ComputeFutureReservationSchedulingType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationSchedulingType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationSchedulingType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationSchedulingType.arg(TfArg<String> arg)
    : this._(arg);

  static const grouped = ComputeFutureReservationSchedulingType._(
    TfArgLiteral('GROUPED'),
  );
  static const independent = ComputeFutureReservationSchedulingType._(
    TfArgLiteral('INDEPENDENT'),
  );

  static const List<ComputeFutureReservationSchedulingType> values = [
    grouped,
    independent,
  ];
}

/// Typed helper for the `aggregate_reservation` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationAggregateReservation {
  const ComputeFutureReservationAggregateReservation({
    this.vmFamily,
    this.workloadType,
    required this.reservedResources,
  });

  final ComputeFutureReservationVmFamily? vmFamily;

  final ComputeFutureReservationWorkloadType? workloadType;

  final List<ComputeFutureReservationReservedResources> reservedResources;

  @internal
  Map<String, Object?> encode() => {
    'vm_family': ?vmFamily?.toTfJson(),
    'workload_type': ?workloadType?.toTfJson(),
    'reserved_resources': [for (final e in reservedResources) e.encode()],
  };
}

/// `vm_family` — derived from the provider schema description.
extension type const ComputeFutureReservationVmFamily._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationVmFamily.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationVmFamily.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationVmFamily.arg(TfArg<String> arg) : this._(arg);

  static const vmFamilyCloudTpuDeviceCt3 = ComputeFutureReservationVmFamily._(
    TfArgLiteral('VM_FAMILY_CLOUD_TPU_DEVICE_CT3'),
  );
  static const vmFamilyCloudTpuLiteDeviceCt5l =
      ComputeFutureReservationVmFamily._(
        TfArgLiteral('VM_FAMILY_CLOUD_TPU_LITE_DEVICE_CT5L'),
      );
  static const vmFamilyCloudTpuLitePodSliceCt5lp =
      ComputeFutureReservationVmFamily._(
        TfArgLiteral('VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT5LP'),
      );
  static const vmFamilyCloudTpuLitePodSliceCt6e =
      ComputeFutureReservationVmFamily._(
        TfArgLiteral('VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT6E'),
      );
  static const vmFamilyCloudTpuPodSliceCt3p =
      ComputeFutureReservationVmFamily._(
        TfArgLiteral('VM_FAMILY_CLOUD_TPU_POD_SLICE_CT3P'),
      );
  static const vmFamilyCloudTpuPodSliceCt4p =
      ComputeFutureReservationVmFamily._(
        TfArgLiteral('VM_FAMILY_CLOUD_TPU_POD_SLICE_CT4P'),
      );
  static const vmFamilyCloudTpuPodSliceCt5p =
      ComputeFutureReservationVmFamily._(
        TfArgLiteral('VM_FAMILY_CLOUD_TPU_POD_SLICE_CT5P'),
      );

  static const List<ComputeFutureReservationVmFamily> values = [
    vmFamilyCloudTpuDeviceCt3,
    vmFamilyCloudTpuLiteDeviceCt5l,
    vmFamilyCloudTpuLitePodSliceCt5lp,
    vmFamilyCloudTpuLitePodSliceCt6e,
    vmFamilyCloudTpuPodSliceCt3p,
    vmFamilyCloudTpuPodSliceCt4p,
    vmFamilyCloudTpuPodSliceCt5p,
  ];
}

/// `workload_type` — derived from the provider schema description.
extension type const ComputeFutureReservationWorkloadType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationWorkloadType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationWorkloadType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationWorkloadType.arg(TfArg<String> arg)
    : this._(arg);

  static const batch = ComputeFutureReservationWorkloadType._(
    TfArgLiteral('BATCH'),
  );
  static const serving = ComputeFutureReservationWorkloadType._(
    TfArgLiteral('SERVING'),
  );
  static const unspecified = ComputeFutureReservationWorkloadType._(
    TfArgLiteral('UNSPECIFIED'),
  );

  static const List<ComputeFutureReservationWorkloadType> values = [
    batch,
    serving,
    unspecified,
  ];
}

/// Typed helper for the `aggregate_reservation.reserved_resources` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationReservedResources {
  const ComputeFutureReservationReservedResources({this.accelerator});

  final ComputeFutureReservationAccelerator? accelerator;

  @internal
  Map<String, Object?> encode() => {'accelerator': ?accelerator?.encode()};
}

/// Typed helper for the `aggregate_reservation.reserved_resources.accelerator` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationAccelerator {
  const ComputeFutureReservationAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `auto_created_reservations_duration` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationAutoCreatedReservationsDuration {
  const ComputeFutureReservationAutoCreatedReservationsDuration({
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  @internal
  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `commitment_info` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationCommitmentInfo {
  const ComputeFutureReservationCommitmentInfo({
    this.commitmentName,
    this.commitmentPlan,
    this.previousCommitmentTerms,
  });

  final TfArg<String>? commitmentName;

  final ComputeFutureReservationCommitmentPlan? commitmentPlan;

  final ComputeFutureReservationPreviousCommitmentTerms?
  previousCommitmentTerms;

  @internal
  Map<String, Object?> encode() => {
    'commitment_name': ?commitmentName?.toTfJson(),
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'previous_commitment_terms': ?previousCommitmentTerms?.toTfJson(),
  };
}

/// `commitment_plan` — derived from the provider schema description.
extension type const ComputeFutureReservationCommitmentPlan._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationCommitmentPlan.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationCommitmentPlan.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationCommitmentPlan.arg(TfArg<String> arg)
    : this._(arg);

  static const invalid = ComputeFutureReservationCommitmentPlan._(
    TfArgLiteral('INVALID'),
  );
  static const thirtySixMonth = ComputeFutureReservationCommitmentPlan._(
    TfArgLiteral('THIRTY_SIX_MONTH'),
  );
  static const twelveMonth = ComputeFutureReservationCommitmentPlan._(
    TfArgLiteral('TWELVE_MONTH'),
  );

  static const List<ComputeFutureReservationCommitmentPlan> values = [
    invalid,
    thirtySixMonth,
    twelveMonth,
  ];
}

/// `previous_commitment_terms` — derived from the provider schema description.
extension type const ComputeFutureReservationPreviousCommitmentTerms._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeFutureReservationPreviousCommitmentTerms.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationPreviousCommitmentTerms.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationPreviousCommitmentTerms.arg(TfArg<String> arg)
    : this._(arg);

  static const extend = ComputeFutureReservationPreviousCommitmentTerms._(
    TfArgLiteral('EXTEND'),
  );

  static const List<ComputeFutureReservationPreviousCommitmentTerms> values = [
    extend,
  ];
}

/// Typed helper for the `params` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationParams {
  const ComputeFutureReservationParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  @internal
  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `share_settings` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationShareSettings {
  const ComputeFutureReservationShareSettings({
    this.projects,
    this.shareType,
    this.projectMap,
  });

  final TfArg<List<String>>? projects;

  final ComputeFutureReservationShareType? shareType;

  final List<ComputeFutureReservationProjectMap>? projectMap;

  @internal
  Map<String, Object?> encode() => {
    'projects': ?projects?.toTfJson(),
    'share_type': ?shareType?.toTfJson(),
    if (projectMap != null)
      'project_map': [for (final e in projectMap!) e.encode()],
  };
}

/// `share_type` — derived from the provider schema description.
extension type const ComputeFutureReservationShareType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationShareType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationShareType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationShareType.arg(TfArg<String> arg) : this._(arg);

  static const local = ComputeFutureReservationShareType._(
    TfArgLiteral('LOCAL'),
  );
  static const specificProjects = ComputeFutureReservationShareType._(
    TfArgLiteral('SPECIFIC_PROJECTS'),
  );

  static const List<ComputeFutureReservationShareType> values = [
    local,
    specificProjects,
  ];
}

/// Typed helper for the `share_settings.project_map` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationProjectMap {
  const ComputeFutureReservationProjectMap({required this.id, this.projectId});

  final TfArg<String> id;

  final TfArg<String>? projectId;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
  };
}

/// Typed helper for the `specific_sku_properties` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationSpecificSkuProperties {
  const ComputeFutureReservationSpecificSkuProperties({
    this.sourceInstanceTemplate,
    this.totalCount,
    this.instanceProperties,
  });

  final TfArg<String>? sourceInstanceTemplate;

  final TfArg<String>? totalCount;

  final ComputeFutureReservationInstanceProperties? instanceProperties;

  @internal
  Map<String, Object?> encode() => {
    'source_instance_template': ?sourceInstanceTemplate?.toTfJson(),
    'total_count': ?totalCount?.toTfJson(),
    'instance_properties': ?instanceProperties?.encode(),
  };
}

/// Typed helper for the `specific_sku_properties.instance_properties` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationInstanceProperties {
  const ComputeFutureReservationInstanceProperties({
    this.locationHint,
    this.machineType,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
    this.minCpuPlatform,
    this.guestAccelerators,
    this.localSsds,
  });

  final TfArg<String>? locationHint;

  final TfArg<String>? machineType;

  final TfArg<num>? maintenanceFreezeDurationHours;

  final ComputeFutureReservationMaintenanceInterval? maintenanceInterval;

  final TfArg<String>? minCpuPlatform;

  final List<ComputeFutureReservationGuestAccelerators>? guestAccelerators;

  final List<ComputeFutureReservationLocalSsds>? localSsds;

  @internal
  Map<String, Object?> encode() => {
    'location_hint': ?locationHint?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'maintenance_freeze_duration_hours': ?maintenanceFreezeDurationHours
        ?.toTfJson(),
    'maintenance_interval': ?maintenanceInterval?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    if (guestAccelerators != null)
      'guest_accelerators': [for (final e in guestAccelerators!) e.encode()],
    if (localSsds != null)
      'local_ssds': [for (final e in localSsds!) e.encode()],
  };
}

/// `maintenance_interval` — derived from the provider schema description.
extension type const ComputeFutureReservationMaintenanceInterval._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeFutureReservationMaintenanceInterval.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationMaintenanceInterval.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationMaintenanceInterval.arg(TfArg<String> arg)
    : this._(arg);

  static const periodic = ComputeFutureReservationMaintenanceInterval._(
    TfArgLiteral('PERIODIC'),
  );

  static const List<ComputeFutureReservationMaintenanceInterval> values = [
    periodic,
  ];
}

/// Typed helper for the `specific_sku_properties.instance_properties.guest_accelerators` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationGuestAccelerators {
  const ComputeFutureReservationGuestAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `specific_sku_properties.instance_properties.local_ssds` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationLocalSsds {
  const ComputeFutureReservationLocalSsds({this.diskSizeGb, this.interface});

  final TfArg<String>? diskSizeGb;

  final ComputeFutureReservationInterface? interface;

  @internal
  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'interface': ?interface?.toTfJson(),
  };
}

/// `interface` — derived from the provider schema description.
extension type const ComputeFutureReservationInterface._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFutureReservationInterface.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFutureReservationInterface.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFutureReservationInterface.arg(TfArg<String> arg) : this._(arg);

  static const scsi = ComputeFutureReservationInterface._(TfArgLiteral('SCSI'));
  static const nvme = ComputeFutureReservationInterface._(TfArgLiteral('NVME'));

  static const List<ComputeFutureReservationInterface> values = [scsi, nvme];
}

/// Typed helper for the `time_window` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationTimeWindow {
  const ComputeFutureReservationTimeWindow({
    this.endTime,
    required this.startTime,
    this.duration,
  });

  final TfArg<String>? endTime;

  final TfArg<String> startTime;

  final ComputeFutureReservationDuration? duration;

  @internal
  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'start_time': startTime.toTfJson(),
    'duration': ?duration?.encode(),
  };
}

/// Typed helper for the `time_window.duration` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationDuration {
  const ComputeFutureReservationDuration({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  @internal
  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_future_reservation`.
///
/// Represents a future reservation resource in Compute Engine. Future
/// reservations allow users to reserve capacity for a specified time window,
/// ensuring that resources are available when needed.
///
/// Reservations apply only to Compute Engine, Cloud Dataproc, and Google
/// Kubernetes Engine VM usage.Reservations do not apply to `f1-micro` or
/// `g1-small` machine types, preemptible VMs, sole tenant nodes, or other
/// services not listed above like Cloud SQL and Dataflow.
final class GoogleComputeFutureReservation extends Resource {
  static const String tfType = 'google_compute_future_reservation';

  GoogleComputeFutureReservation(
    super.localName, {
    TfArg<String>? autoCreatedReservationsDeleteTime,
    TfArg<bool>? autoDeleteAutoCreatedReservations,
    TfArg<String>? deletionPolicy,
    ComputeFutureReservationDeploymentType? deploymentType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? namePrefix,
    ComputeFutureReservationPlanningStatus? planningStatus,
    TfArg<String>? project,
    ComputeFutureReservationMode? reservationMode,
    TfArg<String>? reservationName,
    ComputeFutureReservationSchedulingType? schedulingType,
    TfArg<bool>? specificReservationRequired,
    TfArg<String>? zone,
    ComputeFutureReservationAggregateReservation? aggregateReservation,
    ComputeFutureReservationAutoCreatedReservationsDuration?
    autoCreatedReservationsDuration,
    ComputeFutureReservationCommitmentInfo? commitmentInfo,
    ComputeFutureReservationParams? params,
    ComputeFutureReservationShareSettings? shareSettings,
    ComputeFutureReservationSpecificSkuProperties? specificSkuProperties,
    required ComputeFutureReservationTimeWindow timeWindow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_created_reservations_delete_time':
               ?autoCreatedReservationsDeleteTime,
           'auto_delete_auto_created_reservations':
               ?autoDeleteAutoCreatedReservations,
           'deletion_policy': ?deletionPolicy,
           'deployment_type': ?deploymentType,
           'description': ?description,
           'name': name,
           'name_prefix': ?namePrefix,
           'planning_status': ?planningStatus,
           'project': ?project,
           'reservation_mode': ?reservationMode,
           'reservation_name': ?reservationName,
           'scheduling_type': ?schedulingType,
           'specific_reservation_required': ?specificReservationRequired,
           'zone': ?zone,
           if (aggregateReservation != null)
             'aggregate_reservation': TfArg.literal(
               aggregateReservation.encode(),
             ),
           if (autoCreatedReservationsDuration != null)
             'auto_created_reservations_duration': TfArg.literal(
               autoCreatedReservationsDuration.encode(),
             ),
           if (commitmentInfo != null)
             'commitment_info': TfArg.literal(commitmentInfo.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (shareSettings != null)
             'share_settings': TfArg.literal(shareSettings.encode()),
           if (specificSkuProperties != null)
             'specific_sku_properties': TfArg.literal(
               specificSkuProperties.encode(),
             ),
           'time_window': TfArg.literal(timeWindow.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeFutureReservationSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFutureReservation>`.
  RefTo<GoogleComputeFutureReservation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `auto_created_reservations_delete_time` attribute.
  TfRef<String> get autoCreatedReservationsDeleteTime =>
      TfRef.attribute<String>(this, 'auto_created_reservations_delete_time');

  /// Reference to `auto_delete_auto_created_reservations` attribute.
  TfRef<bool> get autoDeleteAutoCreatedReservations =>
      TfRef.attribute<bool>(this, 'auto_delete_auto_created_reservations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `planning_status` attribute.
  TfRef<String> get planningStatus =>
      TfRef.attribute<String>(this, 'planning_status');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reservation_mode` attribute.
  TfRef<String> get reservationMode =>
      TfRef.attribute<String>(this, 'reservation_mode');

  /// Reference to `reservation_name` attribute.
  TfRef<String> get reservationName =>
      TfRef.attribute<String>(this, 'reservation_name');

  /// Reference to `scheduling_type` attribute.
  TfRef<String> get schedulingType =>
      TfRef.attribute<String>(this, 'scheduling_type');

  /// Reference to `specific_reservation_required` attribute.
  TfRef<bool> get specificReservationRequired =>
      TfRef.attribute<bool>(this, 'specific_reservation_required');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
