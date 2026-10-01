// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_managed_scaling_policy`.
const Set<String> _awsEmrManagedScalingPolicySensitive = <String>{};

/// Emr Managed Scaling Policy Scaling enum for `scaling_strategy`.
enum EmrManagedScalingPolicyScalingStrategy implements TerraformEnum {
  defaultCase('DEFAULT'),
  advanced('ADVANCED');

  const EmrManagedScalingPolicyScalingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<EmrManagedScalingPolicyUnitType> unitType;

  Map<String, Object?> encode() => {
    'maximum_capacity_units': maximumCapacityUnits.toTfJson(),
    'maximum_core_capacity_units': ?maximumCoreCapacityUnits?.toTfJson(),
    'maximum_ondemand_capacity_units': ?maximumOndemandCapacityUnits
        ?.toTfJson(),
    'minimum_capacity_units': minimumCapacityUnits.toTfJson(),
    'unit_type': unitType.toTfJson(),
  };
}

/// `unit_type` — derived from the provider schema description.
enum EmrManagedScalingPolicyUnitType implements TerraformEnum {
  instancefleetunits('InstanceFleetUnits'),
  instances('Instances'),
  vcpu('VCPU');

  const EmrManagedScalingPolicyUnitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_emr_managed_scaling_policy`.
final class AwsEmrManagedScalingPolicy extends Resource {
  static const String tfType = 'aws_emr_managed_scaling_policy';

  AwsEmrManagedScalingPolicy({
    required super.localName,
    required TfArg<String> clusterId,
    TfArg<String>? region,
    TfArg<EmrManagedScalingPolicyScalingStrategy>? scalingStrategy,
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
           'region': ?region,
           'scaling_strategy': ?scalingStrategy,
           'utilization_performance_index': ?utilizationPerformanceIndex,
           'compute_limits': TfArg.literal([
             for (final e in computeLimits) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrManagedScalingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrManagedScalingPolicy>`.
  RefTo<AwsEmrManagedScalingPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scaling_strategy` attribute.
  TfRef<String> get scalingStrategy =>
      TfRef.attribute<String>(this, 'scaling_strategy');

  /// Reference to `utilization_performance_index` attribute.
  TfRef<num> get utilizationPerformanceIndex =>
      TfRef.attribute<num>(this, 'utilization_performance_index');
}
