// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_resize_request`.
const Set<String> _googleComputeRegionResizeRequestSensitive = <String>{};

/// Typed helper for the `requested_run_duration` block of
/// `google_compute_region_resize_request` (derived from provider schema).
@immutable
final class ComputeRegionResizeRequestRequestedRunDuration {
  const ComputeRegionResizeRequestRequestedRunDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_resize_request`.
///
/// Represents a Regional Managed Instance Group Resize Request
///
/// Resize Requests are the Managed Instance Group implementation of Dynamic
/// Workload Scheduler Flex Start.
///
/// With Dynamic Workload Scheduler in Flex Start mode, you submit a GPU
/// capacity request for your AI/ML jobs by indicating how many you need, a
/// duration, and your preferred region. Dynamic Workload Scheduler
/// intelligently persists the request; once the capacity becomes available, it
/// automatically provisions your VMs enabling your workloads to run
/// continuously for the entire duration of the capacity allocation.
///
/// Compute Engine **regional MIG resize request** — Dynamic Workload
/// Scheduler Flex Start capacity ask against a regional managed instance
/// group (typically A3 / GPU shapes).
///
/// **Cost / apply:** When DWS fulfills the request it provisions GPU VMs.
/// Cloud Billing Catalog service `6F81-5844-456A` bills those GPU-hours
/// (e.g. On Demand Nvidia H100 80GB GPU Sao Paulo SKU `0526-B904-9D8B`
/// **$15.55594/h**). Requires a DWS-compatible regional MIG
/// (`requested_run_duration`); not applicable on terradart-validate e2
/// topology. Ships `never_apply` / `tool/example_debt.yaml`.
///
/// Requires [name], [instanceGroupManager], and [resizeBy]. Enable
/// `compute.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleComputeRegionResizeRequest extends Resource {
  static const String tfType = 'google_compute_region_resize_request';

  GoogleComputeRegionResizeRequest({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> instanceGroupManager,
    required TfArg<num> resizeBy,
    TfArg<String>? description,
    ComputeRegionResizeRequestRequestedRunDuration? requestedRunDuration,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'instance_group_manager': instanceGroupManager,
           'resize_by': resizeBy,
           if (description != null) 'description': description,
           if (requestedRunDuration != null)
             'requested_run_duration': TfArg.literal(
               requestedRunDuration.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionResizeRequestSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
