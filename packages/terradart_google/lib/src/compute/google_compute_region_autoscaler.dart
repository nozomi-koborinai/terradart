// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_autoscaler`.
const Set<String> _googleComputeRegionAutoscalerSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Operating mode for the autoscaling policy. The schema declares this
/// as a free-form string — the enum below pins the API-accepted set so
/// callers cannot mis-spell it. Default is [on] when the field is
/// omitted from the request.
///
/// - [off] — autoscaling is disabled; the regional MIG stays at its
///   current size.
/// - [onlyUp] — the autoscaler may scale **out** (add replicas) but
///   never scale **in** (remove replicas). The legacy alias
///   [onlyScaleOut] emits the same token; prefer [onlyUp] for new code.
/// - [onlyScaleOut] — alias for [onlyUp]; some GCP samples still use
///   this name. Retained for surface compatibility.
/// - [on] — full bidirectional autoscaling.
enum RegionAutoscalerMode {
  off('OFF'),
  onlyUp('ONLY_UP'),
  onlyScaleOut('ONLY_SCALE_OUT'),
  on('ON');

  const RegionAutoscalerMode(this.terraformValue);
  final String terraformValue;
}

/// Predictive autoscaling method for [RegionAutoscalerCpuUtilization].
///
/// - [none] — disable predictive autoscaling (default).
/// - [optimizeAvailability] — monitor weekly load patterns and scale out
///   ahead of anticipated demand.
enum RegionAutoscalerCpuPredictiveMethod {
  none('NONE'),
  optimizeAvailability('OPTIMIZE_AVAILABILITY');

  const RegionAutoscalerCpuPredictiveMethod(this.terraformValue);
  final String terraformValue;
}

/// Defines how a custom-metric value is interpreted by the autoscaler.
/// Mirrors the API's `utilizationTargetType` enum.
///
/// - [gauge] — the metric is an instantaneous reading; the autoscaler
///   keeps it at [RegionAutoscalerMetric.target].
/// - [deltaPerSecond] — the metric is a per-second rate.
/// - [deltaPerMinute] — the metric is a per-minute rate.
enum RegionAutoscalerMetricType {
  gauge('GAUGE'),
  deltaPerSecond('DELTA_PER_SECOND'),
  deltaPerMinute('DELTA_PER_MINUTE');

