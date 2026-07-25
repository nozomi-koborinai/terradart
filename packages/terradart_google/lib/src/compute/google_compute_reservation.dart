// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_reservation`.
const Set<String> _googleComputeReservationSensitive = <String>{};

/// Typed helper for the `delete_after_duration` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationDeleteAfterDuration {
  const ComputeReservationDeleteAfterDuration({this.nanos, this.seconds});

  final TfArg<num>? nanos;

  final TfArg<String>? seconds;

  Map<String, Object?> encode() => {
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationParams {
  const ComputeReservationParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags!.toTfJson(),
  };
}

/// Typed helper for the `reservation_sharing_policy` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationReservationSharingPolicy {
  const ComputeReservationReservationSharingPolicy({this.serviceShareType});

  final TfArg<ComputeReservationReservationSharingPolicyServiceShareType>?
  serviceShareType;

  Map<String, Object?> encode() => {
    if (serviceShareType != null)
      'service_share_type': serviceShareType!.toTfJson(),
  };
}

/// `service_share_type` — derived from the provider schema description.
enum ComputeReservationReservationSharingPolicyServiceShareType
    implements TerraformEnum {
  allowAll('ALLOW_ALL'),
  disallowAll('DISALLOW_ALL');

  const ComputeReservationReservationSharingPolicyServiceShareType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `share_settings` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationShareSettings {
  const ComputeReservationShareSettings({this.shareType, this.projectMap});

  final TfArg<ComputeReservationShareSettingsShareType>? shareType;

  final List<ComputeReservationShareSettingsProjectMap>? projectMap;

  Map<String, Object?> encode() => {
    if (shareType != null) 'share_type': shareType!.toTfJson(),
    if (projectMap != null)
      'project_map': [for (final e in projectMap!) e.encode()],
  };
}

/// `share_type` — derived from the provider schema description.
enum ComputeReservationShareSettingsShareType implements TerraformEnum {
  local('LOCAL'),
  specificProjects('SPECIFIC_PROJECTS');

  const ComputeReservationShareSettingsShareType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `share_settings.project_map` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationShareSettingsProjectMap {
  const ComputeReservationShareSettingsProjectMap({
    required this.id,
    this.projectId,
  });

  final TfArg<String> id;

  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
  };
}

/// Typed helper for the `specific_reservation` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationSpecificReservation {
  const ComputeReservationSpecificReservation({
    required this.count,
    this.sourceInstanceTemplate,
    this.instanceProperties,
  });

  final TfArg<num> count;

  final TfArg<String>? sourceInstanceTemplate;

  final ComputeReservationSpecificReservationInstanceProperties?
  instanceProperties;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    if (sourceInstanceTemplate != null)
      'source_instance_template': sourceInstanceTemplate!.toTfJson(),
    if (instanceProperties != null)
      'instance_properties': instanceProperties!.encode(),
  };
}

/// Typed helper for the `specific_reservation.instance_properties` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationSpecificReservationInstanceProperties {
  const ComputeReservationSpecificReservationInstanceProperties({
    required this.machineType,
    this.minCpuPlatform,
    this.guestAccelerators,
    this.localSsds,
  });

  final TfArg<String> machineType;

  final TfArg<String>? minCpuPlatform;

  final List<
    ComputeReservationSpecificReservationInstancePropertiesGuestAccelerators
  >?
  guestAccelerators;

  final List<ComputeReservationSpecificReservationInstancePropertiesLocalSsds>?
  localSsds;

  Map<String, Object?> encode() => {
    'machine_type': machineType.toTfJson(),
    if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform!.toTfJson(),
    if (guestAccelerators != null)
      'guest_accelerators': [for (final e in guestAccelerators!) e.encode()],
    if (localSsds != null)
      'local_ssds': [for (final e in localSsds!) e.encode()],
  };
}

