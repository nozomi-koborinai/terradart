// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_group`.
const Set<String> _awsAutoscalingGroupSensitive = <String>{};

/// Typed helper for the `availability_zone_distribution` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupAvailabilityZoneDistribution {
  const AutoscalingGroupAvailabilityZoneDistribution({
    this.capacityDistributionStrategy,
  });

  final TfArg<String>? capacityDistributionStrategy;

  Map<String, Object?> encode() => {
    if (capacityDistributionStrategy != null)
      'capacity_distribution_strategy': capacityDistributionStrategy!
          .toTfJson(),
  };
}

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupCapacityReservationSpecification {
  const AutoscalingGroupCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final TfArg<String>? capacityReservationPreference;

  final AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget?
  capacityReservationTarget;

  Map<String, Object?> encode() => {
    if (capacityReservationPreference != null)
      'capacity_reservation_preference': capacityReservationPreference!
          .toTfJson(),
    if (capacityReservationTarget != null)
      'capacity_reservation_target': capacityReservationTarget!.encode(),
  };
}

/// Typed helper for the `capacity_reservation_specification.capacity_reservation_target` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget {
  const AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationIds,
    this.capacityReservationResourceGroupArns,
  });

  final TfArg<List<Object?>>? capacityReservationIds;

  final TfArg<List<Object?>>? capacityReservationResourceGroupArns;

  Map<String, Object?> encode() => {
    if (capacityReservationIds != null)
      'capacity_reservation_ids': capacityReservationIds!.toTfJson(),
    if (capacityReservationResourceGroupArns != null)
      'capacity_reservation_resource_group_arns':
          capacityReservationResourceGroupArns!.toTfJson(),
  };
}

/// Typed helper for the `initial_lifecycle_hook` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInitialLifecycleHook {
  const AutoscalingGroupInitialLifecycleHook({
    this.defaultResult,
    this.heartbeatTimeout,
    required this.lifecycleTransition,
    required this.name,
    this.notificationMetadata,
    this.notificationTargetArn,
    this.roleArn,
  });

  final TfArg<String>? defaultResult;

  final TfArg<num>? heartbeatTimeout;

  final TfArg<String> lifecycleTransition;

  final TfArg<String> name;

  final TfArg<String>? notificationMetadata;

  final TfArg<String>? notificationTargetArn;

  final TfArg<String>? roleArn;

  Map<String, Object?> encode() => {
    if (defaultResult != null) 'default_result': defaultResult!.toTfJson(),
    if (heartbeatTimeout != null)
      'heartbeat_timeout': heartbeatTimeout!.toTfJson(),
    'lifecycle_transition': lifecycleTransition.toTfJson(),
    'name': name.toTfJson(),
    if (notificationMetadata != null)
      'notification_metadata': notificationMetadata!.toTfJson(),
    if (notificationTargetArn != null)
      'notification_target_arn': notificationTargetArn!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
  };
}

/// Typed helper for the `instance_lifecycle_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceLifecyclePolicy {
  const AutoscalingGroupInstanceLifecyclePolicy({this.retentionTriggers});

  final AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers?
  retentionTriggers;

  Map<String, Object?> encode() => {
    if (retentionTriggers != null)
      'retention_triggers': retentionTriggers!.encode(),
  };
}

/// Typed helper for the `instance_lifecycle_policy.retention_triggers` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers {
  const AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers({
    this.terminateHookAbandon,
  });

  final TfArg<String>? terminateHookAbandon;

  Map<String, Object?> encode() => {
    if (terminateHookAbandon != null)
      'terminate_hook_abandon': terminateHookAbandon!.toTfJson(),
  };
}

/// Typed helper for the `instance_maintenance_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceMaintenancePolicy {
  const AutoscalingGroupInstanceMaintenancePolicy({
    required this.maxHealthyPercentage,
    required this.minHealthyPercentage,
  });

  final TfArg<num> maxHealthyPercentage;

  final TfArg<num> minHealthyPercentage;

  Map<String, Object?> encode() => {
    'max_healthy_percentage': maxHealthyPercentage.toTfJson(),
    'min_healthy_percentage': minHealthyPercentage.toTfJson(),
  };
}

/// Typed helper for the `instance_refresh` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRefresh {
  const AutoscalingGroupInstanceRefresh({
    required this.strategy,
    this.triggers,
    this.preferences,
  });

  final TfArg<String> strategy;

  final TfArg<List<Object?>>? triggers;

  final AutoscalingGroupInstanceRefreshPreferences? preferences;

  Map<String, Object?> encode() => {
    'strategy': strategy.toTfJson(),
    if (triggers != null) 'triggers': triggers!.toTfJson(),
    if (preferences != null) 'preferences': preferences!.encode(),
  };
}

