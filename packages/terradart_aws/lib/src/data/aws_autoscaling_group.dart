// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_group`.
const Set<String> _awsAutoscalingGroupSensitive = <String>{};

/// Factory wrapper for `aws_autoscaling_group`.
final class DataAwsAutoscalingGroup extends Data {
  static const String tfType = 'aws_autoscaling_group';

  DataAwsAutoscalingGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `default_cooldown` attribute.
  TfRef<num> get defaultCooldown =>
      TfRef.attribute<num>(this, 'default_cooldown');

  /// Reference to `desired_capacity` attribute.
  TfRef<num> get desiredCapacity =>
      TfRef.attribute<num>(this, 'desired_capacity');

  /// Reference to `desired_capacity_type` attribute.
  TfRef<String> get desiredCapacityType =>
      TfRef.attribute<String>(this, 'desired_capacity_type');

  /// Reference to `enabled_metrics` attribute.
  TfRef<List<String>> get enabledMetrics =>
      TfRef.attribute<List<String>>(this, 'enabled_metrics');

  /// Reference to `health_check_grace_period` attribute.
  TfRef<num> get healthCheckGracePeriod =>
      TfRef.attribute<num>(this, 'health_check_grace_period');

  /// Reference to `health_check_type` attribute.
  TfRef<String> get healthCheckType =>
      TfRef.attribute<String>(this, 'health_check_type');

  /// Reference to `instance_maintenance_policy` attribute.
  TfRef<List<Map<String, Object?>>> get instanceMaintenancePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_maintenance_policy',
      );

  /// Reference to `launch_configuration` attribute.
  TfRef<String> get launchConfiguration =>
      TfRef.attribute<String>(this, 'launch_configuration');

  /// Reference to `launch_template` attribute.
  TfRef<List<Map<String, Object?>>> get launchTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'launch_template');

  /// Reference to `load_balancers` attribute.
  TfRef<List<String>> get loadBalancers =>
      TfRef.attribute<List<String>>(this, 'load_balancers');

  /// Reference to `max_instance_lifetime` attribute.
  TfRef<num> get maxInstanceLifetime =>
      TfRef.attribute<num>(this, 'max_instance_lifetime');

  /// Reference to `max_size` attribute.
  TfRef<num> get maxSize => TfRef.attribute<num>(this, 'max_size');

  /// Reference to `min_size` attribute.
  TfRef<num> get minSize => TfRef.attribute<num>(this, 'min_size');

  /// Reference to `mixed_instances_policy` attribute.
  TfRef<List<Map<String, Object?>>> get mixedInstancesPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'mixed_instances_policy',
      );

  /// Reference to `new_instances_protected_from_scale_in` attribute.
  TfRef<bool> get newInstancesProtectedFromScaleIn =>
      TfRef.attribute<bool>(this, 'new_instances_protected_from_scale_in');

  /// Reference to `placement_group` attribute.
  TfRef<String> get placementGroup =>
      TfRef.attribute<String>(this, 'placement_group');

  /// Reference to `predicted_capacity` attribute.
  TfRef<num> get predictedCapacity =>
      TfRef.attribute<num>(this, 'predicted_capacity');

  /// Reference to `service_linked_role_arn` attribute.
  TfRef<String> get serviceLinkedRoleArn =>
      TfRef.attribute<String>(this, 'service_linked_role_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `suspended_processes` attribute.
  TfRef<List<String>> get suspendedProcesses =>
      TfRef.attribute<List<String>>(this, 'suspended_processes');

  /// Reference to `tag` attribute.
  TfRef<List<Map<String, Object?>>> get tag =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tag');

  /// Reference to `target_group_arns` attribute.
  TfRef<List<String>> get targetGroupArns =>
      TfRef.attribute<List<String>>(this, 'target_group_arns');

  /// Reference to `termination_policies` attribute.
  TfRef<List<String>> get terminationPolicies =>
      TfRef.attribute<List<String>>(this, 'termination_policies');

  /// Reference to `traffic_source` attribute.
  TfRef<List<Map<String, Object?>>> get trafficSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'traffic_source');

  /// Reference to `vpc_zone_identifier` attribute.
  TfRef<String> get vpcZoneIdentifier =>
      TfRef.attribute<String>(this, 'vpc_zone_identifier');

  /// Reference to `warm_pool` attribute.
  TfRef<List<Map<String, Object?>>> get warmPool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'warm_pool');

  /// Reference to `warm_pool_size` attribute.
  TfRef<num> get warmPoolSize => TfRef.attribute<num>(this, 'warm_pool_size');
}
