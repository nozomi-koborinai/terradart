// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_ec2_fleet`.
const Set<String> _awsEc2FleetSensitive = <String>{};

/// Ec2 Fleet Excess Capacity Termination enum for `excess_capacity_termination_policy`.
enum Ec2FleetExcessCapacityTerminationPolicy implements TerraformEnum {
  noTermination('no-termination'),
  termination('termination');

  const Ec2FleetExcessCapacityTerminationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Fleet enum for `type`.
enum Ec2FleetType implements TerraformEnum {
  request('request'),
  maintain('maintain'),
  instant('instant');

  const Ec2FleetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet_instance_set` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetInstanceSet {
  const Ec2FleetInstanceSet({
    this.instanceIds,
    this.instanceType,
    this.lifecycle,
    this.platform,
  });

  final TfArg<List<String>>? instanceIds;

  final TfArg<String>? instanceType;

  final TfArg<String>? lifecycle;

  final TfArg<String>? platform;

  Map<String, Object?> encode() => {
    'instance_ids': ?instanceIds?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'lifecycle': ?lifecycle?.toTfJson(),
    'platform': ?platform?.toTfJson(),
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

  final Ec2FleetLaunchTemplateSpecification? launchTemplateSpecification;

  final List<Ec2FleetOverride>? override;

  Map<String, Object?> encode() => {
    'launch_template_specification': ?launchTemplateSpecification?.encode(),
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `launch_template_config.launch_template_specification` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetLaunchTemplateSpecification {
  const Ec2FleetLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    required this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'launch_template_id': ?launchTemplateId?.toTfJson(),
    'launch_template_name': ?launchTemplateName?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetOverride {
  const Ec2FleetOverride({
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

  final RefTo<AwsSubnet>? subnetId;

  final TfArg<num>? weightedCapacity;

  final Ec2FleetInstanceRequirements? instanceRequirements;

  Map<String, Object?> encode() => {
    'availability_zone': ?availabilityZone?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'max_price': ?maxPrice?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'subnet_id': ?subnetId?.encodeAs('id').toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
    'instance_requirements': ?instanceRequirements?.encode(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetInstanceRequirements {
  const Ec2FleetInstanceRequirements({
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

  final List<TfArg<Ec2FleetAcceleratorManufacturers>>? acceleratorManufacturers;

  final List<TfArg<Ec2FleetAcceleratorNames>>? acceleratorNames;

  final List<TfArg<Ec2FleetAcceleratorTypes>>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final TfArg<Ec2FleetBareMetal>? bareMetal;

  final TfArg<Ec2FleetBurstablePerformance>? burstablePerformance;

  final List<TfArg<Ec2FleetCpuManufacturers>>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<TfArg<Ec2FleetInstanceGenerations>>? instanceGenerations;

  final TfArg<Ec2FleetLocalStorage>? localStorage;

  final List<TfArg<Ec2FleetLocalStorageTypes>>? localStorageTypes;

  final TfArg<num>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final Ec2FleetAcceleratorCount? acceleratorCount;

  final Ec2FleetAcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;

  final Ec2FleetBaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;

  final Ec2FleetMemoryGibPerVcpu? memoryGibPerVcpu;

  final Ec2FleetMemoryMib memoryMib;

  final Ec2FleetNetworkBandwidthGbps? networkBandwidthGbps;

  final Ec2FleetNetworkInterfaceCount? networkInterfaceCount;

  final Ec2FleetTotalLocalStorageGb? totalLocalStorageGb;

  final Ec2FleetVcpuCount vcpuCount;

  Map<String, Object?> encode() => {
    if (acceleratorManufacturers != null)
      'accelerator_manufacturers': [
        for (final e in acceleratorManufacturers!) e.toTfJson(),
      ],
    if (acceleratorNames != null)
      'accelerator_names': [for (final e in acceleratorNames!) e.toTfJson()],
    if (acceleratorTypes != null)
      'accelerator_types': [for (final e in acceleratorTypes!) e.toTfJson()],
    'allowed_instance_types': ?allowedInstanceTypes?.toTfJson(),
    'bare_metal': ?bareMetal?.toTfJson(),
    'burstable_performance': ?burstablePerformance?.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': [for (final e in cpuManufacturers!) e.toTfJson()],
    'excluded_instance_types': ?excludedInstanceTypes?.toTfJson(),
    if (instanceGenerations != null)
      'instance_generations': [
        for (final e in instanceGenerations!) e.toTfJson(),
      ],
    'local_storage': ?localStorage?.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': [for (final e in localStorageTypes!) e.toTfJson()],
    'max_spot_price_as_percentage_of_optimal_on_demand_price':
        ?maxSpotPriceAsPercentageOfOptimalOnDemandPrice?.toTfJson(),
    'on_demand_max_price_percentage_over_lowest_price':
        ?onDemandMaxPricePercentageOverLowestPrice?.toTfJson(),
    'require_hibernate_support': ?requireHibernateSupport?.toTfJson(),
    'spot_max_price_percentage_over_lowest_price':
        ?spotMaxPricePercentageOverLowestPrice?.toTfJson(),
    'accelerator_count': ?acceleratorCount?.encode(),
    'accelerator_total_memory_mib': ?acceleratorTotalMemoryMib?.encode(),
    'baseline_ebs_bandwidth_mbps': ?baselineEbsBandwidthMbps?.encode(),
    'memory_gib_per_vcpu': ?memoryGibPerVcpu?.encode(),
    'memory_mib': memoryMib.encode(),
    'network_bandwidth_gbps': ?networkBandwidthGbps?.encode(),
    'network_interface_count': ?networkInterfaceCount?.encode(),
    'total_local_storage_gb': ?totalLocalStorageGb?.encode(),
    'vcpu_count': vcpuCount.encode(),
  };
}

/// `accelerator_manufacturers` — derived from the provider schema description.
enum Ec2FleetAcceleratorManufacturers implements TerraformEnum {
  amazonWebServices('amazon-web-services'),
  amd('amd'),
  nvidia('nvidia'),
  xilinx('xilinx'),
  habana('habana');

  const Ec2FleetAcceleratorManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_names` — derived from the provider schema description.
enum Ec2FleetAcceleratorNames implements TerraformEnum {
  a100('a100'),
  inferentia('inferentia'),
  k520('k520'),
  k80('k80'),
  m60('m60'),
  radeonProV520('radeon-pro-v520'),
  t4('t4'),
  vu9p('vu9p'),
  v100('v100'),
  a10g('a10g'),
  h100('h100'),
  t4g('t4g'),
  l40s('l40s'),
  l4('l4'),
  gaudiHl205('gaudi-hl-205'),
  inferentia2('inferentia2'),
  trainium('trainium'),
  trainium2('trainium2'),
  u30('u30');

