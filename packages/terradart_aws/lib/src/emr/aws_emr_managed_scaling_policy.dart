// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_managed_scaling_policy`.
const Set<String> _awsEmrManagedScalingPolicySensitive = <String>{};

/// Emr Managed Scaling Policy Scaling enum for `scaling_strategy`.
extension type const EmrManagedScalingPolicyScalingStrategy._(TfArg<String> _)
    implements TfArg<String> {
  EmrManagedScalingPolicyScalingStrategy.variable(String name)
    : this._(TfArg.variable(name));
  EmrManagedScalingPolicyScalingStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const EmrManagedScalingPolicyScalingStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = EmrManagedScalingPolicyScalingStrategy._(
    TfArgLiteral('DEFAULT'),
  );
  static const advanced = EmrManagedScalingPolicyScalingStrategy._(
    TfArgLiteral('ADVANCED'),
  );

  static const List<EmrManagedScalingPolicyScalingStrategy> values = [
    defaultCase,
    advanced,
  ];
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

  final EmrManagedScalingPolicyUnitType unitType;

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
extension type const EmrManagedScalingPolicyUnitType._(TfArg<String> _)
    implements TfArg<String> {
  EmrManagedScalingPolicyUnitType.variable(String name)
    : this._(TfArg.variable(name));
  EmrManagedScalingPolicyUnitType.expression(String template)
    : this._(TfArg.expression(template));
  const EmrManagedScalingPolicyUnitType.arg(TfArg<String> arg) : this._(arg);

  static const instancefleetunits = EmrManagedScalingPolicyUnitType._(
    TfArgLiteral('InstanceFleetUnits'),
  );
  static const instances = EmrManagedScalingPolicyUnitType._(
    TfArgLiteral('Instances'),
  );
  static const vcpu = EmrManagedScalingPolicyUnitType._(TfArgLiteral('VCPU'));

  static const List<EmrManagedScalingPolicyUnitType> values = [
    instancefleetunits,
    instances,
    vcpu,
  ];
}

/// Factory wrapper for `aws_emr_managed_scaling_policy`.
final class AwsEmrManagedScalingPolicy extends Resource {
  static const String tfType = 'aws_emr_managed_scaling_policy';

  AwsEmrManagedScalingPolicy(
    super.localName, {
    required TfArg<String> clusterId,
    TfArg<String>? region,
    EmrManagedScalingPolicyScalingStrategy? scalingStrategy,
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
