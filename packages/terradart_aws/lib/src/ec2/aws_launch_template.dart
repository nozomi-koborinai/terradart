// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_launch_template`.
const Set<String> _awsLaunchTemplateSensitive = <String>{};

/// Launch Template Instance Initiated Shutdown enum for `instance_initiated_shutdown_behavior`.
enum LaunchTemplateInstanceInitiatedShutdownBehavior implements TerraformEnum {
  stop('stop'),
  terminate('terminate');

  const LaunchTemplateInstanceInitiatedShutdownBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `default_version`, `update_default_version` on `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.defaultVersion(...)`.
sealed class LaunchTemplateDefaultVersion {
  const LaunchTemplateDefaultVersion();

  /// Sets `default_version`.
  const factory LaunchTemplateDefaultVersion.defaultVersion(
    TfArg<num> defaultVersion,
  ) = LaunchTemplateDefaultVersionChoice;

  /// Sets `update_default_version`.
  const factory LaunchTemplateDefaultVersion.updateDefaultVersion(
    TfArg<bool> updateDefaultVersion,
  ) = LaunchTemplateUpdateDefaultVersion;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LaunchTemplateDefaultVersion.defaultVersion] choice: sets `default_version`.
final class LaunchTemplateDefaultVersionChoice
    extends LaunchTemplateDefaultVersion {
  const LaunchTemplateDefaultVersionChoice(this.defaultVersion);

  final TfArg<num> defaultVersion;

  @override
  String get blockKey => 'default_version';

  @override
  Map<String, Object?> encode() => {
    'default_version': defaultVersion.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'default_version': defaultVersion};
}

/// The [LaunchTemplateDefaultVersion.updateDefaultVersion] choice: sets `update_default_version`.
final class LaunchTemplateUpdateDefaultVersion
    extends LaunchTemplateDefaultVersion {
  const LaunchTemplateUpdateDefaultVersion(this.updateDefaultVersion);

  final TfArg<bool> updateDefaultVersion;

  @override
  String get blockKey => 'update_default_version';

  @override
  Map<String, Object?> encode() => {
    'update_default_version': updateDefaultVersion.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'update_default_version': updateDefaultVersion,
  };
}

/// At most one of `instance_requirements`, `instance_type` on `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.instanceRequirements(...)`.
sealed class LaunchTemplateInstance {
  const LaunchTemplateInstance();

  /// Sets `instance_requirements`.
  const factory LaunchTemplateInstance.instanceRequirements(
    LaunchTemplateInstanceRequirements instanceRequirements,
  ) = LaunchTemplateInstanceRequirementsChoice;

  /// Sets `instance_type`.
  const factory LaunchTemplateInstance.instanceType(
    TfArg<String> instanceType,
  ) = LaunchTemplateInstanceType;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LaunchTemplateInstance.instanceRequirements] choice: sets `instance_requirements`.
final class LaunchTemplateInstanceRequirementsChoice
    extends LaunchTemplateInstance {
  const LaunchTemplateInstanceRequirementsChoice(this.instanceRequirements);

  final LaunchTemplateInstanceRequirements instanceRequirements;

  @override
  String get blockKey => 'instance_requirements';

  @override
  Map<String, Object?> encode() => {
    'instance_requirements': instanceRequirements.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'instance_requirements': TfArg.literal(instanceRequirements.encode()),
  };
}

/// The [LaunchTemplateInstance.instanceType] choice: sets `instance_type`.
final class LaunchTemplateInstanceType extends LaunchTemplateInstance {
  const LaunchTemplateInstanceType(this.instanceType);

  final TfArg<String> instanceType;

  @override
  String get blockKey => 'instance_type';

  @override
  Map<String, Object?> encode() => {'instance_type': instanceType.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'instance_type': instanceType};
}

/// At most one of `name`, `name_prefix` on `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LaunchTemplateName {
  const LaunchTemplateName();

  /// Sets `name`.
  const factory LaunchTemplateName.name(TfArg<String> name) =
      LaunchTemplateNameChoice;

  /// Sets `name_prefix`.
  const factory LaunchTemplateName.namePrefix(TfArg<String> namePrefix) =
      LaunchTemplateNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LaunchTemplateName.name] choice: sets `name`.
final class LaunchTemplateNameChoice extends LaunchTemplateName {
  const LaunchTemplateNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LaunchTemplateName.namePrefix] choice: sets `name_prefix`.
final class LaunchTemplateNamePrefix extends LaunchTemplateName {
  const LaunchTemplateNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// At most one of `security_group_names`, `vpc_security_group_ids` on `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.securityGroupNames(...)`.
sealed class LaunchTemplateSecurityGroups {
  const LaunchTemplateSecurityGroups();

  /// Sets `security_group_names`.
  const factory LaunchTemplateSecurityGroups.securityGroupNames(
    TfArg<List<String>> securityGroupNames,
  ) = LaunchTemplateSecurityGroupsSecurityGroupNames;

  /// Sets `vpc_security_group_ids`.
  const factory LaunchTemplateSecurityGroups.vpcSecurityGroupIds(
    TfArg<List<RefTo<AwsSecurityGroup>>> vpcSecurityGroupIds,
  ) = LaunchTemplateSecurityGroupsVpcSecurityGroupIds;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LaunchTemplateSecurityGroups.securityGroupNames] choice: sets `security_group_names`.
final class LaunchTemplateSecurityGroupsSecurityGroupNames
    extends LaunchTemplateSecurityGroups {
  const LaunchTemplateSecurityGroupsSecurityGroupNames(this.securityGroupNames);

  final TfArg<List<String>> securityGroupNames;

  @override
  String get blockKey => 'security_group_names';

  @override
  Map<String, Object?> encode() => {
    'security_group_names': securityGroupNames.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'security_group_names': securityGroupNames,
  };
}

/// The [LaunchTemplateSecurityGroups.vpcSecurityGroupIds] choice: sets `vpc_security_group_ids`.
final class LaunchTemplateSecurityGroupsVpcSecurityGroupIds
    extends LaunchTemplateSecurityGroups {
  const LaunchTemplateSecurityGroupsVpcSecurityGroupIds(
    this.vpcSecurityGroupIds,
  );

  final TfArg<List<RefTo<AwsSecurityGroup>>> vpcSecurityGroupIds;

  @override
  String get blockKey => 'vpc_security_group_ids';

  @override
  Map<String, Object?> encode() => {
    'vpc_security_group_ids': vpcSecurityGroupIds.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vpc_security_group_ids': vpcSecurityGroupIds.encodeAs('id'),
  };
}

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

