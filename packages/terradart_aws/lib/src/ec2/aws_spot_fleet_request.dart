// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_spot_fleet_request`.
const Set<String> _awsSpotFleetRequestSensitive = <String>{};

/// Typed helper for the `launch_specification` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchSpecification {
  const SpotFleetRequestLaunchSpecification({
    required this.ami,
    this.associatePublicIpAddress,
    this.availabilityZone,
    this.ebsOptimized,
    this.iamInstanceProfile,
    this.iamInstanceProfileArn,
    required this.instanceType,
    this.keyName,
    this.monitoring,
    this.placementGroup,
    this.placementTenancy,
    this.spotPrice,
    this.subnetId,
    this.tags,
    this.userData,
    this.vpcSecurityGroupIds,
    this.weightedCapacity,
    this.ebsBlockDevice,
    this.ephemeralBlockDevice,
    this.rootBlockDevice,
  });

  final TfArg<String> ami;

  final TfArg<bool>? associatePublicIpAddress;

  final TfArg<String>? availabilityZone;

  final TfArg<bool>? ebsOptimized;

  final TfArg<String>? iamInstanceProfile;

  final TfArg<String>? iamInstanceProfileArn;

  final TfArg<String> instanceType;

  final TfArg<String>? keyName;

  final TfArg<bool>? monitoring;

  final TfArg<String>? placementGroup;

  final TfArg<String>? placementTenancy;

  final TfArg<String>? spotPrice;

  final TfArg<String>? subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String>? userData;

  final TfArg<List<Object?>>? vpcSecurityGroupIds;

  final TfArg<String>? weightedCapacity;

  final List<SpotFleetRequestLaunchSpecificationEbsBlockDevice>? ebsBlockDevice;

  final List<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>?
  ephemeralBlockDevice;

  final List<SpotFleetRequestLaunchSpecificationRootBlockDevice>?
  rootBlockDevice;

  Map<String, Object?> encode() => {
    'ami': ami.toTfJson(),
    if (associatePublicIpAddress != null)
      'associate_public_ip_address': associatePublicIpAddress!.toTfJson(),
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (ebsOptimized != null) 'ebs_optimized': ebsOptimized!.toTfJson(),
    if (iamInstanceProfile != null)
      'iam_instance_profile': iamInstanceProfile!.toTfJson(),
    if (iamInstanceProfileArn != null)
      'iam_instance_profile_arn': iamInstanceProfileArn!.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (keyName != null) 'key_name': keyName!.toTfJson(),
    if (monitoring != null) 'monitoring': monitoring!.toTfJson(),
    if (placementGroup != null) 'placement_group': placementGroup!.toTfJson(),
    if (placementTenancy != null)
      'placement_tenancy': placementTenancy!.toTfJson(),
    if (spotPrice != null) 'spot_price': spotPrice!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (userData != null) 'user_data': userData!.toTfJson(),
    if (vpcSecurityGroupIds != null)
      'vpc_security_group_ids': vpcSecurityGroupIds!.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (ebsBlockDevice != null)
      'ebs_block_device': [for (final e in ebsBlockDevice!) e.encode()],
    if (ephemeralBlockDevice != null)
      'ephemeral_block_device': [
        for (final e in ephemeralBlockDevice!) e.encode(),
      ],
    if (rootBlockDevice != null)
      'root_block_device': [for (final e in rootBlockDevice!) e.encode()],
  };
}

/// Typed helper for the `launch_specification.ebs_block_device` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchSpecificationEbsBlockDevice {
  const SpotFleetRequestLaunchSpecificationEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<String> deviceName;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    'device_name': deviceName.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `launch_specification.ephemeral_block_device` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchSpecificationEphemeralBlockDevice {
  const SpotFleetRequestLaunchSpecificationEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  final TfArg<String> deviceName;

  final TfArg<String> virtualName;

  Map<String, Object?> encode() => {
    'device_name': deviceName.toTfJson(),
    'virtual_name': virtualName.toTfJson(),
  };
}

