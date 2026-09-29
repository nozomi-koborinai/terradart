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
  ) = SpotInstanceRequestPlacementPlacementGroup;

  /// Sets `placement_group_id`.
  const factory SpotInstanceRequestPlacement.placementGroupId(
    TfArg<String> placementGroupId,
  ) = SpotInstanceRequestPlacementPlacementGroupId;

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
final class SpotInstanceRequestPlacementPlacementGroup
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementPlacementGroup(this.placementGroup);

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
final class SpotInstanceRequestPlacementPlacementGroupId
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementPlacementGroupId(this.placementGroupId);

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
      SpotInstanceRequestUserDataUserData;

  /// Sets `user_data_base64`.
  const factory SpotInstanceRequestUserData.userDataBase64(
    TfArg<String> userDataBase64,
  ) = SpotInstanceRequestUserDataUserDataBase64;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotInstanceRequestUserData.userData] choice: sets `user_data`.
final class SpotInstanceRequestUserDataUserData
    extends SpotInstanceRequestUserData {
  const SpotInstanceRequestUserDataUserData(this.userData);

  final TfArg<String> userData;

  @override
  String get blockKey => 'user_data';

  @override
  Map<String, Object?> encode() => {'user_data': userData.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user_data': userData};
}

/// The [SpotInstanceRequestUserData.userDataBase64] choice: sets `user_data_base64`.
final class SpotInstanceRequestUserDataUserDataBase64
    extends SpotInstanceRequestUserData {
  const SpotInstanceRequestUserDataUserDataBase64(this.userDataBase64);

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

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecification({
    required this.capacityReservation,
  });

  final SpotInstanceRequestCapacityReservationSpecificationCapacityReservation
  capacityReservation;

  Map<String, Object?> encode() => {...capacityReservation.encode()};
}

/// Exactly one of `capacity_reservation_preference`, `capacity_reservation_target` on the `capacity_reservation_specification` block of `aws_spot_instance_request`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.capacityReservationPreference(...)`.
sealed class SpotInstanceRequestCapacityReservationSpecificationCapacityReservation {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservation();

  /// Sets `capacity_reservation_preference`.
  const factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservation.capacityReservationPreference(
    TfArg<
      SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference
    >
    capacityReservationPreference,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationCapacityReservationPreference;

  /// Sets `capacity_reservation_target`.
  const factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservation.capacityReservationTarget(
    SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget
    capacityReservationTarget,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationCapacityReservationTarget;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestCapacityReservationSpecificationCapacityReservation.capacityReservationPreference] choice: sets `capacity_reservation_preference`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationCapacityReservationPreference
    extends
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservation {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationCapacityReservationPreference(
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

/// The [SpotInstanceRequestCapacityReservationSpecificationCapacityReservation.capacityReservationTarget] choice: sets `capacity_reservation_target`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationCapacityReservationTarget
    extends
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservation {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationCapacityReservationTarget(
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

/// Typed helper for the `capacity_reservation_specification.capacity_reservation_target` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservation,
  });

  final SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation?
  capacityReservation;

  Map<String, Object?> encode() => {...?capacityReservation?.encode()};
}

/// At most one of `capacity_reservation_id`, `capacity_reservation_resource_group_arn` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_spot_instance_request`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationId(...)`.
sealed class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation();

  /// Sets `capacity_reservation_id`.
  const factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationId(
    TfArg<String> capacityReservationId,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationId;

  /// Sets `capacity_reservation_resource_group_arn`.
  const factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationResourceGroupArn(
    TfArg<String> capacityReservationResourceGroupArn,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationResourceGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationId] choice: sets `capacity_reservation_id`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationId
    extends
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationId(
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

/// The [SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationResourceGroupArn] choice: sets `capacity_reservation_resource_group_arn`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationResourceGroupArn
    extends
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservation {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationResourceGroupArn(
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
    required this.template,
    this.version,
  });

  final SpotInstanceRequestLaunchTemplateTemplate template;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...template.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// Exactly one of `id`, `name` on the `launch_template` block of `aws_spot_instance_request`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class SpotInstanceRequestLaunchTemplateTemplate {
  const SpotInstanceRequestLaunchTemplateTemplate();

  /// Sets `id`.
  const factory SpotInstanceRequestLaunchTemplateTemplate.id(TfArg<String> id) =
      SpotInstanceRequestLaunchTemplateTemplateId;

  /// Sets `name`.
  const factory SpotInstanceRequestLaunchTemplateTemplate.name(
    TfArg<String> name,
  ) = SpotInstanceRequestLaunchTemplateTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestLaunchTemplateTemplate.id] choice: sets `id`.
final class SpotInstanceRequestLaunchTemplateTemplateId
    extends SpotInstanceRequestLaunchTemplateTemplate {
  const SpotInstanceRequestLaunchTemplateTemplateId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [SpotInstanceRequestLaunchTemplateTemplate.name] choice: sets `name`.
final class SpotInstanceRequestLaunchTemplateTemplateName
    extends SpotInstanceRequestLaunchTemplateTemplate {
  const SpotInstanceRequestLaunchTemplateTemplateName(this.name);

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
}
