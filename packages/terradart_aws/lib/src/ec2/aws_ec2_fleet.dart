// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_fleet`.
const Set<String> _awsEc2FleetSensitive = <String>{};

/// Typed helper for the `fleet_instance_set` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetFleetInstanceSet {
  const Ec2FleetFleetInstanceSet({
    this.instanceIds,
    this.instanceType,
    this.lifecycle,
    this.platform,
  });

  final TfArg<List<Object?>>? instanceIds;

  final TfArg<String>? instanceType;

  final TfArg<String>? lifecycle;

  final TfArg<String>? platform;

  Map<String, Object?> encode() => {
    if (instanceIds != null) 'instance_ids': instanceIds!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycle != null) 'lifecycle': lifecycle!.toTfJson(),
    if (platform != null) 'platform': platform!.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfig {
  const Ec2FleetLaunchTemplateConfig({
    this.launchTemplateSpecification,
    this.override,
  });

  final Ec2FleetLaunchTemplateConfigLaunchTemplateSpecification?
  launchTemplateSpecification;

  final List<Ec2FleetLaunchTemplateConfigOverride>? override;

  Map<String, Object?> encode() => {
    if (launchTemplateSpecification != null)
      'launch_template_specification': launchTemplateSpecification!.encode(),
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `launch_template_config.launch_template_specification` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigLaunchTemplateSpecification {
  const Ec2FleetLaunchTemplateConfigLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    required this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverride {
  const Ec2FleetLaunchTemplateConfigOverride({
    this.availabilityZone,
    this.instanceType,
    this.maxPrice,
    this.priority,
    this.subnetId,
    this.weightedCapacity,
    this.instanceRequirements,
  });

  final TfArg<String>? availabilityZone;

  final TfArg<String>? instanceType;

  final TfArg<String>? maxPrice;

  final TfArg<num>? priority;

  final TfArg<String>? subnetId;

  final TfArg<num>? weightedCapacity;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirements?
  instanceRequirements;

  Map<String, Object?> encode() => {
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (maxPrice != null) 'max_price': maxPrice!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (instanceRequirements != null)
      'instance_requirements': instanceRequirements!.encode(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirements {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirements({
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

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount?
  acceleratorCount;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib?
  acceleratorTotalMemoryMib;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps?
  baselineEbsBandwidthMbps;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu?
  memoryGibPerVcpu;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib
  memoryMib;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps?
  networkBandwidthGbps;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount?
  networkInterfaceCount;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb?
  totalLocalStorageGb;

  final Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount
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

/// Typed helper for the `launch_template_config.override.instance_requirements.accelerator_count` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.memory_mib` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.network_bandwidth_gbps` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.network_interface_count` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.total_local_storage_gb` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb({
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

/// Typed helper for the `launch_template_config.override.instance_requirements.vcpu_count` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount {
  const Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount({
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

/// Typed helper for the `on_demand_options` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetOnDemandOptions {
  const Ec2FleetOnDemandOptions({
    this.allocationStrategy,
    this.maxTotalPrice,
    this.minTargetCapacity,
    this.singleAvailabilityZone,
    this.singleInstanceType,
    this.capacityReservationOptions,
  });

  final TfArg<String>? allocationStrategy;

  final TfArg<String>? maxTotalPrice;

  final TfArg<num>? minTargetCapacity;

  final TfArg<bool>? singleAvailabilityZone;

  final TfArg<bool>? singleInstanceType;

  final Ec2FleetOnDemandOptionsCapacityReservationOptions?
  capacityReservationOptions;

  Map<String, Object?> encode() => {
    if (allocationStrategy != null)
      'allocation_strategy': allocationStrategy!.toTfJson(),
    if (maxTotalPrice != null) 'max_total_price': maxTotalPrice!.toTfJson(),
    if (minTargetCapacity != null)
      'min_target_capacity': minTargetCapacity!.toTfJson(),
    if (singleAvailabilityZone != null)
      'single_availability_zone': singleAvailabilityZone!.toTfJson(),
    if (singleInstanceType != null)
      'single_instance_type': singleInstanceType!.toTfJson(),
    if (capacityReservationOptions != null)
      'capacity_reservation_options': capacityReservationOptions!.encode(),
  };
}

/// Typed helper for the `on_demand_options.capacity_reservation_options` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetOnDemandOptionsCapacityReservationOptions {
  const Ec2FleetOnDemandOptionsCapacityReservationOptions({this.usageStrategy});

  final TfArg<String>? usageStrategy;

  Map<String, Object?> encode() => {
    if (usageStrategy != null) 'usage_strategy': usageStrategy!.toTfJson(),
  };
}

/// Typed helper for the `spot_options` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetSpotOptions {
  const Ec2FleetSpotOptions({
    this.allocationStrategy,
    this.instanceInterruptionBehavior,
    this.instancePoolsToUseCount,
    this.maxTotalPrice,
    this.minTargetCapacity,
    this.singleAvailabilityZone,
    this.singleInstanceType,
    this.maintenanceStrategies,
  });

  final TfArg<String>? allocationStrategy;

  final TfArg<String>? instanceInterruptionBehavior;

  final TfArg<num>? instancePoolsToUseCount;

  final TfArg<String>? maxTotalPrice;

  final TfArg<num>? minTargetCapacity;

  final TfArg<bool>? singleAvailabilityZone;

  final TfArg<bool>? singleInstanceType;

  final Ec2FleetSpotOptionsMaintenanceStrategies? maintenanceStrategies;

  Map<String, Object?> encode() => {
    if (allocationStrategy != null)
      'allocation_strategy': allocationStrategy!.toTfJson(),
    if (instanceInterruptionBehavior != null)
      'instance_interruption_behavior': instanceInterruptionBehavior!
          .toTfJson(),
    if (instancePoolsToUseCount != null)
      'instance_pools_to_use_count': instancePoolsToUseCount!.toTfJson(),
    if (maxTotalPrice != null) 'max_total_price': maxTotalPrice!.toTfJson(),
    if (minTargetCapacity != null)
      'min_target_capacity': minTargetCapacity!.toTfJson(),
    if (singleAvailabilityZone != null)
      'single_availability_zone': singleAvailabilityZone!.toTfJson(),
    if (singleInstanceType != null)
      'single_instance_type': singleInstanceType!.toTfJson(),
    if (maintenanceStrategies != null)
      'maintenance_strategies': maintenanceStrategies!.encode(),
  };
}

/// Typed helper for the `spot_options.maintenance_strategies` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetSpotOptionsMaintenanceStrategies {
  const Ec2FleetSpotOptionsMaintenanceStrategies({this.capacityRebalance});

  final Ec2FleetSpotOptionsMaintenanceStrategiesCapacityRebalance?
  capacityRebalance;

  Map<String, Object?> encode() => {
    if (capacityRebalance != null)
      'capacity_rebalance': capacityRebalance!.encode(),
  };
}

/// Typed helper for the `spot_options.maintenance_strategies.capacity_rebalance` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetSpotOptionsMaintenanceStrategiesCapacityRebalance {
  const Ec2FleetSpotOptionsMaintenanceStrategiesCapacityRebalance({
    this.replacementStrategy,
    this.terminationDelay,
  });

  final TfArg<String>? replacementStrategy;

  final TfArg<num>? terminationDelay;

  Map<String, Object?> encode() => {
    if (replacementStrategy != null)
      'replacement_strategy': replacementStrategy!.toTfJson(),
    if (terminationDelay != null)
      'termination_delay': terminationDelay!.toTfJson(),
  };
}

/// Typed helper for the `target_capacity_specification` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetTargetCapacitySpecification {
  const Ec2FleetTargetCapacitySpecification({
    required this.defaultTargetCapacityType,
    this.onDemandTargetCapacity,
    this.spotTargetCapacity,
    this.targetCapacityUnitType,
    required this.totalTargetCapacity,
  });

  final TfArg<String> defaultTargetCapacityType;

  final TfArg<num>? onDemandTargetCapacity;

  final TfArg<num>? spotTargetCapacity;

  final TfArg<String>? targetCapacityUnitType;

  final TfArg<num> totalTargetCapacity;

  Map<String, Object?> encode() => {
    'default_target_capacity_type': defaultTargetCapacityType.toTfJson(),
    if (onDemandTargetCapacity != null)
      'on_demand_target_capacity': onDemandTargetCapacity!.toTfJson(),
    if (spotTargetCapacity != null)
      'spot_target_capacity': spotTargetCapacity!.toTfJson(),
    if (targetCapacityUnitType != null)
      'target_capacity_unit_type': targetCapacityUnitType!.toTfJson(),
    'total_target_capacity': totalTargetCapacity.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_fleet`.
final class AwsEc2Fleet extends Resource {
  static const String tfType = 'aws_ec2_fleet';

  AwsEc2Fleet({
    required super.localName,
    TfArg<String>? context,
    TfArg<String>? excessCapacityTerminationPolicy,
    TfArg<String>? fleetState,
    TfArg<num>? fulfilledCapacity,
    TfArg<num>? fulfilledOnDemandCapacity,
    TfArg<String>? region,
    TfArg<bool>? replaceUnhealthyInstances,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminateInstances,
    TfArg<bool>? terminateInstancesWithExpiration,
    TfArg<String>? type,
    TfArg<String>? validFrom,
    TfArg<String>? validUntil,
    List<Ec2FleetFleetInstanceSet>? fleetInstanceSet,
    required List<Ec2FleetLaunchTemplateConfig> launchTemplateConfig,
    Ec2FleetOnDemandOptions? onDemandOptions,
    Ec2FleetSpotOptions? spotOptions,
    required Ec2FleetTargetCapacitySpecification targetCapacitySpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (context != null) 'context': context,
           if (excessCapacityTerminationPolicy != null)
             'excess_capacity_termination_policy':
                 excessCapacityTerminationPolicy,
           if (fleetState != null) 'fleet_state': fleetState,
           if (fulfilledCapacity != null)
             'fulfilled_capacity': fulfilledCapacity,
           if (fulfilledOnDemandCapacity != null)
             'fulfilled_on_demand_capacity': fulfilledOnDemandCapacity,
           if (region != null) 'region': region,
           if (replaceUnhealthyInstances != null)
             'replace_unhealthy_instances': replaceUnhealthyInstances,
           if (tags != null) 'tags': tags,
           if (terminateInstances != null)
             'terminate_instances': terminateInstances,
           if (terminateInstancesWithExpiration != null)
             'terminate_instances_with_expiration':
                 terminateInstancesWithExpiration,
           if (type != null) 'type': type,
           if (validFrom != null) 'valid_from': validFrom,
           if (validUntil != null) 'valid_until': validUntil,
           if (fleetInstanceSet != null)
             'fleet_instance_set': TfArg.literal([
               for (final e in fleetInstanceSet) e.encode(),
             ]),
           'launch_template_config': TfArg.literal([
             for (final e in launchTemplateConfig) e.encode(),
           ]),
           if (onDemandOptions != null)
             'on_demand_options': TfArg.literal(onDemandOptions.encode()),
           if (spotOptions != null)
             'spot_options': TfArg.literal(spotOptions.encode()),
           'target_capacity_specification': TfArg.literal(
             targetCapacitySpecification.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2FleetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
