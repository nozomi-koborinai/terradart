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
extension type const LaunchTemplateInstanceInitiatedShutdownBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  LaunchTemplateInstanceInitiatedShutdownBehavior.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateInstanceInitiatedShutdownBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateInstanceInitiatedShutdownBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const stop = LaunchTemplateInstanceInitiatedShutdownBehavior._(
    TfArgLiteral('stop'),
  );
  static const terminate = LaunchTemplateInstanceInitiatedShutdownBehavior._(
    TfArgLiteral('terminate'),
  );

  static const List<LaunchTemplateInstanceInitiatedShutdownBehavior> values = [
    stop,
    terminate,
  ];
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

  final LaunchTemplateVolumeType? volumeType;

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
extension type const LaunchTemplateVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateVolumeType.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = LaunchTemplateVolumeType._(TfArgLiteral('standard'));
  static const io1 = LaunchTemplateVolumeType._(TfArgLiteral('io1'));
  static const io2 = LaunchTemplateVolumeType._(TfArgLiteral('io2'));
  static const gp2 = LaunchTemplateVolumeType._(TfArgLiteral('gp2'));
  static const sc1 = LaunchTemplateVolumeType._(TfArgLiteral('sc1'));
  static const st1 = LaunchTemplateVolumeType._(TfArgLiteral('st1'));
  static const gp3 = LaunchTemplateVolumeType._(TfArgLiteral('gp3'));

  static const List<LaunchTemplateVolumeType> values = [
    standard,
    io1,
    io2,
    gp2,
    sc1,
    st1,
    gp3,
  ];
}

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCapacityReservationSpecification {
  const LaunchTemplateCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final LaunchTemplateCapacityReservationPreference?
  capacityReservationPreference;

  final LaunchTemplateCapacityReservationTarget? capacityReservationTarget;

  Map<String, Object?> encode() => {
    'capacity_reservation_preference': ?capacityReservationPreference
        ?.toTfJson(),
    'capacity_reservation_target': ?capacityReservationTarget?.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
extension type const LaunchTemplateCapacityReservationPreference._(
  TfArg<String> _
) implements TfArg<String> {
  LaunchTemplateCapacityReservationPreference.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateCapacityReservationPreference.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateCapacityReservationPreference.arg(TfArg<String> arg)
    : this._(arg);

  static const capacityReservationsOnly =
      LaunchTemplateCapacityReservationPreference._(
        TfArgLiteral('capacity-reservations-only'),
      );
  static const open = LaunchTemplateCapacityReservationPreference._(
    TfArgLiteral('open'),
  );
  static const none = LaunchTemplateCapacityReservationPreference._(
    TfArgLiteral('none'),
  );

  static const List<LaunchTemplateCapacityReservationPreference> values = [
    capacityReservationsOnly,
    open,
    none,
  ];
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

  final LaunchTemplateAmdSevSnp? amdSevSnp;

  final TfArg<num>? coreCount;

  final LaunchTemplateNestedVirtualization? nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    'amd_sev_snp': ?amdSevSnp?.toTfJson(),
    'core_count': ?coreCount?.toTfJson(),
    'nested_virtualization': ?nestedVirtualization?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
  };
}

/// `amd_sev_snp` — derived from the provider schema description.
extension type const LaunchTemplateAmdSevSnp._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateAmdSevSnp.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateAmdSevSnp.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateAmdSevSnp.arg(TfArg<String> arg) : this._(arg);

  static const enabled = LaunchTemplateAmdSevSnp._(TfArgLiteral('enabled'));
  static const disabled = LaunchTemplateAmdSevSnp._(TfArgLiteral('disabled'));

  static const List<LaunchTemplateAmdSevSnp> values = [enabled, disabled];
}

/// `nested_virtualization` — derived from the provider schema description.
extension type const LaunchTemplateNestedVirtualization._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateNestedVirtualization.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateNestedVirtualization.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateNestedVirtualization.arg(TfArg<String> arg) : this._(arg);

  static const enabled = LaunchTemplateNestedVirtualization._(
    TfArgLiteral('enabled'),
  );
  static const disabled = LaunchTemplateNestedVirtualization._(
    TfArgLiteral('disabled'),
  );

  static const List<LaunchTemplateNestedVirtualization> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `credit_specification` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateCreditSpecification {
  const LaunchTemplateCreditSpecification({this.cpuCredits});

  final LaunchTemplateCpuCredits? cpuCredits;

  Map<String, Object?> encode() => {'cpu_credits': ?cpuCredits?.toTfJson()};
}

/// `cpu_credits` — derived from the provider schema description.
extension type const LaunchTemplateCpuCredits._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateCpuCredits.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateCpuCredits.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateCpuCredits.arg(TfArg<String> arg) : this._(arg);

  static const standard = LaunchTemplateCpuCredits._(TfArgLiteral('standard'));
  static const unlimited = LaunchTemplateCpuCredits._(
    TfArgLiteral('unlimited'),
  );

  static const List<LaunchTemplateCpuCredits> values = [standard, unlimited];
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

  final LaunchTemplateMarketType? marketType;

  final LaunchTemplateSpotOptions? spotOptions;

  Map<String, Object?> encode() => {
    'market_type': ?marketType?.toTfJson(),
    'spot_options': ?spotOptions?.encode(),
  };
}

