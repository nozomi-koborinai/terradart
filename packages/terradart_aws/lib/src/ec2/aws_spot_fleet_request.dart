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
extension type const SpotFleetRequestAllocationStrategy._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestAllocationStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestAllocationStrategy.arg(TfArg<String> arg) : this._(arg);

  static const lowestprice = SpotFleetRequestAllocationStrategy._(
    TfArgLiteral('lowestPrice'),
  );
  static const diversified = SpotFleetRequestAllocationStrategy._(
    TfArgLiteral('diversified'),
  );
  static const capacityoptimized = SpotFleetRequestAllocationStrategy._(
    TfArgLiteral('capacityOptimized'),
  );
  static const capacityoptimizedprioritized =
      SpotFleetRequestAllocationStrategy._(
        TfArgLiteral('capacityOptimizedPrioritized'),
      );
  static const pricecapacityoptimized = SpotFleetRequestAllocationStrategy._(
    TfArgLiteral('priceCapacityOptimized'),
  );

  static const List<SpotFleetRequestAllocationStrategy> values = [
    lowestprice,
    diversified,
    capacityoptimized,
    capacityoptimizedprioritized,
    pricecapacityoptimized,
  ];
}

/// Spot Fleet Request Excess Capacity Termination enum for `excess_capacity_termination_policy`.
extension type const SpotFleetRequestExcessCapacityTerminationPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  SpotFleetRequestExcessCapacityTerminationPolicy.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestExcessCapacityTerminationPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestExcessCapacityTerminationPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = SpotFleetRequestExcessCapacityTerminationPolicy._(
    TfArgLiteral('Default'),
  );
  static const notermination =
      SpotFleetRequestExcessCapacityTerminationPolicy._(
        TfArgLiteral('NoTermination'),
      );

  static const List<SpotFleetRequestExcessCapacityTerminationPolicy> values = [
    defaultCase,
    notermination,
  ];
}

/// Spot Fleet Request Fleet enum for `fleet_type`.
extension type const SpotFleetRequestFleetType._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestFleetType.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestFleetType.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestFleetType.arg(TfArg<String> arg) : this._(arg);

  static const request = SpotFleetRequestFleetType._(TfArgLiteral('request'));
  static const maintain = SpotFleetRequestFleetType._(TfArgLiteral('maintain'));
  static const instant = SpotFleetRequestFleetType._(TfArgLiteral('instant'));

  static const List<SpotFleetRequestFleetType> values = [
    request,
    maintain,
    instant,
  ];
}

/// Spot Fleet Request Instance Interruption enum for `instance_interruption_behaviour`.
extension type const SpotFleetRequestInstanceInterruptionBehaviour._(
  TfArg<String> _
) implements TfArg<String> {
  SpotFleetRequestInstanceInterruptionBehaviour.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestInstanceInterruptionBehaviour.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestInstanceInterruptionBehaviour.arg(TfArg<String> arg)
    : this._(arg);

  static const hibernate = SpotFleetRequestInstanceInterruptionBehaviour._(
    TfArgLiteral('hibernate'),
  );
  static const stop = SpotFleetRequestInstanceInterruptionBehaviour._(
    TfArgLiteral('stop'),
  );
  static const terminate = SpotFleetRequestInstanceInterruptionBehaviour._(
    TfArgLiteral('terminate'),
  );

  static const List<SpotFleetRequestInstanceInterruptionBehaviour> values = [
    hibernate,
    stop,
    terminate,
  ];
}

/// Spot Fleet Request On Demand Allocation enum for `on_demand_allocation_strategy`.
extension type const SpotFleetRequestOnDemandAllocationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  SpotFleetRequestOnDemandAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestOnDemandAllocationStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestOnDemandAllocationStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const lowestprice = SpotFleetRequestOnDemandAllocationStrategy._(
    TfArgLiteral('lowestPrice'),
  );
  static const prioritized = SpotFleetRequestOnDemandAllocationStrategy._(
    TfArgLiteral('prioritized'),
  );

  static const List<SpotFleetRequestOnDemandAllocationStrategy> values = [
    lowestprice,
    prioritized,
  ];
}

