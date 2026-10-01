// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_spot_fleet_request`.
const Set<String> _awsSpotFleetRequestSensitive = <String>{};

/// Spot Fleet Request Allocation enum for `allocation_strategy`.
enum SpotFleetRequestAllocationStrategy implements TerraformEnum {
  lowestprice('lowestPrice'),
  diversified('diversified'),
  capacityoptimized('capacityOptimized'),
  capacityoptimizedprioritized('capacityOptimizedPrioritized'),
  pricecapacityoptimized('priceCapacityOptimized');

  const SpotFleetRequestAllocationStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spot Fleet Request Excess Capacity Termination enum for `excess_capacity_termination_policy`.
enum SpotFleetRequestExcessCapacityTerminationPolicy implements TerraformEnum {
  defaultCase('Default'),
  notermination('NoTermination');

  const SpotFleetRequestExcessCapacityTerminationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spot Fleet Request Fleet enum for `fleet_type`.
enum SpotFleetRequestFleetType implements TerraformEnum {
  request('request'),
  maintain('maintain'),
  instant('instant');

  const SpotFleetRequestFleetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spot Fleet Request Instance Interruption enum for `instance_interruption_behaviour`.
enum SpotFleetRequestInstanceInterruptionBehaviour implements TerraformEnum {
  hibernate('hibernate'),
  stop('stop'),
  terminate('terminate');