/// `market_type` — derived from the provider schema description.
extension type const LaunchTemplateMarketType._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateMarketType.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateMarketType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateMarketType.arg(TfArg<String> arg) : this._(arg);

  static const spot = LaunchTemplateMarketType._(TfArgLiteral('spot'));
  static const capacityBlock = LaunchTemplateMarketType._(
    TfArgLiteral('capacity-block'),
  );
  static const interruptibleCapacityReservation = LaunchTemplateMarketType._(
    TfArgLiteral('interruptible-capacity-reservation'),
  );
  static const onDemand = LaunchTemplateMarketType._(TfArgLiteral('on-demand'));

  static const List<LaunchTemplateMarketType> values = [
    spot,
    capacityBlock,
    interruptibleCapacityReservation,
    onDemand,
  ];
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

  final LaunchTemplateInstanceInterruptionBehavior?
  instanceInterruptionBehavior;

  final TfArg<String>? maxPrice;

  final LaunchTemplateSpotInstanceType? spotInstanceType;

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
extension type const LaunchTemplateInstanceInterruptionBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  LaunchTemplateInstanceInterruptionBehavior.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateInstanceInterruptionBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateInstanceInterruptionBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const hibernate = LaunchTemplateInstanceInterruptionBehavior._(
    TfArgLiteral('hibernate'),
  );
  static const stop = LaunchTemplateInstanceInterruptionBehavior._(
    TfArgLiteral('stop'),
  );
  static const terminate = LaunchTemplateInstanceInterruptionBehavior._(
    TfArgLiteral('terminate'),
  );

  static const List<LaunchTemplateInstanceInterruptionBehavior> values = [
    hibernate,
    stop,
    terminate,
  ];
}

/// `spot_instance_type` — derived from the provider schema description.
extension type const LaunchTemplateSpotInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateSpotInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateSpotInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateSpotInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const oneTime = LaunchTemplateSpotInstanceType._(
    TfArgLiteral('one-time'),
  );
  static const persistent = LaunchTemplateSpotInstanceType._(
    TfArgLiteral('persistent'),
  );

  static const List<LaunchTemplateSpotInstanceType> values = [
    oneTime,
    persistent,
  ];
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

  final List<LaunchTemplateAcceleratorManufacturers>? acceleratorManufacturers;

  final List<LaunchTemplateAcceleratorNames>? acceleratorNames;

  final List<LaunchTemplateAcceleratorTypes>? acceleratorTypes;

  final LaunchTemplateInstanceTypes? instanceTypes;

  final LaunchTemplateBareMetal? bareMetal;

  final LaunchTemplateBurstablePerformance? burstablePerformance;

  final List<LaunchTemplateCpuManufacturers>? cpuManufacturers;

  final List<LaunchTemplateInstanceGenerations>? instanceGenerations;

  final LaunchTemplateLocalStorage? localStorage;

  final List<LaunchTemplateLocalStorageTypes>? localStorageTypes;

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
extension type const LaunchTemplateAcceleratorManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateAcceleratorManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateAcceleratorManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateAcceleratorManufacturers.arg(TfArg<String> arg)
    : this._(arg);

  static const amazonWebServices = LaunchTemplateAcceleratorManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const amd = LaunchTemplateAcceleratorManufacturers._(
    TfArgLiteral('amd'),
  );
  static const nvidia = LaunchTemplateAcceleratorManufacturers._(
    TfArgLiteral('nvidia'),
  );
  static const xilinx = LaunchTemplateAcceleratorManufacturers._(
    TfArgLiteral('xilinx'),
  );
  static const habana = LaunchTemplateAcceleratorManufacturers._(
    TfArgLiteral('habana'),
  );

  static const List<LaunchTemplateAcceleratorManufacturers> values = [
    amazonWebServices,
    amd,
    nvidia,
    xilinx,
    habana,
  ];
}