/// Typed helper for the `instance_refresh.preferences` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRefreshPreferences {
  const AutoscalingGroupInstanceRefreshPreferences({
    this.autoRollback,
    this.checkpointDelay,
    this.checkpointPercentages,
    this.instanceWarmup,
    this.maxHealthyPercentage,
    this.minHealthyPercentage,
    this.scaleInProtectedInstances,
    this.skipMatching,
    this.standbyInstances,
    this.alarmSpecification,
  });

  final TfArg<bool>? autoRollback;

  final TfArg<String>? checkpointDelay;

  final TfArg<List<Object?>>? checkpointPercentages;

  final TfArg<String>? instanceWarmup;

  final TfArg<num>? maxHealthyPercentage;

  final TfArg<num>? minHealthyPercentage;

  final TfArg<String>? scaleInProtectedInstances;

  final TfArg<bool>? skipMatching;

  final TfArg<String>? standbyInstances;

  final AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification?
  alarmSpecification;

  Map<String, Object?> encode() => {
    if (autoRollback != null) 'auto_rollback': autoRollback!.toTfJson(),
    if (checkpointDelay != null)
      'checkpoint_delay': checkpointDelay!.toTfJson(),
    if (checkpointPercentages != null)
      'checkpoint_percentages': checkpointPercentages!.toTfJson(),
    if (instanceWarmup != null) 'instance_warmup': instanceWarmup!.toTfJson(),
    if (maxHealthyPercentage != null)
      'max_healthy_percentage': maxHealthyPercentage!.toTfJson(),
    if (minHealthyPercentage != null)
      'min_healthy_percentage': minHealthyPercentage!.toTfJson(),
    if (scaleInProtectedInstances != null)
      'scale_in_protected_instances': scaleInProtectedInstances!.toTfJson(),
    if (skipMatching != null) 'skip_matching': skipMatching!.toTfJson(),
    if (standbyInstances != null)
      'standby_instances': standbyInstances!.toTfJson(),
    if (alarmSpecification != null)
      'alarm_specification': alarmSpecification!.encode(),
  };
}

/// Typed helper for the `instance_refresh.preferences.alarm_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification {
  const AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification({
    this.alarms,
  });

  final TfArg<List<Object?>>? alarms;

  Map<String, Object?> encode() => {
    if (alarms != null) 'alarms': alarms!.toTfJson(),
  };
}