/// Typed helper for the `launch_specification.root_block_device` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchSpecificationRootBlockDevice {
  const SpotFleetRequestLaunchSpecificationRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfig {
  const SpotFleetRequestLaunchTemplateConfig({
    required this.launchTemplateSpecification,
    this.overrides,
  });

  final SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification
  launchTemplateSpecification;

  final List<SpotFleetRequestLaunchTemplateConfigOverrides>? overrides;

  Map<String, Object?> encode() => {
    'launch_template_specification': launchTemplateSpecification.encode(),
    if (overrides != null)
      'overrides': [for (final e in overrides!) e.encode()],
  };
}

/// Typed helper for the `launch_template_config.launch_template_specification` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification {
  const SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification({
    this.id,
    this.name,
    this.version,
  });

  final TfArg<String>? id;

  final TfArg<String>? name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverrides {
  const SpotFleetRequestLaunchTemplateConfigOverrides({
    this.availabilityZone,
    this.instanceType,
    this.priority,
    this.spotPrice,
    this.subnetId,
    this.weightedCapacity,
    this.instanceRequirements,
  });

  final TfArg<String>? availabilityZone;

  final TfArg<String>? instanceType;

  final TfArg<num>? priority;

  final TfArg<String>? spotPrice;

  final TfArg<String>? subnetId;

  final TfArg<num>? weightedCapacity;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirements?
  instanceRequirements;

  Map<String, Object?> encode() => {
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (spotPrice != null) 'spot_price': spotPrice!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (instanceRequirements != null)
      'instance_requirements': instanceRequirements!.encode(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirements {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirements({
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

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorCount?
  acceleratorCount;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTotalMemoryMib?
  acceleratorTotalMemoryMib;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBaselineEbsBandwidthMbps?
  baselineEbsBandwidthMbps;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryGibPerVcpu?
  memoryGibPerVcpu;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryMib?
  memoryMib;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkBandwidthGbps?
  networkBandwidthGbps;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkInterfaceCount?
  networkInterfaceCount;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsTotalLocalStorageGb?
  totalLocalStorageGb;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsVcpuCount?
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.accelerator_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorCount {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorCount({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTotalMemoryMib {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTotalMemoryMib({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBaselineEbsBandwidthMbps {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBaselineEbsBandwidthMbps({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryGibPerVcpu {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryGibPerVcpu({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.memory_mib` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryMib {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryMib({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.network_bandwidth_gbps` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkBandwidthGbps {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkBandwidthGbps({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.network_interface_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkInterfaceCount {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkInterfaceCount({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.total_local_storage_gb` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsTotalLocalStorageGb {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsTotalLocalStorageGb({
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

/// Typed helper for the `launch_template_config.overrides.instance_requirements.vcpu_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsVcpuCount {
  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsVcpuCount({
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

/// Typed helper for the `spot_maintenance_strategies` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestSpotMaintenanceStrategies {
  const SpotFleetRequestSpotMaintenanceStrategies({this.capacityRebalance});

  final SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance?
  capacityRebalance;

  Map<String, Object?> encode() => {
    if (capacityRebalance != null)
      'capacity_rebalance': capacityRebalance!.encode(),
  };
}

/// Typed helper for the `spot_maintenance_strategies.capacity_rebalance` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance {
  const SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance({
    this.replacementStrategy,
  });

  final TfArg<String>? replacementStrategy;

  Map<String, Object?> encode() => {
    if (replacementStrategy != null)
      'replacement_strategy': replacementStrategy!.toTfJson(),
  };
}

/// Factory wrapper for `aws_spot_fleet_request`.
final class AwsSpotFleetRequest extends Resource {
  static const String tfType = 'aws_spot_fleet_request';

  AwsSpotFleetRequest({
    required super.localName,
    TfArg<String>? allocationStrategy,
    TfArg<String>? context,
    TfArg<String>? excessCapacityTerminationPolicy,
    TfArg<String>? fleetType,
    required TfArg<String> iamFleetRole,
    TfArg<String>? instanceInterruptionBehaviour,
    TfArg<num>? instancePoolsToUseCount,
    TfArg<List<String>>? loadBalancers,
    TfArg<String>? onDemandAllocationStrategy,
    TfArg<String>? onDemandMaxTotalPrice,
    TfArg<num>? onDemandTargetCapacity,
    TfArg<String>? region,
    TfArg<bool>? replaceUnhealthyInstances,
    TfArg<String>? spotPrice,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> targetCapacity,
    TfArg<String>? targetCapacityUnitType,
    TfArg<List<String>>? targetGroupArns,
    TfArg<String>? terminateInstancesOnDelete,
    TfArg<bool>? terminateInstancesWithExpiration,
    TfArg<String>? validFrom,
    TfArg<String>? validUntil,
    TfArg<bool>? waitForFulfillment,
    List<SpotFleetRequestLaunchSpecification>? launchSpecification,
    List<SpotFleetRequestLaunchTemplateConfig>? launchTemplateConfig,
    SpotFleetRequestSpotMaintenanceStrategies? spotMaintenanceStrategies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allocationStrategy != null)
             'allocation_strategy': allocationStrategy,
           if (context != null) 'context': context,
           if (excessCapacityTerminationPolicy != null)
             'excess_capacity_termination_policy':
                 excessCapacityTerminationPolicy,
           if (fleetType != null) 'fleet_type': fleetType,
           'iam_fleet_role': iamFleetRole,
           if (instanceInterruptionBehaviour != null)
             'instance_interruption_behaviour': instanceInterruptionBehaviour,
           if (instancePoolsToUseCount != null)
             'instance_pools_to_use_count': instancePoolsToUseCount,
           if (loadBalancers != null) 'load_balancers': loadBalancers,
           if (onDemandAllocationStrategy != null)
             'on_demand_allocation_strategy': onDemandAllocationStrategy,
           if (onDemandMaxTotalPrice != null)
             'on_demand_max_total_price': onDemandMaxTotalPrice,
           if (onDemandTargetCapacity != null)
             'on_demand_target_capacity': onDemandTargetCapacity,
           if (region != null) 'region': region,
           if (replaceUnhealthyInstances != null)
             'replace_unhealthy_instances': replaceUnhealthyInstances,
           if (spotPrice != null) 'spot_price': spotPrice,
           if (tags != null) 'tags': tags,
           'target_capacity': targetCapacity,
           if (targetCapacityUnitType != null)
             'target_capacity_unit_type': targetCapacityUnitType,
           if (targetGroupArns != null) 'target_group_arns': targetGroupArns,
           if (terminateInstancesOnDelete != null)
             'terminate_instances_on_delete': terminateInstancesOnDelete,
           if (terminateInstancesWithExpiration != null)
             'terminate_instances_with_expiration':
                 terminateInstancesWithExpiration,
           if (validFrom != null) 'valid_from': validFrom,
           if (validUntil != null) 'valid_until': validUntil,
           if (waitForFulfillment != null)
             'wait_for_fulfillment': waitForFulfillment,
           if (launchSpecification != null)
             'launch_specification': TfArg.literal([
               for (final e in launchSpecification) e.encode(),
             ]),
           if (launchTemplateConfig != null)
             'launch_template_config': TfArg.literal([
               for (final e in launchTemplateConfig) e.encode(),
             ]),
           if (spotMaintenanceStrategies != null)
             'spot_maintenance_strategies': TfArg.literal(
               spotMaintenanceStrategies.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSpotFleetRequestSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_token` attribute.
  TfRef<String> get clientToken =>
      TfRef.attribute<String>(this, 'client_token');

  /// Reference to `spot_request_state` attribute.
  TfRef<String> get spotRequestState =>
      TfRef.attribute<String>(this, 'spot_request_state');
}