/// `accelerator_names` — derived from the provider schema description.
extension type const LaunchTemplateAcceleratorNames._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateAcceleratorNames.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateAcceleratorNames.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateAcceleratorNames.arg(TfArg<String> arg) : this._(arg);

  static const a100 = LaunchTemplateAcceleratorNames._(TfArgLiteral('a100'));
  static const inferentia = LaunchTemplateAcceleratorNames._(
    TfArgLiteral('inferentia'),
  );
  static const k520 = LaunchTemplateAcceleratorNames._(TfArgLiteral('k520'));
  static const k80 = LaunchTemplateAcceleratorNames._(TfArgLiteral('k80'));
  static const m60 = LaunchTemplateAcceleratorNames._(TfArgLiteral('m60'));
  static const radeonProV520 = LaunchTemplateAcceleratorNames._(
    TfArgLiteral('radeon-pro-v520'),
  );
  static const t4 = LaunchTemplateAcceleratorNames._(TfArgLiteral('t4'));
  static const vu9p = LaunchTemplateAcceleratorNames._(TfArgLiteral('vu9p'));
  static const v100 = LaunchTemplateAcceleratorNames._(TfArgLiteral('v100'));
  static const a10g = LaunchTemplateAcceleratorNames._(TfArgLiteral('a10g'));
  static const h100 = LaunchTemplateAcceleratorNames._(TfArgLiteral('h100'));
  static const t4g = LaunchTemplateAcceleratorNames._(TfArgLiteral('t4g'));
  static const l40s = LaunchTemplateAcceleratorNames._(TfArgLiteral('l40s'));
  static const l4 = LaunchTemplateAcceleratorNames._(TfArgLiteral('l4'));
  static const gaudiHl205 = LaunchTemplateAcceleratorNames._(
    TfArgLiteral('gaudi-hl-205'),
  );
  static const inferentia2 = LaunchTemplateAcceleratorNames._(
    TfArgLiteral('inferentia2'),
  );
  static const trainium = LaunchTemplateAcceleratorNames._(
    TfArgLiteral('trainium'),
  );
  static const trainium2 = LaunchTemplateAcceleratorNames._(
    TfArgLiteral('trainium2'),
  );
  static const u30 = LaunchTemplateAcceleratorNames._(TfArgLiteral('u30'));

  static const List<LaunchTemplateAcceleratorNames> values = [
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
extension type const LaunchTemplateAcceleratorTypes._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateAcceleratorTypes.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateAcceleratorTypes.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateAcceleratorTypes.arg(TfArg<String> arg) : this._(arg);

  static const gpu = LaunchTemplateAcceleratorTypes._(TfArgLiteral('gpu'));
  static const fpga = LaunchTemplateAcceleratorTypes._(TfArgLiteral('fpga'));
  static const inference = LaunchTemplateAcceleratorTypes._(
    TfArgLiteral('inference'),
  );
  static const media = LaunchTemplateAcceleratorTypes._(TfArgLiteral('media'));

  static const List<LaunchTemplateAcceleratorTypes> values = [
    gpu,
    fpga,
    inference,
    media,
  ];
}

/// `bare_metal` — derived from the provider schema description.
extension type const LaunchTemplateBareMetal._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateBareMetal.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateBareMetal.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateBareMetal.arg(TfArg<String> arg) : this._(arg);

  static const included = LaunchTemplateBareMetal._(TfArgLiteral('included'));
  static const required = LaunchTemplateBareMetal._(TfArgLiteral('required'));
  static const excluded = LaunchTemplateBareMetal._(TfArgLiteral('excluded'));

  static const List<LaunchTemplateBareMetal> values = [
    included,
    required,
    excluded,
  ];
}

/// `burstable_performance` — derived from the provider schema description.
extension type const LaunchTemplateBurstablePerformance._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateBurstablePerformance.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateBurstablePerformance.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateBurstablePerformance.arg(TfArg<String> arg) : this._(arg);

  static const included = LaunchTemplateBurstablePerformance._(
    TfArgLiteral('included'),
  );
  static const required = LaunchTemplateBurstablePerformance._(
    TfArgLiteral('required'),
  );
  static const excluded = LaunchTemplateBurstablePerformance._(
    TfArgLiteral('excluded'),
  );

  static const List<LaunchTemplateBurstablePerformance> values = [
    included,
    required,
    excluded,
  ];
}

/// `cpu_manufacturers` — derived from the provider schema description.
extension type const LaunchTemplateCpuManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateCpuManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateCpuManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateCpuManufacturers.arg(TfArg<String> arg) : this._(arg);

  static const intel = LaunchTemplateCpuManufacturers._(TfArgLiteral('intel'));
  static const amd = LaunchTemplateCpuManufacturers._(TfArgLiteral('amd'));
  static const amazonWebServices = LaunchTemplateCpuManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const apple = LaunchTemplateCpuManufacturers._(TfArgLiteral('apple'));

  static const List<LaunchTemplateCpuManufacturers> values = [
    intel,
    amd,
    amazonWebServices,
    apple,
  ];
}

/// `instance_generations` — derived from the provider schema description.
extension type const LaunchTemplateInstanceGenerations._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateInstanceGenerations.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateInstanceGenerations.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateInstanceGenerations.arg(TfArg<String> arg) : this._(arg);

  static const current = LaunchTemplateInstanceGenerations._(
    TfArgLiteral('current'),
  );
  static const previous = LaunchTemplateInstanceGenerations._(
    TfArgLiteral('previous'),
  );

  static const List<LaunchTemplateInstanceGenerations> values = [
    current,
    previous,
  ];
}

/// `local_storage` — derived from the provider schema description.
extension type const LaunchTemplateLocalStorage._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateLocalStorage.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateLocalStorage.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateLocalStorage.arg(TfArg<String> arg) : this._(arg);

  static const included = LaunchTemplateLocalStorage._(
    TfArgLiteral('included'),
  );
  static const required = LaunchTemplateLocalStorage._(
    TfArgLiteral('required'),
  );
  static const excluded = LaunchTemplateLocalStorage._(
    TfArgLiteral('excluded'),
  );

  static const List<LaunchTemplateLocalStorage> values = [
    included,
    required,
    excluded,
  ];
}