  const SpotFleetRequestInstanceInterruptionBehaviour(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spot Fleet Request On Demand Allocation enum for `on_demand_allocation_strategy`.
enum SpotFleetRequestOnDemandAllocationStrategy implements TerraformEnum {
  lowestprice('lowestPrice'),
  prioritized('prioritized');

  const SpotFleetRequestOnDemandAllocationStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spot Fleet Request Target Capacity Unit enum for `target_capacity_unit_type`.
enum SpotFleetRequestTargetCapacityUnitType implements TerraformEnum {
  vcpu('vcpu'),
  memoryMib('memory-mib'),
  units('units');

  const SpotFleetRequestTargetCapacityUnitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `launch_specification`, `launch_template_config` on `aws_spot_fleet_request`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.launchSpecification(...)`.
sealed class SpotFleetRequestLaunch {
  const SpotFleetRequestLaunch();

  /// Sets `launch_specification`.
  const factory SpotFleetRequestLaunch.launchSpecification(
    List<SpotFleetRequestLaunchSpecification> launchSpecification,
  ) = SpotFleetRequestLaunchSpecificationChoice;

  /// Sets `launch_template_config`.
  const factory SpotFleetRequestLaunch.launchTemplateConfig(
    List<SpotFleetRequestLaunchTemplateConfig> launchTemplateConfig,
  ) = SpotFleetRequestLaunchTemplateConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotFleetRequestLaunch.launchSpecification] choice: sets `launch_specification`.
final class SpotFleetRequestLaunchSpecificationChoice
    extends SpotFleetRequestLaunch {
  const SpotFleetRequestLaunchSpecificationChoice(this.launchSpecification);

  final List<SpotFleetRequestLaunchSpecification> launchSpecification;

  @override
  String get blockKey => 'launch_specification';

  @override
  Map<String, Object?> encode() => {
    'launch_specification': [for (final e in launchSpecification) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'launch_specification': TfArg.literal([
      for (final e in launchSpecification) e.encode(),
    ]),
  };
}

/// The [SpotFleetRequestLaunch.launchTemplateConfig] choice: sets `launch_template_config`.
final class SpotFleetRequestLaunchTemplateConfigChoice
    extends SpotFleetRequestLaunch {
  const SpotFleetRequestLaunchTemplateConfigChoice(this.launchTemplateConfig);

  final List<SpotFleetRequestLaunchTemplateConfig> launchTemplateConfig;

  @override
  String get blockKey => 'launch_template_config';

  @override
  Map<String, Object?> encode() => {
    'launch_template_config': [
      for (final e in launchTemplateConfig) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'launch_template_config': TfArg.literal([
      for (final e in launchTemplateConfig) e.encode(),
    ]),
  };
}

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

  final TfArg<SpotFleetRequestPlacementTenancy>? placementTenancy;

  final TfArg<String>? spotPrice;

  final RefTo<AwsSubnet>? subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String>? userData;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds;

  final TfArg<String>? weightedCapacity;

  final List<SpotFleetRequestEbsBlockDevice>? ebsBlockDevice;

  final List<SpotFleetRequestEphemeralBlockDevice>? ephemeralBlockDevice;

  final List<SpotFleetRequestRootBlockDevice>? rootBlockDevice;

  Map<String, Object?> encode() => {
    'ami': ami.toTfJson(),
    'associate_public_ip_address': ?associatePublicIpAddress?.toTfJson(),
    'availability_zone': ?availabilityZone?.toTfJson(),
    'ebs_optimized': ?ebsOptimized?.toTfJson(),
    'iam_instance_profile': ?iamInstanceProfile?.toTfJson(),
    'iam_instance_profile_arn': ?iamInstanceProfileArn?.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'key_name': ?keyName?.toTfJson(),
    'monitoring': ?monitoring?.toTfJson(),
    'placement_group': ?placementGroup?.toTfJson(),
    'placement_tenancy': ?placementTenancy?.toTfJson(),
    'spot_price': ?spotPrice?.toTfJson(),
    'subnet_id': ?subnetId?.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'user_data': ?userData?.toTfJson(),
    'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id').toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
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

/// `placement_tenancy` — derived from the provider schema description.
enum SpotFleetRequestPlacementTenancy implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated'),
  host('host');

  const SpotFleetRequestPlacementTenancy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `launch_specification.ebs_block_device` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestEbsBlockDevice {
  const SpotFleetRequestEbsBlockDevice({
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<SpotFleetRequestVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum SpotFleetRequestVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const SpotFleetRequestVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `launch_specification.ephemeral_block_device` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestEphemeralBlockDevice {
  const SpotFleetRequestEphemeralBlockDevice({
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
final class SpotFleetRequestRootBlockDevice {
  const SpotFleetRequestRootBlockDevice({
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<SpotFleetRequestVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
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

  final SpotFleetRequestLaunchTemplateSpecification launchTemplateSpecification;

  final List<SpotFleetRequestOverrides>? overrides;

  Map<String, Object?> encode() => {
    'launch_template_specification': launchTemplateSpecification.encode(),
    if (overrides != null)
      'overrides': [for (final e in overrides!) e.encode()],
  };
}

/// Typed helper for the `launch_template_config.launch_template_specification` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestLaunchTemplateSpecification {
  const SpotFleetRequestLaunchTemplateSpecification({
    this.id,
    this.name,
    this.version,
  });

  final TfArg<String>? id;

  final TfArg<String>? name;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestOverrides {
  const SpotFleetRequestOverrides({
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

  final RefTo<AwsSubnet>? subnetId;

  final TfArg<num>? weightedCapacity;

  final SpotFleetRequestInstanceRequirements? instanceRequirements;

  Map<String, Object?> encode() => {
    'availability_zone': ?availabilityZone?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'spot_price': ?spotPrice?.toTfJson(),
    'subnet_id': ?subnetId?.encodeAs('id').toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
    'instance_requirements': ?instanceRequirements?.encode(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestInstanceRequirements {
  const SpotFleetRequestInstanceRequirements({
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

  final List<TfArg<SpotFleetRequestAcceleratorManufacturers>>?
  acceleratorManufacturers;

  final List<TfArg<SpotFleetRequestAcceleratorNames>>? acceleratorNames;

  final List<TfArg<SpotFleetRequestAcceleratorTypes>>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final TfArg<SpotFleetRequestBareMetal>? bareMetal;

  final TfArg<SpotFleetRequestBurstablePerformance>? burstablePerformance;

  final List<TfArg<SpotFleetRequestCpuManufacturers>>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<TfArg<SpotFleetRequestInstanceGenerations>>? instanceGenerations;

  final TfArg<SpotFleetRequestLocalStorage>? localStorage;

  final List<TfArg<SpotFleetRequestLocalStorageTypes>>? localStorageTypes;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final SpotFleetRequestAcceleratorCount? acceleratorCount;

  final SpotFleetRequestAcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;

  final SpotFleetRequestBaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;

  final SpotFleetRequestMemoryGibPerVcpu? memoryGibPerVcpu;

  final SpotFleetRequestMemoryMib? memoryMib;

  final SpotFleetRequestNetworkBandwidthGbps? networkBandwidthGbps;

  final SpotFleetRequestNetworkInterfaceCount? networkInterfaceCount;

  final SpotFleetRequestTotalLocalStorageGb? totalLocalStorageGb;

  final SpotFleetRequestVcpuCount? vcpuCount;

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
    'on_demand_max_price_percentage_over_lowest_price':
        ?onDemandMaxPricePercentageOverLowestPrice?.toTfJson(),
    'require_hibernate_support': ?requireHibernateSupport?.toTfJson(),
    'spot_max_price_percentage_over_lowest_price':
        ?spotMaxPricePercentageOverLowestPrice?.toTfJson(),
    'accelerator_count': ?acceleratorCount?.encode(),
    'accelerator_total_memory_mib': ?acceleratorTotalMemoryMib?.encode(),
    'baseline_ebs_bandwidth_mbps': ?baselineEbsBandwidthMbps?.encode(),
    'memory_gib_per_vcpu': ?memoryGibPerVcpu?.encode(),
    'memory_mib': ?memoryMib?.encode(),
    'network_bandwidth_gbps': ?networkBandwidthGbps?.encode(),
    'network_interface_count': ?networkInterfaceCount?.encode(),
    'total_local_storage_gb': ?totalLocalStorageGb?.encode(),
    'vcpu_count': ?vcpuCount?.encode(),
  };
}

/// `accelerator_manufacturers` — derived from the provider schema description.
enum SpotFleetRequestAcceleratorManufacturers implements TerraformEnum {
  amazonWebServices('amazon-web-services'),
  amd('amd'),
  nvidia('nvidia'),
  xilinx('xilinx'),
  habana('habana');

  const SpotFleetRequestAcceleratorManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_names` — derived from the provider schema description.
enum SpotFleetRequestAcceleratorNames implements TerraformEnum {
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

  const SpotFleetRequestAcceleratorNames(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_types` — derived from the provider schema description.
enum SpotFleetRequestAcceleratorTypes implements TerraformEnum {
  gpu('gpu'),
  fpga('fpga'),
  inference('inference'),
  media('media');

  const SpotFleetRequestAcceleratorTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `bare_metal` — derived from the provider schema description.
enum SpotFleetRequestBareMetal implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const SpotFleetRequestBareMetal(this.terraformValue);
  @override
  final String terraformValue;
}

/// `burstable_performance` — derived from the provider schema description.
enum SpotFleetRequestBurstablePerformance implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const SpotFleetRequestBurstablePerformance(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cpu_manufacturers` — derived from the provider schema description.
enum SpotFleetRequestCpuManufacturers implements TerraformEnum {
  intel('intel'),
  amd('amd'),
  amazonWebServices('amazon-web-services'),
  apple('apple');

  const SpotFleetRequestCpuManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_generations` — derived from the provider schema description.
enum SpotFleetRequestInstanceGenerations implements TerraformEnum {
  current('current'),
  previous('previous');

  const SpotFleetRequestInstanceGenerations(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage` — derived from the provider schema description.
enum SpotFleetRequestLocalStorage implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const SpotFleetRequestLocalStorage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage_types` — derived from the provider schema description.
enum SpotFleetRequestLocalStorageTypes implements TerraformEnum {
  hdd('hdd'),
  ssd('ssd');

  const SpotFleetRequestLocalStorageTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.accelerator_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestAcceleratorCount {
  const SpotFleetRequestAcceleratorCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestAcceleratorTotalMemoryMib {
  const SpotFleetRequestAcceleratorTotalMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestBaselineEbsBandwidthMbps {
  const SpotFleetRequestBaselineEbsBandwidthMbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestMemoryGibPerVcpu {
  const SpotFleetRequestMemoryGibPerVcpu({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.memory_mib` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestMemoryMib {
  const SpotFleetRequestMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.network_bandwidth_gbps` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestNetworkBandwidthGbps {
  const SpotFleetRequestNetworkBandwidthGbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.network_interface_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestNetworkInterfaceCount {
  const SpotFleetRequestNetworkInterfaceCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.total_local_storage_gb` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestTotalLocalStorageGb {
  const SpotFleetRequestTotalLocalStorageGb({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.vcpu_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestVcpuCount {
  const SpotFleetRequestVcpuCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `spot_maintenance_strategies` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestSpotMaintenanceStrategies {
  const SpotFleetRequestSpotMaintenanceStrategies({this.capacityRebalance});

  final SpotFleetRequestCapacityRebalance? capacityRebalance;

  Map<String, Object?> encode() => {
    'capacity_rebalance': ?capacityRebalance?.encode(),
  };
}

/// Typed helper for the `spot_maintenance_strategies.capacity_rebalance` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestCapacityRebalance {
  const SpotFleetRequestCapacityRebalance({this.replacementStrategy});

  final TfArg<SpotFleetRequestReplacementStrategy>? replacementStrategy;

  Map<String, Object?> encode() => {
    'replacement_strategy': ?replacementStrategy?.toTfJson(),
  };
}

/// `replacement_strategy` — derived from the provider schema description.
enum SpotFleetRequestReplacementStrategy implements TerraformEnum {
  launch('launch'),
  launchBeforeTerminate('launch-before-terminate');

  const SpotFleetRequestReplacementStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_spot_fleet_request`.
final class AwsSpotFleetRequest extends Resource {
  static const String tfType = 'aws_spot_fleet_request';

  AwsSpotFleetRequest({
    required super.localName,
    TfArg<SpotFleetRequestAllocationStrategy>? allocationStrategy,
    TfArg<String>? context,
    TfArg<SpotFleetRequestExcessCapacityTerminationPolicy>?
    excessCapacityTerminationPolicy,
    TfArg<SpotFleetRequestFleetType>? fleetType,
    required TfArg<String> iamFleetRole,
    TfArg<SpotFleetRequestInstanceInterruptionBehaviour>?
    instanceInterruptionBehaviour,
    TfArg<num>? instancePoolsToUseCount,
    TfArg<List<String>>? loadBalancers,
    TfArg<SpotFleetRequestOnDemandAllocationStrategy>?
    onDemandAllocationStrategy,
    TfArg<String>? onDemandMaxTotalPrice,
    TfArg<num>? onDemandTargetCapacity,
    TfArg<String>? region,
    TfArg<bool>? replaceUnhealthyInstances,
    TfArg<String>? spotPrice,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> targetCapacity,
    TfArg<SpotFleetRequestTargetCapacityUnitType>? targetCapacityUnitType,
    TfArg<List<String>>? targetGroupArns,
    TfArg<String>? terminateInstancesOnDelete,
    TfArg<bool>? terminateInstancesWithExpiration,
    TfArg<String>? validFrom,
    TfArg<String>? validUntil,
    TfArg<bool>? waitForFulfillment,
    required SpotFleetRequestLaunch launch,
    SpotFleetRequestSpotMaintenanceStrategies? spotMaintenanceStrategies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_strategy': ?allocationStrategy,
           'context': ?context,
           'excess_capacity_termination_policy':
               ?excessCapacityTerminationPolicy,
           'fleet_type': ?fleetType,
           'iam_fleet_role': iamFleetRole,
           'instance_interruption_behaviour': ?instanceInterruptionBehaviour,
           'instance_pools_to_use_count': ?instancePoolsToUseCount,
           'load_balancers': ?loadBalancers,
           'on_demand_allocation_strategy': ?onDemandAllocationStrategy,
           'on_demand_max_total_price': ?onDemandMaxTotalPrice,
           'on_demand_target_capacity': ?onDemandTargetCapacity,
           'region': ?region,
           'replace_unhealthy_instances': ?replaceUnhealthyInstances,
           'spot_price': ?spotPrice,
           'tags': ?tags,
           'target_capacity': targetCapacity,
           'target_capacity_unit_type': ?targetCapacityUnitType,
           'target_group_arns': ?targetGroupArns,
           'terminate_instances_on_delete': ?terminateInstancesOnDelete,
           'terminate_instances_with_expiration':
               ?terminateInstancesWithExpiration,
           'valid_from': ?validFrom,
           'valid_until': ?validUntil,
           'wait_for_fulfillment': ?waitForFulfillment,
           ...launch.argMap,
           if (spotMaintenanceStrategies != null)
             'spot_maintenance_strategies': TfArg.literal(
               spotMaintenanceStrategies.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSpotFleetRequestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSpotFleetRequest>`.
  RefTo<AwsSpotFleetRequest> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_token` attribute.
  TfRef<String> get clientToken =>
      TfRef.attribute<String>(this, 'client_token');

  /// Reference to `spot_request_state` attribute.
  TfRef<String> get spotRequestState =>
      TfRef.attribute<String>(this, 'spot_request_state');

  /// Reference to `allocation_strategy` attribute.
  TfRef<String> get allocationStrategyRef =>
      TfRef.attribute<String>(this, 'allocation_strategy');

  /// Reference to `context` attribute.
  TfRef<String> get contextRef => TfRef.attribute<String>(this, 'context');

  /// Reference to `excess_capacity_termination_policy` attribute.
  TfRef<String> get excessCapacityTerminationPolicyRef =>
      TfRef.attribute<String>(this, 'excess_capacity_termination_policy');

  /// Reference to `fleet_type` attribute.
  TfRef<String> get fleetTypeRef => TfRef.attribute<String>(this, 'fleet_type');

  /// Reference to `iam_fleet_role` attribute.
  TfRef<String> get iamFleetRoleRef =>
      TfRef.attribute<String>(this, 'iam_fleet_role');

  /// Reference to `instance_interruption_behaviour` attribute.
  TfRef<String> get instanceInterruptionBehaviourRef =>
      TfRef.attribute<String>(this, 'instance_interruption_behaviour');

  /// Reference to `instance_pools_to_use_count` attribute.
  TfRef<num> get instancePoolsToUseCountRef =>
      TfRef.attribute<num>(this, 'instance_pools_to_use_count');

  /// Reference to `load_balancers` attribute.
  TfRef<List<String>> get loadBalancersRef =>
      TfRef.attribute<List<String>>(this, 'load_balancers');

  /// Reference to `on_demand_allocation_strategy` attribute.
  TfRef<String> get onDemandAllocationStrategyRef =>
      TfRef.attribute<String>(this, 'on_demand_allocation_strategy');

  /// Reference to `on_demand_max_total_price` attribute.
  TfRef<String> get onDemandMaxTotalPriceRef =>
      TfRef.attribute<String>(this, 'on_demand_max_total_price');

  /// Reference to `on_demand_target_capacity` attribute.
  TfRef<num> get onDemandTargetCapacityRef =>
      TfRef.attribute<num>(this, 'on_demand_target_capacity');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `replace_unhealthy_instances` attribute.
  TfRef<bool> get replaceUnhealthyInstancesRef =>
      TfRef.attribute<bool>(this, 'replace_unhealthy_instances');

  /// Reference to `spot_price` attribute.
  TfRef<String> get spotPriceRef => TfRef.attribute<String>(this, 'spot_price');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_capacity` attribute.
  TfRef<num> get targetCapacityRef =>
      TfRef.attribute<num>(this, 'target_capacity');

  /// Reference to `target_capacity_unit_type` attribute.
  TfRef<String> get targetCapacityUnitTypeRef =>
      TfRef.attribute<String>(this, 'target_capacity_unit_type');

  /// Reference to `target_group_arns` attribute.
  TfRef<List<String>> get targetGroupArnsRef =>
      TfRef.attribute<List<String>>(this, 'target_group_arns');

  /// Reference to `terminate_instances_on_delete` attribute.
  TfRef<String> get terminateInstancesOnDeleteRef =>
      TfRef.attribute<String>(this, 'terminate_instances_on_delete');

  /// Reference to `terminate_instances_with_expiration` attribute.
  TfRef<bool> get terminateInstancesWithExpirationRef =>
      TfRef.attribute<bool>(this, 'terminate_instances_with_expiration');

  /// Reference to `valid_from` attribute.
  TfRef<String> get validFromRef => TfRef.attribute<String>(this, 'valid_from');

  /// Reference to `valid_until` attribute.
  TfRef<String> get validUntilRef =>
      TfRef.attribute<String>(this, 'valid_until');

  /// Reference to `wait_for_fulfillment` attribute.
  TfRef<bool> get waitForFulfillmentRef =>
      TfRef.attribute<bool>(this, 'wait_for_fulfillment');
}
