// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_managed_scaling_policy`.
const Set<String> _awsEmrManagedScalingPolicySensitive = <String>{};

/// Typed helper for the `compute_limits` block of
/// `aws_emr_managed_scaling_policy` (derived from provider schema).
@immutable
final class EmrManagedScalingPolicyComputeLimits {
  const EmrManagedScalingPolicyComputeLimits({
    required this.maximumCapacityUnits,
    this.maximumCoreCapacityUnits,
    this.maximumOndemandCapacityUnits,
    required this.minimumCapacityUnits,
    required this.unitType,
  });

  final TfArg<num> maximumCapacityUnits;

  final TfArg<num>? maximumCoreCapacityUnits;

  final TfArg<num>? maximumOndemandCapacityUnits;

  final TfArg<num> minimumCapacityUnits;

  final TfArg<String> unitType;

  Map<String, Object?> encode() => {
    'maximum_capacity_units': maximumCapacityUnits.toTfJson(),
    if (maximumCoreCapacityUnits != null)
      'maximum_core_capacity_units': maximumCoreCapacityUnits!.toTfJson(),
    if (maximumOndemandCapacityUnits != null)
      'maximum_ondemand_capacity_units': maximumOndemandCapacityUnits!
          .toTfJson(),
    'minimum_capacity_units': minimumCapacityUnits.toTfJson(),
    'unit_type': unitType.toTfJson(),
  };
}

/// Factory wrapper for `aws_emr_managed_scaling_policy`.
final class AwsEmrManagedScalingPolicy extends Resource {
  static const String tfType = 'aws_emr_managed_scaling_policy';

  AwsEmrManagedScalingPolicy({
    required super.localName,
    required TfArg<String> clusterId,
    TfArg<String>? region,
    TfArg<String>? scalingStrategy,
    TfArg<num>? utilizationPerformanceIndex,
    required List<EmrManagedScalingPolicyComputeLimits> computeLimits,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           if (region != null) 'region': region,
           if (scalingStrategy != null) 'scaling_strategy': scalingStrategy,
           if (utilizationPerformanceIndex != null)
             'utilization_performance_index': utilizationPerformanceIndex,
           'compute_limits': TfArg.literal([
             for (final e in computeLimits) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrManagedScalingPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