/// `local_storage_types` — derived from the provider schema description.
extension type const LaunchTemplateLocalStorageTypes._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateLocalStorageTypes.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateLocalStorageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateLocalStorageTypes.arg(TfArg<String> arg) : this._(arg);

  static const hdd = LaunchTemplateLocalStorageTypes._(TfArgLiteral('hdd'));
  static const ssd = LaunchTemplateLocalStorageTypes._(TfArgLiteral('ssd'));

  static const List<LaunchTemplateLocalStorageTypes> values = [hdd, ssd];
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

  final LaunchTemplateAutoRecovery? autoRecovery;

  Map<String, Object?> encode() => {'auto_recovery': ?autoRecovery?.toTfJson()};
}

/// `auto_recovery` — derived from the provider schema description.
extension type const LaunchTemplateAutoRecovery._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateAutoRecovery.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateAutoRecovery.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateAutoRecovery.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = LaunchTemplateAutoRecovery._(
    TfArgLiteral('default'),
  );
  static const disabled = LaunchTemplateAutoRecovery._(
    TfArgLiteral('disabled'),
  );

  static const List<LaunchTemplateAutoRecovery> values = [
    defaultCase,
    disabled,
  ];
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

  final LaunchTemplateHttpEndpoint? httpEndpoint;

  final LaunchTemplateHttpProtocolIpv6? httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final LaunchTemplateHttpTokens? httpTokens;

  final LaunchTemplateInstanceMetadataTags? instanceMetadataTags;

  Map<String, Object?> encode() => {
    'http_endpoint': ?httpEndpoint?.toTfJson(),
    'http_protocol_ipv6': ?httpProtocolIpv6?.toTfJson(),
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
    'instance_metadata_tags': ?instanceMetadataTags?.toTfJson(),
  };
}

/// `http_endpoint` — derived from the provider schema description.
extension type const LaunchTemplateHttpEndpoint._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateHttpEndpoint.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateHttpEndpoint.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateHttpEndpoint.arg(TfArg<String> arg) : this._(arg);

  static const disabled = LaunchTemplateHttpEndpoint._(
    TfArgLiteral('disabled'),
  );
  static const enabled = LaunchTemplateHttpEndpoint._(TfArgLiteral('enabled'));

  static const List<LaunchTemplateHttpEndpoint> values = [disabled, enabled];
}

/// `http_protocol_ipv6` — derived from the provider schema description.
extension type const LaunchTemplateHttpProtocolIpv6._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateHttpProtocolIpv6.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateHttpProtocolIpv6.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateHttpProtocolIpv6.arg(TfArg<String> arg) : this._(arg);

  static const disabled = LaunchTemplateHttpProtocolIpv6._(
    TfArgLiteral('disabled'),
  );
  static const enabled = LaunchTemplateHttpProtocolIpv6._(
    TfArgLiteral('enabled'),
  );

  static const List<LaunchTemplateHttpProtocolIpv6> values = [
    disabled,
    enabled,
  ];
}

/// `http_tokens` — derived from the provider schema description.
extension type const LaunchTemplateHttpTokens._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateHttpTokens.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateHttpTokens.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateHttpTokens.arg(TfArg<String> arg) : this._(arg);

  static const optional = LaunchTemplateHttpTokens._(TfArgLiteral('optional'));
  static const required = LaunchTemplateHttpTokens._(TfArgLiteral('required'));

  static const List<LaunchTemplateHttpTokens> values = [optional, required];
}

/// `instance_metadata_tags` — derived from the provider schema description.
extension type const LaunchTemplateInstanceMetadataTags._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateInstanceMetadataTags.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateInstanceMetadataTags.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateInstanceMetadataTags.arg(TfArg<String> arg) : this._(arg);

  static const disabled = LaunchTemplateInstanceMetadataTags._(
    TfArgLiteral('disabled'),
  );
  static const enabled = LaunchTemplateInstanceMetadataTags._(
    TfArgLiteral('enabled'),
  );

  static const List<LaunchTemplateInstanceMetadataTags> values = [
    disabled,
    enabled,
  ];
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

  final LaunchTemplateNetworkInterfacesInterfaceType? interfaceType;

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
extension type const LaunchTemplateNetworkInterfacesInterfaceType._(
  TfArg<String> _
) implements TfArg<String> {
  LaunchTemplateNetworkInterfacesInterfaceType.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateNetworkInterfacesInterfaceType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateNetworkInterfacesInterfaceType.arg(TfArg<String> arg)
    : this._(arg);

  static const efa = LaunchTemplateNetworkInterfacesInterfaceType._(
    TfArgLiteral('efa'),
  );
  static const efaOnly = LaunchTemplateNetworkInterfacesInterfaceType._(
    TfArgLiteral('efa-only'),
  );
  static const interface = LaunchTemplateNetworkInterfacesInterfaceType._(
    TfArgLiteral('interface'),
  );

  static const List<LaunchTemplateNetworkInterfacesInterfaceType> values = [
    efa,
    efaOnly,
    interface,
  ];
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

  final LaunchTemplateBandwidthWeighting? bandwidthWeighting;

  Map<String, Object?> encode() => {
    'bandwidth_weighting': ?bandwidthWeighting?.toTfJson(),
  };
}