  final LaunchTemplateEbs? ebs;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'no_device': ?noDevice?.toTfJson(),
    'virtual_name': ?virtualName?.toTfJson(),
    'ebs': ?ebs?.encode(),
  };
}

/// Typed helper for the `block_device_mappings.ebs` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateEbs {
  const LaunchTemplateEbs({
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeInitializationRate;

  final TfArg<num>? volumeSize;

  final TfArg<LaunchTemplateVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_initialization_rate': ?volumeInitializationRate?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum LaunchTemplateVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const LaunchTemplateVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCapacityReservationSpecification {
  const LaunchTemplateCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final TfArg<LaunchTemplateCapacityReservationPreference>?
  capacityReservationPreference;

  final LaunchTemplateCapacityReservationTarget? capacityReservationTarget;

  Map<String, Object?> encode() => {
    'capacity_reservation_preference': ?capacityReservationPreference
        ?.toTfJson(),
    'capacity_reservation_target': ?capacityReservationTarget?.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
enum LaunchTemplateCapacityReservationPreference implements TerraformEnum {
  capacityReservationsOnly('capacity-reservations-only'),
  open('open'),
  none('none');

  const LaunchTemplateCapacityReservationPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `capacity_reservation_id`, `capacity_reservation_resource_group_arn` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationId(...)`.
sealed class LaunchTemplateCapacityReservationTarget {
  const LaunchTemplateCapacityReservationTarget();

  /// Sets `capacity_reservation_id`.
  const factory LaunchTemplateCapacityReservationTarget.capacityReservationId(
    TfArg<String> capacityReservationId,
  ) = LaunchTemplateCapacityReservationTargetCapacityReservationId;

  /// Sets `capacity_reservation_resource_group_arn`.
  const factory LaunchTemplateCapacityReservationTarget.capacityReservationResourceGroupArn(
    TfArg<String> capacityReservationResourceGroupArn,
  ) = LaunchTemplateCapacityReservationTargetCapacityReservationResourceGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LaunchTemplateCapacityReservationTarget.capacityReservationId] choice: sets `capacity_reservation_id`.
final class LaunchTemplateCapacityReservationTargetCapacityReservationId
    extends LaunchTemplateCapacityReservationTarget {
  const LaunchTemplateCapacityReservationTargetCapacityReservationId(
    this.capacityReservationId,
  );

  final TfArg<String> capacityReservationId;

  @override
  String get blockKey => 'capacity_reservation_id';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_id': capacityReservationId.toTfJson(),
  };
}

/// The [LaunchTemplateCapacityReservationTarget.capacityReservationResourceGroupArn] choice: sets `capacity_reservation_resource_group_arn`.
final class LaunchTemplateCapacityReservationTargetCapacityReservationResourceGroupArn
    extends LaunchTemplateCapacityReservationTarget {
  const LaunchTemplateCapacityReservationTargetCapacityReservationResourceGroupArn(
    this.capacityReservationResourceGroupArn,
  );

  final TfArg<String> capacityReservationResourceGroupArn;

  @override
  String get blockKey => 'capacity_reservation_resource_group_arn';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_resource_group_arn':
        capacityReservationResourceGroupArn.toTfJson(),
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

  final TfArg<LaunchTemplateAmdSevSnp>? amdSevSnp;

  final TfArg<num>? coreCount;

  final TfArg<LaunchTemplateNestedVirtualization>? nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    'amd_sev_snp': ?amdSevSnp?.toTfJson(),
    'core_count': ?coreCount?.toTfJson(),
    'nested_virtualization': ?nestedVirtualization?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
  };
}

/// `amd_sev_snp` — derived from the provider schema description.
enum LaunchTemplateAmdSevSnp implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const LaunchTemplateAmdSevSnp(this.terraformValue);
  @override
  final String terraformValue;
}

/// `nested_virtualization` — derived from the provider schema description.
enum LaunchTemplateNestedVirtualization implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const LaunchTemplateNestedVirtualization(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `credit_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCreditSpecification {
  const LaunchTemplateCreditSpecification({this.cpuCredits});

  final TfArg<LaunchTemplateCpuCredits>? cpuCredits;

  Map<String, Object?> encode() => {'cpu_credits': ?cpuCredits?.toTfJson()};
}

/// `cpu_credits` — derived from the provider schema description.
enum LaunchTemplateCpuCredits implements TerraformEnum {
  standard('standard'),
  unlimited('unlimited');

  const LaunchTemplateCpuCredits(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `enclave_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateEnclaveOptions {
  const LaunchTemplateEnclaveOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `hibernation_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateHibernationOptions {
  const LaunchTemplateHibernationOptions({required this.configured});

  final TfArg<bool> configured;

  Map<String, Object?> encode() => {'configured': configured.toTfJson()};
}

/// At most one of `arn`, `name` on the `iam_instance_profile` block of `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.arn(...)`.
sealed class LaunchTemplateIamInstanceProfile {
  const LaunchTemplateIamInstanceProfile();

  /// Sets `arn`.
  const factory LaunchTemplateIamInstanceProfile.arn(TfArg<String> arn) =
      LaunchTemplateIamInstanceProfileArn;

  /// Sets `name`.
  const factory LaunchTemplateIamInstanceProfile.name(TfArg<String> name) =
      LaunchTemplateIamInstanceProfileName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LaunchTemplateIamInstanceProfile.arn] choice: sets `arn`.
final class LaunchTemplateIamInstanceProfileArn
    extends LaunchTemplateIamInstanceProfile {
  const LaunchTemplateIamInstanceProfileArn(this.arn);

  final TfArg<String> arn;

  @override
  String get blockKey => 'arn';

  @override
  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// The [LaunchTemplateIamInstanceProfile.name] choice: sets `name`.
final class LaunchTemplateIamInstanceProfileName
    extends LaunchTemplateIamInstanceProfile {
  const LaunchTemplateIamInstanceProfileName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `instance_market_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceMarketOptions {
  const LaunchTemplateInstanceMarketOptions({
    this.marketType,
    this.spotOptions,
  });

  final TfArg<LaunchTemplateMarketType>? marketType;

  final LaunchTemplateSpotOptions? spotOptions;

  Map<String, Object?> encode() => {
    'market_type': ?marketType?.toTfJson(),
    'spot_options': ?spotOptions?.encode(),
  };
}

/// `market_type` — derived from the provider schema description.
enum LaunchTemplateMarketType implements TerraformEnum {
  spot('spot'),
  capacityBlock('capacity-block'),
  interruptibleCapacityReservation('interruptible-capacity-reservation'),
  onDemand('on-demand');

  const LaunchTemplateMarketType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_market_options.spot_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateSpotOptions {
  const LaunchTemplateSpotOptions({
    this.blockDurationMinutes,
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  final TfArg<num>? blockDurationMinutes;

  final TfArg<LaunchTemplateInstanceInterruptionBehavior>?
  instanceInterruptionBehavior;

  final TfArg<String>? maxPrice;

  final TfArg<LaunchTemplateSpotInstanceType>? spotInstanceType;

  final TfArg<String>? validUntil;

  Map<String, Object?> encode() => {
    'block_duration_minutes': ?blockDurationMinutes?.toTfJson(),
    'instance_interruption_behavior': ?instanceInterruptionBehavior?.toTfJson(),
    'max_price': ?maxPrice?.toTfJson(),
    'spot_instance_type': ?spotInstanceType?.toTfJson(),
    'valid_until': ?validUntil?.toTfJson(),
  };
}

/// `instance_interruption_behavior` — derived from the provider schema description.
enum LaunchTemplateInstanceInterruptionBehavior implements TerraformEnum {
  hibernate('hibernate'),
  stop('stop'),
  terminate('terminate');

  const LaunchTemplateInstanceInterruptionBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// `spot_instance_type` — derived from the provider schema description.
enum LaunchTemplateSpotInstanceType implements TerraformEnum {
  oneTime('one-time'),
  persistent('persistent');

  const LaunchTemplateSpotInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_requirements` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateInstanceRequirements {
  const LaunchTemplateInstanceRequirements({
    this.acceleratorManufacturers,
    this.acceleratorNames,
    this.acceleratorTypes,
    this.instanceTypes,
    this.bareMetal,
    this.burstablePerformance,
    this.cpuManufacturers,
    this.instanceGenerations,
    this.localStorage,
    this.localStorageTypes,
    this.price,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
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

  final List<TfArg<LaunchTemplateAcceleratorManufacturers>>?
  acceleratorManufacturers;

  final List<TfArg<LaunchTemplateAcceleratorNames>>? acceleratorNames;

  final List<TfArg<LaunchTemplateAcceleratorTypes>>? acceleratorTypes;

  final LaunchTemplateInstanceTypes? instanceTypes;

  final TfArg<LaunchTemplateBareMetal>? bareMetal;

  final TfArg<LaunchTemplateBurstablePerformance>? burstablePerformance;

  final List<TfArg<LaunchTemplateCpuManufacturers>>? cpuManufacturers;

  final List<TfArg<LaunchTemplateInstanceGenerations>>? instanceGenerations;

  final TfArg<LaunchTemplateLocalStorage>? localStorage;

  final List<TfArg<LaunchTemplateLocalStorageTypes>>? localStorageTypes;

  final LaunchTemplatePrice? price;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final LaunchTemplateAcceleratorCount? acceleratorCount;

  final LaunchTemplateAcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;

  final LaunchTemplateBaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;

  final LaunchTemplateMemoryGibPerVcpu? memoryGibPerVcpu;

  final LaunchTemplateMemoryMib memoryMib;

  final LaunchTemplateNetworkBandwidthGbps? networkBandwidthGbps;

  final LaunchTemplateNetworkInterfaceCount? networkInterfaceCount;

  final LaunchTemplateTotalLocalStorageGb? totalLocalStorageGb;

  final LaunchTemplateVcpuCount vcpuCount;

  Map<String, Object?> encode() => {
    if (acceleratorManufacturers != null)
      'accelerator_manufacturers': [
        for (final e in acceleratorManufacturers!) e.toTfJson(),
      ],
    if (acceleratorNames != null)
      'accelerator_names': [for (final e in acceleratorNames!) e.toTfJson()],
    if (acceleratorTypes != null)
      'accelerator_types': [for (final e in acceleratorTypes!) e.toTfJson()],
    ...?instanceTypes?.encode(),
    'bare_metal': ?bareMetal?.toTfJson(),
    'burstable_performance': ?burstablePerformance?.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': [for (final e in cpuManufacturers!) e.toTfJson()],
    if (instanceGenerations != null)
      'instance_generations': [
        for (final e in instanceGenerations!) e.toTfJson(),
      ],
    'local_storage': ?localStorage?.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': [for (final e in localStorageTypes!) e.toTfJson()],
    ...?price?.encode(),
    'on_demand_max_price_percentage_over_lowest_price':
        ?onDemandMaxPricePercentageOverLowestPrice?.toTfJson(),
    'require_hibernate_support': ?requireHibernateSupport?.toTfJson(),
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

/// At most one of `allowed_instance_types`, `excluded_instance_types` on the `instance_requirements` block of `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allowedInstanceTypes(...)`.
sealed class LaunchTemplateInstanceTypes {
  const LaunchTemplateInstanceTypes();

  /// Sets `allowed_instance_types`.
  const factory LaunchTemplateInstanceTypes.allowedInstanceTypes(
    TfArg<List<String>> allowedInstanceTypes,
  ) = LaunchTemplateAllowedInstanceTypes;

  /// Sets `excluded_instance_types`.
  const factory LaunchTemplateInstanceTypes.excludedInstanceTypes(
    TfArg<List<String>> excludedInstanceTypes,
  ) = LaunchTemplateExcludedInstanceTypes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LaunchTemplateInstanceTypes.allowedInstanceTypes] choice: sets `allowed_instance_types`.
final class LaunchTemplateAllowedInstanceTypes
    extends LaunchTemplateInstanceTypes {
  const LaunchTemplateAllowedInstanceTypes(this.allowedInstanceTypes);

  final TfArg<List<String>> allowedInstanceTypes;

  @override
  String get blockKey => 'allowed_instance_types';

  @override
  Map<String, Object?> encode() => {
    'allowed_instance_types': allowedInstanceTypes.toTfJson(),
  };
}

/// The [LaunchTemplateInstanceTypes.excludedInstanceTypes] choice: sets `excluded_instance_types`.
final class LaunchTemplateExcludedInstanceTypes
    extends LaunchTemplateInstanceTypes {
  const LaunchTemplateExcludedInstanceTypes(this.excludedInstanceTypes);

  final TfArg<List<String>> excludedInstanceTypes;

  @override
  String get blockKey => 'excluded_instance_types';

  @override
  Map<String, Object?> encode() => {
    'excluded_instance_types': excludedInstanceTypes.toTfJson(),
  };
}

/// At most one of `max_spot_price_as_percentage_of_optimal_on_demand_price`, `spot_max_price_percentage_over_lowest_price` on the `instance_requirements` block of `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxSpotPriceAsPercentageOfOptimalOnDemandPrice(...)`.
sealed class LaunchTemplatePrice {
  const LaunchTemplatePrice();

  /// Sets `max_spot_price_as_percentage_of_optimal_on_demand_price`.
  const factory LaunchTemplatePrice.maxSpotPriceAsPercentageOfOptimalOnDemandPrice(
    TfArg<num> maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
  ) = LaunchTemplateMaxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  /// Sets `spot_max_price_percentage_over_lowest_price`.
  const factory LaunchTemplatePrice.spotMaxPricePercentageOverLowestPrice(
    TfArg<num> spotMaxPricePercentageOverLowestPrice,
  ) = LaunchTemplateSpotMaxPricePercentageOverLowestPrice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LaunchTemplatePrice.maxSpotPriceAsPercentageOfOptimalOnDemandPrice] choice: sets `max_spot_price_as_percentage_of_optimal_on_demand_price`.
final class LaunchTemplateMaxSpotPriceAsPercentageOfOptimalOnDemandPrice
    extends LaunchTemplatePrice {
  const LaunchTemplateMaxSpotPriceAsPercentageOfOptimalOnDemandPrice(
    this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
  );

  final TfArg<num> maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  @override
  String get blockKey =>
      'max_spot_price_as_percentage_of_optimal_on_demand_price';

  @override
  Map<String, Object?> encode() => {
    'max_spot_price_as_percentage_of_optimal_on_demand_price':
        maxSpotPriceAsPercentageOfOptimalOnDemandPrice.toTfJson(),
  };
}

/// The [LaunchTemplatePrice.spotMaxPricePercentageOverLowestPrice] choice: sets `spot_max_price_percentage_over_lowest_price`.
final class LaunchTemplateSpotMaxPricePercentageOverLowestPrice
    extends LaunchTemplatePrice {
  const LaunchTemplateSpotMaxPricePercentageOverLowestPrice(
    this.spotMaxPricePercentageOverLowestPrice,
  );

  final TfArg<num> spotMaxPricePercentageOverLowestPrice;

  @override
  String get blockKey => 'spot_max_price_percentage_over_lowest_price';

  @override
  Map<String, Object?> encode() => {
    'spot_max_price_percentage_over_lowest_price':
        spotMaxPricePercentageOverLowestPrice.toTfJson(),
  };
}

/// `accelerator_manufacturers` — derived from the provider schema description.
enum LaunchTemplateAcceleratorManufacturers implements TerraformEnum {
  amazonWebServices('amazon-web-services'),
  amd('amd'),
  nvidia('nvidia'),
  xilinx('xilinx'),
  habana('habana');

  const LaunchTemplateAcceleratorManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_names` — derived from the provider schema description.
enum LaunchTemplateAcceleratorNames implements TerraformEnum {
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

  const LaunchTemplateAcceleratorNames(this.terraformValue);
  @override
  final String terraformValue;
}

/// `accelerator_types` — derived from the provider schema description.
enum LaunchTemplateAcceleratorTypes implements TerraformEnum {
  gpu('gpu'),
  fpga('fpga'),
  inference('inference'),
  media('media');

  const LaunchTemplateAcceleratorTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `bare_metal` — derived from the provider schema description.
enum LaunchTemplateBareMetal implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const LaunchTemplateBareMetal(this.terraformValue);
  @override
  final String terraformValue;
}

/// `burstable_performance` — derived from the provider schema description.
enum LaunchTemplateBurstablePerformance implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const LaunchTemplateBurstablePerformance(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cpu_manufacturers` — derived from the provider schema description.
enum LaunchTemplateCpuManufacturers implements TerraformEnum {
  intel('intel'),
  amd('amd'),
  amazonWebServices('amazon-web-services'),
  apple('apple');

  const LaunchTemplateCpuManufacturers(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_generations` — derived from the provider schema description.
enum LaunchTemplateInstanceGenerations implements TerraformEnum {
  current('current'),
  previous('previous');

  const LaunchTemplateInstanceGenerations(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage` — derived from the provider schema description.
enum LaunchTemplateLocalStorage implements TerraformEnum {
  included('included'),
  required('required'),
  excluded('excluded');

  const LaunchTemplateLocalStorage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `local_storage_types` — derived from the provider schema description.
enum LaunchTemplateLocalStorageTypes implements TerraformEnum {
  hdd('hdd'),
  ssd('ssd');

  const LaunchTemplateLocalStorageTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_requirements.accelerator_count` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateAcceleratorCount {
  const LaunchTemplateAcceleratorCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.accelerator_total_memory_mib` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateAcceleratorTotalMemoryMib {
  const LaunchTemplateAcceleratorTotalMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateBaselineEbsBandwidthMbps {
  const LaunchTemplateBaselineEbsBandwidthMbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.memory_gib_per_vcpu` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateMemoryGibPerVcpu {
  const LaunchTemplateMemoryGibPerVcpu({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.memory_mib` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateMemoryMib {
  const LaunchTemplateMemoryMib({this.max, required this.min});

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.network_bandwidth_gbps` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkBandwidthGbps {
  const LaunchTemplateNetworkBandwidthGbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.network_interface_count` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkInterfaceCount {
  const LaunchTemplateNetworkInterfaceCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.total_local_storage_gb` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateTotalLocalStorageGb {
  const LaunchTemplateTotalLocalStorageGb({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `instance_requirements.vcpu_count` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateVcpuCount {
  const LaunchTemplateVcpuCount({this.max, required this.min});

  final TfArg<num>? max;

  final TfArg<num> min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
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

  final TfArg<LaunchTemplateAutoRecovery>? autoRecovery;

  Map<String, Object?> encode() => {'auto_recovery': ?autoRecovery?.toTfJson()};
}

/// `auto_recovery` — derived from the provider schema description.
enum LaunchTemplateAutoRecovery implements TerraformEnum {
  defaultCase('default'),
  disabled('disabled');

  const LaunchTemplateAutoRecovery(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<LaunchTemplateHttpEndpoint>? httpEndpoint;

  final TfArg<LaunchTemplateHttpProtocolIpv6>? httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<LaunchTemplateHttpTokens>? httpTokens;

  final TfArg<LaunchTemplateInstanceMetadataTags>? instanceMetadataTags;

  Map<String, Object?> encode() => {
    'http_endpoint': ?httpEndpoint?.toTfJson(),
    'http_protocol_ipv6': ?httpProtocolIpv6?.toTfJson(),
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
    'instance_metadata_tags': ?instanceMetadataTags?.toTfJson(),
  };
}

/// `http_endpoint` — derived from the provider schema description.
enum LaunchTemplateHttpEndpoint implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const LaunchTemplateHttpEndpoint(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_protocol_ipv6` — derived from the provider schema description.
enum LaunchTemplateHttpProtocolIpv6 implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const LaunchTemplateHttpProtocolIpv6(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_tokens` — derived from the provider schema description.
enum LaunchTemplateHttpTokens implements TerraformEnum {
  optional('optional'),
  required('required');

  const LaunchTemplateHttpTokens(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_metadata_tags` — derived from the provider schema description.
enum LaunchTemplateInstanceMetadataTags implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const LaunchTemplateInstanceMetadataTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `monitoring` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateMonitoring {
  const LaunchTemplateMonitoring({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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

  final TfArg<LaunchTemplateNetworkInterfacesInterfaceType>? interfaceType;

  final TfArg<num>? ipv4AddressCount;

  final TfArg<List<String>>? ipv4Addresses;

  final TfArg<num>? ipv4PrefixCount;

  final TfArg<List<String>>? ipv4Prefixes;

  final TfArg<num>? ipv6AddressCount;

  final TfArg<List<String>>? ipv6Addresses;

  final TfArg<num>? ipv6PrefixCount;

  final TfArg<List<String>>? ipv6Prefixes;

  final TfArg<num>? networkCardIndex;

  final TfArg<String>? networkInterfaceId;

  final TfArg<String>? primaryIpv6;

  final TfArg<String>? privateIpAddress;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final RefTo<AwsSubnet>? subnetId;

  final LaunchTemplateConnectionTrackingSpecification?
  connectionTrackingSpecification;

  final LaunchTemplateEnaSrdSpecification? enaSrdSpecification;

  Map<String, Object?> encode() => {
    'associate_carrier_ip_address': ?associateCarrierIpAddress?.toTfJson(),
    'associate_public_ip_address': ?associatePublicIpAddress?.toTfJson(),
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'description': ?description?.toTfJson(),
    'device_index': ?deviceIndex?.toTfJson(),
    'ena_queue_count': ?enaQueueCount?.toTfJson(),
    'interface_type': ?interfaceType?.toTfJson(),
    'ipv4_address_count': ?ipv4AddressCount?.toTfJson(),
    'ipv4_addresses': ?ipv4Addresses?.toTfJson(),
    'ipv4_prefix_count': ?ipv4PrefixCount?.toTfJson(),
    'ipv4_prefixes': ?ipv4Prefixes?.toTfJson(),
    'ipv6_address_count': ?ipv6AddressCount?.toTfJson(),
    'ipv6_addresses': ?ipv6Addresses?.toTfJson(),
    'ipv6_prefix_count': ?ipv6PrefixCount?.toTfJson(),
    'ipv6_prefixes': ?ipv6Prefixes?.toTfJson(),
    'network_card_index': ?networkCardIndex?.toTfJson(),
    'network_interface_id': ?networkInterfaceId?.toTfJson(),
    'primary_ipv6': ?primaryIpv6?.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnet_id': ?subnetId?.encodeAs('id').toTfJson(),
    'connection_tracking_specification': ?connectionTrackingSpecification
        ?.encode(),
    'ena_srd_specification': ?enaSrdSpecification?.encode(),
  };
}

/// `interface_type` — derived from the provider schema description.
enum LaunchTemplateNetworkInterfacesInterfaceType implements TerraformEnum {
  efa('efa'),
  efaOnly('efa-only'),
  interface('interface');

  const LaunchTemplateNetworkInterfacesInterfaceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interfaces.connection_tracking_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateConnectionTrackingSpecification {
  const LaunchTemplateConnectionTrackingSpecification({
    this.tcpEstablishedTimeout,
    this.udpStreamTimeout,
    this.udpTimeout,
  });

  final TfArg<num>? tcpEstablishedTimeout;

  final TfArg<num>? udpStreamTimeout;

  final TfArg<num>? udpTimeout;

  Map<String, Object?> encode() => {
    'tcp_established_timeout': ?tcpEstablishedTimeout?.toTfJson(),
    'udp_stream_timeout': ?udpStreamTimeout?.toTfJson(),
    'udp_timeout': ?udpTimeout?.toTfJson(),
  };
}

/// Typed helper for the `network_interfaces.ena_srd_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateEnaSrdSpecification {
  const LaunchTemplateEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  final TfArg<bool>? enaSrdEnabled;

  final LaunchTemplateEnaSrdUdpSpecification? enaSrdUdpSpecification;

  Map<String, Object?> encode() => {
    'ena_srd_enabled': ?enaSrdEnabled?.toTfJson(),
    'ena_srd_udp_specification': ?enaSrdUdpSpecification?.encode(),
  };
}

/// Typed helper for the `network_interfaces.ena_srd_specification.ena_srd_udp_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateEnaSrdUdpSpecification {
  const LaunchTemplateEnaSrdUdpSpecification({this.enaSrdUdpEnabled});

  final TfArg<bool>? enaSrdUdpEnabled;

  Map<String, Object?> encode() => {
    'ena_srd_udp_enabled': ?enaSrdUdpEnabled?.toTfJson(),
  };
}

/// Typed helper for the `network_performance_options` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateNetworkPerformanceOptions {
  const LaunchTemplateNetworkPerformanceOptions({this.bandwidthWeighting});

  final TfArg<LaunchTemplateBandwidthWeighting>? bandwidthWeighting;

  Map<String, Object?> encode() => {
    'bandwidth_weighting': ?bandwidthWeighting?.toTfJson(),
  };
}

/// `bandwidth_weighting` — derived from the provider schema description.
enum LaunchTemplateBandwidthWeighting implements TerraformEnum {
  defaultCase('default'),
  vpc1('vpc-1'),
  ebs1('ebs-1');

  const LaunchTemplateBandwidthWeighting(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `placement` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplatePlacement {
  const LaunchTemplatePlacement({
    this.affinity,
    this.availabilityZone,
    this.group,
    this.host,
    this.partitionNumber,
    this.spreadDomain,
    this.tenancy,
  });

  final TfArg<String>? affinity;

  final TfArg<String>? availabilityZone;

  final LaunchTemplateGroup? group;

  final LaunchTemplateHost? host;

  final TfArg<num>? partitionNumber;

  final TfArg<String>? spreadDomain;

  final TfArg<LaunchTemplateTenancy>? tenancy;

  Map<String, Object?> encode() => {
    'affinity': ?affinity?.toTfJson(),
    'availability_zone': ?availabilityZone?.toTfJson(),
    ...?group?.encode(),
    ...?host?.encode(),
    'partition_number': ?partitionNumber?.toTfJson(),
    'spread_domain': ?spreadDomain?.toTfJson(),
    'tenancy': ?tenancy?.toTfJson(),
  };
}

/// At most one of `group_id`, `group_name` on the `placement` block of `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.groupId(...)`.
sealed class LaunchTemplateGroup {
  const LaunchTemplateGroup();

  /// Sets `group_id`.
  const factory LaunchTemplateGroup.groupId(TfArg<String> groupId) =
      LaunchTemplateGroupId;

  /// Sets `group_name`.
  const factory LaunchTemplateGroup.groupName(TfArg<String> groupName) =
      LaunchTemplateGroupName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LaunchTemplateGroup.groupId] choice: sets `group_id`.
final class LaunchTemplateGroupId extends LaunchTemplateGroup {
  const LaunchTemplateGroupId(this.groupId);

  final TfArg<String> groupId;

  @override
  String get blockKey => 'group_id';

  @override
  Map<String, Object?> encode() => {'group_id': groupId.toTfJson()};
}

/// The [LaunchTemplateGroup.groupName] choice: sets `group_name`.
final class LaunchTemplateGroupName extends LaunchTemplateGroup {
  const LaunchTemplateGroupName(this.groupName);

  final TfArg<String> groupName;

  @override
  String get blockKey => 'group_name';

  @override
  Map<String, Object?> encode() => {'group_name': groupName.toTfJson()};
}

/// At most one of `host_id`, `host_resource_group_arn` on the `placement` block of `aws_launch_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostId(...)`.
sealed class LaunchTemplateHost {
  const LaunchTemplateHost();

  /// Sets `host_id`.
  const factory LaunchTemplateHost.hostId(TfArg<String> hostId) =
      LaunchTemplateHostId;

  /// Sets `host_resource_group_arn`.
  const factory LaunchTemplateHost.hostResourceGroupArn(
    TfArg<String> hostResourceGroupArn,
  ) = LaunchTemplateHostResourceGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LaunchTemplateHost.hostId] choice: sets `host_id`.
final class LaunchTemplateHostId extends LaunchTemplateHost {
  const LaunchTemplateHostId(this.hostId);

  final TfArg<String> hostId;

  @override
  String get blockKey => 'host_id';

  @override
  Map<String, Object?> encode() => {'host_id': hostId.toTfJson()};
}

/// The [LaunchTemplateHost.hostResourceGroupArn] choice: sets `host_resource_group_arn`.
final class LaunchTemplateHostResourceGroupArn extends LaunchTemplateHost {
  const LaunchTemplateHostResourceGroupArn(this.hostResourceGroupArn);

  final TfArg<String> hostResourceGroupArn;

  @override
  String get blockKey => 'host_resource_group_arn';

  @override
  Map<String, Object?> encode() => {
    'host_resource_group_arn': hostResourceGroupArn.toTfJson(),
  };
}

/// `tenancy` — derived from the provider schema description.
enum LaunchTemplateTenancy implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated'),
  host('host');

  const LaunchTemplateTenancy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<LaunchTemplateHostnameType>? hostnameType;

  Map<String, Object?> encode() => {
    'enable_resource_name_dns_a_record': ?enableResourceNameDnsARecord
        ?.toTfJson(),
    'enable_resource_name_dns_aaaa_record': ?enableResourceNameDnsAaaaRecord
        ?.toTfJson(),
    'hostname_type': ?hostnameType?.toTfJson(),
  };
}

/// `hostname_type` — derived from the provider schema description.
enum LaunchTemplateHostnameType implements TerraformEnum {
  ipName('ip-name'),
  resourceName('resource-name');

  const LaunchTemplateHostnameType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<LaunchTemplateSecondaryInterfacesInterfaceType>? interfaceType;

  final TfArg<num>? networkCardIndex;

  final TfArg<num>? privateIpAddressCount;

  final TfArg<List<String>>? privateIpAddresses;

  final TfArg<String>? secondarySubnetId;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_index': ?deviceIndex?.toTfJson(),
    'interface_type': ?interfaceType?.toTfJson(),
    'network_card_index': ?networkCardIndex?.toTfJson(),
    'private_ip_address_count': ?privateIpAddressCount?.toTfJson(),
    'private_ip_addresses': ?privateIpAddresses?.toTfJson(),
    'secondary_subnet_id': ?secondarySubnetId?.toTfJson(),
  };
}

/// `interface_type` — derived from the provider schema description.
enum LaunchTemplateSecondaryInterfacesInterfaceType implements TerraformEnum {
  secondary('secondary');

  const LaunchTemplateSecondaryInterfacesInterfaceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tag_specifications` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateTagSpecifications {
  const LaunchTemplateTagSpecifications({this.resourceType, this.tags});

  final TfArg<LaunchTemplateResourceType>? resourceType;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'resource_type': ?resourceType?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum LaunchTemplateResourceType implements TerraformEnum {
  capacityReservation('capacity-reservation'),
  clientVpnEndpoint('client-vpn-endpoint'),
  customerGateway('customer-gateway'),
  carrierGateway('carrier-gateway'),
  coipPool('coip-pool'),
  declarativePoliciesReport('declarative-policies-report'),
  dedicatedHost('dedicated-host'),
  dhcpOptions('dhcp-options'),
  egressOnlyInternetGateway('egress-only-internet-gateway'),
  elasticIp('elastic-ip'),
  elasticGpu('elastic-gpu'),
  exportImageTask('export-image-task'),
  exportInstanceTask('export-instance-task'),
  fleet('fleet'),
  fpgaImage('fpga-image'),
  hostReservation('host-reservation'),
  image('image'),
  imageUsageReport('image-usage-report'),
  importImageTask('import-image-task'),
  importSnapshotTask('import-snapshot-task'),
  instance('instance'),
  instanceEventWindow('instance-event-window'),
  internetGateway('internet-gateway'),
  ipam('ipam'),
  ipamPool('ipam-pool'),
  ipamScope('ipam-scope'),
  ipv4poolEc2('ipv4pool-ec2'),
  ipv6poolEc2('ipv6pool-ec2'),
  keyPair('key-pair'),
  launchTemplate('launch-template'),
  localGateway('local-gateway'),
  localGatewayRouteTable('local-gateway-route-table'),
  localGatewayVirtualInterface('local-gateway-virtual-interface'),
  localGatewayVirtualInterfaceGroup('local-gateway-virtual-interface-group'),
  localGatewayRouteTableVpcAssociation(
    'local-gateway-route-table-vpc-association',
  ),
  localGatewayRouteTableVirtualInterfaceGroupAssociation(
    'local-gateway-route-table-virtual-interface-group-association',
  ),
  natgateway('natgateway'),
  networkAcl('network-acl'),
  networkInterface('network-interface'),
  networkInsightsAnalysis('network-insights-analysis'),
  networkInsightsPath('network-insights-path'),
  networkInsightsAccessScope('network-insights-access-scope'),
  networkInsightsAccessScopeAnalysis('network-insights-access-scope-analysis'),
  outpostLag('outpost-lag'),
  placementGroup('placement-group'),
  prefixList('prefix-list'),
  replaceRootVolumeTask('replace-root-volume-task'),
  reservedInstances('reserved-instances'),
  routeTable('route-table'),
  securityGroup('security-group'),
  securityGroupRule('security-group-rule'),
  serviceLinkVirtualInterface('service-link-virtual-interface'),
  snapshot('snapshot'),
  spotFleetRequest('spot-fleet-request'),
  spotInstancesRequest('spot-instances-request'),
  subnet('subnet'),
  subnetCidrReservation('subnet-cidr-reservation'),
  trafficMirrorFilter('traffic-mirror-filter'),
  trafficMirrorSession('traffic-mirror-session'),
  trafficMirrorTarget('traffic-mirror-target'),
  transitGateway('transit-gateway'),
  transitGatewayAttachment('transit-gateway-attachment'),
  transitGatewayConnectPeer('transit-gateway-connect-peer'),
  transitGatewayMulticastDomain('transit-gateway-multicast-domain'),
  transitGatewayPolicyTable('transit-gateway-policy-table'),
  transitGatewayMeteringPolicy('transit-gateway-metering-policy'),
  transitGatewayRouteTable('transit-gateway-route-table'),
  transitGatewayRouteTableAnnouncement(
    'transit-gateway-route-table-announcement',
  ),
  volume('volume'),
  vpc('vpc'),
  vpcEndpoint('vpc-endpoint'),
  vpcEndpointConnection('vpc-endpoint-connection'),
  vpcEndpointService('vpc-endpoint-service'),
  vpcEndpointServicePermission('vpc-endpoint-service-permission'),
  vpcPeeringConnection('vpc-peering-connection'),
  vpnConnection('vpn-connection'),
  vpnGateway('vpn-gateway'),
  vpcFlowLog('vpc-flow-log'),
  capacityReservationFleet('capacity-reservation-fleet'),
  trafficMirrorFilterRule('traffic-mirror-filter-rule'),
  vpcEndpointConnectionDeviceType('vpc-endpoint-connection-device-type'),
  verifiedAccessInstance('verified-access-instance'),
  verifiedAccessGroup('verified-access-group'),
  verifiedAccessEndpoint('verified-access-endpoint'),
  verifiedAccessPolicy('verified-access-policy'),
  verifiedAccessTrustProvider('verified-access-trust-provider'),
  vpnConnectionDeviceType('vpn-connection-device-type'),
  vpcBlockPublicAccessExclusion('vpc-block-public-access-exclusion'),
  vpcEncryptionControl('vpc-encryption-control'),
  routeServer('route-server'),
  routeServerEndpoint('route-server-endpoint'),
  routeServerPeer('route-server-peer'),
  ipamResourceDiscovery('ipam-resource-discovery'),
  ipamResourceDiscoveryAssociation('ipam-resource-discovery-association'),
  instanceConnectEndpoint('instance-connect-endpoint'),
  verifiedAccessEndpointTarget('verified-access-endpoint-target'),
  ipamExternalResourceVerificationToken(
    'ipam-external-resource-verification-token',
  ),
  capacityBlock('capacity-block'),
  macModificationTask('mac-modification-task'),
  ipamPrefixListResolver('ipam-prefix-list-resolver'),
  ipamPolicy('ipam-policy'),
  ipamPrefixListResolverTarget('ipam-prefix-list-resolver-target'),
  ipamInternetRegistryAssociation('ipam-internet-registry-association'),
  secondaryInterface('secondary-interface'),
  secondaryNetwork('secondary-network'),
  secondarySubnet('secondary-subnet'),
  capacityManagerDataExport('capacity-manager-data-export'),
  vpnConcentrator('vpn-concentrator'),
  ipamPoolAllocation('ipam-pool-allocation'),
  capacityReservationCancellationQuote(
    'capacity-reservation-cancellation-quote',
  ),
  applicationStatusCheck('application-status-check');

  const LaunchTemplateResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_launch_template`.
final class AwsLaunchTemplate extends Resource {
  static const String tfType = 'aws_launch_template';

  AwsLaunchTemplate({
    required super.localName,
    LaunchTemplateDefaultVersion? defaultVersion,
    TfArg<String>? description,
    TfArg<bool>? disableApiStop,
    TfArg<bool>? disableApiTermination,
    TfArg<String>? ebsOptimized,
    TfArg<String>? imageId,
    TfArg<LaunchTemplateInstanceInitiatedShutdownBehavior>?
    instanceInitiatedShutdownBehavior,
    LaunchTemplateInstance? instance,
    TfArg<String>? kernelId,
    TfArg<String>? keyName,
    LaunchTemplateName? name,
    TfArg<String>? ramDiskId,
    TfArg<String>? region,
    LaunchTemplateSecurityGroups? securityGroups,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userData,
    List<LaunchTemplateBlockDeviceMappings>? blockDeviceMappings,
    LaunchTemplateCapacityReservationSpecification?
    capacityReservationSpecification,
    LaunchTemplateCpuOptions? cpuOptions,
    LaunchTemplateCreditSpecification? creditSpecification,
    LaunchTemplateEnclaveOptions? enclaveOptions,
    LaunchTemplateHibernationOptions? hibernationOptions,
    LaunchTemplateIamInstanceProfile? iamInstanceProfile,
    LaunchTemplateInstanceMarketOptions? instanceMarketOptions,
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
           ...?defaultVersion?.argMap,
           'description': ?description,
           'disable_api_stop': ?disableApiStop,
           'disable_api_termination': ?disableApiTermination,
           'ebs_optimized': ?ebsOptimized,
           'image_id': ?imageId,
           'instance_initiated_shutdown_behavior':
               ?instanceInitiatedShutdownBehavior,
           ...?instance?.argMap,
           'kernel_id': ?kernelId,
           'key_name': ?keyName,
           ...?name?.argMap,
           'ram_disk_id': ?ramDiskId,
           'region': ?region,
           ...?securityGroups?.argMap,
           'tags': ?tags,
           'user_data': ?userData,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLaunchTemplate>`.
  RefTo<AwsLaunchTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_version` attribute.
  TfRef<num> get latestVersion => TfRef.attribute<num>(this, 'latest_version');

  /// Reference to `default_version` attribute.
  TfRef<num> get defaultVersion =>
      TfRef.attribute<num>(this, 'default_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_api_stop` attribute.
  TfRef<bool> get disableApiStop =>
      TfRef.attribute<bool>(this, 'disable_api_stop');

  /// Reference to `disable_api_termination` attribute.
  TfRef<bool> get disableApiTermination =>
      TfRef.attribute<bool>(this, 'disable_api_termination');

  /// Reference to `ebs_optimized` attribute.
  TfRef<String> get ebsOptimized =>
      TfRef.attribute<String>(this, 'ebs_optimized');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `instance_initiated_shutdown_behavior` attribute.
  TfRef<String> get instanceInitiatedShutdownBehavior =>
      TfRef.attribute<String>(this, 'instance_initiated_shutdown_behavior');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `kernel_id` attribute.
  TfRef<String> get kernelId => TfRef.attribute<String>(this, 'kernel_id');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `ram_disk_id` attribute.
  TfRef<String> get ramDiskId => TfRef.attribute<String>(this, 'ram_disk_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_names` attribute.
  TfRef<List<String>> get securityGroupNames =>
      TfRef.attribute<List<String>>(this, 'security_group_names');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `update_default_version` attribute.
  TfRef<bool> get updateDefaultVersion =>
      TfRef.attribute<bool>(this, 'update_default_version');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
