// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_ec2_fleet`.
const Set<String> _awsEc2FleetSensitive = <String>{};

/// Ec2 Fleet Excess Capacity Termination enum for `excess_capacity_termination_policy`.
extension type const Ec2FleetExcessCapacityTerminationPolicy._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetExcessCapacityTerminationPolicy.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetExcessCapacityTerminationPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetExcessCapacityTerminationPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const noTermination = Ec2FleetExcessCapacityTerminationPolicy._(
    TfArgLiteral('no-termination'),
  );
  static const termination = Ec2FleetExcessCapacityTerminationPolicy._(
    TfArgLiteral('termination'),
  );

  static const List<Ec2FleetExcessCapacityTerminationPolicy> values = [
    noTermination,
    termination,
  ];
}

/// Ec2 Fleet enum for `type`.
extension type const Ec2FleetType._(TfArg<String> _) implements TfArg<String> {
  Ec2FleetType.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetType.expression(String template) : this._(TfArg.expression(template));
  const Ec2FleetType.arg(TfArg<String> arg) : this._(arg);

  static const request = Ec2FleetType._(TfArgLiteral('request'));
  static const maintain = Ec2FleetType._(TfArgLiteral('maintain'));
  static const instant = Ec2FleetType._(TfArgLiteral('instant'));

  static const List<Ec2FleetType> values = [request, maintain, instant];
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

  final List<Ec2FleetAcceleratorManufacturers>? acceleratorManufacturers;

  final List<Ec2FleetAcceleratorNames>? acceleratorNames;

  final List<Ec2FleetAcceleratorTypes>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final Ec2FleetBareMetal? bareMetal;

  final Ec2FleetBurstablePerformance? burstablePerformance;

  final List<Ec2FleetCpuManufacturers>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<Ec2FleetInstanceGenerations>? instanceGenerations;

  final Ec2FleetLocalStorage? localStorage;

  final List<Ec2FleetLocalStorageTypes>? localStorageTypes;

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
extension type const Ec2FleetAcceleratorManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetAcceleratorManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetAcceleratorManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetAcceleratorManufacturers.arg(TfArg<String> arg) : this._(arg);

  static const amazonWebServices = Ec2FleetAcceleratorManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const amd = Ec2FleetAcceleratorManufacturers._(TfArgLiteral('amd'));
  static const nvidia = Ec2FleetAcceleratorManufacturers._(
    TfArgLiteral('nvidia'),
  );
  static const xilinx = Ec2FleetAcceleratorManufacturers._(
    TfArgLiteral('xilinx'),
  );
  static const habana = Ec2FleetAcceleratorManufacturers._(
    TfArgLiteral('habana'),
  );

  static const List<Ec2FleetAcceleratorManufacturers> values = [
    amazonWebServices,
    amd,
    nvidia,
    xilinx,
    habana,
  ];
}

/// `accelerator_names` — derived from the provider schema description.
extension type const Ec2FleetAcceleratorNames._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetAcceleratorNames.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetAcceleratorNames.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetAcceleratorNames.arg(TfArg<String> arg) : this._(arg);

  static const a100 = Ec2FleetAcceleratorNames._(TfArgLiteral('a100'));
  static const inferentia = Ec2FleetAcceleratorNames._(
    TfArgLiteral('inferentia'),
  );
  static const k520 = Ec2FleetAcceleratorNames._(TfArgLiteral('k520'));
  static const k80 = Ec2FleetAcceleratorNames._(TfArgLiteral('k80'));
  static const m60 = Ec2FleetAcceleratorNames._(TfArgLiteral('m60'));
  static const radeonProV520 = Ec2FleetAcceleratorNames._(
    TfArgLiteral('radeon-pro-v520'),
  );
  static const t4 = Ec2FleetAcceleratorNames._(TfArgLiteral('t4'));
  static const vu9p = Ec2FleetAcceleratorNames._(TfArgLiteral('vu9p'));
  static const v100 = Ec2FleetAcceleratorNames._(TfArgLiteral('v100'));
  static const a10g = Ec2FleetAcceleratorNames._(TfArgLiteral('a10g'));
  static const h100 = Ec2FleetAcceleratorNames._(TfArgLiteral('h100'));
  static const t4g = Ec2FleetAcceleratorNames._(TfArgLiteral('t4g'));
  static const l40s = Ec2FleetAcceleratorNames._(TfArgLiteral('l40s'));
  static const l4 = Ec2FleetAcceleratorNames._(TfArgLiteral('l4'));
  static const gaudiHl205 = Ec2FleetAcceleratorNames._(
    TfArgLiteral('gaudi-hl-205'),
  );
  static const inferentia2 = Ec2FleetAcceleratorNames._(
    TfArgLiteral('inferentia2'),
  );
  static const trainium = Ec2FleetAcceleratorNames._(TfArgLiteral('trainium'));
  static const trainium2 = Ec2FleetAcceleratorNames._(
    TfArgLiteral('trainium2'),
  );
  static const u30 = Ec2FleetAcceleratorNames._(TfArgLiteral('u30'));

  static const List<Ec2FleetAcceleratorNames> values = [
    a100,
    inferentia,
    k520,
    k80,
    m60,
    radeonProV520,
    t4,
    vu9p,
    v100,
    a10g,
    h100,
    t4g,
    l40s,
    l4,
    gaudiHl205,
    inferentia2,
    trainium,
    trainium2,
    u30,
  ];
}