/// Typed helper for the `specific_reservation.instance_properties.guest_accelerators` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationSpecificReservationInstancePropertiesGuestAccelerators {
  const ComputeReservationSpecificReservationInstancePropertiesGuestAccelerators({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  final TfArg<num> acceleratorCount;

  final TfArg<String> acceleratorType;

  Map<String, Object?> encode() => {
    'accelerator_count': acceleratorCount.toTfJson(),
    'accelerator_type': acceleratorType.toTfJson(),
  };
}

/// Typed helper for the `specific_reservation.instance_properties.local_ssds` block of
/// `google_compute_reservation` (derived from provider schema).
@immutable
final class ComputeReservationSpecificReservationInstancePropertiesLocalSsds {
  const ComputeReservationSpecificReservationInstancePropertiesLocalSsds({
    required this.diskSizeGb,
    this.interface,
  });

  final TfArg<num> diskSizeGb;

  final TfArg<
    ComputeReservationSpecificReservationInstancePropertiesLocalSsdsInterface
  >?
  interface;

  Map<String, Object?> encode() => {
    'disk_size_gb': diskSizeGb.toTfJson(),
    if (interface != null) 'interface': interface!.toTfJson(),
  };
}

/// `interface` — derived from the provider schema description.
enum ComputeReservationSpecificReservationInstancePropertiesLocalSsdsInterface
    implements TerraformEnum {
  scsi('SCSI'),
  nvme('NVME');

  const ComputeReservationSpecificReservationInstancePropertiesLocalSsdsInterface(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_reservation`.
///
/// Represents a reservation resource. A reservation ensures that capacity is
/// held in a specific zone even if the reserved VMs are not running.
///
/// Reservations apply only to Compute Engine, Cloud Dataproc, and Google
/// Kubernetes Engine VM usage.Reservations do not apply to `f1-micro` or
/// `g1-small` machine types, preemptible VMs, sole tenant nodes, or other
/// services not listed above like Cloud SQL and Dataflow.
///
/// Compute Engine **reservation** — reserved zonal VM / GPU capacity that
/// bills at on-demand rates while the reservation exists, whether or not
/// matching VMs consume it.
///
/// **Cost / apply:** gcp-cost: Compute Engine `6F81-5844-456A` N4A Custom
/// Instance Core Iowa SKU `F179-06F3-16EC` **$0.027783/h** (on-demand;
/// Flexible CUD 1y/3y lower); 1/8 vGPU no-LSSD Iowa SKU `D5C5-C5F4-086C`
/// **$0.64688/h**. billing-behavior: reserved `specific_reservation`
/// capacity accrues those SKUs for the reservation lifetime (GPU shapes
/// are especially costly); destroy stops the charge. **Never** wire into
/// apply-smoke.
///
/// [specificReservation] is required. Prefer [deleteAtTime] /
/// [deleteAfterDuration] when experimenting outside CI.
final class GoogleComputeReservation extends Resource {
  static const String tfType = 'google_compute_reservation';

  GoogleComputeReservation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> zone,
    required ComputeReservationSpecificReservation specificReservation,
    TfArg<String>? description,
    TfArg<bool>? specificReservationRequired,
    ComputeReservationShareSettings? shareSettings,
    ComputeReservationReservationSharingPolicy? reservationSharingPolicy,
    ComputeReservationParams? params,
    TfArg<String>? deleteAtTime,
    ComputeReservationDeleteAfterDuration? deleteAfterDuration,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': zone,
           'specific_reservation': TfArg.literal(specificReservation.encode()),
           if (description != null) 'description': description,
           if (specificReservationRequired != null)
             'specific_reservation_required': specificReservationRequired,
           if (shareSettings != null)
             'share_settings': TfArg.literal(shareSettings.encode()),
           if (reservationSharingPolicy != null)
             'reservation_sharing_policy': TfArg.literal(
               reservationSharingPolicy.encode(),
             ),
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (deleteAtTime != null) 'delete_at_time': deleteAtTime,
           if (deleteAfterDuration != null)
             'delete_after_duration': TfArg.literal(
               deleteAfterDuration.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeReservationSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_names` attribute.
  TfRef<List<String>> get blockNames =>
      TfRef.attribute<List<String>>(this, 'block_names');

  /// Reference to `commitment` attribute.
  TfRef<String> get commitment => TfRef.attribute<String>(this, 'commitment');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `linked_commitments` attribute.
  TfRef<List<String>> get linkedCommitments =>
      TfRef.attribute<List<String>>(this, 'linked_commitments');

  /// Reference to `reservation_block_count` attribute.
  TfRef<num> get reservationBlockCount =>
      TfRef.attribute<num>(this, 'reservation_block_count');

  /// Reference to `resource_status` attribute.
  TfRef<List<Map<String, Object?>>> get resourceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_status');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
