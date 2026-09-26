// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_capacity_provider`.
const Set<String> _awsEcsCapacityProviderSensitive = <String>{};

/// Typed helper for the `auto_scaling_group_provider` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAutoScalingGroupProvider {
  const EcsCapacityProviderAutoScalingGroupProvider({
    required this.autoScalingGroupArn,
    this.managedDraining,
    this.managedTerminationProtection,
    this.managedScaling,
  });

  final TfArg<String> autoScalingGroupArn;

  final TfArg<String>? managedDraining;

  final TfArg<String>? managedTerminationProtection;

  final EcsCapacityProviderAutoScalingGroupProviderManagedScaling?
  managedScaling;

  Map<String, Object?> encode() => {
    'auto_scaling_group_arn': autoScalingGroupArn.toTfJson(),
    if (managedDraining != null)
      'managed_draining': managedDraining!.toTfJson(),
    if (managedTerminationProtection != null)
      'managed_termination_protection': managedTerminationProtection!
          .toTfJson(),
    if (managedScaling != null) 'managed_scaling': managedScaling!.encode(),
  };
}

/// Typed helper for the `auto_scaling_group_provider.managed_scaling` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderAutoScalingGroupProviderManagedScaling {
  const EcsCapacityProviderAutoScalingGroupProviderManagedScaling({
    this.instanceWarmupPeriod,
    this.maximumScalingStepSize,
    this.minimumScalingStepSize,
    this.status,
    this.targetCapacity,
  });

  final TfArg<num>? instanceWarmupPeriod;

  final TfArg<num>? maximumScalingStepSize;

  final TfArg<num>? minimumScalingStepSize;

  final TfArg<String>? status;

  final TfArg<num>? targetCapacity;

  Map<String, Object?> encode() => {
    if (instanceWarmupPeriod != null)
      'instance_warmup_period': instanceWarmupPeriod!.toTfJson(),
    if (maximumScalingStepSize != null)
      'maximum_scaling_step_size': maximumScalingStepSize!.toTfJson(),
    if (minimumScalingStepSize != null)
      'minimum_scaling_step_size': minimumScalingStepSize!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (targetCapacity != null) 'target_capacity': targetCapacity!.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProvider {
  const EcsCapacityProviderManagedInstancesProvider({
    required this.infrastructureRoleArn,
    this.propagateTags,
    this.autoRepairConfiguration,
    this.infrastructureOptimization,
    required this.instanceLaunchTemplate,
  });

  final TfArg<String> infrastructureRoleArn;

  final TfArg<String>? propagateTags;

  final EcsCapacityProviderManagedInstancesProviderAutoRepairConfiguration?
  autoRepairConfiguration;

  final EcsCapacityProviderManagedInstancesProviderInfrastructureOptimization?
  infrastructureOptimization;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplate
  instanceLaunchTemplate;

  Map<String, Object?> encode() => {
    'infrastructure_role_arn': infrastructureRoleArn.toTfJson(),
    if (propagateTags != null) 'propagate_tags': propagateTags!.toTfJson(),
    if (autoRepairConfiguration != null)
      'auto_repair_configuration': autoRepairConfiguration!.encode(),
    if (infrastructureOptimization != null)
      'infrastructure_optimization': infrastructureOptimization!.encode(),
    'instance_launch_template': instanceLaunchTemplate.encode(),
  };
}

/// Typed helper for the `managed_instances_provider.auto_repair_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderAutoRepairConfiguration {
  const EcsCapacityProviderManagedInstancesProviderAutoRepairConfiguration({
    this.actionsStatus,
  });

  final TfArg<String>? actionsStatus;

  Map<String, Object?> encode() => {
    if (actionsStatus != null) 'actions_status': actionsStatus!.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.infrastructure_optimization` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInfrastructureOptimization {
  const EcsCapacityProviderManagedInstancesProviderInfrastructureOptimization({
    this.scaleInAfter,
  });

  final TfArg<num>? scaleInAfter;

  Map<String, Object?> encode() => {
    if (scaleInAfter != null) 'scale_in_after': scaleInAfter!.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplate {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplate({
    this.capacityOptionType,
    required this.ec2InstanceProfileArn,
    this.monitoring,
    this.capacityReservations,
    this.instanceRequirements,
    this.localStorageConfiguration,
    required this.networkConfiguration,
    this.storageConfiguration,
  });

  final TfArg<String>? capacityOptionType;

  final TfArg<String> ec2InstanceProfileArn;

  final TfArg<String>? monitoring;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations?
  capacityReservations;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements?
  instanceRequirements;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration?
  localStorageConfiguration;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration
  networkConfiguration;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration?
  storageConfiguration;

  Map<String, Object?> encode() => {
    if (capacityOptionType != null)
      'capacity_option_type': capacityOptionType!.toTfJson(),
    'ec2_instance_profile_arn': ec2InstanceProfileArn.toTfJson(),
    if (monitoring != null) 'monitoring': monitoring!.toTfJson(),
    if (capacityReservations != null)
      'capacity_reservations': capacityReservations!.encode(),
    if (instanceRequirements != null)
      'instance_requirements': instanceRequirements!.encode(),
    if (localStorageConfiguration != null)
      'local_storage_configuration': localStorageConfiguration!.encode(),
    'network_configuration': networkConfiguration.encode(),
    if (storageConfiguration != null)
      'storage_configuration': storageConfiguration!.encode(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.capacity_reservations` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations({
    this.reservationGroupArn,
    this.reservationPreference,
  });

  final TfArg<String>? reservationGroupArn;

  final TfArg<String>? reservationPreference;

  Map<String, Object?> encode() => {
    if (reservationGroupArn != null)
      'reservation_group_arn': reservationGroupArn!.toTfJson(),
    if (reservationPreference != null)
      'reservation_preference': reservationPreference!.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements({
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
    required this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.totalLocalStorageGb,
    required this.vcpuCount,
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

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount?
  acceleratorCount;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib?
  acceleratorTotalMemoryMib;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps?
  baselineEbsBandwidthMbps;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu?
  memoryGibPerVcpu;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib
  memoryMib;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps?
  networkBandwidthGbps;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount?
  networkInterfaceCount;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb?
  totalLocalStorageGb;

  final EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount
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
    'memory_mib': memoryMib.encode(),
    if (networkBandwidthGbps != null)
      'network_bandwidth_gbps': networkBandwidthGbps!.encode(),
    if (networkInterfaceCount != null)
      'network_interface_count': networkInterfaceCount!.encode(),
    if (totalLocalStorageGb != null)
      'total_local_storage_gb': totalLocalStorageGb!.encode(),
    'vcpu_count': vcpuCount.encode(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.accelerator_count` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.memory_mib` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib({
    this.max,
    required this.min,
  });

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.network_bandwidth_gbps` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.network_interface_count` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.total_local_storage_gb` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb({
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

/// Typed helper for the `managed_instances_provider.instance_launch_template.instance_requirements.vcpu_count` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount({
    this.max,
    required this.min,
  });

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.local_storage_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration({
    this.useLocalStorage,
  });

  final TfArg<bool>? useLocalStorage;

  Map<String, Object?> encode() => {
    if (useLocalStorage != null)
      'use_local_storage': useLocalStorage!.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.network_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration({
    this.securityGroups,
    required this.subnets,
  });

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `managed_instances_provider.instance_launch_template.storage_configuration` block of
/// `aws_ecs_capacity_provider` (derived from provider schema).
@immutable
final class EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration {
  const EcsCapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration({
    required this.storageSizeGib,
  });

  final TfArg<num> storageSizeGib;

  Map<String, Object?> encode() => {
    'storage_size_gib': storageSizeGib.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_capacity_provider`.
final class AwsEcsCapacityProvider extends Resource {
  static const String tfType = 'aws_ecs_capacity_provider';

  AwsEcsCapacityProvider({
    required super.localName,
    TfArg<String>? cluster,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EcsCapacityProviderAutoScalingGroupProvider? autoScalingGroupProvider,
    EcsCapacityProviderManagedInstancesProvider? managedInstancesProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cluster != null) 'cluster': cluster,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (autoScalingGroupProvider != null)
             'auto_scaling_group_provider': TfArg.literal(
               autoScalingGroupProvider.encode(),
             ),
           if (managedInstancesProvider != null)
             'managed_instances_provider': TfArg.literal(
               managedInstancesProvider.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsCapacityProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