  const RegionAutoscalerMetricType(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// autoscaling_policy (max_items=1, required by the schema)
// ===========================================================================

/// `autoscaling_policy` block — the heart of the autoscaler. Combines a
/// replica range ([minReplicas]..[maxReplicas]) with one or more signal
/// sub-blocks ([cpuUtilization], [loadBalancingUtilization], [metrics])
/// and optional smoothing controls ([cooldownPeriod], [scaleInControl],
/// [scalingSchedules]).
///
/// At least one signal sub-block is recommended; if none are set the GCP
/// API falls back to CPU utilization at 0.6 (60%).
@immutable
class RegionAutoscalerAutoscalingPolicy {
  const RegionAutoscalerAutoscalingPolicy({
    required this.minReplicas,
    required this.maxReplicas,
    this.cooldownPeriod,
    this.mode,
    this.cpuUtilization,
    this.loadBalancingUtilization,
    this.metrics,
    this.scaleInControl,
    this.scalingSchedules,
  });

  /// Minimum number of replicas the autoscaler may scale **down** to.
  /// Must be `>= 0`. The schema marks this required.
  final int minReplicas;

  /// Maximum number of replicas the autoscaler may scale **up** to.
  /// Must be `>= minReplicas`. The schema marks this required.
  final int maxReplicas;

  /// Number of seconds the autoscaler waits before collecting metrics
  /// from a freshly-launched instance. Defaults to 60 on the API side
  /// when omitted; raise this for workloads with slow startup paths.
  final int? cooldownPeriod;

  /// Operating mode for the policy. Omitted -> API default ([on]).
  final RegionAutoscalerMode? mode;

  /// CPU-utilization signal. Mutually compatible with the other signal
  /// blocks; the autoscaler picks the **highest** recommended size.
  final RegionAutoscalerCpuUtilization? cpuUtilization;

  /// Load-balancing utilization signal. Requires the target regional
  /// MIG to sit behind a backend service with `utilization` balancing
  /// mode.
  final RegionAutoscalerLoadBalancingUtilization? loadBalancingUtilization;

  /// Custom Stackdriver / Cloud Monitoring metrics. Each entry defines
  /// one metric the autoscaler will observe; the policy picks the
  /// highest recommendation across all signals.
  final List<RegionAutoscalerMetric>? metrics;

  /// Smoothing applied to scale-**in** decisions (replica removals).
  /// Prevents the autoscaler from shedding replicas too aggressively
  /// during traffic dips.
  final RegionAutoscalerScaleInControl? scaleInControl;

  /// Scheduled scaling overrides. Each entry pins a minimum replica
  /// count during a cron-defined time window. The map key becomes the
  /// schedule's `name` on the wire.
  final Map<String, RegionAutoscalerScalingSchedule>? scalingSchedules;

  Map<String, Object?> toArgMap() => {
        'min_replicas': minReplicas,
        'max_replicas': maxReplicas,
        if (cooldownPeriod != null) 'cooldown_period': cooldownPeriod,
        if (mode != null) 'mode': mode!.terraformValue,
        if (cpuUtilization != null)
          'cpu_utilization': [cpuUtilization!.toArgMap()],
        if (loadBalancingUtilization != null)
          'load_balancing_utilization': [loadBalancingUtilization!.toArgMap()],
        if (metrics != null)
          'metric': metrics!.map((m) => m.toArgMap()).toList(),
        if (scaleInControl != null)
          'scale_in_control': [scaleInControl!.toArgMap()],
        if (scalingSchedules != null)
          'scaling_schedules': scalingSchedules!.entries
              .map((e) => {'name': e.key, ...e.value.toArgMap()})
              .toList(),
      };
}

// ===========================================================================
// cpu_utilization (max_items=1)
// ===========================================================================

/// `cpu_utilization` block. Drives autoscaling against the average CPU
/// usage of instances in the target regional MIG.
@immutable
class RegionAutoscalerCpuUtilization {
  const RegionAutoscalerCpuUtilization({
    required this.target,
    this.predictiveMethod,
  });

  /// Target average CPU utilization, in the range `(0.0, 1.0]`. For
  /// example, `0.6` means "keep instances at ~60% CPU on average". The
  /// schema marks this required.
  final double target;

  /// Optional predictive method. Omitted -> API default
  /// ([RegionAutoscalerCpuPredictiveMethod.none]).
  final RegionAutoscalerCpuPredictiveMethod? predictiveMethod;

  Map<String, Object?> toArgMap() => {
        'target': target,
        if (predictiveMethod != null)
          'predictive_method': predictiveMethod!.terraformValue,
      };
}

// ===========================================================================
// load_balancing_utilization (max_items=1)
// ===========================================================================

/// `load_balancing_utilization` block. Drives autoscaling against
/// backend-capacity utilization (HTTP(S) load balancer with
/// `utilization` balancing mode).
@immutable
class RegionAutoscalerLoadBalancingUtilization {
  const RegionAutoscalerLoadBalancingUtilization({required this.target});

  /// Target fraction of backend capacity utilization (0.0..1.0). The
  /// schema marks this required; defaults to 0.8 on the API side.
  final double target;

  Map<String, Object?> toArgMap() => {'target': target};
}

// ===========================================================================
// metric[] (list, unbounded)
// ===========================================================================

/// One `metric` entry — a custom Stackdriver / Cloud Monitoring signal.
/// Exactly one of [target] / [singleInstanceAssignment] is typically
/// set; the GCP API enforces the constraint at apply time.
@immutable
class RegionAutoscalerMetric {
  const RegionAutoscalerMetric({
    required this.name,
    this.target,
    this.type,
    this.singleInstanceAssignment,
    this.filter,
  });

  /// Stackdriver metric identifier (e.g.
  /// `'pubsub.googleapis.com/subscription/num_undelivered_messages'`).
  /// The metric must emit `INT64` or `DOUBLE` values; negative values
  /// are not supported.
  final String name;

  /// Target value the autoscaler maintains for this metric. Mutually
  /// exclusive in practice with [singleInstanceAssignment].
  final double? target;

  /// How the metric value is interpreted ([gauge] / [deltaPerSecond] /
  /// [deltaPerMinute]).
  final RegionAutoscalerMetricType? type;

  /// Per-instance assignment for **per-group** metrics: the metric
  /// reports the total amount of work; this value is the amount one
  /// instance can handle. Mutually exclusive with [target].
  final double? singleInstanceAssignment;

  /// Optional Monitoring TimeSeries filter. The default
  /// (`'resource.type = gce_instance'`) selects per-instance gauges; set
  /// a custom filter for per-group metrics on other resource types.
  final String? filter;

  Map<String, Object?> toArgMap() => {
        'name': name,
        if (target != null) 'target': target,
        if (type != null) 'type': type!.terraformValue,
        if (singleInstanceAssignment != null)
          'single_instance_assignment': singleInstanceAssignment,
        if (filter != null) 'filter': filter,
      };
}

// ===========================================================================
// scale_in_control (max_items=1)
// ===========================================================================

/// `scale_in_control` block. Caps how aggressively the autoscaler may
/// shed replicas inside a [timeWindowSec]-second sliding window — useful
/// for stateful workloads that need warm capacity to drain gracefully.
@immutable
class RegionAutoscalerScaleInControl {
  const RegionAutoscalerScaleInControl({
    this.maxScaledInReplicas,
    this.timeWindowSec,
  });

  /// Upper bound on replicas removed within [timeWindowSec]. The schema
  /// requires at least one of [maxScaledInReplicas] / [timeWindowSec];
  /// both are typically set together.
  final RegionAutoscalerScaleInReplicas? maxScaledInReplicas;

  /// Lookback window, in seconds. The autoscaler computes a moving
  /// total of scale-in events over this duration and refuses to exceed
  /// [maxScaledInReplicas] within it.
  final int? timeWindowSec;

  Map<String, Object?> toArgMap() => {
        if (maxScaledInReplicas != null)
          'max_scaled_in_replicas': [maxScaledInReplicas!.toArgMap()],
        if (timeWindowSec != null) 'time_window_sec': timeWindowSec,
      };
}

/// `max_scaled_in_replicas` sub-block. Express the cap as either a
/// [fixed] count or a [percent] of the current MIG size; the schema
/// requires at least one of the two.
@immutable
class RegionAutoscalerScaleInReplicas {
  const RegionAutoscalerScaleInReplicas({this.fixed, this.percent});

  /// Fixed maximum number of VM instances that may be removed inside
  /// the parent [RegionAutoscalerScaleInControl.timeWindowSec] window.
  /// Must be a positive integer.
  final int? fixed;

  /// Percentage of the current MIG size that may be removed (0..100).
  final int? percent;

  Map<String, Object?> toArgMap() => {
        if (fixed != null) 'fixed': fixed,
        if (percent != null) 'percent': percent,
      };
}

// ===========================================================================
// scaling_schedules (map, unbounded)
// ===========================================================================

/// One `scaling_schedules` entry. The Dart `Map<String, _>` key becomes
/// the schedule's `name` on the wire (the schema models this as a `set`
/// of blocks with `name` baked in).
///
/// Each schedule pins a [minRequiredReplicas] floor for instances during
/// a cron-defined time window. Multiple schedules may overlap; the
/// effective floor is the maximum across all active schedules.
@immutable
class RegionAutoscalerScalingSchedule {
  const RegionAutoscalerScalingSchedule({
    required this.minRequiredReplicas,
    required this.schedule,
    required this.durationSec,
    this.timeZone,
    this.disabled,
    this.description,
  });

  /// Minimum replica count the autoscaler will recommend while this
  /// schedule is active.
  final int minRequiredReplicas;

  /// Cron-format start times (extended cron, with optional year). E.g.
  /// `'0 9 * * MON-FRI'` for weekday mornings.
  final String schedule;

  /// Duration of each scheduled window, in seconds. Minimum: 300.
  final int durationSec;

  /// IANA time-zone name (e.g. `'Asia/Tokyo'`). Defaults to `'UTC'`.
  final String? timeZone;

  /// When `true`, the schedule is recorded but has no effect on
  /// recommendations. Useful for parking a schedule without deleting it.
  final bool? disabled;

  /// Free-form description.
  final String? description;

  Map<String, Object?> toArgMap() => {
        'min_required_replicas': minRequiredReplicas,
        'schedule': schedule,
        'duration_sec': durationSec,
        if (timeZone != null) 'time_zone': timeZone,
        if (disabled != null) 'disabled': disabled,
        if (description != null) 'description': description,
      };
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_compute_region_autoscaler` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **regional** autoscaler attached to a
/// `google_compute_region_instance_group_manager` (regional MIG). The
/// autoscaler observes one or more signals (CPU utilization,
/// load-balancing utilization, or a custom Stackdriver metric) and
/// resizes the target regional MIG within
/// `[minReplicas, maxReplicas]`. For zonal MIGs, use the sibling
/// `google_compute_autoscaler` resource (curated separately).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_autoscaler.`).
/// - `name`: GCP autoscaler name. 1-63 chars, RFC 1035
///   (`[a-z]([-a-z0-9]*[a-z0-9])?`). Forces replacement when changed.
/// - [region]: GCP region the autoscaler lives in (e.g.
///   `'us-central1'`). Required in practice — without it the provider
///   falls back to the provider-level default region, which makes the
///   stack non-portable across environments and silently scales the
///   wrong MIG when callers re-target. Pass
///   `TfArg.literal('asia-northeast1')` or `TfArg.ref(...)` against a
///   tfvar.
/// - [target]: self-link to the
///   `google_compute_region_instance_group_manager` this autoscaler will
///   scale. Pass `TfArg.ref(rigm.selfLink)` — `rigm.nameRef` (just the
///   bare name) is **not** sufficient because the API requires the full
///   `projects/{project}/regions/{region}/instanceGroupManagers/{name}`
///   URL. Both resources must live in the **same region**.
/// - [autoscalingPolicy]: the scaling rule itself. Required by the
///   schema; the GCP API rejects an autoscaler with no policy block.
///
/// Cross-resource chain:
/// ```
/// google_compute_instance_template  (the per-VM blueprint)
///   -> google_compute_region_instance_group_manager  (regional MIG)
///        -> google_compute_region_autoscaler  (this resource)
/// ```
/// The regional IGM is a sibling Batch 3 resource; this autoscaler must
/// reference its `self_link` (NOT `id`) and run in the matching region.
///
/// Example (CPU + scheduled-scaling override):
/// ```dart
/// final rigm = GoogleComputeRegionInstanceGroupManager(
///   localName: 'web_rigm',
///   name: TfArg.literal('web-rigm'),
///   region: TfArg.literal('asia-northeast1'),
///   /* ... versions, base_instance_name, target_size ... */
/// );
/// final autoscaler = GoogleComputeRegionAutoscaler(
///   localName: 'web_autoscaler',
///   name: TfArg.literal('web-autoscaler'),
///   region: TfArg.literal('asia-northeast1'),
///   target: TfArg.ref(rigm.selfLink),
///   autoscalingPolicy: const RegionAutoscalerAutoscalingPolicy(
///     minReplicas: 2,
///     maxReplicas: 20,
///     cooldownPeriod: 90,
///     cpuUtilization: RegionAutoscalerCpuUtilization(target: 0.65),
///     scalingSchedules: {
///       'business_hours': RegionAutoscalerScalingSchedule(
///         minRequiredReplicas: 8,
///         schedule: '0 9 * * MON-FRI',
///         durationSec: 28800,
///         timeZone: 'Asia/Tokyo',
///       ),
///     },
///   ),
/// );
/// ```
///
/// Naming convention: ALL nested helper types in this resource are
/// prefixed `RegionAutoscaler...` (e.g.
/// [RegionAutoscalerAutoscalingPolicy],
/// [RegionAutoscalerCpuUtilization],
/// [RegionAutoscalerScaleInControl], [RegionAutoscalerMetric],
/// [RegionAutoscalerScalingSchedule]) to avoid colliding with the
/// parallel `Autoscaler...` family on the zonal sibling.
///
/// Composition pattern: extends
/// `Resource<$GoogleComputeRegionAutoscaler>` for runtime behavior.
final class GoogleComputeRegionAutoscaler extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_region_autoscaler';

  GoogleComputeRegionAutoscaler({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    required TfArg<String> target,
    required RegionAutoscalerAutoscalingPolicy autoscalingPolicy,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'region': region,
            'target': target,
            'autoscaling_policy': TfArg.literal([autoscalingPolicy.toArgMap()]),
            if (description != null) 'description': description,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeRegionAutoscalerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/autoscalers/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `creation_timestamp` attribute (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
