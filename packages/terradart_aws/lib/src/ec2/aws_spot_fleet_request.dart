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

  final TfArg<SpotFleetRequestLaunchSpecificationPlacementTenancy>?
  placementTenancy;

  final TfArg<String>? spotPrice;

  final RefTo<AwsSubnet>? subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String>? userData;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds;

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
    if (subnetId != null) 'subnet_id': subnetId!.encodeAs('id').toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (userData != null) 'user_data': userData!.toTfJson(),
    if (vpcSecurityGroupIds != null)
      'vpc_security_group_ids': vpcSecurityGroupIds!.encodeAs('id').toTfJson(),
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

/// `placement_tenancy` — derived from the provider schema description.
enum SpotFleetRequestLaunchSpecificationPlacementTenancy
    implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated'),
  host('host');

  const SpotFleetRequestLaunchSpecificationPlacementTenancy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<SpotFleetRequestLaunchSpecificationEbsBlockDeviceVolumeType>?
  volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    'device_name': deviceName.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.encodeAs('arn').toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum SpotFleetRequestLaunchSpecificationEbsBlockDeviceVolumeType
    implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const SpotFleetRequestLaunchSpecificationEbsBlockDeviceVolumeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<SpotFleetRequestLaunchSpecificationRootBlockDeviceVolumeType>?
  volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.encodeAs('arn').toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum SpotFleetRequestLaunchSpecificationRootBlockDeviceVolumeType
    implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const SpotFleetRequestLaunchSpecificationRootBlockDeviceVolumeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsSubnet>? subnetId;

  final TfArg<num>? weightedCapacity;

  final SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirements?
  instanceRequirements;

  Map<String, Object?> encode() => {
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (spotPrice != null) 'spot_price': spotPrice!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.encodeAs('id').toTfJson(),
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

  final List<
    TfArg<
      SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorManufacturers
    >
  >?
  acceleratorManufacturers;

  final List<
    TfArg<
      SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorNames
    >
  >?
  acceleratorNames;

  final List<
    TfArg<
      SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTypes
    >
  >?
  acceleratorTypes;

  final TfArg<List<Object?>>? allowedInstanceTypes;

  final TfArg<
    SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBareMetal
  >?
  bareMetal;

  final TfArg<
    SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBurstablePerformance
  >?
  burstablePerformance;

  final List<
    TfArg<
      SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsCpuManufacturers
    >
  >?
  cpuManufacturers;

  final TfArg<List<Object?>>? excludedInstanceTypes;

  final List<
    TfArg<
      SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsInstanceGenerations
    >
  >?
  instanceGenerations;

  final TfArg<
    SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorage
  >?
  localStorage;

  final List<
    TfArg<
      SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorageTypes
    >
  >?
  localStorageTypes;

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
      'accelerator_manufacturers': [
        for (final e in acceleratorManufacturers!) e.toTfJson(),
      ],
    if (acceleratorNames != null)
      'accelerator_names': [for (final e in acceleratorNames!) e.toTfJson()],
    if (acceleratorTypes != null)
      'accelerator_types': [for (final e in acceleratorTypes!) e.toTfJson()],
    if (allowedInstanceTypes != null)
      'allowed_instance_types': allowedInstanceTypes!.toTfJson(),
    if (bareMetal != null) 'bare_metal': bareMetal!.toTfJson(),
    if (burstablePerformance != null)
      'burstable_performance': burstablePerformance!.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': [for (final e in cpuManufacturers!) e.toTfJson()],
    if (excludedInstanceTypes != null)
      'excluded_instance_types': excludedInstanceTypes!.toTfJson(),
    if (instanceGenerations != null)
      'instance_generations': [
        for (final e in instanceGenerations!) e.toTfJson(),
      ],
    if (localStorage != null) 'local_storage': localStorage!.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': [for (final e in localStorageTypes!) e.toTfJson()],
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

/// `accelerator_manufacturers` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorManufacturers
    implements TerraformEnum {
  amazonWebServices('amazon-web-services'),
  amd('amd'),
  nvidia('nvidia'),
  xilinx('xilinx'),
  habana('habana');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorManufacturers(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `accelerator_names` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorNames
    implements TerraformEnum {
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

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorNames(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `accelerator_types` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTypes
    implements TerraformEnum {
  gpu('gpu'),
  fpga('fpga'),
  inference('inference'),
  media('media');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `bare_metal` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBareMetal
    implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBareMetal(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `burstable_performance` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBurstablePerformance
    implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBurstablePerformance(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `cpu_manufacturers` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsCpuManufacturers
    implements TerraformEnum {
  intel('intel'),
  amd('amd'),
  amazonWebServices('amazon-web-services'),
  apple('apple');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsCpuManufacturers(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `instance_generations` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsInstanceGenerations
    implements TerraformEnum {
  current('current'),
  previous('previous');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsInstanceGenerations(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `local_storage` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorage
    implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `local_storage_types` — derived from the provider schema description.
enum SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorageTypes
    implements TerraformEnum {
  hdd('hdd'),
  ssd('ssd');

  const SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorageTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalanceReplacementStrategy
  >?
  replacementStrategy;

  Map<String, Object?> encode() => {
    if (replacementStrategy != null)
      'replacement_strategy': replacementStrategy!.toTfJson(),
  };
}

/// `replacement_strategy` — derived from the provider schema description.
enum SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalanceReplacementStrategy
    implements TerraformEnum {
  launch('launch'),
  launchBeforeTerminate('launch-before-terminate');

  const SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalanceReplacementStrategy(
    this.terraformValue,
  );
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
}