/// Spot Fleet Request Target Capacity Unit enum for `target_capacity_unit_type`.
extension type const SpotFleetRequestTargetCapacityUnitType._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestTargetCapacityUnitType.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestTargetCapacityUnitType.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestTargetCapacityUnitType.arg(TfArg<String> arg)
    : this._(arg);

  static const vcpu = SpotFleetRequestTargetCapacityUnitType._(
    TfArgLiteral('vcpu'),
  );
  static const memoryMib = SpotFleetRequestTargetCapacityUnitType._(
    TfArgLiteral('memory-mib'),
  );
  static const units = SpotFleetRequestTargetCapacityUnitType._(
    TfArgLiteral('units'),
  );

  static const List<SpotFleetRequestTargetCapacityUnitType> values = [
    vcpu,
    memoryMib,
    units,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotFleetRequestLaunch.launchSpecification] choice: sets `launch_specification`.
final class SpotFleetRequestLaunchSpecificationChoice
    extends SpotFleetRequestLaunch {
  const SpotFleetRequestLaunchSpecificationChoice(this.launchSpecification);

  final List<SpotFleetRequestLaunchSpecification> launchSpecification;

  @internal
  @override
  String get blockKey => 'launch_specification';

  @internal
  @override
  Map<String, Object?> encode() => {
    'launch_specification': [for (final e in launchSpecification) e.encode()],
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'launch_template_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'launch_template_config': [
      for (final e in launchTemplateConfig) e.encode(),
    ],
  };

  @internal
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

  final SpotFleetRequestPlacementTenancy? placementTenancy;

  final TfArg<String>? spotPrice;

  final RefTo<AwsSubnet>? subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String>? userData;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds;

  final TfArg<String>? weightedCapacity;

  final List<SpotFleetRequestEbsBlockDevice>? ebsBlockDevice;

  final List<SpotFleetRequestEphemeralBlockDevice>? ephemeralBlockDevice;

  final List<SpotFleetRequestRootBlockDevice>? rootBlockDevice;

  @internal
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
extension type const SpotFleetRequestPlacementTenancy._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestPlacementTenancy.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestPlacementTenancy.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestPlacementTenancy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = SpotFleetRequestPlacementTenancy._(
    TfArgLiteral('default'),
  );
  static const dedicated = SpotFleetRequestPlacementTenancy._(
    TfArgLiteral('dedicated'),
  );
  static const host = SpotFleetRequestPlacementTenancy._(TfArgLiteral('host'));

  static const List<SpotFleetRequestPlacementTenancy> values = [
    defaultCase,
    dedicated,
    host,
  ];
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

  final SpotFleetRequestVolumeType? volumeType;

  @internal
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
extension type const SpotFleetRequestVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = SpotFleetRequestVolumeType._(
    TfArgLiteral('standard'),
  );
  static const io1 = SpotFleetRequestVolumeType._(TfArgLiteral('io1'));
  static const io2 = SpotFleetRequestVolumeType._(TfArgLiteral('io2'));
  static const gp2 = SpotFleetRequestVolumeType._(TfArgLiteral('gp2'));
  static const sc1 = SpotFleetRequestVolumeType._(TfArgLiteral('sc1'));
  static const st1 = SpotFleetRequestVolumeType._(TfArgLiteral('st1'));
  static const gp3 = SpotFleetRequestVolumeType._(TfArgLiteral('gp3'));

  static const List<SpotFleetRequestVolumeType> values = [
    standard,
    io1,
    io2,
    gp2,
    sc1,
    st1,
    gp3,
  ];
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

  @internal
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

  final SpotFleetRequestVolumeType? volumeType;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final List<SpotFleetRequestAcceleratorManufacturers>?
  acceleratorManufacturers;

  final List<SpotFleetRequestAcceleratorNames>? acceleratorNames;

  final List<SpotFleetRequestAcceleratorTypes>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final SpotFleetRequestBareMetal? bareMetal;

  final SpotFleetRequestBurstablePerformance? burstablePerformance;

  final List<SpotFleetRequestCpuManufacturers>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<SpotFleetRequestInstanceGenerations>? instanceGenerations;

  final SpotFleetRequestLocalStorage? localStorage;

  final List<SpotFleetRequestLocalStorageTypes>? localStorageTypes;

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

  @internal
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
extension type const SpotFleetRequestAcceleratorManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestAcceleratorManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestAcceleratorManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestAcceleratorManufacturers.arg(TfArg<String> arg)
    : this._(arg);

  static const amazonWebServices = SpotFleetRequestAcceleratorManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const amd = SpotFleetRequestAcceleratorManufacturers._(
    TfArgLiteral('amd'),
  );
  static const nvidia = SpotFleetRequestAcceleratorManufacturers._(
    TfArgLiteral('nvidia'),
  );
  static const xilinx = SpotFleetRequestAcceleratorManufacturers._(
    TfArgLiteral('xilinx'),
  );
  static const habana = SpotFleetRequestAcceleratorManufacturers._(
    TfArgLiteral('habana'),
  );

  static const List<SpotFleetRequestAcceleratorManufacturers> values = [
    amazonWebServices,
    amd,
    nvidia,
    xilinx,
    habana,
  ];
}