/// `accelerator_types` — derived from the provider schema description.
extension type const Ec2FleetAcceleratorTypes._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetAcceleratorTypes.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetAcceleratorTypes.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetAcceleratorTypes.arg(TfArg<String> arg) : this._(arg);

  static const gpu = Ec2FleetAcceleratorTypes._(TfArgLiteral('gpu'));
  static const fpga = Ec2FleetAcceleratorTypes._(TfArgLiteral('fpga'));
  static const inference = Ec2FleetAcceleratorTypes._(
    TfArgLiteral('inference'),
  );
  static const media = Ec2FleetAcceleratorTypes._(TfArgLiteral('media'));

  static const List<Ec2FleetAcceleratorTypes> values = [
    gpu,
    fpga,
    inference,
    media,
  ];
}

/// `bare_metal` — derived from the provider schema description.
extension type const Ec2FleetBareMetal._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetBareMetal.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetBareMetal.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetBareMetal.arg(TfArg<String> arg) : this._(arg);

  static const included = Ec2FleetBareMetal._(TfArgLiteral('included'));
  static const required = Ec2FleetBareMetal._(TfArgLiteral('required'));
  static const excluded = Ec2FleetBareMetal._(TfArgLiteral('excluded'));

  static const List<Ec2FleetBareMetal> values = [included, required, excluded];
}

/// `burstable_performance` — derived from the provider schema description.
extension type const Ec2FleetBurstablePerformance._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetBurstablePerformance.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetBurstablePerformance.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetBurstablePerformance.arg(TfArg<String> arg) : this._(arg);

  static const included = Ec2FleetBurstablePerformance._(
    TfArgLiteral('included'),
  );
  static const required = Ec2FleetBurstablePerformance._(
    TfArgLiteral('required'),
  );
  static const excluded = Ec2FleetBurstablePerformance._(
    TfArgLiteral('excluded'),
  );

  static const List<Ec2FleetBurstablePerformance> values = [
    included,
    required,
    excluded,
  ];
}

/// `cpu_manufacturers` — derived from the provider schema description.
extension type const Ec2FleetCpuManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetCpuManufacturers.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetCpuManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetCpuManufacturers.arg(TfArg<String> arg) : this._(arg);

  static const intel = Ec2FleetCpuManufacturers._(TfArgLiteral('intel'));
  static const amd = Ec2FleetCpuManufacturers._(TfArgLiteral('amd'));
  static const amazonWebServices = Ec2FleetCpuManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const apple = Ec2FleetCpuManufacturers._(TfArgLiteral('apple'));

  static const List<Ec2FleetCpuManufacturers> values = [
    intel,
    amd,
    amazonWebServices,
    apple,
  ];
}

/// `instance_generations` — derived from the provider schema description.
extension type const Ec2FleetInstanceGenerations._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetInstanceGenerations.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetInstanceGenerations.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetInstanceGenerations.arg(TfArg<String> arg) : this._(arg);

  static const current = Ec2FleetInstanceGenerations._(TfArgLiteral('current'));
  static const previous = Ec2FleetInstanceGenerations._(
    TfArgLiteral('previous'),
  );

  static const List<Ec2FleetInstanceGenerations> values = [current, previous];
}

/// `local_storage` — derived from the provider schema description.
extension type const Ec2FleetLocalStorage._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetLocalStorage.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetLocalStorage.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetLocalStorage.arg(TfArg<String> arg) : this._(arg);

  static const included = Ec2FleetLocalStorage._(TfArgLiteral('included'));
  static const required = Ec2FleetLocalStorage._(TfArgLiteral('required'));
  static const excluded = Ec2FleetLocalStorage._(TfArgLiteral('excluded'));

  static const List<Ec2FleetLocalStorage> values = [
    included,
    required,
    excluded,
  ];
}

/// `local_storage_types` — derived from the provider schema description.
extension type const Ec2FleetLocalStorageTypes._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetLocalStorageTypes.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetLocalStorageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetLocalStorageTypes.arg(TfArg<String> arg) : this._(arg);

  static const hdd = Ec2FleetLocalStorageTypes._(TfArgLiteral('hdd'));
  static const ssd = Ec2FleetLocalStorageTypes._(TfArgLiteral('ssd'));

  static const List<Ec2FleetLocalStorageTypes> values = [hdd, ssd];
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

  final Ec2FleetUsageStrategy? usageStrategy;

  Map<String, Object?> encode() => {
    'usage_strategy': ?usageStrategy?.toTfJson(),
  };
}

