// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_launch_template`.
const Set<String> _awsLaunchTemplateSensitive = <String>{};

/// Typed helper for the `block_device_mappings` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateBlockDeviceMappings {
  const LaunchTemplateBlockDeviceMappings({
    this.deviceName,
    this.noDevice,
    this.virtualName,
    this.ebs,
  });

  final TfArg<String>? deviceName;

  final TfArg<String>? noDevice;

  final TfArg<String>? virtualName;

  final LaunchTemplateBlockDeviceMappingsEbs? ebs;

  Map<String, Object?> encode() => {
    if (deviceName != null) 'device_name': deviceName!.toTfJson(),
    if (noDevice != null) 'no_device': noDevice!.toTfJson(),
    if (virtualName != null) 'virtual_name': virtualName!.toTfJson(),
    if (ebs != null) 'ebs': ebs!.encode(),
  };
}

/// Typed helper for the `block_device_mappings.ebs` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateBlockDeviceMappingsEbs {
  const LaunchTemplateBlockDeviceMappingsEbs({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.throughput,
    this.volumeInitializationRate,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<String>? deleteOnTermination;

  final TfArg<String>? encrypted;

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeInitializationRate;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeInitializationRate != null)
      'volume_initialization_rate': volumeInitializationRate!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCapacityReservationSpecification {
  const LaunchTemplateCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final TfArg<String>? capacityReservationPreference;

  final LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget?
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
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget {
  const LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  final TfArg<String>? capacityReservationId;

  final TfArg<String>? capacityReservationResourceGroupArn;

  Map<String, Object?> encode() => {
    if (capacityReservationId != null)
      'capacity_reservation_id': capacityReservationId!.toTfJson(),
    if (capacityReservationResourceGroupArn != null)
      'capacity_reservation_resource_group_arn':
          capacityReservationResourceGroupArn!.toTfJson(),
  };
}

/// Typed helper for the `cpu_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCpuOptions {
  const LaunchTemplateCpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.nestedVirtualization,
    this.threadsPerCore,
  });

  final TfArg<String>? amdSevSnp;

  final TfArg<num>? coreCount;

  final TfArg<String>? nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    if (amdSevSnp != null) 'amd_sev_snp': amdSevSnp!.toTfJson(),
    if (coreCount != null) 'core_count': coreCount!.toTfJson(),
    if (nestedVirtualization != null)
      'nested_virtualization': nestedVirtualization!.toTfJson(),
    if (threadsPerCore != null) 'threads_per_core': threadsPerCore!.toTfJson(),
  };
}

/// Typed helper for the `credit_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCreditSpecification {
  const LaunchTemplateCreditSpecification({this.cpuCredits});

  final TfArg<String>? cpuCredits;

  Map<String, Object?> encode() => {
    if (cpuCredits != null) 'cpu_credits': cpuCredits!.toTfJson(),
  };
}

/// Typed helper for the `enclave_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateEnclaveOptions {
  const LaunchTemplateEnclaveOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `hibernation_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateHibernationOptions {
  const LaunchTemplateHibernationOptions({required this.configured});

  final TfArg<bool> configured;

  Map<String, Object?> encode() => {'configured': configured.toTfJson()};
}

/// Typed helper for the `iam_instance_profile` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateIamInstanceProfile {
  const LaunchTemplateIamInstanceProfile({this.arn, this.name});

  final TfArg<String>? arn;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (arn != null) 'arn': arn!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Typed helper for the `instance_market_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceMarketOptions {
  const LaunchTemplateInstanceMarketOptions({
    this.marketType,
    this.spotOptions,
  });

  final TfArg<String>? marketType;

  final LaunchTemplateInstanceMarketOptionsSpotOptions? spotOptions;

  Map<String, Object?> encode() => {
    if (marketType != null) 'market_type': marketType!.toTfJson(),
    if (spotOptions != null) 'spot_options': spotOptions!.encode(),
  };
}