/// `bandwidth_weighting` — derived from the provider schema description.
extension type const LaunchTemplateBandwidthWeighting._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateBandwidthWeighting.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateBandwidthWeighting.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateBandwidthWeighting.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = LaunchTemplateBandwidthWeighting._(
    TfArgLiteral('default'),
  );
  static const vpc1 = LaunchTemplateBandwidthWeighting._(TfArgLiteral('vpc-1'));
  static const ebs1 = LaunchTemplateBandwidthWeighting._(TfArgLiteral('ebs-1'));

  static const List<LaunchTemplateBandwidthWeighting> values = [
    defaultCase,
    vpc1,
    ebs1,
  ];
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

  final LaunchTemplateTenancy? tenancy;

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
extension type const LaunchTemplateTenancy._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateTenancy.variable(String name) : this._(TfArg.variable(name));
  LaunchTemplateTenancy.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateTenancy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = LaunchTemplateTenancy._(TfArgLiteral('default'));
  static const dedicated = LaunchTemplateTenancy._(TfArgLiteral('dedicated'));
  static const host = LaunchTemplateTenancy._(TfArgLiteral('host'));

  static const List<LaunchTemplateTenancy> values = [
    defaultCase,
    dedicated,
    host,
  ];
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

  final LaunchTemplateHostnameType? hostnameType;

  Map<String, Object?> encode() => {
    'enable_resource_name_dns_a_record': ?enableResourceNameDnsARecord
        ?.toTfJson(),
    'enable_resource_name_dns_aaaa_record': ?enableResourceNameDnsAaaaRecord
        ?.toTfJson(),
    'hostname_type': ?hostnameType?.toTfJson(),
  };
}

/// `hostname_type` — derived from the provider schema description.
extension type const LaunchTemplateHostnameType._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateHostnameType.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateHostnameType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateHostnameType.arg(TfArg<String> arg) : this._(arg);

  static const ipName = LaunchTemplateHostnameType._(TfArgLiteral('ip-name'));
  static const resourceName = LaunchTemplateHostnameType._(
    TfArgLiteral('resource-name'),
  );

  static const List<LaunchTemplateHostnameType> values = [ipName, resourceName];
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

  final LaunchTemplateSecondaryInterfacesInterfaceType? interfaceType;

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
extension type const LaunchTemplateSecondaryInterfacesInterfaceType._(
  TfArg<String> _
) implements TfArg<String> {
  LaunchTemplateSecondaryInterfacesInterfaceType.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateSecondaryInterfacesInterfaceType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateSecondaryInterfacesInterfaceType.arg(TfArg<String> arg)
    : this._(arg);

  static const secondary = LaunchTemplateSecondaryInterfacesInterfaceType._(
    TfArgLiteral('secondary'),
  );

  static const List<LaunchTemplateSecondaryInterfacesInterfaceType> values = [
    secondary,
  ];
}

/// Typed helper for the `tag_specifications` block of
/// `aws_launch_template` (derived from provider schema).
@immutable
final class LaunchTemplateTagSpecifications {
  const LaunchTemplateTagSpecifications({this.resourceType, this.tags});

