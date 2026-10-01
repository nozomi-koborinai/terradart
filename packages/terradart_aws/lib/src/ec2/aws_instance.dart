// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_instance`.
const Set<String> _awsInstanceSensitive = <String>{};

/// Instance enum for `tenancy`.
enum InstanceTenancy implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated'),
  host('host');

  const InstanceTenancy(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `host_resource_group_arn`, `placement_group` on `aws_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostResourceGroupArn(...)`.
sealed class InstancePlacement {
  const InstancePlacement();

  /// Sets `host_resource_group_arn`.
  const factory InstancePlacement.hostResourceGroupArn(
    TfArg<String> hostResourceGroupArn,
  ) = InstancePlacementHostResourceGroupArn;

  /// Sets `placement_group`.
  const factory InstancePlacement.placementGroup(TfArg<String> placementGroup) =
      InstancePlacementGroup;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [InstancePlacement.hostResourceGroupArn] choice: sets `host_resource_group_arn`.
final class InstancePlacementHostResourceGroupArn extends InstancePlacement {
  const InstancePlacementHostResourceGroupArn(this.hostResourceGroupArn);

  final TfArg<String> hostResourceGroupArn;

  @override
  String get blockKey => 'host_resource_group_arn';

  @override
  Map<String, Object?> encode() => {
    'host_resource_group_arn': hostResourceGroupArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'host_resource_group_arn': hostResourceGroupArn,
  };
}

/// The [InstancePlacement.placementGroup] choice: sets `placement_group`.
final class InstancePlacementGroup extends InstancePlacement {
  const InstancePlacementGroup(this.placementGroup);

  final TfArg<String> placementGroup;

  @override
  String get blockKey => 'placement_group';

  @override
  Map<String, Object?> encode() => {
    'placement_group': placementGroup.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'placement_group': placementGroup};
}

/// At most one of `user_data`, `user_data_base64` on `aws_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.userData(...)`.
sealed class InstanceUserData {
  const InstanceUserData();

  /// Sets `user_data`.
  const factory InstanceUserData.userData(TfArg<String> userData) =
      InstanceUserDataChoice;

  /// Sets `user_data_base64`.
  const factory InstanceUserData.userDataBase64(TfArg<String> userDataBase64) =
      InstanceUserDataBase64;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [InstanceUserData.userData] choice: sets `user_data`.
final class InstanceUserDataChoice extends InstanceUserData {
  const InstanceUserDataChoice(this.userData);

  final TfArg<String> userData;

  @override
  String get blockKey => 'user_data';

  @override
  Map<String, Object?> encode() => {'user_data': userData.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user_data': userData};
}

/// The [InstanceUserData.userDataBase64] choice: sets `user_data_base64`.
final class InstanceUserDataBase64 extends InstanceUserData {
  const InstanceUserDataBase64(this.userDataBase64);

  final TfArg<String> userDataBase64;

  @override
  String get blockKey => 'user_data_base64';

  @override
  Map<String, Object?> encode() => {
    'user_data_base64': userDataBase64.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'user_data_base64': userDataBase64,
  };
}

/// Exactly one of `capacity_reservation_preference`, `capacity_reservation_target` on the `capacity_reservation_specification` block of `aws_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.capacityReservationPreference(...)`.
sealed class InstanceCapacityReservationSpecification {
  const InstanceCapacityReservationSpecification();

  /// Sets `capacity_reservation_preference`.
  const factory InstanceCapacityReservationSpecification.capacityReservationPreference(
    TfArg<InstanceCapacityReservationPreference> capacityReservationPreference,
  ) = InstanceCapacityReservationSpecificationCapacityReservationPreference;

  /// Sets `capacity_reservation_target`.
  const factory InstanceCapacityReservationSpecification.capacityReservationTarget(
    InstanceCapacityReservationTarget capacityReservationTarget,
  ) = InstanceCapacityReservationSpecificationCapacityReservationTarget;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [InstanceCapacityReservationSpecification.capacityReservationPreference] choice: sets `capacity_reservation_preference`.
final class InstanceCapacityReservationSpecificationCapacityReservationPreference
    extends InstanceCapacityReservationSpecification {
  const InstanceCapacityReservationSpecificationCapacityReservationPreference(
    this.capacityReservationPreference,
  );

  final TfArg<InstanceCapacityReservationPreference>
  capacityReservationPreference;

  @override
  String get blockKey => 'capacity_reservation_preference';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_preference': capacityReservationPreference.toTfJson(),
  };
}

/// The [InstanceCapacityReservationSpecification.capacityReservationTarget] choice: sets `capacity_reservation_target`.
final class InstanceCapacityReservationSpecificationCapacityReservationTarget
    extends InstanceCapacityReservationSpecification {
  const InstanceCapacityReservationSpecificationCapacityReservationTarget(
    this.capacityReservationTarget,
  );

  final InstanceCapacityReservationTarget capacityReservationTarget;

  @override
  String get blockKey => 'capacity_reservation_target';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_target': capacityReservationTarget.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
enum InstanceCapacityReservationPreference implements TerraformEnum {
  capacityReservationsOnly('capacity-reservations-only'),
  open('open'),
  none('none');

  const InstanceCapacityReservationPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `capacity_reservation_id`, `capacity_reservation_resource_group_arn` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationId(...)`.
sealed class InstanceCapacityReservationTarget {
  const InstanceCapacityReservationTarget();

  /// Sets `capacity_reservation_id`.
  const factory InstanceCapacityReservationTarget.capacityReservationId(
    TfArg<String> capacityReservationId,
  ) = InstanceCapacityReservationTargetCapacityReservationId;

  /// Sets `capacity_reservation_resource_group_arn`.
  const factory InstanceCapacityReservationTarget.capacityReservationResourceGroupArn(
    TfArg<String> capacityReservationResourceGroupArn,
  ) = InstanceCapacityReservationTargetCapacityReservationResourceGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [InstanceCapacityReservationTarget.capacityReservationId] choice: sets `capacity_reservation_id`.
final class InstanceCapacityReservationTargetCapacityReservationId
    extends InstanceCapacityReservationTarget {
  const InstanceCapacityReservationTargetCapacityReservationId(
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

/// The [InstanceCapacityReservationTarget.capacityReservationResourceGroupArn] choice: sets `capacity_reservation_resource_group_arn`.
final class InstanceCapacityReservationTargetCapacityReservationResourceGroupArn
    extends InstanceCapacityReservationTarget {
  const InstanceCapacityReservationTargetCapacityReservationResourceGroupArn(
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
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceCpuOptions {
  const InstanceCpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.nestedVirtualization,
    this.threadsPerCore,
  });

  final TfArg<InstanceAmdSevSnp>? amdSevSnp;

  final TfArg<num>? coreCount;

  final TfArg<String>? nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    'amd_sev_snp': ?amdSevSnp?.toTfJson(),
    'core_count': ?coreCount?.toTfJson(),
    'nested_virtualization': ?nestedVirtualization?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
  };
}

/// `amd_sev_snp` — derived from the provider schema description.
enum InstanceAmdSevSnp implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const InstanceAmdSevSnp(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `credit_specification` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceCreditSpecification {
  const InstanceCreditSpecification({this.cpuCredits});

  final TfArg<InstanceCpuCredits>? cpuCredits;

  Map<String, Object?> encode() => {'cpu_credits': ?cpuCredits?.toTfJson()};
}

/// `cpu_credits` — derived from the provider schema description.
enum InstanceCpuCredits implements TerraformEnum {
  standard('standard'),
  unlimited('unlimited');

  const InstanceCpuCredits(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ebs_block_device` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceEbsBlockDevice {
  const InstanceEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.tags,
    this.tagsAll,
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

  final TfArg<Map<String, String>>? tags;

  final TfArg<Map<String, String>>? tagsAll;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<InstanceVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'tags_all': ?tagsAll?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum InstanceVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const InstanceVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `enclave_options` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceEnclaveOptions {
  const InstanceEnclaveOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `ephemeral_block_device` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceEphemeralBlockDevice {
  const InstanceEphemeralBlockDevice({
    required this.deviceName,
    this.noDevice,
    this.virtualName,
  });

  final TfArg<String> deviceName;

  final TfArg<bool>? noDevice;

  final TfArg<String>? virtualName;

  Map<String, Object?> encode() => {
    'device_name': deviceName.toTfJson(),
    'no_device': ?noDevice?.toTfJson(),
    'virtual_name': ?virtualName?.toTfJson(),
  };
}

/// Typed helper for the `instance_market_options` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceMarketOptions {
  const InstanceMarketOptions({this.marketType, this.spotOptions});

  final TfArg<InstanceMarketType>? marketType;

  final InstanceSpotOptions? spotOptions;

  Map<String, Object?> encode() => {
    'market_type': ?marketType?.toTfJson(),
    'spot_options': ?spotOptions?.encode(),
  };
}

/// `market_type` — derived from the provider schema description.
enum InstanceMarketType implements TerraformEnum {
  spot('spot'),
  capacityBlock('capacity-block'),
  interruptibleCapacityReservation('interruptible-capacity-reservation'),
  onDemand('on-demand');

  const InstanceMarketType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_market_options.spot_options` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceSpotOptions {
  const InstanceSpotOptions({
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  final TfArg<InstanceInterruptionBehavior>? instanceInterruptionBehavior;

  final TfArg<String>? maxPrice;

  final TfArg<InstanceSpotInstanceType>? spotInstanceType;

  final TfArg<String>? validUntil;

  Map<String, Object?> encode() => {
    'instance_interruption_behavior': ?instanceInterruptionBehavior?.toTfJson(),
    'max_price': ?maxPrice?.toTfJson(),
    'spot_instance_type': ?spotInstanceType?.toTfJson(),
    'valid_until': ?validUntil?.toTfJson(),
  };
}

/// `instance_interruption_behavior` — derived from the provider schema description.
enum InstanceInterruptionBehavior implements TerraformEnum {
  hibernate('hibernate'),
  stop('stop'),
  terminate('terminate');

  const InstanceInterruptionBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// `spot_instance_type` — derived from the provider schema description.
enum InstanceSpotInstanceType implements TerraformEnum {
  oneTime('one-time'),
  persistent('persistent');

  const InstanceSpotInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `launch_template` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceLaunchTemplate {
  const InstanceLaunchTemplate({required this.identifier, this.version});

  final InstanceIdentifier identifier;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...identifier.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// Exactly one of `id`, `name` on the `launch_template` block of `aws_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class InstanceIdentifier {
  const InstanceIdentifier();

  /// Sets `id`.
  const factory InstanceIdentifier.id(TfArg<String> id) = InstanceIdentifierId;

  /// Sets `name`.
  const factory InstanceIdentifier.name(TfArg<String> name) =
      InstanceIdentifierName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [InstanceIdentifier.id] choice: sets `id`.
final class InstanceIdentifierId extends InstanceIdentifier {
  const InstanceIdentifierId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [InstanceIdentifier.name] choice: sets `name`.
final class InstanceIdentifierName extends InstanceIdentifier {
  const InstanceIdentifierName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `maintenance_options` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceMaintenanceOptions {
  const InstanceMaintenanceOptions({this.autoRecovery});

  final TfArg<InstanceAutoRecovery>? autoRecovery;

  Map<String, Object?> encode() => {'auto_recovery': ?autoRecovery?.toTfJson()};
}

/// `auto_recovery` — derived from the provider schema description.
enum InstanceAutoRecovery implements TerraformEnum {
  disabled('disabled'),
  defaultCase('default');

  const InstanceAutoRecovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_options` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceMetadataOptions {
  const InstanceMetadataOptions({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
  });

  final TfArg<InstanceHttpEndpoint>? httpEndpoint;

  final TfArg<InstanceHttpProtocolIpv6>? httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<InstanceHttpTokens>? httpTokens;

  final TfArg<InstanceMetadataTags>? instanceMetadataTags;

  Map<String, Object?> encode() => {
    'http_endpoint': ?httpEndpoint?.toTfJson(),
    'http_protocol_ipv6': ?httpProtocolIpv6?.toTfJson(),
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
    'instance_metadata_tags': ?instanceMetadataTags?.toTfJson(),
  };
}

/// `http_endpoint` — derived from the provider schema description.
enum InstanceHttpEndpoint implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const InstanceHttpEndpoint(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_protocol_ipv6` — derived from the provider schema description.
enum InstanceHttpProtocolIpv6 implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const InstanceHttpProtocolIpv6(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_tokens` — derived from the provider schema description.
enum InstanceHttpTokens implements TerraformEnum {
  optional('optional'),
  required('required');

  const InstanceHttpTokens(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_metadata_tags` — derived from the provider schema description.
enum InstanceMetadataTags implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const InstanceMetadataTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interface` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceNetworkInterface {
  const InstanceNetworkInterface({
    this.deleteOnTermination,
    required this.deviceIndex,
    this.networkCardIndex,
    required this.networkInterfaceId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num> deviceIndex;

  final TfArg<num>? networkCardIndex;

  final TfArg<String> networkInterfaceId;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_index': deviceIndex.toTfJson(),
    'network_card_index': ?networkCardIndex?.toTfJson(),
    'network_interface_id': networkInterfaceId.toTfJson(),
  };
}

/// Typed helper for the `primary_network_interface` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstancePrimaryNetworkInterface {
  const InstancePrimaryNetworkInterface({required this.networkInterfaceId});

  final TfArg<String> networkInterfaceId;

  Map<String, Object?> encode() => {
    'network_interface_id': networkInterfaceId.toTfJson(),
  };
}

/// Typed helper for the `private_dns_name_options` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstancePrivateDnsNameOptions {
  const InstancePrivateDnsNameOptions({
    this.enableResourceNameDnsARecord,
    this.enableResourceNameDnsAaaaRecord,
    this.hostnameType,
  });

  final TfArg<bool>? enableResourceNameDnsARecord;

  final TfArg<bool>? enableResourceNameDnsAaaaRecord;

  final TfArg<InstanceHostnameType>? hostnameType;

  Map<String, Object?> encode() => {
    'enable_resource_name_dns_a_record': ?enableResourceNameDnsARecord
        ?.toTfJson(),
    'enable_resource_name_dns_aaaa_record': ?enableResourceNameDnsAaaaRecord
        ?.toTfJson(),
    'hostname_type': ?hostnameType?.toTfJson(),
  };
}

/// `hostname_type` — derived from the provider schema description.
enum InstanceHostnameType implements TerraformEnum {
  ipName('ip-name'),
  resourceName('resource-name');

  const InstanceHostnameType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `root_block_device` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceRootBlockDevice {
  const InstanceRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.tags,
    this.tagsAll,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<Map<String, String>>? tagsAll;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<InstanceVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'tags_all': ?tagsAll?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// Typed helper for the `secondary_network_interface` block of
/// `aws_instance` (derived from provider schema).
@immutable
final class InstanceSecondaryNetworkInterface {
  const InstanceSecondaryNetworkInterface({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    required this.networkCardIndex,
    this.privateIpAddressCount,
    required this.secondarySubnetId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num>? deviceIndex;

  final TfArg<String>? interfaceType;

  final TfArg<num> networkCardIndex;

  final TfArg<num>? privateIpAddressCount;

  final TfArg<String> secondarySubnetId;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_index': ?deviceIndex?.toTfJson(),
    'interface_type': ?interfaceType?.toTfJson(),
    'network_card_index': networkCardIndex.toTfJson(),
    'private_ip_address_count': ?privateIpAddressCount?.toTfJson(),
    'secondary_subnet_id': secondarySubnetId.toTfJson(),
  };
}

/// Factory wrapper for `aws_instance`.
final class AwsInstance extends Resource {
  static const String tfType = 'aws_instance';

  AwsInstance(
    super.localName, {
    TfArg<String>? ami,
    TfArg<bool>? associatePublicIpAddress,
    TfArg<String>? availabilityZone,
    TfArg<bool>? disableApiStop,
    TfArg<bool>? disableApiTermination,
    TfArg<bool>? ebsOptimized,
    TfArg<bool>? enablePrimaryIpv6,
    TfArg<bool>? forceDestroy,
    TfArg<bool>? getPasswordData,
    TfArg<bool>? hibernation,
    TfArg<String>? hostId,
    InstancePlacement? placement,
    TfArg<String>? iamInstanceProfile,
    TfArg<String>? instanceInitiatedShutdownBehavior,
    TfArg<String>? instanceType,
    TfArg<num>? ipv6AddressCount,
    TfArg<List<String>>? ipv6Addresses,
    TfArg<String>? keyName,
    TfArg<bool>? monitoring,
    TfArg<String>? placementGroupId,
    TfArg<num>? placementPartitionNumber,
    TfArg<String>? privateIp,
    TfArg<String>? region,
    TfArg<List<String>>? secondaryPrivateIps,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    TfArg<bool>? sourceDestCheck,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<InstanceTenancy>? tenancy,
    InstanceUserData? userData,
    TfArg<bool>? userDataReplaceOnChange,
    TfArg<Map<String, String>>? volumeTags,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    InstanceCapacityReservationSpecification? capacityReservationSpecification,
    InstanceCpuOptions? cpuOptions,
    InstanceCreditSpecification? creditSpecification,
    List<InstanceEbsBlockDevice>? ebsBlockDevice,
    InstanceEnclaveOptions? enclaveOptions,
    List<InstanceEphemeralBlockDevice>? ephemeralBlockDevice,
    InstanceMarketOptions? instanceMarketOptions,
    InstanceLaunchTemplate? launchTemplate,
    InstanceMaintenanceOptions? maintenanceOptions,
    InstanceMetadataOptions? metadataOptions,
    List<InstanceNetworkInterface>? networkInterface,
    InstancePrimaryNetworkInterface? primaryNetworkInterface,
    InstancePrivateDnsNameOptions? privateDnsNameOptions,
    InstanceRootBlockDevice? rootBlockDevice,
    List<InstanceSecondaryNetworkInterface>? secondaryNetworkInterface,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ami': ?ami,
           'associate_public_ip_address': ?associatePublicIpAddress,
           'availability_zone': ?availabilityZone,
           'disable_api_stop': ?disableApiStop,
           'disable_api_termination': ?disableApiTermination,
           'ebs_optimized': ?ebsOptimized,
           'enable_primary_ipv6': ?enablePrimaryIpv6,
           'force_destroy': ?forceDestroy,
           'get_password_data': ?getPasswordData,
           'hibernation': ?hibernation,
           'host_id': ?hostId,
           ...?placement?.argMap,
           'iam_instance_profile': ?iamInstanceProfile,
           'instance_initiated_shutdown_behavior':
               ?instanceInitiatedShutdownBehavior,
           'instance_type': ?instanceType,
           'ipv6_address_count': ?ipv6AddressCount,
           'ipv6_addresses': ?ipv6Addresses,
           'key_name': ?keyName,
           'monitoring': ?monitoring,
           'placement_group_id': ?placementGroupId,
           'placement_partition_number': ?placementPartitionNumber,
           'private_ip': ?privateIp,
           'region': ?region,
           'secondary_private_ips': ?secondaryPrivateIps,
           'security_groups': ?securityGroups?.encodeAs('name'),
           'source_dest_check': ?sourceDestCheck,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'tenancy': ?tenancy,
           ...?userData?.argMap,
           'user_data_replace_on_change': ?userDataReplaceOnChange,
           'volume_tags': ?volumeTags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
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
           if (ebsBlockDevice != null)
             'ebs_block_device': TfArg.literal([
               for (final e in ebsBlockDevice) e.encode(),
             ]),
           if (enclaveOptions != null)
             'enclave_options': TfArg.literal(enclaveOptions.encode()),
           if (ephemeralBlockDevice != null)
             'ephemeral_block_device': TfArg.literal([
               for (final e in ephemeralBlockDevice) e.encode(),
             ]),
           if (instanceMarketOptions != null)
             'instance_market_options': TfArg.literal(
               instanceMarketOptions.encode(),
             ),
           if (launchTemplate != null)
             'launch_template': TfArg.literal(launchTemplate.encode()),
           if (maintenanceOptions != null)
             'maintenance_options': TfArg.literal(maintenanceOptions.encode()),
           if (metadataOptions != null)
             'metadata_options': TfArg.literal(metadataOptions.encode()),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (primaryNetworkInterface != null)
             'primary_network_interface': TfArg.literal(
               primaryNetworkInterface.encode(),
             ),
           if (privateDnsNameOptions != null)
             'private_dns_name_options': TfArg.literal(
               privateDnsNameOptions.encode(),
             ),
           if (rootBlockDevice != null)
             'root_block_device': TfArg.literal(rootBlockDevice.encode()),
           if (secondaryNetworkInterface != null)
             'secondary_network_interface': TfArg.literal([
               for (final e in secondaryNetworkInterface) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsInstance>`.
  RefTo<AwsInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `instance_lifecycle` attribute.
  TfRef<String> get instanceLifecycle =>
      TfRef.attribute<String>(this, 'instance_lifecycle');

  /// Reference to `instance_state` attribute.
  TfRef<String> get instanceState =>
      TfRef.attribute<String>(this, 'instance_state');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `password_data` attribute.
  TfRef<String> get passwordData =>
      TfRef.attribute<String>(this, 'password_data');

  /// Reference to `primary_network_interface_id` attribute.
  TfRef<String> get primaryNetworkInterfaceId =>
      TfRef.attribute<String>(this, 'primary_network_interface_id');

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `spot_instance_request_id` attribute.
  TfRef<String> get spotInstanceRequestId =>
      TfRef.attribute<String>(this, 'spot_instance_request_id');

  /// Reference to `ami` attribute.
  TfRef<String> get ami => TfRef.attribute<String>(this, 'ami');

  /// Reference to `associate_public_ip_address` attribute.
  TfRef<bool> get associatePublicIpAddress =>
      TfRef.attribute<bool>(this, 'associate_public_ip_address');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `disable_api_stop` attribute.
  TfRef<bool> get disableApiStop =>
      TfRef.attribute<bool>(this, 'disable_api_stop');

  /// Reference to `disable_api_termination` attribute.
  TfRef<bool> get disableApiTermination =>
      TfRef.attribute<bool>(this, 'disable_api_termination');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `enable_primary_ipv6` attribute.
  TfRef<bool> get enablePrimaryIpv6 =>
      TfRef.attribute<bool>(this, 'enable_primary_ipv6');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `get_password_data` attribute.
  TfRef<bool> get getPasswordData =>
      TfRef.attribute<bool>(this, 'get_password_data');

  /// Reference to `hibernation` attribute.
  TfRef<bool> get hibernation => TfRef.attribute<bool>(this, 'hibernation');

  /// Reference to `host_id` attribute.
  TfRef<String> get hostId => TfRef.attribute<String>(this, 'host_id');

  /// Reference to `host_resource_group_arn` attribute.
  TfRef<String> get hostResourceGroupArn =>
      TfRef.attribute<String>(this, 'host_resource_group_arn');

  /// Reference to `iam_instance_profile` attribute.
  TfRef<String> get iamInstanceProfile =>
      TfRef.attribute<String>(this, 'iam_instance_profile');

  /// Reference to `instance_initiated_shutdown_behavior` attribute.
  TfRef<String> get instanceInitiatedShutdownBehavior =>
      TfRef.attribute<String>(this, 'instance_initiated_shutdown_behavior');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `ipv6_address_count` attribute.
  TfRef<num> get ipv6AddressCount =>
      TfRef.attribute<num>(this, 'ipv6_address_count');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `monitoring` attribute.
  TfRef<bool> get monitoring => TfRef.attribute<bool>(this, 'monitoring');

  /// Reference to `placement_group` attribute.
  TfRef<String> get placementGroup =>
      TfRef.attribute<String>(this, 'placement_group');

  /// Reference to `placement_group_id` attribute.
  TfRef<String> get placementGroupId =>
      TfRef.attribute<String>(this, 'placement_group_id');

  /// Reference to `placement_partition_number` attribute.
  TfRef<num> get placementPartitionNumber =>
      TfRef.attribute<num>(this, 'placement_partition_number');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secondary_private_ips` attribute.
  TfRef<List<String>> get secondaryPrivateIps =>
      TfRef.attribute<List<String>>(this, 'secondary_private_ips');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `source_dest_check` attribute.
  TfRef<bool> get sourceDestCheck =>
      TfRef.attribute<bool>(this, 'source_dest_check');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `user_data_base64` attribute.
  TfRef<String> get userDataBase64 =>
      TfRef.attribute<String>(this, 'user_data_base64');

  /// Reference to `user_data_replace_on_change` attribute.
  TfRef<bool> get userDataReplaceOnChange =>
      TfRef.attribute<bool>(this, 'user_data_replace_on_change');

  /// Reference to `volume_tags` attribute.
  TfRef<Map<String, String>> get volumeTags =>
      TfRef.attribute<Map<String, String>>(this, 'volume_tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