/// Typed helper for the `instance_market_options.spot_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceMarketOptionsSpotOptions {
  const LaunchTemplateInstanceMarketOptionsSpotOptions({
    this.blockDurationMinutes,
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  final TfArg<num>? blockDurationMinutes;

  final TfArg<String>? instanceInterruptionBehavior;

  final TfArg<String>? maxPrice;

  final TfArg<String>? spotInstanceType;

  final TfArg<String>? validUntil;

  Map<String, Object?> encode() => {
    if (blockDurationMinutes != null)
      'block_duration_minutes': blockDurationMinutes!.toTfJson(),
    if (instanceInterruptionBehavior != null)
      'instance_interruption_behavior': instanceInterruptionBehavior!
          .toTfJson(),
    if (maxPrice != null) 'max_price': maxPrice!.toTfJson(),
    if (spotInstanceType != null)
      'spot_instance_type': spotInstanceType!.toTfJson(),
    if (validUntil != null) 'valid_until': validUntil!.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirements {
  const LaunchTemplateInstanceRequirements({
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

  final LaunchTemplateInstanceRequirementsAcceleratorCount? acceleratorCount;

  final LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib?
  acceleratorTotalMemoryMib;

  final LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps?
  baselineEbsBandwidthMbps;

  final LaunchTemplateInstanceRequirementsMemoryGibPerVcpu? memoryGibPerVcpu;

  final LaunchTemplateInstanceRequirementsMemoryMib memoryMib;

  final LaunchTemplateInstanceRequirementsNetworkBandwidthGbps?
  networkBandwidthGbps;

  final LaunchTemplateInstanceRequirementsNetworkInterfaceCount?
  networkInterfaceCount;

  final LaunchTemplateInstanceRequirementsTotalLocalStorageGb?
  totalLocalStorageGb;

  final LaunchTemplateInstanceRequirementsVcpuCount vcpuCount;

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

/// Typed helper for the `instance_requirements.accelerator_count` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsAcceleratorCount {
  const LaunchTemplateInstanceRequirementsAcceleratorCount({
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

/// Typed helper for the `instance_requirements.accelerator_total_memory_mib` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib {
  const LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib({
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

/// Typed helper for the `instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps {
  const LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps({
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

/// Typed helper for the `instance_requirements.memory_gib_per_vcpu` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsMemoryGibPerVcpu {
  const LaunchTemplateInstanceRequirementsMemoryGibPerVcpu({
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

/// Typed helper for the `instance_requirements.memory_mib` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsMemoryMib {
  const LaunchTemplateInstanceRequirementsMemoryMib({
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

/// Typed helper for the `instance_requirements.network_bandwidth_gbps` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsNetworkBandwidthGbps {
  const LaunchTemplateInstanceRequirementsNetworkBandwidthGbps({
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

/// Typed helper for the `instance_requirements.network_interface_count` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsNetworkInterfaceCount {
  const LaunchTemplateInstanceRequirementsNetworkInterfaceCount({
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

/// Typed helper for the `instance_requirements.total_local_storage_gb` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsTotalLocalStorageGb {
  const LaunchTemplateInstanceRequirementsTotalLocalStorageGb({
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

/// Typed helper for the `instance_requirements.vcpu_count` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirementsVcpuCount {
  const LaunchTemplateInstanceRequirementsVcpuCount({
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

/// Typed helper for the `license_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateLicenseSpecification {
  const LaunchTemplateLicenseSpecification({
    required this.licenseConfigurationArn,
  });

  final TfArg<String> licenseConfigurationArn;

  Map<String, Object?> encode() => {
    'license_configuration_arn': licenseConfigurationArn.toTfJson(),
  };
}

/// Typed helper for the `maintenance_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateMaintenanceOptions {
  const LaunchTemplateMaintenanceOptions({this.autoRecovery});

  final TfArg<String>? autoRecovery;

  Map<String, Object?> encode() => {
    if (autoRecovery != null) 'auto_recovery': autoRecovery!.toTfJson(),
  };
}

/// Typed helper for the `metadata_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateMetadataOptions {
  const LaunchTemplateMetadataOptions({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
  });

  final TfArg<String>? httpEndpoint;

  final TfArg<String>? httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<String>? httpTokens;

  final TfArg<String>? instanceMetadataTags;

  Map<String, Object?> encode() => {
    if (httpEndpoint != null) 'http_endpoint': httpEndpoint!.toTfJson(),
    if (httpProtocolIpv6 != null)
      'http_protocol_ipv6': httpProtocolIpv6!.toTfJson(),
    if (httpPutResponseHopLimit != null)
      'http_put_response_hop_limit': httpPutResponseHopLimit!.toTfJson(),
    if (httpTokens != null) 'http_tokens': httpTokens!.toTfJson(),
    if (instanceMetadataTags != null)
      'instance_metadata_tags': instanceMetadataTags!.toTfJson(),
  };
}

/// Typed helper for the `monitoring` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateMonitoring {
  const LaunchTemplateMonitoring({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `network_interfaces` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkInterfaces {
  const LaunchTemplateNetworkInterfaces({
    this.associateCarrierIpAddress,
    this.associatePublicIpAddress,
    this.deleteOnTermination,
    this.description,
    this.deviceIndex,
    this.enaQueueCount,
    this.interfaceType,
    this.ipv4AddressCount,
    this.ipv4Addresses,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.ipv6PrefixCount,
    this.ipv6Prefixes,
    this.networkCardIndex,
    this.networkInterfaceId,
    this.primaryIpv6,
    this.privateIpAddress,
    this.securityGroups,
    this.subnetId,
    this.connectionTrackingSpecification,
    this.enaSrdSpecification,
  });

  final TfArg<String>? associateCarrierIpAddress;

  final TfArg<String>? associatePublicIpAddress;

  final TfArg<String>? deleteOnTermination;

  final TfArg<String>? description;

  final TfArg<num>? deviceIndex;

  final TfArg<num>? enaQueueCount;

  final TfArg<String>? interfaceType;

  final TfArg<num>? ipv4AddressCount;

  final TfArg<List<Object?>>? ipv4Addresses;

  final TfArg<num>? ipv4PrefixCount;

  final TfArg<List<Object?>>? ipv4Prefixes;

  final TfArg<num>? ipv6AddressCount;

  final TfArg<List<Object?>>? ipv6Addresses;

  final TfArg<num>? ipv6PrefixCount;

  final TfArg<List<Object?>>? ipv6Prefixes;

  final TfArg<num>? networkCardIndex;

  final TfArg<String>? networkInterfaceId;

  final TfArg<String>? primaryIpv6;

  final TfArg<String>? privateIpAddress;

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<String>? subnetId;

  final LaunchTemplateNetworkInterfacesConnectionTrackingSpecification?
  connectionTrackingSpecification;

  final LaunchTemplateNetworkInterfacesEnaSrdSpecification? enaSrdSpecification;

  Map<String, Object?> encode() => {
    if (associateCarrierIpAddress != null)
      'associate_carrier_ip_address': associateCarrierIpAddress!.toTfJson(),
    if (associatePublicIpAddress != null)
      'associate_public_ip_address': associatePublicIpAddress!.toTfJson(),
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (deviceIndex != null) 'device_index': deviceIndex!.toTfJson(),
    if (enaQueueCount != null) 'ena_queue_count': enaQueueCount!.toTfJson(),
    if (interfaceType != null) 'interface_type': interfaceType!.toTfJson(),
    if (ipv4AddressCount != null)
      'ipv4_address_count': ipv4AddressCount!.toTfJson(),
    if (ipv4Addresses != null) 'ipv4_addresses': ipv4Addresses!.toTfJson(),
    if (ipv4PrefixCount != null)
      'ipv4_prefix_count': ipv4PrefixCount!.toTfJson(),
    if (ipv4Prefixes != null) 'ipv4_prefixes': ipv4Prefixes!.toTfJson(),
    if (ipv6AddressCount != null)
      'ipv6_address_count': ipv6AddressCount!.toTfJson(),
    if (ipv6Addresses != null) 'ipv6_addresses': ipv6Addresses!.toTfJson(),
    if (ipv6PrefixCount != null)
      'ipv6_prefix_count': ipv6PrefixCount!.toTfJson(),
    if (ipv6Prefixes != null) 'ipv6_prefixes': ipv6Prefixes!.toTfJson(),
    if (networkCardIndex != null)
      'network_card_index': networkCardIndex!.toTfJson(),
    if (networkInterfaceId != null)
      'network_interface_id': networkInterfaceId!.toTfJson(),
    if (primaryIpv6 != null) 'primary_ipv6': primaryIpv6!.toTfJson(),
    if (privateIpAddress != null)
      'private_ip_address': privateIpAddress!.toTfJson(),
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
    if (connectionTrackingSpecification != null)
      'connection_tracking_specification': connectionTrackingSpecification!
          .encode(),
    if (enaSrdSpecification != null)
      'ena_srd_specification': enaSrdSpecification!.encode(),
  };
}

/// Typed helper for the `network_interfaces.connection_tracking_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkInterfacesConnectionTrackingSpecification {
  const LaunchTemplateNetworkInterfacesConnectionTrackingSpecification({
    this.tcpEstablishedTimeout,
    this.udpStreamTimeout,
    this.udpTimeout,
  });

  final TfArg<num>? tcpEstablishedTimeout;

  final TfArg<num>? udpStreamTimeout;

  final TfArg<num>? udpTimeout;

  Map<String, Object?> encode() => {
    if (tcpEstablishedTimeout != null)
      'tcp_established_timeout': tcpEstablishedTimeout!.toTfJson(),
    if (udpStreamTimeout != null)
      'udp_stream_timeout': udpStreamTimeout!.toTfJson(),
    if (udpTimeout != null) 'udp_timeout': udpTimeout!.toTfJson(),
  };
}

/// Typed helper for the `network_interfaces.ena_srd_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkInterfacesEnaSrdSpecification {
  const LaunchTemplateNetworkInterfacesEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  final TfArg<bool>? enaSrdEnabled;

  final LaunchTemplateNetworkInterfacesEnaSrdSpecificationEnaSrdUdpSpecification?
  enaSrdUdpSpecification;

  Map<String, Object?> encode() => {
    if (enaSrdEnabled != null) 'ena_srd_enabled': enaSrdEnabled!.toTfJson(),
    if (enaSrdUdpSpecification != null)
      'ena_srd_udp_specification': enaSrdUdpSpecification!.encode(),
  };
}

/// Typed helper for the `network_interfaces.ena_srd_specification.ena_srd_udp_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkInterfacesEnaSrdSpecificationEnaSrdUdpSpecification {
  const LaunchTemplateNetworkInterfacesEnaSrdSpecificationEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  final TfArg<bool>? enaSrdUdpEnabled;

  Map<String, Object?> encode() => {
    if (enaSrdUdpEnabled != null)
      'ena_srd_udp_enabled': enaSrdUdpEnabled!.toTfJson(),
  };
}

/// Typed helper for the `network_performance_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkPerformanceOptions {
  const LaunchTemplateNetworkPerformanceOptions({this.bandwidthWeighting});

  final TfArg<String>? bandwidthWeighting;

  Map<String, Object?> encode() => {
    if (bandwidthWeighting != null)
      'bandwidth_weighting': bandwidthWeighting!.toTfJson(),
  };
}

/// Typed helper for the `placement` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplatePlacement {
  const LaunchTemplatePlacement({
    this.affinity,
    this.availabilityZone,
    this.groupId,
    this.groupName,
    this.hostId,
    this.hostResourceGroupArn,
    this.partitionNumber,
    this.spreadDomain,
    this.tenancy,
  });

  final TfArg<String>? affinity;

  final TfArg<String>? availabilityZone;

  final TfArg<String>? groupId;

  final TfArg<String>? groupName;

  final TfArg<String>? hostId;

  final TfArg<String>? hostResourceGroupArn;

  final TfArg<num>? partitionNumber;

  final TfArg<String>? spreadDomain;

  final TfArg<String>? tenancy;

  Map<String, Object?> encode() => {
    if (affinity != null) 'affinity': affinity!.toTfJson(),
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (groupId != null) 'group_id': groupId!.toTfJson(),
    if (groupName != null) 'group_name': groupName!.toTfJson(),
    if (hostId != null) 'host_id': hostId!.toTfJson(),
    if (hostResourceGroupArn != null)
      'host_resource_group_arn': hostResourceGroupArn!.toTfJson(),
    if (partitionNumber != null)
      'partition_number': partitionNumber!.toTfJson(),
    if (spreadDomain != null) 'spread_domain': spreadDomain!.toTfJson(),
    if (tenancy != null) 'tenancy': tenancy!.toTfJson(),
  };
}

/// Typed helper for the `private_dns_name_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplatePrivateDnsNameOptions {
  const LaunchTemplatePrivateDnsNameOptions({
    this.enableResourceNameDnsARecord,
    this.enableResourceNameDnsAaaaRecord,
    this.hostnameType,
  });

  final TfArg<bool>? enableResourceNameDnsARecord;

  final TfArg<bool>? enableResourceNameDnsAaaaRecord;

  final TfArg<String>? hostnameType;

  Map<String, Object?> encode() => {
    if (enableResourceNameDnsARecord != null)
      'enable_resource_name_dns_a_record': enableResourceNameDnsARecord!
          .toTfJson(),
    if (enableResourceNameDnsAaaaRecord != null)
      'enable_resource_name_dns_aaaa_record': enableResourceNameDnsAaaaRecord!
          .toTfJson(),
    if (hostnameType != null) 'hostname_type': hostnameType!.toTfJson(),
  };
}

/// Typed helper for the `secondary_interfaces` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateSecondaryInterfaces {
  const LaunchTemplateSecondaryInterfaces({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    this.networkCardIndex,
    this.privateIpAddressCount,
    this.privateIpAddresses,
    this.secondarySubnetId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num>? deviceIndex;

  final TfArg<String>? interfaceType;

  final TfArg<num>? networkCardIndex;

  final TfArg<num>? privateIpAddressCount;

  final TfArg<List<Object?>>? privateIpAddresses;

  final TfArg<String>? secondarySubnetId;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (deviceIndex != null) 'device_index': deviceIndex!.toTfJson(),
    if (interfaceType != null) 'interface_type': interfaceType!.toTfJson(),
    if (networkCardIndex != null)
      'network_card_index': networkCardIndex!.toTfJson(),
    if (privateIpAddressCount != null)
      'private_ip_address_count': privateIpAddressCount!.toTfJson(),
    if (privateIpAddresses != null)
      'private_ip_addresses': privateIpAddresses!.toTfJson(),
    if (secondarySubnetId != null)
      'secondary_subnet_id': secondarySubnetId!.toTfJson(),
  };
}

/// Typed helper for the `tag_specifications` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateTagSpecifications {
  const LaunchTemplateTagSpecifications({this.resourceType, this.tags});

  final TfArg<String>? resourceType;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (resourceType != null) 'resource_type': resourceType!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Factory wrapper for `aws_launch_template`.
final class AwsLaunchTemplate extends Resource {
  static const String tfType = 'aws_launch_template';

  AwsLaunchTemplate({
    required super.localName,
    TfArg<num>? defaultVersion,
    TfArg<String>? description,
    TfArg<bool>? disableApiStop,
    TfArg<bool>? disableApiTermination,
    TfArg<String>? ebsOptimized,
    TfArg<String>? imageId,
    TfArg<String>? instanceInitiatedShutdownBehavior,
    TfArg<String>? instanceType,
    TfArg<String>? kernelId,
    TfArg<String>? keyName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? ramDiskId,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupNames,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? updateDefaultVersion,
    TfArg<String>? userData,
    TfArg<List<String>>? vpcSecurityGroupIds,
    List<LaunchTemplateBlockDeviceMappings>? blockDeviceMappings,
    LaunchTemplateCapacityReservationSpecification?
    capacityReservationSpecification,
    LaunchTemplateCpuOptions? cpuOptions,
    LaunchTemplateCreditSpecification? creditSpecification,
    LaunchTemplateEnclaveOptions? enclaveOptions,
    LaunchTemplateHibernationOptions? hibernationOptions,
    LaunchTemplateIamInstanceProfile? iamInstanceProfile,
    LaunchTemplateInstanceMarketOptions? instanceMarketOptions,
    LaunchTemplateInstanceRequirements? instanceRequirements,
    List<LaunchTemplateLicenseSpecification>? licenseSpecification,
    LaunchTemplateMaintenanceOptions? maintenanceOptions,
    LaunchTemplateMetadataOptions? metadataOptions,
    LaunchTemplateMonitoring? monitoring,
    List<LaunchTemplateNetworkInterfaces>? networkInterfaces,
    LaunchTemplateNetworkPerformanceOptions? networkPerformanceOptions,
    LaunchTemplatePlacement? placement,
    LaunchTemplatePrivateDnsNameOptions? privateDnsNameOptions,
    List<LaunchTemplateSecondaryInterfaces>? secondaryInterfaces,
    List<LaunchTemplateTagSpecifications>? tagSpecifications,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultVersion != null) 'default_version': defaultVersion,
           if (description != null) 'description': description,
           if (disableApiStop != null) 'disable_api_stop': disableApiStop,
           if (disableApiTermination != null)
             'disable_api_termination': disableApiTermination,
           if (ebsOptimized != null) 'ebs_optimized': ebsOptimized,
           if (imageId != null) 'image_id': imageId,
           if (instanceInitiatedShutdownBehavior != null)
             'instance_initiated_shutdown_behavior':
                 instanceInitiatedShutdownBehavior,
           if (instanceType != null) 'instance_type': instanceType,
           if (kernelId != null) 'kernel_id': kernelId,
           if (keyName != null) 'key_name': keyName,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (ramDiskId != null) 'ram_disk_id': ramDiskId,
           if (region != null) 'region': region,
           if (securityGroupNames != null)
             'security_group_names': securityGroupNames,
           if (tags != null) 'tags': tags,
           if (updateDefaultVersion != null)
             'update_default_version': updateDefaultVersion,
           if (userData != null) 'user_data': userData,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (blockDeviceMappings != null)
             'block_device_mappings': TfArg.literal([
               for (final e in blockDeviceMappings) e.encode(),
             ]),
           if (capacityReservationSpecification != null)
             'capacity_reservation_specification': TfArg.literal(
               capacityReservationSpecification.encode(),
             ),
           if (cpuOptions != null)
             'cpu_options': TfArg.literal(cpuOptions.encode()),
           if (creditSpecification != null)
             'credit_specification': TfArg.literal(
               creditSpecification.encode(),
             ),
           if (enclaveOptions != null)
             'enclave_options': TfArg.literal(enclaveOptions.encode()),
           if (hibernationOptions != null)
             'hibernation_options': TfArg.literal(hibernationOptions.encode()),
           if (iamInstanceProfile != null)
             'iam_instance_profile': TfArg.literal(iamInstanceProfile.encode()),
           if (instanceMarketOptions != null)
             'instance_market_options': TfArg.literal(
               instanceMarketOptions.encode(),
             ),
           if (instanceRequirements != null)
             'instance_requirements': TfArg.literal(
               instanceRequirements.encode(),
             ),
           if (licenseSpecification != null)
             'license_specification': TfArg.literal([
               for (final e in licenseSpecification) e.encode(),
             ]),
           if (maintenanceOptions != null)
             'maintenance_options': TfArg.literal(maintenanceOptions.encode()),
           if (metadataOptions != null)
             'metadata_options': TfArg.literal(metadataOptions.encode()),
           if (monitoring != null)
             'monitoring': TfArg.literal(monitoring.encode()),
           if (networkInterfaces != null)
             'network_interfaces': TfArg.literal([
               for (final e in networkInterfaces) e.encode(),
             ]),
           if (networkPerformanceOptions != null)
             'network_performance_options': TfArg.literal(
               networkPerformanceOptions.encode(),
             ),
           if (placement != null)
             'placement': TfArg.literal(placement.encode()),
           if (privateDnsNameOptions != null)
             'private_dns_name_options': TfArg.literal(
               privateDnsNameOptions.encode(),
             ),
           if (secondaryInterfaces != null)
             'secondary_interfaces': TfArg.literal([
               for (final e in secondaryInterfaces) e.encode(),
             ]),
           if (tagSpecifications != null)
             'tag_specifications': TfArg.literal([
               for (final e in tagSpecifications) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLaunchTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_version` attribute.
  TfRef<num> get latestVersion => TfRef.attribute<num>(this, 'latest_version');
}
