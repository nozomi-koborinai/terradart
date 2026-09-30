// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_spot_instance_request`.
const Set<String> _awsSpotInstanceRequestSensitive = <String>{};

/// Spot Instance Request enum for `tenancy`.
enum SpotInstanceRequestTenancy implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated'),
  host('host');

  const SpotInstanceRequestTenancy(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `host_resource_group_arn`, `placement_group`, `placement_group_id` on `aws_spot_instance_request`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostResourceGroupArn(...)`.
sealed class SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacement();

  /// Sets `host_resource_group_arn`.
  const factory SpotInstanceRequestPlacement.hostResourceGroupArn(
    TfArg<String> hostResourceGroupArn,
  ) = SpotInstanceRequestPlacementHostResourceGroupArn;

  /// Sets `placement_group`.
  const factory SpotInstanceRequestPlacement.placementGroup(
    TfArg<String> placementGroup,
  ) = SpotInstanceRequestPlacementGroup;

  /// Sets `placement_group_id`.
  const factory SpotInstanceRequestPlacement.placementGroupId(
    TfArg<String> placementGroupId,
  ) = SpotInstanceRequestPlacementGroupId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotInstanceRequestPlacement.hostResourceGroupArn] choice: sets `host_resource_group_arn`.
final class SpotInstanceRequestPlacementHostResourceGroupArn
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementHostResourceGroupArn(
    this.hostResourceGroupArn,
  );

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

/// The [SpotInstanceRequestPlacement.placementGroup] choice: sets `placement_group`.
final class SpotInstanceRequestPlacementGroup
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementGroup(this.placementGroup);

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

/// The [SpotInstanceRequestPlacement.placementGroupId] choice: sets `placement_group_id`.
final class SpotInstanceRequestPlacementGroupId
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementGroupId(this.placementGroupId);

  final TfArg<String> placementGroupId;

  @override
  String get blockKey => 'placement_group_id';

  @override
  Map<String, Object?> encode() => {
    'placement_group_id': placementGroupId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'placement_group_id': placementGroupId,
  };
}

/// At most one of `user_data`, `user_data_base64` on `aws_spot_instance_request`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.userData(...)`.
sealed class SpotInstanceRequestUserData {
  const SpotInstanceRequestUserData();

  /// Sets `user_data`.
  const factory SpotInstanceRequestUserData.userData(TfArg<String> userData) =
      SpotInstanceRequestUserDataChoice;

  /// Sets `user_data_base64`.
  const factory SpotInstanceRequestUserData.userDataBase64(
    TfArg<String> userDataBase64,
  ) = SpotInstanceRequestUserDataBase64;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotInstanceRequestUserData.userData] choice: sets `user_data`.
final class SpotInstanceRequestUserDataChoice
    extends SpotInstanceRequestUserData {
  const SpotInstanceRequestUserDataChoice(this.userData);

  final TfArg<String> userData;

  @override
  String get blockKey => 'user_data';

  @override
  Map<String, Object?> encode() => {'user_data': userData.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user_data': userData};
}

/// The [SpotInstanceRequestUserData.userDataBase64] choice: sets `user_data_base64`.
final class SpotInstanceRequestUserDataBase64
    extends SpotInstanceRequestUserData {
  const SpotInstanceRequestUserDataBase64(this.userDataBase64);

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

/// Exactly one of `capacity_reservation_preference`, `capacity_reservation_target` on the `capacity_reservation_specification` block of `aws_spot_instance_request`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.capacityReservationPreference(...)`.
sealed class SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecification();

  /// Sets `capacity_reservation_preference`.
  const factory SpotInstanceRequestCapacityReservationSpecification.capacityReservationPreference(
    TfArg<
      SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference
    >
    capacityReservationPreference,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreferenceChoice;

  /// Sets `capacity_reservation_target`.
  const factory SpotInstanceRequestCapacityReservationSpecification.capacityReservationTarget(
    SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget
    capacityReservationTarget,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestCapacityReservationSpecification.capacityReservationPreference] choice: sets `capacity_reservation_preference`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreferenceChoice
    extends SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreferenceChoice(
    this.capacityReservationPreference,
  );

  final TfArg<
    SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference
  >
  capacityReservationPreference;

  @override
  String get blockKey => 'capacity_reservation_preference';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_preference': capacityReservationPreference.toTfJson(),
  };
}

/// The [SpotInstanceRequestCapacityReservationSpecification.capacityReservationTarget] choice: sets `capacity_reservation_target`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetChoice
    extends SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetChoice(
    this.capacityReservationTarget,
  );

  final SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget
  capacityReservationTarget;

  @override
  String get blockKey => 'capacity_reservation_target';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_target': capacityReservationTarget.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
enum SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference
    implements TerraformEnum {
  capacityReservationsOnly('capacity-reservations-only'),
  open('open'),
  none('none');

  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// At most one of `capacity_reservation_id`, `capacity_reservation_resource_group_arn` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_spot_instance_request`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationId(...)`.
sealed class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget();

  /// Sets `capacity_reservation_id`.
  const factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.capacityReservationId(
    TfArg<String> capacityReservationId,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationId;

  /// Sets `capacity_reservation_resource_group_arn`.
  const factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.capacityReservationResourceGroupArn(
    TfArg<String> capacityReservationResourceGroupArn,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationResourceGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.capacityReservationId] choice: sets `capacity_reservation_id`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationId
    extends
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationId(
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

/// The [SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.capacityReservationResourceGroupArn] choice: sets `capacity_reservation_resource_group_arn`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationResourceGroupArn
    extends
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationResourceGroupArn(
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
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCpuOptions {
  const SpotInstanceRequestCpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.nestedVirtualization,
    this.threadsPerCore,
  });

  final TfArg<SpotInstanceRequestCpuOptionsAmdSevSnp>? amdSevSnp;

  final TfArg<num>? coreCount;

  final TfArg<SpotInstanceRequestCpuOptionsNestedVirtualization>?
  nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  Map<String, Object?> encode() => {
    'amd_sev_snp': ?amdSevSnp?.toTfJson(),
    'core_count': ?coreCount?.toTfJson(),
    'nested_virtualization': ?nestedVirtualization?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
  };
}

/// `amd_sev_snp` — derived from the provider schema description.
enum SpotInstanceRequestCpuOptionsAmdSevSnp implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const SpotInstanceRequestCpuOptionsAmdSevSnp(this.terraformValue);
  @override
  final String terraformValue;
}

/// `nested_virtualization` — derived from the provider schema description.
enum SpotInstanceRequestCpuOptionsNestedVirtualization
    implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const SpotInstanceRequestCpuOptionsNestedVirtualization(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `credit_specification` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCreditSpecification {
  const SpotInstanceRequestCreditSpecification({this.cpuCredits});

  final TfArg<SpotInstanceRequestCreditSpecificationCpuCredits>? cpuCredits;

  Map<String, Object?> encode() => {'cpu_credits': ?cpuCredits?.toTfJson()};
}

/// `cpu_credits` — derived from the provider schema description.
enum SpotInstanceRequestCreditSpecificationCpuCredits implements TerraformEnum {
  standard('standard'),
  unlimited('unlimited');

  const SpotInstanceRequestCreditSpecificationCpuCredits(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ebs_block_device` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEbsBlockDevice {
  const SpotInstanceRequestEbsBlockDevice({
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

  final TfArg<SpotInstanceRequestEbsBlockDeviceVolumeType>? volumeType;

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
enum SpotInstanceRequestEbsBlockDeviceVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const SpotInstanceRequestEbsBlockDeviceVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `enclave_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEnclaveOptions {
  const SpotInstanceRequestEnclaveOptions({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `ephemeral_block_device` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEphemeralBlockDevice {
  const SpotInstanceRequestEphemeralBlockDevice({
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

/// Typed helper for the `launch_template` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestLaunchTemplate {
  const SpotInstanceRequestLaunchTemplate({
    required this.identifier,
    this.version,
  });

  final SpotInstanceRequestLaunchTemplateIdentifier identifier;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...identifier.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// Exactly one of `id`, `name` on the `launch_template` block of `aws_spot_instance_request`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class SpotInstanceRequestLaunchTemplateIdentifier {
  const SpotInstanceRequestLaunchTemplateIdentifier();

  /// Sets `id`.
  const factory SpotInstanceRequestLaunchTemplateIdentifier.id(
    TfArg<String> id,
  ) = SpotInstanceRequestLaunchTemplateIdentifierId;

  /// Sets `name`.
  const factory SpotInstanceRequestLaunchTemplateIdentifier.name(
    TfArg<String> name,
  ) = SpotInstanceRequestLaunchTemplateIdentifierName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestLaunchTemplateIdentifier.id] choice: sets `id`.
final class SpotInstanceRequestLaunchTemplateIdentifierId
    extends SpotInstanceRequestLaunchTemplateIdentifier {
  const SpotInstanceRequestLaunchTemplateIdentifierId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [SpotInstanceRequestLaunchTemplateIdentifier.name] choice: sets `name`.
final class SpotInstanceRequestLaunchTemplateIdentifierName
    extends SpotInstanceRequestLaunchTemplateIdentifier {
  const SpotInstanceRequestLaunchTemplateIdentifierName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `maintenance_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestMaintenanceOptions {
  const SpotInstanceRequestMaintenanceOptions({this.autoRecovery});

  final TfArg<SpotInstanceRequestMaintenanceOptionsAutoRecovery>? autoRecovery;

  Map<String, Object?> encode() => {'auto_recovery': ?autoRecovery?.toTfJson()};
}

/// `auto_recovery` — derived from the provider schema description.
enum SpotInstanceRequestMaintenanceOptionsAutoRecovery
    implements TerraformEnum {
  disabled('disabled'),
  defaultCase('default');

  const SpotInstanceRequestMaintenanceOptionsAutoRecovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestMetadataOptions {
  const SpotInstanceRequestMetadataOptions({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
  });

  final TfArg<SpotInstanceRequestMetadataOptionsHttpEndpoint>? httpEndpoint;

  final TfArg<SpotInstanceRequestMetadataOptionsHttpProtocolIpv6>?
  httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<SpotInstanceRequestMetadataOptionsHttpTokens>? httpTokens;

  final TfArg<SpotInstanceRequestMetadataOptionsInstanceMetadataTags>?
  instanceMetadataTags;

  Map<String, Object?> encode() => {
    'http_endpoint': ?httpEndpoint?.toTfJson(),
    'http_protocol_ipv6': ?httpProtocolIpv6?.toTfJson(),
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
    'instance_metadata_tags': ?instanceMetadataTags?.toTfJson(),
  };
}

/// `http_endpoint` — derived from the provider schema description.
enum SpotInstanceRequestMetadataOptionsHttpEndpoint implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const SpotInstanceRequestMetadataOptionsHttpEndpoint(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_protocol_ipv6` — derived from the provider schema description.
enum SpotInstanceRequestMetadataOptionsHttpProtocolIpv6
    implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const SpotInstanceRequestMetadataOptionsHttpProtocolIpv6(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_tokens` — derived from the provider schema description.
enum SpotInstanceRequestMetadataOptionsHttpTokens implements TerraformEnum {
  optional('optional'),
  required('required');

  const SpotInstanceRequestMetadataOptionsHttpTokens(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_metadata_tags` — derived from the provider schema description.
enum SpotInstanceRequestMetadataOptionsInstanceMetadataTags
    implements TerraformEnum {
  disabled('disabled'),
  enabled('enabled');

  const SpotInstanceRequestMetadataOptionsInstanceMetadataTags(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `network_interface` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestNetworkInterface {
  const SpotInstanceRequestNetworkInterface({
    this.deleteOnTermination,
    required this.deviceIndex,
    required this.networkInterfaceId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num> deviceIndex;

  final TfArg<String> networkInterfaceId;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_index': deviceIndex.toTfJson(),
    'network_interface_id': networkInterfaceId.toTfJson(),
  };
}

/// Typed helper for the `private_dns_name_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestPrivateDnsNameOptions {
  const SpotInstanceRequestPrivateDnsNameOptions({
    this.enableResourceNameDnsARecord,
    this.enableResourceNameDnsAaaaRecord,
    this.hostnameType,
  });

  final TfArg<bool>? enableResourceNameDnsARecord;

  final TfArg<bool>? enableResourceNameDnsAaaaRecord;

  final TfArg<SpotInstanceRequestPrivateDnsNameOptionsHostnameType>?
  hostnameType;

  Map<String, Object?> encode() => {
    'enable_resource_name_dns_a_record': ?enableResourceNameDnsARecord
        ?.toTfJson(),
    'enable_resource_name_dns_aaaa_record': ?enableResourceNameDnsAaaaRecord
        ?.toTfJson(),
    'hostname_type': ?hostnameType?.toTfJson(),
  };
}

/// `hostname_type` — derived from the provider schema description.
enum SpotInstanceRequestPrivateDnsNameOptionsHostnameType
    implements TerraformEnum {
  ipName('ip-name'),
  resourceName('resource-name');

  const SpotInstanceRequestPrivateDnsNameOptionsHostnameType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `root_block_device` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestRootBlockDevice {
  const SpotInstanceRequestRootBlockDevice({
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

  final TfArg<SpotInstanceRequestRootBlockDeviceVolumeType>? volumeType;

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

/// `volume_type` — derived from the provider schema description.
enum SpotInstanceRequestRootBlockDeviceVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const SpotInstanceRequestRootBlockDeviceVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `secondary_network_interface` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestSecondaryNetworkInterface {
  const SpotInstanceRequestSecondaryNetworkInterface({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    required this.networkCardIndex,
    this.privateIpAddressCount,
    required this.secondarySubnetId,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<num>? deviceIndex;

  final TfArg<SpotInstanceRequestSecondaryNetworkInterfaceInterfaceType>?
  interfaceType;

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

/// `interface_type` — derived from the provider schema description.
enum SpotInstanceRequestSecondaryNetworkInterfaceInterfaceType
    implements TerraformEnum {
  secondary('secondary');

  const SpotInstanceRequestSecondaryNetworkInterfaceInterfaceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_spot_instance_request`.
final class AwsSpotInstanceRequest extends Resource {
  static const String tfType = 'aws_spot_instance_request';

  AwsSpotInstanceRequest({
    required super.localName,
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
    SpotInstanceRequestPlacement? placement,
    TfArg<String>? iamInstanceProfile,
    TfArg<String>? instanceInitiatedShutdownBehavior,
    TfArg<String>? instanceInterruptionBehavior,
    TfArg<String>? instanceType,
    TfArg<num>? ipv6AddressCount,
    TfArg<List<String>>? ipv6Addresses,
    TfArg<String>? keyName,
    TfArg<String>? launchGroup,
    TfArg<bool>? monitoring,
    TfArg<num>? placementPartitionNumber,
    TfArg<String>? privateIp,
    TfArg<String>? region,
    TfArg<List<String>>? secondaryPrivateIps,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    TfArg<bool>? sourceDestCheck,
    TfArg<String>? spotPrice,
    TfArg<String>? spotType,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<SpotInstanceRequestTenancy>? tenancy,
    SpotInstanceRequestUserData? userData,
    TfArg<bool>? userDataReplaceOnChange,
    TfArg<String>? validFrom,
    TfArg<String>? validUntil,
    TfArg<Map<String, String>>? volumeTags,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    TfArg<bool>? waitForFulfillment,
    SpotInstanceRequestCapacityReservationSpecification?
    capacityReservationSpecification,
    SpotInstanceRequestCpuOptions? cpuOptions,
    SpotInstanceRequestCreditSpecification? creditSpecification,
    List<SpotInstanceRequestEbsBlockDevice>? ebsBlockDevice,
    SpotInstanceRequestEnclaveOptions? enclaveOptions,
    List<SpotInstanceRequestEphemeralBlockDevice>? ephemeralBlockDevice,
    SpotInstanceRequestLaunchTemplate? launchTemplate,
    SpotInstanceRequestMaintenanceOptions? maintenanceOptions,
    SpotInstanceRequestMetadataOptions? metadataOptions,
    List<SpotInstanceRequestNetworkInterface>? networkInterface,
    SpotInstanceRequestPrivateDnsNameOptions? privateDnsNameOptions,
    SpotInstanceRequestRootBlockDevice? rootBlockDevice,
    List<SpotInstanceRequestSecondaryNetworkInterface>?
    secondaryNetworkInterface,
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
           'instance_interruption_behavior': ?instanceInterruptionBehavior,
           'instance_type': ?instanceType,
           'ipv6_address_count': ?ipv6AddressCount,
           'ipv6_addresses': ?ipv6Addresses,
           'key_name': ?keyName,
           'launch_group': ?launchGroup,
           'monitoring': ?monitoring,
           'placement_partition_number': ?placementPartitionNumber,
           'private_ip': ?privateIp,
           'region': ?region,
           'secondary_private_ips': ?secondaryPrivateIps,
           'security_groups': ?securityGroups?.encodeAs('name'),
           'source_dest_check': ?sourceDestCheck,
           'spot_price': ?spotPrice,
           'spot_type': ?spotType,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'tenancy': ?tenancy,
           ...?userData?.argMap,
           'user_data_replace_on_change': ?userDataReplaceOnChange,
           'valid_from': ?validFrom,
           'valid_until': ?validUntil,
           'volume_tags': ?volumeTags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
           'wait_for_fulfillment': ?waitForFulfillment,
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
  Set<String> get sensitiveFields => _awsSpotInstanceRequestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSpotInstanceRequest>`.
  RefTo<AwsSpotInstanceRequest> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `instance_state` attribute.
  TfRef<String> get instanceState =>
      TfRef.attribute<String>(this, 'instance_state');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `password_data` attribute.
  TfRef<String> get passwordData =>
      TfRef.attribute<String>(this, 'password_data');

  /// Reference to `primary_network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get primaryNetworkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'primary_network_interface',
      );

  /// Reference to `primary_network_interface_id` attribute.
  TfRef<String> get primaryNetworkInterfaceId =>
      TfRef.attribute<String>(this, 'primary_network_interface_id');

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `spot_bid_status` attribute.
  TfRef<String> get spotBidStatus =>
      TfRef.attribute<String>(this, 'spot_bid_status');

  /// Reference to `spot_instance_id` attribute.
  TfRef<String> get spotInstanceId =>
      TfRef.attribute<String>(this, 'spot_instance_id');

  /// Reference to `spot_request_state` attribute.
  TfRef<String> get spotRequestState =>
      TfRef.attribute<String>(this, 'spot_request_state');

  /// Reference to `ami` attribute.
  TfRef<String> get amiRef => TfRef.attribute<String>(this, 'ami');

  /// Reference to `associate_public_ip_address` attribute.
  TfRef<bool> get associatePublicIpAddressRef =>
      TfRef.attribute<bool>(this, 'associate_public_ip_address');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZoneRef =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `disable_api_stop` attribute.
  TfRef<bool> get disableApiStopRef =>
      TfRef.attribute<bool>(this, 'disable_api_stop');

  /// Reference to `disable_api_termination` attribute.
  TfRef<bool> get disableApiTerminationRef =>
      TfRef.attribute<bool>(this, 'disable_api_termination');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimizedRef =>
      TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `enable_primary_ipv6` attribute.
  TfRef<bool> get enablePrimaryIpv6Ref =>
      TfRef.attribute<bool>(this, 'enable_primary_ipv6');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `get_password_data` attribute.
  TfRef<bool> get getPasswordDataRef =>
      TfRef.attribute<bool>(this, 'get_password_data');

  /// Reference to `hibernation` attribute.
  TfRef<bool> get hibernationRef => TfRef.attribute<bool>(this, 'hibernation');

  /// Reference to `host_id` attribute.
  TfRef<String> get hostIdRef => TfRef.attribute<String>(this, 'host_id');

  /// Reference to `host_resource_group_arn` attribute.
  TfRef<String> get hostResourceGroupArnRef =>
      TfRef.attribute<String>(this, 'host_resource_group_arn');

  /// Reference to `iam_instance_profile` attribute.
  TfRef<String> get iamInstanceProfileRef =>
      TfRef.attribute<String>(this, 'iam_instance_profile');

  /// Reference to `instance_initiated_shutdown_behavior` attribute.
  TfRef<String> get instanceInitiatedShutdownBehaviorRef =>
      TfRef.attribute<String>(this, 'instance_initiated_shutdown_behavior');

  /// Reference to `instance_interruption_behavior` attribute.
  TfRef<String> get instanceInterruptionBehaviorRef =>
      TfRef.attribute<String>(this, 'instance_interruption_behavior');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceTypeRef =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `ipv6_address_count` attribute.
  TfRef<num> get ipv6AddressCountRef =>
      TfRef.attribute<num>(this, 'ipv6_address_count');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6AddressesRef =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyNameRef => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `launch_group` attribute.
  TfRef<String> get launchGroupRef =>
      TfRef.attribute<String>(this, 'launch_group');

  /// Reference to `monitoring` attribute.
  TfRef<bool> get monitoringRef => TfRef.attribute<bool>(this, 'monitoring');

  /// Reference to `placement_group` attribute.
  TfRef<String> get placementGroupRef =>
      TfRef.attribute<String>(this, 'placement_group');

  /// Reference to `placement_group_id` attribute.
  TfRef<String> get placementGroupIdRef =>
      TfRef.attribute<String>(this, 'placement_group_id');

  /// Reference to `placement_partition_number` attribute.
  TfRef<num> get placementPartitionNumberRef =>
      TfRef.attribute<num>(this, 'placement_partition_number');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIpRef => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `secondary_private_ips` attribute.
  TfRef<List<String>> get secondaryPrivateIpsRef =>
      TfRef.attribute<List<String>>(this, 'secondary_private_ips');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroupsRef =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `source_dest_check` attribute.
  TfRef<bool> get sourceDestCheckRef =>
      TfRef.attribute<bool>(this, 'source_dest_check');

  /// Reference to `spot_price` attribute.
  TfRef<String> get spotPriceRef => TfRef.attribute<String>(this, 'spot_price');

  /// Reference to `spot_type` attribute.
  TfRef<String> get spotTypeRef => TfRef.attribute<String>(this, 'spot_type');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetIdRef => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancyRef => TfRef.attribute<String>(this, 'tenancy');

  /// Reference to `user_data` attribute.
  TfRef<String> get userDataRef => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `user_data_base64` attribute.
  TfRef<String> get userDataBase64Ref =>
      TfRef.attribute<String>(this, 'user_data_base64');

  /// Reference to `user_data_replace_on_change` attribute.
  TfRef<bool> get userDataReplaceOnChangeRef =>
      TfRef.attribute<bool>(this, 'user_data_replace_on_change');

  /// Reference to `valid_from` attribute.
  TfRef<String> get validFromRef => TfRef.attribute<String>(this, 'valid_from');

  /// Reference to `valid_until` attribute.
  TfRef<String> get validUntilRef =>
      TfRef.attribute<String>(this, 'valid_until');

  /// Reference to `volume_tags` attribute.
  TfRef<Map<String, String>> get volumeTagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'volume_tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `wait_for_fulfillment` attribute.
  TfRef<bool> get waitForFulfillmentRef =>
      TfRef.attribute<bool>(this, 'wait_for_fulfillment');
}