/// `accelerator_names` — derived from the provider schema description.
extension type const SpotFleetRequestAcceleratorNames._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestAcceleratorNames.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestAcceleratorNames.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestAcceleratorNames.arg(TfArg<String> arg) : this._(arg);

  static const a100 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('a100'));
  static const inferentia = SpotFleetRequestAcceleratorNames._(
    TfArgLiteral('inferentia'),
  );
  static const k520 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('k520'));
  static const k80 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('k80'));
  static const m60 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('m60'));
  static const radeonProV520 = SpotFleetRequestAcceleratorNames._(
    TfArgLiteral('radeon-pro-v520'),
  );
  static const t4 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('t4'));
  static const vu9p = SpotFleetRequestAcceleratorNames._(TfArgLiteral('vu9p'));
  static const v100 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('v100'));
  static const a10g = SpotFleetRequestAcceleratorNames._(TfArgLiteral('a10g'));
  static const h100 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('h100'));
  static const t4g = SpotFleetRequestAcceleratorNames._(TfArgLiteral('t4g'));
  static const l40s = SpotFleetRequestAcceleratorNames._(TfArgLiteral('l40s'));
  static const l4 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('l4'));
  static const gaudiHl205 = SpotFleetRequestAcceleratorNames._(
    TfArgLiteral('gaudi-hl-205'),
  );
  static const inferentia2 = SpotFleetRequestAcceleratorNames._(
    TfArgLiteral('inferentia2'),
  );
  static const trainium = SpotFleetRequestAcceleratorNames._(
    TfArgLiteral('trainium'),
  );
  static const trainium2 = SpotFleetRequestAcceleratorNames._(
    TfArgLiteral('trainium2'),
  );
  static const u30 = SpotFleetRequestAcceleratorNames._(TfArgLiteral('u30'));

  static const List<SpotFleetRequestAcceleratorNames> values = [
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
extension type const SpotFleetRequestAcceleratorTypes._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestAcceleratorTypes.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestAcceleratorTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestAcceleratorTypes.arg(TfArg<String> arg) : this._(arg);

  static const gpu = SpotFleetRequestAcceleratorTypes._(TfArgLiteral('gpu'));
  static const fpga = SpotFleetRequestAcceleratorTypes._(TfArgLiteral('fpga'));
  static const inference = SpotFleetRequestAcceleratorTypes._(
    TfArgLiteral('inference'),
  );
  static const media = SpotFleetRequestAcceleratorTypes._(
    TfArgLiteral('media'),
  );

  static const List<SpotFleetRequestAcceleratorTypes> values = [
    gpu,
    fpga,
    inference,
    media,
  ];
}

/// `bare_metal` — derived from the provider schema description.
extension type const SpotFleetRequestBareMetal._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestBareMetal.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestBareMetal.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestBareMetal.arg(TfArg<String> arg) : this._(arg);

  static const included = SpotFleetRequestBareMetal._(TfArgLiteral('included'));
  static const required = SpotFleetRequestBareMetal._(TfArgLiteral('required'));
  static const excluded = SpotFleetRequestBareMetal._(TfArgLiteral('excluded'));

  static const List<SpotFleetRequestBareMetal> values = [
    included,
    required,
    excluded,
  ];
}

/// `burstable_performance` — derived from the provider schema description.
extension type const SpotFleetRequestBurstablePerformance._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestBurstablePerformance.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestBurstablePerformance.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestBurstablePerformance.arg(TfArg<String> arg)
    : this._(arg);

  static const included = SpotFleetRequestBurstablePerformance._(
    TfArgLiteral('included'),
  );
  static const required = SpotFleetRequestBurstablePerformance._(
    TfArgLiteral('required'),
  );
  static const excluded = SpotFleetRequestBurstablePerformance._(
    TfArgLiteral('excluded'),
  );

  static const List<SpotFleetRequestBurstablePerformance> values = [
    included,
    required,
    excluded,
  ];
}