/// `usage_strategy` — derived from the provider schema description.
extension type const Ec2FleetUsageStrategy._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetUsageStrategy.variable(String name) : this._(TfArg.variable(name));
  Ec2FleetUsageStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetUsageStrategy.arg(TfArg<String> arg) : this._(arg);

  static const useCapacityReservationsFirst = Ec2FleetUsageStrategy._(
    TfArgLiteral('use-capacity-reservations-first'),
  );

  static const List<Ec2FleetUsageStrategy> values = [
    useCapacityReservationsFirst,
  ];
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

  final Ec2FleetInstanceInterruptionBehavior? instanceInterruptionBehavior;

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
extension type const Ec2FleetInstanceInterruptionBehavior._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetInstanceInterruptionBehavior.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetInstanceInterruptionBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetInstanceInterruptionBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const hibernate = Ec2FleetInstanceInterruptionBehavior._(
    TfArgLiteral('hibernate'),
  );
  static const stop = Ec2FleetInstanceInterruptionBehavior._(
    TfArgLiteral('stop'),
  );
  static const terminate = Ec2FleetInstanceInterruptionBehavior._(
    TfArgLiteral('terminate'),
  );

  static const List<Ec2FleetInstanceInterruptionBehavior> values = [
    hibernate,
    stop,
    terminate,
  ];
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

  final Ec2FleetReplacementStrategy? replacementStrategy;

  final TfArg<num>? terminationDelay;

  Map<String, Object?> encode() => {
    'replacement_strategy': ?replacementStrategy?.toTfJson(),
    'termination_delay': ?terminationDelay?.toTfJson(),
  };
}

/// `replacement_strategy` — derived from the provider schema description.
extension type const Ec2FleetReplacementStrategy._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetReplacementStrategy.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetReplacementStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetReplacementStrategy.arg(TfArg<String> arg) : this._(arg);

  static const launch = Ec2FleetReplacementStrategy._(TfArgLiteral('launch'));
  static const launchBeforeTerminate = Ec2FleetReplacementStrategy._(
    TfArgLiteral('launch-before-terminate'),
  );

  static const List<Ec2FleetReplacementStrategy> values = [
    launch,
    launchBeforeTerminate,
  ];
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

  final Ec2FleetDefaultTargetCapacityType defaultTargetCapacityType;

  final TfArg<num>? onDemandTargetCapacity;

  final TfArg<num>? spotTargetCapacity;

  final Ec2FleetTargetCapacityUnitType? targetCapacityUnitType;

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
extension type const Ec2FleetDefaultTargetCapacityType._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetDefaultTargetCapacityType.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetDefaultTargetCapacityType.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetDefaultTargetCapacityType.arg(TfArg<String> arg) : this._(arg);

  static const spot = Ec2FleetDefaultTargetCapacityType._(TfArgLiteral('spot'));
  static const onDemand = Ec2FleetDefaultTargetCapacityType._(
    TfArgLiteral('on-demand'),
  );
  static const capacityBlock = Ec2FleetDefaultTargetCapacityType._(
    TfArgLiteral('capacity-block'),
  );
  static const reservedCapacity = Ec2FleetDefaultTargetCapacityType._(
    TfArgLiteral('reserved-capacity'),
  );

  static const List<Ec2FleetDefaultTargetCapacityType> values = [
    spot,
    onDemand,
    capacityBlock,
    reservedCapacity,
  ];
}

/// `target_capacity_unit_type` — derived from the provider schema description.
extension type const Ec2FleetTargetCapacityUnitType._(TfArg<String> _)
    implements TfArg<String> {
  Ec2FleetTargetCapacityUnitType.variable(String name)
    : this._(TfArg.variable(name));
  Ec2FleetTargetCapacityUnitType.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2FleetTargetCapacityUnitType.arg(TfArg<String> arg) : this._(arg);

  static const vcpu = Ec2FleetTargetCapacityUnitType._(TfArgLiteral('vcpu'));
  static const memoryMib = Ec2FleetTargetCapacityUnitType._(
    TfArgLiteral('memory-mib'),
  );
  static const units = Ec2FleetTargetCapacityUnitType._(TfArgLiteral('units'));

  static const List<Ec2FleetTargetCapacityUnitType> values = [
    vcpu,
    memoryMib,
    units,
  ];
}

/// Factory wrapper for `aws_ec2_fleet`.
final class AwsEc2Fleet extends Resource {
  static const String tfType = 'aws_ec2_fleet';

  AwsEc2Fleet(
    super.localName, {
    TfArg<String>? context,
    Ec2FleetExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    TfArg<String>? fleetState,
    TfArg<num>? fulfilledCapacity,
    TfArg<num>? fulfilledOnDemandCapacity,
    TfArg<String>? region,
    TfArg<bool>? replaceUnhealthyInstances,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminateInstances,
    TfArg<bool>? terminateInstancesWithExpiration,
    Ec2FleetType? type,
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