  final LaunchTemplateResourceType? resourceType;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'resource_type': ?resourceType?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const LaunchTemplateResourceType._(TfArg<String> _)
    implements TfArg<String> {
  LaunchTemplateResourceType.variable(String name)
    : this._(TfArg.variable(name));
  LaunchTemplateResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const LaunchTemplateResourceType.arg(TfArg<String> arg) : this._(arg);

  static const capacityReservation = LaunchTemplateResourceType._(
    TfArgLiteral('capacity-reservation'),
  );
  static const clientVpnEndpoint = LaunchTemplateResourceType._(
    TfArgLiteral('client-vpn-endpoint'),
  );
  static const customerGateway = LaunchTemplateResourceType._(
    TfArgLiteral('customer-gateway'),
  );
  static const carrierGateway = LaunchTemplateResourceType._(
    TfArgLiteral('carrier-gateway'),
  );
  static const coipPool = LaunchTemplateResourceType._(
    TfArgLiteral('coip-pool'),
  );
  static const declarativePoliciesReport = LaunchTemplateResourceType._(
    TfArgLiteral('declarative-policies-report'),
  );
  static const dedicatedHost = LaunchTemplateResourceType._(
    TfArgLiteral('dedicated-host'),
  );
  static const dhcpOptions = LaunchTemplateResourceType._(
    TfArgLiteral('dhcp-options'),
  );
  static const egressOnlyInternetGateway = LaunchTemplateResourceType._(
    TfArgLiteral('egress-only-internet-gateway'),
  );
  static const elasticIp = LaunchTemplateResourceType._(
    TfArgLiteral('elastic-ip'),
  );
  static const elasticGpu = LaunchTemplateResourceType._(
    TfArgLiteral('elastic-gpu'),
  );
  static const exportImageTask = LaunchTemplateResourceType._(
    TfArgLiteral('export-image-task'),
  );
  static const exportInstanceTask = LaunchTemplateResourceType._(
    TfArgLiteral('export-instance-task'),
  );
  static const fleet = LaunchTemplateResourceType._(TfArgLiteral('fleet'));
  static const fpgaImage = LaunchTemplateResourceType._(
    TfArgLiteral('fpga-image'),
  );
  static const hostReservation = LaunchTemplateResourceType._(
    TfArgLiteral('host-reservation'),
  );
  static const image = LaunchTemplateResourceType._(TfArgLiteral('image'));
  static const imageUsageReport = LaunchTemplateResourceType._(
    TfArgLiteral('image-usage-report'),
  );
  static const importImageTask = LaunchTemplateResourceType._(
    TfArgLiteral('import-image-task'),
  );
  static const importSnapshotTask = LaunchTemplateResourceType._(
    TfArgLiteral('import-snapshot-task'),
  );
  static const instance = LaunchTemplateResourceType._(
    TfArgLiteral('instance'),
  );
  static const instanceEventWindow = LaunchTemplateResourceType._(
    TfArgLiteral('instance-event-window'),
  );
  static const internetGateway = LaunchTemplateResourceType._(
    TfArgLiteral('internet-gateway'),
  );
  static const ipam = LaunchTemplateResourceType._(TfArgLiteral('ipam'));
  static const ipamPool = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-pool'),
  );
  static const ipamScope = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-scope'),
  );
  static const ipv4poolEc2 = LaunchTemplateResourceType._(
    TfArgLiteral('ipv4pool-ec2'),
  );
  static const ipv6poolEc2 = LaunchTemplateResourceType._(
    TfArgLiteral('ipv6pool-ec2'),
  );
  static const keyPair = LaunchTemplateResourceType._(TfArgLiteral('key-pair'));
  static const launchTemplate = LaunchTemplateResourceType._(
    TfArgLiteral('launch-template'),
  );
  static const localGateway = LaunchTemplateResourceType._(
    TfArgLiteral('local-gateway'),
  );
  static const localGatewayRouteTable = LaunchTemplateResourceType._(
    TfArgLiteral('local-gateway-route-table'),
  );
  static const localGatewayVirtualInterface = LaunchTemplateResourceType._(
    TfArgLiteral('local-gateway-virtual-interface'),
  );
  static const localGatewayVirtualInterfaceGroup = LaunchTemplateResourceType._(
    TfArgLiteral('local-gateway-virtual-interface-group'),
  );
  static const localGatewayRouteTableVpcAssociation =
      LaunchTemplateResourceType._(
        TfArgLiteral('local-gateway-route-table-vpc-association'),
      );
  static const localGatewayRouteTableVirtualInterfaceGroupAssociation =
      LaunchTemplateResourceType._(
        TfArgLiteral(
          'local-gateway-route-table-virtual-interface-group-association',
        ),
      );
  static const natgateway = LaunchTemplateResourceType._(
    TfArgLiteral('natgateway'),
  );
  static const networkAcl = LaunchTemplateResourceType._(
    TfArgLiteral('network-acl'),
  );
  static const networkInterface = LaunchTemplateResourceType._(
    TfArgLiteral('network-interface'),
  );
  static const networkInsightsAnalysis = LaunchTemplateResourceType._(
    TfArgLiteral('network-insights-analysis'),
  );
  static const networkInsightsPath = LaunchTemplateResourceType._(
    TfArgLiteral('network-insights-path'),
  );
  static const networkInsightsAccessScope = LaunchTemplateResourceType._(
    TfArgLiteral('network-insights-access-scope'),
  );
  static const networkInsightsAccessScopeAnalysis =
      LaunchTemplateResourceType._(
        TfArgLiteral('network-insights-access-scope-analysis'),
      );
  static const outpostLag = LaunchTemplateResourceType._(
    TfArgLiteral('outpost-lag'),
  );
  static const placementGroup = LaunchTemplateResourceType._(
    TfArgLiteral('placement-group'),
  );
  static const prefixList = LaunchTemplateResourceType._(
    TfArgLiteral('prefix-list'),
  );
  static const replaceRootVolumeTask = LaunchTemplateResourceType._(
    TfArgLiteral('replace-root-volume-task'),
  );
  static const reservedInstances = LaunchTemplateResourceType._(
    TfArgLiteral('reserved-instances'),
  );
  static const routeTable = LaunchTemplateResourceType._(
    TfArgLiteral('route-table'),
  );
  static const securityGroup = LaunchTemplateResourceType._(
    TfArgLiteral('security-group'),
  );
  static const securityGroupRule = LaunchTemplateResourceType._(
    TfArgLiteral('security-group-rule'),
  );
  static const serviceLinkVirtualInterface = LaunchTemplateResourceType._(
    TfArgLiteral('service-link-virtual-interface'),
  );
  static const snapshot = LaunchTemplateResourceType._(
    TfArgLiteral('snapshot'),
  );
  static const spotFleetRequest = LaunchTemplateResourceType._(
    TfArgLiteral('spot-fleet-request'),
  );
  static const spotInstancesRequest = LaunchTemplateResourceType._(
    TfArgLiteral('spot-instances-request'),
  );
  static const subnet = LaunchTemplateResourceType._(TfArgLiteral('subnet'));
  static const subnetCidrReservation = LaunchTemplateResourceType._(
    TfArgLiteral('subnet-cidr-reservation'),
  );
  static const trafficMirrorFilter = LaunchTemplateResourceType._(
    TfArgLiteral('traffic-mirror-filter'),
  );
  static const trafficMirrorSession = LaunchTemplateResourceType._(
    TfArgLiteral('traffic-mirror-session'),
  );
  static const trafficMirrorTarget = LaunchTemplateResourceType._(
    TfArgLiteral('traffic-mirror-target'),
  );
  static const transitGateway = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway'),
  );
  static const transitGatewayAttachment = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway-attachment'),
  );
  static const transitGatewayConnectPeer = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway-connect-peer'),
  );
  static const transitGatewayMulticastDomain = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway-multicast-domain'),
  );
  static const transitGatewayPolicyTable = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway-policy-table'),
  );
  static const transitGatewayMeteringPolicy = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway-metering-policy'),
  );
  static const transitGatewayRouteTable = LaunchTemplateResourceType._(
    TfArgLiteral('transit-gateway-route-table'),
  );
  static const transitGatewayRouteTableAnnouncement =
      LaunchTemplateResourceType._(
        TfArgLiteral('transit-gateway-route-table-announcement'),
      );
  static const volume = LaunchTemplateResourceType._(TfArgLiteral('volume'));
  static const vpc = LaunchTemplateResourceType._(TfArgLiteral('vpc'));
  static const vpcEndpoint = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-endpoint'),
  );
  static const vpcEndpointConnection = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-endpoint-connection'),
  );
  static const vpcEndpointService = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-endpoint-service'),
  );
  static const vpcEndpointServicePermission = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-endpoint-service-permission'),
  );
  static const vpcPeeringConnection = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-peering-connection'),
  );
  static const vpnConnection = LaunchTemplateResourceType._(
    TfArgLiteral('vpn-connection'),
  );
  static const vpnGateway = LaunchTemplateResourceType._(
    TfArgLiteral('vpn-gateway'),
  );
  static const vpcFlowLog = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-flow-log'),
  );
  static const capacityReservationFleet = LaunchTemplateResourceType._(
    TfArgLiteral('capacity-reservation-fleet'),
  );
  static const trafficMirrorFilterRule = LaunchTemplateResourceType._(
    TfArgLiteral('traffic-mirror-filter-rule'),
  );
  static const vpcEndpointConnectionDeviceType = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-endpoint-connection-device-type'),
  );
  static const verifiedAccessInstance = LaunchTemplateResourceType._(
    TfArgLiteral('verified-access-instance'),
  );
  static const verifiedAccessGroup = LaunchTemplateResourceType._(
    TfArgLiteral('verified-access-group'),
  );
  static const verifiedAccessEndpoint = LaunchTemplateResourceType._(
    TfArgLiteral('verified-access-endpoint'),
  );
  static const verifiedAccessPolicy = LaunchTemplateResourceType._(
    TfArgLiteral('verified-access-policy'),
  );
  static const verifiedAccessTrustProvider = LaunchTemplateResourceType._(
    TfArgLiteral('verified-access-trust-provider'),
  );
  static const vpnConnectionDeviceType = LaunchTemplateResourceType._(
    TfArgLiteral('vpn-connection-device-type'),
  );
  static const vpcBlockPublicAccessExclusion = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-block-public-access-exclusion'),
  );
  static const vpcEncryptionControl = LaunchTemplateResourceType._(
    TfArgLiteral('vpc-encryption-control'),
  );
  static const routeServer = LaunchTemplateResourceType._(
    TfArgLiteral('route-server'),
  );
  static const routeServerEndpoint = LaunchTemplateResourceType._(
    TfArgLiteral('route-server-endpoint'),
  );
  static const routeServerPeer = LaunchTemplateResourceType._(
    TfArgLiteral('route-server-peer'),
  );
  static const ipamResourceDiscovery = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-resource-discovery'),
  );
  static const ipamResourceDiscoveryAssociation = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-resource-discovery-association'),
  );
  static const instanceConnectEndpoint = LaunchTemplateResourceType._(
    TfArgLiteral('instance-connect-endpoint'),
  );
  static const verifiedAccessEndpointTarget = LaunchTemplateResourceType._(
    TfArgLiteral('verified-access-endpoint-target'),
  );
  static const ipamExternalResourceVerificationToken =
      LaunchTemplateResourceType._(
        TfArgLiteral('ipam-external-resource-verification-token'),
      );
  static const capacityBlock = LaunchTemplateResourceType._(
    TfArgLiteral('capacity-block'),
  );
  static const macModificationTask = LaunchTemplateResourceType._(
    TfArgLiteral('mac-modification-task'),
  );
  static const ipamPrefixListResolver = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-prefix-list-resolver'),
  );
  static const ipamPolicy = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-policy'),
  );
  static const ipamPrefixListResolverTarget = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-prefix-list-resolver-target'),
  );
  static const ipamInternetRegistryAssociation = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-internet-registry-association'),
  );
  static const secondaryInterface = LaunchTemplateResourceType._(
    TfArgLiteral('secondary-interface'),
  );
  static const secondaryNetwork = LaunchTemplateResourceType._(
    TfArgLiteral('secondary-network'),
  );
  static const secondarySubnet = LaunchTemplateResourceType._(
    TfArgLiteral('secondary-subnet'),
  );
  static const capacityManagerDataExport = LaunchTemplateResourceType._(
    TfArgLiteral('capacity-manager-data-export'),
  );
  static const vpnConcentrator = LaunchTemplateResourceType._(
    TfArgLiteral('vpn-concentrator'),
  );
  static const ipamPoolAllocation = LaunchTemplateResourceType._(
    TfArgLiteral('ipam-pool-allocation'),
  );
  static const capacityReservationCancellationQuote =
      LaunchTemplateResourceType._(
        TfArgLiteral('capacity-reservation-cancellation-quote'),
      );
  static const applicationStatusCheck = LaunchTemplateResourceType._(
    TfArgLiteral('application-status-check'),
  );

  static const List<LaunchTemplateResourceType> values = [
    capacityReservation,
    clientVpnEndpoint,
    customerGateway,
    carrierGateway,
    coipPool,
    declarativePoliciesReport,
    dedicatedHost,
    dhcpOptions,
    egressOnlyInternetGateway,
    elasticIp,
    elasticGpu,
    exportImageTask,
    exportInstanceTask,
    fleet,
    fpgaImage,
    hostReservation,
    image,
    imageUsageReport,
    importImageTask,
    importSnapshotTask,
    instance,
    instanceEventWindow,
    internetGateway,
    ipam,
    ipamPool,
    ipamScope,
    ipv4poolEc2,
    ipv6poolEc2,
    keyPair,
    launchTemplate,
    localGateway,
    localGatewayRouteTable,
    localGatewayVirtualInterface,
    localGatewayVirtualInterfaceGroup,
    localGatewayRouteTableVpcAssociation,
    localGatewayRouteTableVirtualInterfaceGroupAssociation,
    natgateway,
    networkAcl,
    networkInterface,
    networkInsightsAnalysis,
    networkInsightsPath,
    networkInsightsAccessScope,
    networkInsightsAccessScopeAnalysis,
    outpostLag,
    placementGroup,
    prefixList,
    replaceRootVolumeTask,
    reservedInstances,
    routeTable,
    securityGroup,
    securityGroupRule,
    serviceLinkVirtualInterface,
    snapshot,
    spotFleetRequest,
    spotInstancesRequest,
    subnet,
    subnetCidrReservation,
    trafficMirrorFilter,
    trafficMirrorSession,
    trafficMirrorTarget,
    transitGateway,
    transitGatewayAttachment,
    transitGatewayConnectPeer,
    transitGatewayMulticastDomain,
    transitGatewayPolicyTable,
    transitGatewayMeteringPolicy,
    transitGatewayRouteTable,
    transitGatewayRouteTableAnnouncement,
    volume,
    vpc,
    vpcEndpoint,
    vpcEndpointConnection,
    vpcEndpointService,
    vpcEndpointServicePermission,
    vpcPeeringConnection,
    vpnConnection,
    vpnGateway,
    vpcFlowLog,
    capacityReservationFleet,
    trafficMirrorFilterRule,
    vpcEndpointConnectionDeviceType,
    verifiedAccessInstance,
    verifiedAccessGroup,
    verifiedAccessEndpoint,
    verifiedAccessPolicy,
    verifiedAccessTrustProvider,
    vpnConnectionDeviceType,
    vpcBlockPublicAccessExclusion,
    vpcEncryptionControl,
    routeServer,
    routeServerEndpoint,
    routeServerPeer,
    ipamResourceDiscovery,
    ipamResourceDiscoveryAssociation,
    instanceConnectEndpoint,
    verifiedAccessEndpointTarget,
    ipamExternalResourceVerificationToken,
    capacityBlock,
    macModificationTask,
    ipamPrefixListResolver,
    ipamPolicy,
    ipamPrefixListResolverTarget,
    ipamInternetRegistryAssociation,
    secondaryInterface,
    secondaryNetwork,
    secondarySubnet,
    capacityManagerDataExport,
    vpnConcentrator,
    ipamPoolAllocation,
    capacityReservationCancellationQuote,
    applicationStatusCheck,
  ];
}

/// Factory wrapper for `aws_launch_template`.
final class AwsLaunchTemplate extends Resource {
  static const String tfType = 'aws_launch_template';

  AwsLaunchTemplate(
    super.localName, {
    LaunchTemplateDefaultVersion? defaultVersion,
    TfArg<String>? description,
    TfArg<bool>? disableApiStop,
    TfArg<bool>? disableApiTermination,
    TfArg<String>? ebsOptimized,
    TfArg<String>? imageId,
    LaunchTemplateInstanceInitiatedShutdownBehavior?
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