  const Ec2FleetAcceleratorNames(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_types` — derived from the provider schema description.
enum Ec2FleetAcceleratorTypes implements TerraformEnum {
  gpu('gpu'),
  fpga('fpga'),
  inference('inference'),
  media('media');

  const Ec2FleetAcceleratorTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `bare_metal` — derived from the provider schema description.
enum Ec2FleetBareMetal implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const Ec2FleetBareMetal(this.terraformValue);
  @override
  final String terraformValue;
}

/// `burstable_performance` — derived from the provider schema description.
enum Ec2FleetBurstablePerformance implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const Ec2FleetBurstablePerformance(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cpu_manufacturers` — derived from the provider schema description.
enum Ec2FleetCpuManufacturers implements TerraformEnum {
  intel('intel'),
  amd('amd'),
  amazonWebServices('amazon-web-services'),
  apple('apple');

  const Ec2FleetCpuManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_generations` — derived from the provider schema description.
enum Ec2FleetInstanceGenerations implements TerraformEnum {
  current('current'),
  previous('previous');

  const Ec2FleetInstanceGenerations(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage` — derived from the provider schema description.
enum Ec2FleetLocalStorage implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const Ec2FleetLocalStorage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage_types` — derived from the provider schema description.
enum Ec2FleetLocalStorageTypes implements TerraformEnum {
  hdd('hdd'),
  ssd('ssd');

  const Ec2FleetLocalStorageTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `launch_template_config.override.instance_requirements.accelerator_count` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetAcceleratorCount {
  const Ec2FleetAcceleratorCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetAcceleratorTotalMemoryMib {
  const Ec2FleetAcceleratorTotalMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetBaselineEbsBandwidthMbps {
  const Ec2FleetBaselineEbsBandwidthMbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetMemoryGibPerVcpu {
  const Ec2FleetMemoryGibPerVcpu({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.memory_mib` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetMemoryMib {
  const Ec2FleetMemoryMib({this.max, required this.min});

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.network_bandwidth_gbps` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetNetworkBandwidthGbps {
  const Ec2FleetNetworkBandwidthGbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.network_interface_count` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetNetworkInterfaceCount {
  const Ec2FleetNetworkInterfaceCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.total_local_storage_gb` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetTotalLocalStorageGb {
  const Ec2FleetTotalLocalStorageGb({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.override.instance_requirements.vcpu_count` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetVcpuCount {
  const Ec2FleetVcpuCount({this.max, required this.min});

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
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

  final Ec2FleetCapacityReservationOptions? capacityReservationOptions;

  Map<String, Object?> encode() => {
    'allocation_strategy': ?allocationStrategy?.toTfJson(),
    'max_total_price': ?maxTotalPrice?.toTfJson(),
    'min_target_capacity': ?minTargetCapacity?.toTfJson(),
    'single_availability_zone': ?singleAvailabilityZone?.toTfJson(),
    'single_instance_type': ?singleInstanceType?.toTfJson(),
    'capacity_reservation_options': ?capacityReservationOptions?.encode(),
  };
}

/// Typed helper for the `on_demand_options.capacity_reservation_options` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetCapacityReservationOptions {
  const Ec2FleetCapacityReservationOptions({this.usageStrategy});

  final TfArg<Ec2FleetUsageStrategy>? usageStrategy;

  Map<String, Object?> encode() => {
    'usage_strategy': ?usageStrategy?.toTfJson(),
  };
}

/// `usage_strategy` — derived from the provider schema description.
enum Ec2FleetUsageStrategy implements TerraformEnum {
  useCapacityReservationsFirst('use-capacity-reservations-first');

  const Ec2FleetUsageStrategy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<Ec2FleetInstanceInterruptionBehavior>?
  instanceInterruptionBehavior;

  final TfArg<num>? instancePoolsToUseCount;

  final TfArg<String>? maxTotalPrice;

  final TfArg<num>? minTargetCapacity;

  final TfArg<bool>? singleAvailabilityZone;

  final TfArg<bool>? singleInstanceType;

  final Ec2FleetMaintenanceStrategies? maintenanceStrategies;

  Map<String, Object?> encode() => {
    'allocation_strategy': ?allocationStrategy?.toTfJson(),
    'instance_interruption_behavior': ?instanceInterruptionBehavior?.toTfJson(),
    'instance_pools_to_use_count': ?instancePoolsToUseCount?.toTfJson(),
    'max_total_price': ?maxTotalPrice?.toTfJson(),
    'min_target_capacity': ?minTargetCapacity?.toTfJson(),
    'single_availability_zone': ?singleAvailabilityZone?.toTfJson(),
    'single_instance_type': ?singleInstanceType?.toTfJson(),
    'maintenance_strategies': ?maintenanceStrategies?.encode(),
  };
}

/// `instance_interruption_behavior` — derived from the provider schema description.
enum Ec2FleetInstanceInterruptionBehavior implements TerraformEnum {
  hibernate('hibernate'),
  stop('stop'),
  terminate('terminate');

  const Ec2FleetInstanceInterruptionBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spot_options.maintenance_strategies` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetMaintenanceStrategies {
  const Ec2FleetMaintenanceStrategies({this.capacityRebalance});

  final Ec2FleetCapacityRebalance? capacityRebalance;

  Map<String, Object?> encode() => {
    'capacity_rebalance': ?capacityRebalance?.encode(),
  };
}

/// Typed helper for the `spot_options.maintenance_strategies.capacity_rebalance` block of
/// `aws_ec2_fleet` (derived from provider schema).
@immutable
final class Ec2FleetCapacityRebalance {
  const Ec2FleetCapacityRebalance({
    this.replacementStrategy,
    this.terminationDelay,
  });

  final TfArg<Ec2FleetReplacementStrategy>? replacementStrategy;

  final TfArg<num>? terminationDelay;

  Map<String, Object?> encode() => {
    'replacement_strategy': ?replacementStrategy?.toTfJson(),
    'termination_delay': ?terminationDelay?.toTfJson(),
  };
}

/// `replacement_strategy` — derived from the provider schema description.
enum Ec2FleetReplacementStrategy implements TerraformEnum {
  launch('launch'),
  launchBeforeTerminate('launch-before-terminate');

  const Ec2FleetReplacementStrategy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<Ec2FleetDefaultTargetCapacityType> defaultTargetCapacityType;

  final TfArg<num>? onDemandTargetCapacity;

  final TfArg<num>? spotTargetCapacity;

  final TfArg<Ec2FleetTargetCapacityUnitType>? targetCapacityUnitType;

  final TfArg<num> totalTargetCapacity;

  Map<String, Object?> encode() => {
    'default_target_capacity_type': defaultTargetCapacityType.toTfJson(),
    'on_demand_target_capacity': ?onDemandTargetCapacity?.toTfJson(),
    'spot_target_capacity': ?spotTargetCapacity?.toTfJson(),
    'target_capacity_unit_type': ?targetCapacityUnitType?.toTfJson(),
    'total_target_capacity': totalTargetCapacity.toTfJson(),
  };
}

/// `default_target_capacity_type` — derived from the provider schema description.
enum Ec2FleetDefaultTargetCapacityType implements TerraformEnum {
  spot('spot'),
  onDemand('on-demand'),
  capacityBlock('capacity-block'),
  reservedCapacity('reserved-capacity');

  const Ec2FleetDefaultTargetCapacityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target_capacity_unit_type` — derived from the provider schema description.
enum Ec2FleetTargetCapacityUnitType implements TerraformEnum {
  vcpu('vcpu'),
  memoryMib('memory-mib'),
  units('units');

  const Ec2FleetTargetCapacityUnitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_fleet`.
final class AwsEc2Fleet extends Resource {
  static const String tfType = 'aws_ec2_fleet';

  AwsEc2Fleet(
    super.localName, {
    TfArg<String>? context,
    TfArg<Ec2FleetExcessCapacityTerminationPolicy>?
    excessCapacityTerminationPolicy,
    TfArg<String>? fleetState,
    TfArg<num>? fulfilledCapacity,
    TfArg<num>? fulfilledOnDemandCapacity,
    TfArg<String>? region,
    TfArg<bool>? replaceUnhealthyInstances,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminateInstances,
    TfArg<bool>? terminateInstancesWithExpiration,
    TfArg<Ec2FleetType>? type,
    TfArg<String>? validFrom,
    TfArg<String>? validUntil,
    List<Ec2FleetInstanceSet>? fleetInstanceSet,
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
           'context': ?context,
           'excess_capacity_termination_policy':
               ?excessCapacityTerminationPolicy,
           'fleet_state': ?fleetState,
           'fulfilled_capacity': ?fulfilledCapacity,
           'fulfilled_on_demand_capacity': ?fulfilledOnDemandCapacity,
           'region': ?region,
           'replace_unhealthy_instances': ?replaceUnhealthyInstances,
           'tags': ?tags,
           'terminate_instances': ?terminateInstances,
           'terminate_instances_with_expiration':
               ?terminateInstancesWithExpiration,
           'type': ?type,
           'valid_from': ?validFrom,
           'valid_until': ?validUntil,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2Fleet>`.
  RefTo<AwsEc2Fleet> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `context` attribute.
  TfRef<String> get context => TfRef.attribute<String>(this, 'context');

  /// Reference to `excess_capacity_termination_policy` attribute.
  TfRef<String> get excessCapacityTerminationPolicy =>
      TfRef.attribute<String>(this, 'excess_capacity_termination_policy');

  /// Reference to `fleet_state` attribute.
  TfRef<String> get fleetState => TfRef.attribute<String>(this, 'fleet_state');

  /// Reference to `fulfilled_capacity` attribute.
  TfRef<num> get fulfilledCapacity =>
      TfRef.attribute<num>(this, 'fulfilled_capacity');

  /// Reference to `fulfilled_on_demand_capacity` attribute.
  TfRef<num> get fulfilledOnDemandCapacity =>
      TfRef.attribute<num>(this, 'fulfilled_on_demand_capacity');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replace_unhealthy_instances` attribute.
  TfRef<bool> get replaceUnhealthyInstances =>
      TfRef.attribute<bool>(this, 'replace_unhealthy_instances');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `terminate_instances` attribute.
  TfRef<bool> get terminateInstances =>
      TfRef.attribute<bool>(this, 'terminate_instances');

  /// Reference to `terminate_instances_with_expiration` attribute.
  TfRef<bool> get terminateInstancesWithExpiration =>
      TfRef.attribute<bool>(this, 'terminate_instances_with_expiration');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `valid_from` attribute.
  TfRef<String> get validFrom => TfRef.attribute<String>(this, 'valid_from');

  /// Reference to `valid_until` attribute.
  TfRef<String> get validUntil => TfRef.attribute<String>(this, 'valid_until');
}