/// `cpu_manufacturers` — derived from the provider schema description.
extension type const SpotFleetRequestCpuManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestCpuManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestCpuManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestCpuManufacturers.arg(TfArg<String> arg) : this._(arg);

  static const intel = SpotFleetRequestCpuManufacturers._(
    TfArgLiteral('intel'),
  );
  static const amd = SpotFleetRequestCpuManufacturers._(TfArgLiteral('amd'));
  static const amazonWebServices = SpotFleetRequestCpuManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const apple = SpotFleetRequestCpuManufacturers._(
    TfArgLiteral('apple'),
  );

  static const List<SpotFleetRequestCpuManufacturers> values = [
    intel,
    amd,
    amazonWebServices,
    apple,
  ];
}

/// `instance_generations` — derived from the provider schema description.
extension type const SpotFleetRequestInstanceGenerations._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestInstanceGenerations.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestInstanceGenerations.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestInstanceGenerations.arg(TfArg<String> arg)
    : this._(arg);

  static const current = SpotFleetRequestInstanceGenerations._(
    TfArgLiteral('current'),
  );
  static const previous = SpotFleetRequestInstanceGenerations._(
    TfArgLiteral('previous'),
  );

  static const List<SpotFleetRequestInstanceGenerations> values = [
    current,
    previous,
  ];
}

/// `local_storage` — derived from the provider schema description.
extension type const SpotFleetRequestLocalStorage._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestLocalStorage.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestLocalStorage.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestLocalStorage.arg(TfArg<String> arg) : this._(arg);

  static const included = SpotFleetRequestLocalStorage._(
    TfArgLiteral('included'),
  );
  static const required = SpotFleetRequestLocalStorage._(
    TfArgLiteral('required'),
  );
  static const excluded = SpotFleetRequestLocalStorage._(
    TfArgLiteral('excluded'),
  );

  static const List<SpotFleetRequestLocalStorage> values = [
    included,
    required,
    excluded,
  ];
}

/// `local_storage_types` — derived from the provider schema description.
extension type const SpotFleetRequestLocalStorageTypes._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestLocalStorageTypes.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestLocalStorageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestLocalStorageTypes.arg(TfArg<String> arg) : this._(arg);

  static const hdd = SpotFleetRequestLocalStorageTypes._(TfArgLiteral('hdd'));
  static const ssd = SpotFleetRequestLocalStorageTypes._(TfArgLiteral('ssd'));

  static const List<SpotFleetRequestLocalStorageTypes> values = [hdd, ssd];
}

/// Typed helper for the `launch_template_config.overrides.instance_requirements.accelerator_count` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestAcceleratorCount {
  const SpotFleetRequestAcceleratorCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'capacity_rebalance': ?capacityRebalance?.encode(),
  };
}

/// Typed helper for the `spot_maintenance_strategies.capacity_rebalance` block of
/// `aws_spot_fleet_request` (derived from provider schema).
@immutable
final class SpotFleetRequestCapacityRebalance {
  const SpotFleetRequestCapacityRebalance({this.replacementStrategy});

  final SpotFleetRequestReplacementStrategy? replacementStrategy;

  @internal
  Map<String, Object?> encode() => {
    'replacement_strategy': ?replacementStrategy?.toTfJson(),
  };
}

/// `replacement_strategy` — derived from the provider schema description.
extension type const SpotFleetRequestReplacementStrategy._(TfArg<String> _)
    implements TfArg<String> {
  SpotFleetRequestReplacementStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SpotFleetRequestReplacementStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SpotFleetRequestReplacementStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const launch = SpotFleetRequestReplacementStrategy._(
    TfArgLiteral('launch'),
  );
  static const launchBeforeTerminate = SpotFleetRequestReplacementStrategy._(
    TfArgLiteral('launch-before-terminate'),
  );

  static const List<SpotFleetRequestReplacementStrategy> values = [
    launch,
    launchBeforeTerminate,
  ];
}

/// Factory wrapper for `aws_spot_fleet_request`.
final class AwsSpotFleetRequest extends Resource {
  static const String tfType = 'aws_spot_fleet_request';