/// Typed helper for the `launch_template` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupLaunchTemplate {
  const AutoscalingGroupLaunchTemplate({this.id, this.name, this.version});

  final TfArg<String>? id;

  final TfArg<String>? name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicy {
  const AutoscalingGroupMixedInstancesPolicy({
    this.instancesDistribution,
    required this.launchTemplate,
  });

  final AutoscalingGroupMixedInstancesPolicyInstancesDistribution?
  instancesDistribution;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplate launchTemplate;

  Map<String, Object?> encode() => {
    if (instancesDistribution != null)
      'instances_distribution': instancesDistribution!.encode(),
    'launch_template': launchTemplate.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.instances_distribution` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyInstancesDistribution {
  const AutoscalingGroupMixedInstancesPolicyInstancesDistribution({
    this.onDemandAllocationStrategy,
    this.onDemandBaseCapacity,
    this.onDemandPercentageAboveBaseCapacity,
    this.spotAllocationStrategy,
    this.spotInstancePools,
    this.spotMaxPrice,
  });

  final TfArg<String>? onDemandAllocationStrategy;

  final TfArg<num>? onDemandBaseCapacity;

  final TfArg<num>? onDemandPercentageAboveBaseCapacity;

  final TfArg<String>? spotAllocationStrategy;

  final TfArg<num>? spotInstancePools;

  final TfArg<String>? spotMaxPrice;

  Map<String, Object?> encode() => {
    if (onDemandAllocationStrategy != null)
      'on_demand_allocation_strategy': onDemandAllocationStrategy!.toTfJson(),
    if (onDemandBaseCapacity != null)
      'on_demand_base_capacity': onDemandBaseCapacity!.toTfJson(),
    if (onDemandPercentageAboveBaseCapacity != null)
      'on_demand_percentage_above_base_capacity':
          onDemandPercentageAboveBaseCapacity!.toTfJson(),
    if (spotAllocationStrategy != null)
      'spot_allocation_strategy': spotAllocationStrategy!.toTfJson(),
    if (spotInstancePools != null)
      'spot_instance_pools': spotInstancePools!.toTfJson(),
    if (spotMaxPrice != null) 'spot_max_price': spotMaxPrice!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplate {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplate({
    required this.launchTemplateSpecification,
    this.override,
  });

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
  launchTemplateSpecification;

  final List<AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride>?
  override;

  Map<String, Object?> encode() => {
    'launch_template_specification': launchTemplateSpecification.encode(),
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.launch_template_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride({
    this.instanceType,
    this.weightedCapacity,
    this.instanceRequirements,
    this.launchTemplateSpecification,
  });

  final TfArg<String>? instanceType;

  final TfArg<String>? weightedCapacity;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements?
  instanceRequirements;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification?
  launchTemplateSpecification;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (instanceRequirements != null)
      'instance_requirements': instanceRequirements!.encode(),
    if (launchTemplateSpecification != null)
      'launch_template_specification': launchTemplateSpecification!.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements({
    this.acceleratorManufacturers,
    this.acceleratorNames,
    this.acceleratorTypes,
    this.allowedInstanceTypes,
    this.bareMetal,
    this.burstablePerformance,
    this.cpuManufacturers,
    this.excludedInstanceTypes,
    this.instanceGenerations,
    this.localStorage,
    this.localStorageTypes,
    this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
    this.spotMaxPricePercentageOverLowestPrice,
    this.acceleratorCount,
    this.acceleratorTotalMemoryMib,
    this.baselineEbsBandwidthMbps,
    this.memoryGibPerVcpu,
    this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.totalLocalStorageGb,
    this.vcpuCount,
  });

  final TfArg<List<Object?>>? acceleratorManufacturers;

  final TfArg<List<Object?>>? acceleratorNames;

  final TfArg<List<Object?>>? acceleratorTypes;

  final TfArg<List<Object?>>? allowedInstanceTypes;

  final TfArg<String>? bareMetal;

  final TfArg<String>? burstablePerformance;

  final TfArg<List<Object?>>? cpuManufacturers;

  final TfArg<List<Object?>>? excludedInstanceTypes;

  final TfArg<List<Object?>>? instanceGenerations;

  final TfArg<String>? localStorage;

  final TfArg<List<Object?>>? localStorageTypes;

  final TfArg<num>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount?
  acceleratorCount;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib?
  acceleratorTotalMemoryMib;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps?
  baselineEbsBandwidthMbps;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu?
  memoryGibPerVcpu;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib?
  memoryMib;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps?
  networkBandwidthGbps;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount?
  networkInterfaceCount;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb?
  totalLocalStorageGb;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount?
  vcpuCount;

  Map<String, Object?> encode() => {
    if (acceleratorManufacturers != null)
      'accelerator_manufacturers': acceleratorManufacturers!.toTfJson(),
    if (acceleratorNames != null)
      'accelerator_names': acceleratorNames!.toTfJson(),
    if (acceleratorTypes != null)
      'accelerator_types': acceleratorTypes!.toTfJson(),
    if (allowedInstanceTypes != null)
      'allowed_instance_types': allowedInstanceTypes!.toTfJson(),
    if (bareMetal != null) 'bare_metal': bareMetal!.toTfJson(),
    if (burstablePerformance != null)
      'burstable_performance': burstablePerformance!.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': cpuManufacturers!.toTfJson(),
    if (excludedInstanceTypes != null)
      'excluded_instance_types': excludedInstanceTypes!.toTfJson(),
    if (instanceGenerations != null)
      'instance_generations': instanceGenerations!.toTfJson(),
    if (localStorage != null) 'local_storage': localStorage!.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': localStorageTypes!.toTfJson(),
    if (maxSpotPriceAsPercentageOfOptimalOnDemandPrice != null)
      'max_spot_price_as_percentage_of_optimal_on_demand_price':
          maxSpotPriceAsPercentageOfOptimalOnDemandPrice!.toTfJson(),
    if (onDemandMaxPricePercentageOverLowestPrice != null)
      'on_demand_max_price_percentage_over_lowest_price':
          onDemandMaxPricePercentageOverLowestPrice!.toTfJson(),
    if (requireHibernateSupport != null)
      'require_hibernate_support': requireHibernateSupport!.toTfJson(),
    if (spotMaxPricePercentageOverLowestPrice != null)
      'spot_max_price_percentage_over_lowest_price':
          spotMaxPricePercentageOverLowestPrice!.toTfJson(),
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.encode(),
    if (acceleratorTotalMemoryMib != null)
      'accelerator_total_memory_mib': acceleratorTotalMemoryMib!.encode(),
    if (baselineEbsBandwidthMbps != null)
      'baseline_ebs_bandwidth_mbps': baselineEbsBandwidthMbps!.encode(),
    if (memoryGibPerVcpu != null)
      'memory_gib_per_vcpu': memoryGibPerVcpu!.encode(),
    if (memoryMib != null) 'memory_mib': memoryMib!.encode(),
    if (networkBandwidthGbps != null)
      'network_bandwidth_gbps': networkBandwidthGbps!.encode(),
    if (networkInterfaceCount != null)
      'network_interface_count': networkInterfaceCount!.encode(),
    if (totalLocalStorageGb != null)
      'total_local_storage_gb': totalLocalStorageGb!.encode(),
    if (vcpuCount != null) 'vcpu_count': vcpuCount!.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.accelerator_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.memory_mib` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.network_bandwidth_gbps` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.network_interface_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.total_local_storage_gb` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.vcpu_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.launch_template_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `tag` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupTag {
  const AutoscalingGroupTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<bool> propagateAtLaunch;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'propagate_at_launch': propagateAtLaunch.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `traffic_source` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupTrafficSource {
  const AutoscalingGroupTrafficSource({required this.identifier, this.type});

  final TfArg<String> identifier;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `warm_pool` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupWarmPool {
  const AutoscalingGroupWarmPool({
    this.maxGroupPreparedCapacity,
    this.minSize,
    this.poolState,
    this.instanceReusePolicy,
  });

  final TfArg<num>? maxGroupPreparedCapacity;

  final TfArg<num>? minSize;

  final TfArg<String>? poolState;

  final AutoscalingGroupWarmPoolInstanceReusePolicy? instanceReusePolicy;

  Map<String, Object?> encode() => {
    if (maxGroupPreparedCapacity != null)
      'max_group_prepared_capacity': maxGroupPreparedCapacity!.toTfJson(),
    if (minSize != null) 'min_size': minSize!.toTfJson(),
    if (poolState != null) 'pool_state': poolState!.toTfJson(),
    if (instanceReusePolicy != null)
      'instance_reuse_policy': instanceReusePolicy!.encode(),
  };
}

/// Typed helper for the `warm_pool.instance_reuse_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupWarmPoolInstanceReusePolicy {
  const AutoscalingGroupWarmPoolInstanceReusePolicy({this.reuseOnScaleIn});

  final TfArg<bool>? reuseOnScaleIn;

  Map<String, Object?> encode() => {
    if (reuseOnScaleIn != null) 'reuse_on_scale_in': reuseOnScaleIn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_group`.
final class AwsAutoscalingGroup extends Resource {
  static const String tfType = 'aws_autoscaling_group';

  AwsAutoscalingGroup({
    required super.localName,
    TfArg<List<String>>? availabilityZones,
    TfArg<bool>? capacityRebalance,
    TfArg<String>? context,
    TfArg<num>? defaultCooldown,
    TfArg<num>? defaultInstanceWarmup,
    TfArg<num>? desiredCapacity,
    TfArg<String>? desiredCapacityType,
    TfArg<List<String>>? enabledMetrics,
    TfArg<bool>? forceDelete,
    TfArg<bool>? forceDeleteWarmPool,
    TfArg<num>? healthCheckGracePeriod,
    TfArg<String>? healthCheckType,
    TfArg<bool>? ignoreFailedScalingActivities,
    TfArg<String>? launchConfiguration,
    TfArg<List<String>>? loadBalancers,
    TfArg<num>? maxInstanceLifetime,
    required TfArg<num> maxSize,
    TfArg<String>? metricsGranularity,
    TfArg<num>? minElbCapacity,
    required TfArg<num> minSize,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? placementGroup,
    TfArg<bool>? protectFromScaleIn,
    TfArg<String>? region,
    TfArg<String>? serviceLinkedRoleArn,
    TfArg<List<String>>? suspendedProcesses,
    TfArg<List<String>>? targetGroupArns,
    TfArg<List<String>>? terminationPolicies,
    TfArg<List<String>>? vpcZoneIdentifier,
    TfArg<String>? waitForCapacityTimeout,
    TfArg<num>? waitForElbCapacity,
    AutoscalingGroupAvailabilityZoneDistribution? availabilityZoneDistribution,
    AutoscalingGroupCapacityReservationSpecification?
    capacityReservationSpecification,
    List<AutoscalingGroupInitialLifecycleHook>? initialLifecycleHook,
    AutoscalingGroupInstanceLifecyclePolicy? instanceLifecyclePolicy,
    AutoscalingGroupInstanceMaintenancePolicy? instanceMaintenancePolicy,
    AutoscalingGroupInstanceRefresh? instanceRefresh,
    AutoscalingGroupLaunchTemplate? launchTemplate,
    AutoscalingGroupMixedInstancesPolicy? mixedInstancesPolicy,
    List<AutoscalingGroupTag>? tag,
    List<AutoscalingGroupTrafficSource>? trafficSource,
    AutoscalingGroupWarmPool? warmPool,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (capacityRebalance != null)
             'capacity_rebalance': capacityRebalance,
           if (context != null) 'context': context,
           if (defaultCooldown != null) 'default_cooldown': defaultCooldown,
           if (defaultInstanceWarmup != null)
             'default_instance_warmup': defaultInstanceWarmup,
           if (desiredCapacity != null) 'desired_capacity': desiredCapacity,
           if (desiredCapacityType != null)
             'desired_capacity_type': desiredCapacityType,
           if (enabledMetrics != null) 'enabled_metrics': enabledMetrics,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (forceDeleteWarmPool != null)
             'force_delete_warm_pool': forceDeleteWarmPool,
           if (healthCheckGracePeriod != null)
             'health_check_grace_period': healthCheckGracePeriod,
           if (healthCheckType != null) 'health_check_type': healthCheckType,
           if (ignoreFailedScalingActivities != null)
             'ignore_failed_scaling_activities': ignoreFailedScalingActivities,
           if (launchConfiguration != null)
             'launch_configuration': launchConfiguration,
           if (loadBalancers != null) 'load_balancers': loadBalancers,
           if (maxInstanceLifetime != null)
             'max_instance_lifetime': maxInstanceLifetime,
           'max_size': maxSize,
           if (metricsGranularity != null)
             'metrics_granularity': metricsGranularity,
           if (minElbCapacity != null) 'min_elb_capacity': minElbCapacity,
           'min_size': minSize,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (placementGroup != null) 'placement_group': placementGroup,
           if (protectFromScaleIn != null)
             'protect_from_scale_in': protectFromScaleIn,
           if (region != null) 'region': region,
           if (serviceLinkedRoleArn != null)
             'service_linked_role_arn': serviceLinkedRoleArn,
           if (suspendedProcesses != null)
             'suspended_processes': suspendedProcesses,
           if (targetGroupArns != null) 'target_group_arns': targetGroupArns,
           if (terminationPolicies != null)
             'termination_policies': terminationPolicies,
           if (vpcZoneIdentifier != null)
             'vpc_zone_identifier': vpcZoneIdentifier,
           if (waitForCapacityTimeout != null)
             'wait_for_capacity_timeout': waitForCapacityTimeout,
           if (waitForElbCapacity != null)
             'wait_for_elb_capacity': waitForElbCapacity,
           if (availabilityZoneDistribution != null)
             'availability_zone_distribution': TfArg.literal(
               availabilityZoneDistribution.encode(),
             ),
           if (capacityReservationSpecification != null)
             'capacity_reservation_specification': TfArg.literal(
               capacityReservationSpecification.encode(),
             ),
           if (initialLifecycleHook != null)
             'initial_lifecycle_hook': TfArg.literal([
               for (final e in initialLifecycleHook) e.encode(),
             ]),
           if (instanceLifecyclePolicy != null)
             'instance_lifecycle_policy': TfArg.literal(
               instanceLifecyclePolicy.encode(),
             ),
           if (instanceMaintenancePolicy != null)
             'instance_maintenance_policy': TfArg.literal(
               instanceMaintenancePolicy.encode(),
             ),
           if (instanceRefresh != null)
             'instance_refresh': TfArg.literal(instanceRefresh.encode()),
           if (launchTemplate != null)
             'launch_template': TfArg.literal(launchTemplate.encode()),
           if (mixedInstancesPolicy != null)
             'mixed_instances_policy': TfArg.literal(
               mixedInstancesPolicy.encode(),
             ),
           if (tag != null)
             'tag': TfArg.literal([for (final e in tag) e.encode()]),
           if (trafficSource != null)
             'traffic_source': TfArg.literal([
               for (final e in trafficSource) e.encode(),
             ]),
           if (warmPool != null) 'warm_pool': TfArg.literal(warmPool.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `predicted_capacity` attribute.
  TfRef<num> get predictedCapacity =>
      TfRef.attribute<num>(this, 'predicted_capacity');

  /// Reference to `warm_pool_size` attribute.
  TfRef<num> get warmPoolSize => TfRef.attribute<num>(this, 'warm_pool_size');
}
