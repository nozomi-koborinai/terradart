// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_future_reservation`.
const Set<String> _googleComputeFutureReservationSensitive = <String>{};

/// Compute Future Reservation Deployment enum for `deployment_type`.
enum ComputeFutureReservationDeploymentType implements TerraformEnum {
  dense('DENSE'),
  flexible('FLEXIBLE');

  const ComputeFutureReservationDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Future Reservation Planning enum for `planning_status`.
enum ComputeFutureReservationPlanningStatus implements TerraformEnum {
  draft('DRAFT'),
  submitted('SUBMITTED');

  const ComputeFutureReservationPlanningStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Future Reservation Reservation enum for `reservation_mode`.
enum ComputeFutureReservationReservationMode implements TerraformEnum {
  calendar('CALENDAR'),
  defaultCase('DEFAULT');

  const ComputeFutureReservationReservationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Future Reservation Scheduling enum for `scheduling_type`.
enum ComputeFutureReservationSchedulingType implements TerraformEnum {
  grouped('GROUPED'),
  independent('INDEPENDENT');

  const ComputeFutureReservationSchedulingType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<ComputeFutureReservationAggregateReservationVmFamily>? vmFamily;

  final TfArg<ComputeFutureReservationAggregateReservationWorkloadType>?
  workloadType;

  final List<ComputeFutureReservationAggregateReservationReservedResources>
  reservedResources;