  AwsSpotFleetRequest(
    super.localName, {
    SpotFleetRequestAllocationStrategy? allocationStrategy,
    TfArg<String>? context,
    SpotFleetRequestExcessCapacityTerminationPolicy?
    excessCapacityTerminationPolicy,
    SpotFleetRequestFleetType? fleetType,
    required TfArg<String> iamFleetRole,
    SpotFleetRequestInstanceInterruptionBehaviour?
    instanceInterruptionBehaviour,
    TfArg<num>? instancePoolsToUseCount,
    TfArg<List<String>>? loadBalancers,
    SpotFleetRequestOnDemandAllocationStrategy? onDemandAllocationStrategy,
    TfArg<String>? onDemandMaxTotalPrice,
    TfArg<num>? onDemandTargetCapacity,
    TfArg<String>? region,
    TfArg<bool>? replaceUnhealthyInstances,
    TfArg<String>? spotPrice,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> targetCapacity,
    SpotFleetRequestTargetCapacityUnitType? targetCapacityUnitType,
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
  TfRef<String> get allocationStrategy =>
      TfRef.attribute<String>(this, 'allocation_strategy');

  /// Reference to `context` attribute.
  TfRef<String> get context => TfRef.attribute<String>(this, 'context');

  /// Reference to `excess_capacity_termination_policy` attribute.
  TfRef<String> get excessCapacityTerminationPolicy =>
      TfRef.attribute<String>(this, 'excess_capacity_termination_policy');

  /// Reference to `fleet_type` attribute.
  TfRef<String> get fleetType => TfRef.attribute<String>(this, 'fleet_type');

  /// Reference to `iam_fleet_role` attribute.
  TfRef<String> get iamFleetRole =>
      TfRef.attribute<String>(this, 'iam_fleet_role');

  /// Reference to `instance_interruption_behaviour` attribute.
  TfRef<String> get instanceInterruptionBehaviour =>
      TfRef.attribute<String>(this, 'instance_interruption_behaviour');

  /// Reference to `instance_pools_to_use_count` attribute.
  TfRef<num> get instancePoolsToUseCount =>
      TfRef.attribute<num>(this, 'instance_pools_to_use_count');

  /// Reference to `load_balancers` attribute.
  TfRef<List<String>> get loadBalancers =>
      TfRef.attribute<List<String>>(this, 'load_balancers');

  /// Reference to `on_demand_allocation_strategy` attribute.
  TfRef<String> get onDemandAllocationStrategy =>
      TfRef.attribute<String>(this, 'on_demand_allocation_strategy');

  /// Reference to `on_demand_max_total_price` attribute.
  TfRef<String> get onDemandMaxTotalPrice =>
      TfRef.attribute<String>(this, 'on_demand_max_total_price');

  /// Reference to `on_demand_target_capacity` attribute.
  TfRef<num> get onDemandTargetCapacity =>
      TfRef.attribute<num>(this, 'on_demand_target_capacity');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replace_unhealthy_instances` attribute.
  TfRef<bool> get replaceUnhealthyInstances =>
      TfRef.attribute<bool>(this, 'replace_unhealthy_instances');

  /// Reference to `spot_price` attribute.
  TfRef<String> get spotPrice => TfRef.attribute<String>(this, 'spot_price');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_capacity` attribute.
  TfRef<num> get targetCapacity =>
      TfRef.attribute<num>(this, 'target_capacity');

  /// Reference to `target_capacity_unit_type` attribute.
  TfRef<String> get targetCapacityUnitType =>
      TfRef.attribute<String>(this, 'target_capacity_unit_type');

  /// Reference to `target_group_arns` attribute.
  TfRef<List<String>> get targetGroupArns =>
      TfRef.attribute<List<String>>(this, 'target_group_arns');

  /// Reference to `terminate_instances_on_delete` attribute.
  TfRef<String> get terminateInstancesOnDelete =>
      TfRef.attribute<String>(this, 'terminate_instances_on_delete');

  /// Reference to `terminate_instances_with_expiration` attribute.
  TfRef<bool> get terminateInstancesWithExpiration =>
      TfRef.attribute<bool>(this, 'terminate_instances_with_expiration');

  /// Reference to `valid_from` attribute.
  TfRef<String> get validFrom => TfRef.attribute<String>(this, 'valid_from');

  /// Reference to `valid_until` attribute.
  TfRef<String> get validUntil => TfRef.attribute<String>(this, 'valid_until');

  /// Reference to `wait_for_fulfillment` attribute.
  TfRef<bool> get waitForFulfillment =>
      TfRef.attribute<bool>(this, 'wait_for_fulfillment');
}