  Map<String, Object?> encode() => {
    'vm_family': ?vmFamily?.toTfJson(),
    'workload_type': ?workloadType?.toTfJson(),
    'reserved_resources': [for (final e in reservedResources) e.encode()],
  };
}

/// `vm_family` — derived from the provider schema description.
enum ComputeFutureReservationAggregateReservationVmFamily
    implements TerraformEnum {
  vmFamilyCloudTpuDeviceCt3('VM_FAMILY_CLOUD_TPU_DEVICE_CT3'),
  vmFamilyCloudTpuLiteDeviceCt5l('VM_FAMILY_CLOUD_TPU_LITE_DEVICE_CT5L'),
  vmFamilyCloudTpuLitePodSliceCt5lp('VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT5LP'),
  vmFamilyCloudTpuLitePodSliceCt6e('VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT6E'),
  vmFamilyCloudTpuPodSliceCt3p('VM_FAMILY_CLOUD_TPU_POD_SLICE_CT3P'),
  vmFamilyCloudTpuPodSliceCt4p('VM_FAMILY_CLOUD_TPU_POD_SLICE_CT4P'),
  vmFamilyCloudTpuPodSliceCt5p('VM_FAMILY_CLOUD_TPU_POD_SLICE_CT5P');

  const ComputeFutureReservationAggregateReservationVmFamily(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `workload_type` — derived from the provider schema description.
enum ComputeFutureReservationAggregateReservationWorkloadType
    implements TerraformEnum {
  batch('BATCH'),
  serving('SERVING'),
  unspecified('UNSPECIFIED');

  const ComputeFutureReservationAggregateReservationWorkloadType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `aggregate_reservation.reserved_resources` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationAggregateReservationReservedResources {
  const ComputeFutureReservationAggregateReservationReservedResources({
    this.accelerator,
  });

  final ComputeFutureReservationAggregateReservationReservedResourcesAccelerator?
  accelerator;

  Map<String, Object?> encode() => {'accelerator': ?accelerator?.encode()};
}

/// Typed helper for the `aggregate_reservation.reserved_resources.accelerator` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationAggregateReservationReservedResourcesAccelerator {
  const ComputeFutureReservationAggregateReservationReservedResourcesAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

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

  final TfArg<ComputeFutureReservationCommitmentInfoCommitmentPlan>?
  commitmentPlan;

  final TfArg<ComputeFutureReservationCommitmentInfoPreviousCommitmentTerms>?
  previousCommitmentTerms;

  Map<String, Object?> encode() => {
    'commitment_name': ?commitmentName?.toTfJson(),
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'previous_commitment_terms': ?previousCommitmentTerms?.toTfJson(),
  };
}

/// `commitment_plan` — derived from the provider schema description.
enum ComputeFutureReservationCommitmentInfoCommitmentPlan
    implements TerraformEnum {
  invalid('INVALID'),
  thirtySixMonth('THIRTY_SIX_MONTH'),
  twelveMonth('TWELVE_MONTH');

  const ComputeFutureReservationCommitmentInfoCommitmentPlan(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `previous_commitment_terms` — derived from the provider schema description.
enum ComputeFutureReservationCommitmentInfoPreviousCommitmentTerms
    implements TerraformEnum {
  extend('EXTEND');

  const ComputeFutureReservationCommitmentInfoPreviousCommitmentTerms(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `params` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationParams {
  const ComputeFutureReservationParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

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

  final TfArg<ComputeFutureReservationShareSettingsShareType>? shareType;

  final List<ComputeFutureReservationShareSettingsProjectMap>? projectMap;

  Map<String, Object?> encode() => {
    'projects': ?projects?.toTfJson(),
    'share_type': ?shareType?.toTfJson(),
    if (projectMap != null)
      'project_map': [for (final e in projectMap!) e.encode()],
  };
}

/// `share_type` — derived from the provider schema description.
enum ComputeFutureReservationShareSettingsShareType implements TerraformEnum {
  local('LOCAL'),
  specificProjects('SPECIFIC_PROJECTS');

  const ComputeFutureReservationShareSettingsShareType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `share_settings.project_map` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationShareSettingsProjectMap {
  const ComputeFutureReservationShareSettingsProjectMap({
    required this.id,
    this.projectId,
  });

  final TfArg<String> id;

  final TfArg<String>? projectId;

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

  final ComputeFutureReservationSpecificSkuPropertiesInstanceProperties?
  instanceProperties;

  Map<String, Object?> encode() => {
    'source_instance_template': ?sourceInstanceTemplate?.toTfJson(),
    'total_count': ?totalCount?.toTfJson(),
    'instance_properties': ?instanceProperties?.encode(),
  };
}

/// Typed helper for the `specific_sku_properties.instance_properties` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationSpecificSkuPropertiesInstanceProperties {
  const ComputeFutureReservationSpecificSkuPropertiesInstanceProperties({
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

  final TfArg<
    ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesMaintenanceInterval
  >?
  maintenanceInterval;

  final TfArg<String>? minCpuPlatform;

  final List<
    ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerators
  >?
  guestAccelerators;

  final List<
    ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsds
  >?
  localSsds;

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
enum ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesMaintenanceInterval
    implements TerraformEnum {
  periodic('PERIODIC');

  const ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesMaintenanceInterval(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `specific_sku_properties.instance_properties.guest_accelerators` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerators {
  const ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
  };
}

/// Typed helper for the `specific_sku_properties.instance_properties.local_ssds` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsds {
  const ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsds({
    this.diskSizeGb,
    this.interface,
  });

  final TfArg<String>? diskSizeGb;

  final TfArg<
    ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsdsInterface
  >?
  interface;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'interface': ?interface?.toTfJson(),
  };
}

/// `interface` — derived from the provider schema description.
enum ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsdsInterface
    implements TerraformEnum {
  scsi('SCSI'),
  nvme('NVME');

  const ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsdsInterface(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final ComputeFutureReservationTimeWindowDuration? duration;

  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'start_time': startTime.toTfJson(),
    'duration': ?duration?.encode(),
  };
}

/// Typed helper for the `time_window.duration` block of
/// `google_compute_future_reservation` (derived from provider schema).
@immutable
final class ComputeFutureReservationTimeWindowDuration {
  const ComputeFutureReservationTimeWindowDuration({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

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

  GoogleComputeFutureReservation({
    required super.localName,
    TfArg<String>? autoCreatedReservationsDeleteTime,
    TfArg<bool>? autoDeleteAutoCreatedReservations,
    TfArg<String>? deletionPolicy,
    TfArg<ComputeFutureReservationDeploymentType>? deploymentType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? namePrefix,
    TfArg<ComputeFutureReservationPlanningStatus>? planningStatus,
    TfArg<String>? project,
    TfArg<ComputeFutureReservationReservationMode>? reservationMode,
    TfArg<String>? reservationName,
    TfArg<ComputeFutureReservationSchedulingType>? schedulingType,
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
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFutureReservation>`.
  RefTo<GoogleComputeFutureReservation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get autoCreatedReservationsDeleteTimeRef =>
      TfRef.attribute<String>(this, 'auto_created_reservations_delete_time');

  /// Reference to `auto_delete_auto_created_reservations` attribute.
  TfRef<bool> get autoDeleteAutoCreatedReservationsRef =>
      TfRef.attribute<bool>(this, 'auto_delete_auto_created_reservations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentTypeRef =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `planning_status` attribute.
  TfRef<String> get planningStatusRef =>
      TfRef.attribute<String>(this, 'planning_status');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `reservation_mode` attribute.
  TfRef<String> get reservationModeRef =>
      TfRef.attribute<String>(this, 'reservation_mode');

  /// Reference to `reservation_name` attribute.
  TfRef<String> get reservationNameRef =>
      TfRef.attribute<String>(this, 'reservation_name');

  /// Reference to `scheduling_type` attribute.
  TfRef<String> get schedulingTypeRef =>
      TfRef.attribute<String>(this, 'scheduling_type');

  /// Reference to `specific_reservation_required` attribute.
  TfRef<bool> get specificReservationRequiredRef =>
      TfRef.attribute<bool>(this, 'specific_reservation_required');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
