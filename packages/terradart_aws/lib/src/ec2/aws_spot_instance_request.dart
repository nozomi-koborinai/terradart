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
extension type const SpotInstanceRequestTenancy._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestTenancy.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestTenancy.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestTenancy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = SpotInstanceRequestTenancy._(
    TfArgLiteral('default'),
  );
  static const dedicated = SpotInstanceRequestTenancy._(
    TfArgLiteral('dedicated'),
  );
  static const host = SpotInstanceRequestTenancy._(TfArgLiteral('host'));

  static const List<SpotInstanceRequestTenancy> values = [
    defaultCase,
    dedicated,
    host,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotInstanceRequestPlacement.hostResourceGroupArn] choice: sets `host_resource_group_arn`.
final class SpotInstanceRequestPlacementHostResourceGroupArn
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementHostResourceGroupArn(
    this.hostResourceGroupArn,
  );

  final TfArg<String> hostResourceGroupArn;

  @internal
  @override
  String get blockKey => 'host_resource_group_arn';

  @internal
  @override
  Map<String, Object?> encode() => {
    'host_resource_group_arn': hostResourceGroupArn.toTfJson(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'placement_group';

  @internal
  @override
  Map<String, Object?> encode() => {
    'placement_group': placementGroup.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'placement_group': placementGroup};
}

/// The [SpotInstanceRequestPlacement.placementGroupId] choice: sets `placement_group_id`.
final class SpotInstanceRequestPlacementGroupId
    extends SpotInstanceRequestPlacement {
  const SpotInstanceRequestPlacementGroupId(this.placementGroupId);

  final TfArg<String> placementGroupId;

  @internal
  @override
  String get blockKey => 'placement_group_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'placement_group_id': placementGroupId.toTfJson(),
  };

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpotInstanceRequestUserData.userData] choice: sets `user_data`.
final class SpotInstanceRequestUserDataChoice
    extends SpotInstanceRequestUserData {
  const SpotInstanceRequestUserDataChoice(this.userData);

  final TfArg<String> userData;

  @internal
  @override
  String get blockKey => 'user_data';

  @internal
  @override
  Map<String, Object?> encode() => {'user_data': userData.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'user_data': userData};
}

/// The [SpotInstanceRequestUserData.userDataBase64] choice: sets `user_data_base64`.
final class SpotInstanceRequestUserDataBase64
    extends SpotInstanceRequestUserData {
  const SpotInstanceRequestUserDataBase64(this.userDataBase64);

  final TfArg<String> userDataBase64;

  @internal
  @override
  String get blockKey => 'user_data_base64';

  @internal
  @override
  Map<String, Object?> encode() => {
    'user_data_base64': userDataBase64.toTfJson(),
  };

  @internal
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
    SpotInstanceRequestCapacityReservationPreference
    capacityReservationPreference,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference;

  /// Sets `capacity_reservation_target`.
  const factory SpotInstanceRequestCapacityReservationSpecification.capacityReservationTarget(
    SpotInstanceRequestCapacityReservationTarget capacityReservationTarget,
  ) = SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestCapacityReservationSpecification.capacityReservationPreference] choice: sets `capacity_reservation_preference`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference
    extends SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference(
    this.capacityReservationPreference,
  );

  final SpotInstanceRequestCapacityReservationPreference
  capacityReservationPreference;

  @internal
  @override
  String get blockKey => 'capacity_reservation_preference';

  @internal
  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_preference': capacityReservationPreference.toTfJson(),
  };
}

/// The [SpotInstanceRequestCapacityReservationSpecification.capacityReservationTarget] choice: sets `capacity_reservation_target`.
final class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget
    extends SpotInstanceRequestCapacityReservationSpecification {
  const SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget(
    this.capacityReservationTarget,
  );

  final SpotInstanceRequestCapacityReservationTarget capacityReservationTarget;

  @internal
  @override
  String get blockKey => 'capacity_reservation_target';

  @internal
  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_target': capacityReservationTarget.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
extension type const SpotInstanceRequestCapacityReservationPreference._(
  TfArg<String> _
) implements TfArg<String> {
  SpotInstanceRequestCapacityReservationPreference.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestCapacityReservationPreference.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestCapacityReservationPreference.arg(TfArg<String> arg)
    : this._(arg);

  static const capacityReservationsOnly =
      SpotInstanceRequestCapacityReservationPreference._(
        TfArgLiteral('capacity-reservations-only'),
      );
  static const open = SpotInstanceRequestCapacityReservationPreference._(
    TfArgLiteral('open'),
  );
  static const none = SpotInstanceRequestCapacityReservationPreference._(
    TfArgLiteral('none'),
  );

  static const List<SpotInstanceRequestCapacityReservationPreference> values = [
    capacityReservationsOnly,
    open,
    none,
  ];
}

/// At most one of `capacity_reservation_id`, `capacity_reservation_resource_group_arn` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_spot_instance_request`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationId(...)`.
sealed class SpotInstanceRequestCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationTarget();

  /// Sets `capacity_reservation_id`.
  const factory SpotInstanceRequestCapacityReservationTarget.capacityReservationId(
    TfArg<String> capacityReservationId,
  ) = SpotInstanceRequestCapacityReservationTargetCapacityReservationId;

  /// Sets `capacity_reservation_resource_group_arn`.
  const factory SpotInstanceRequestCapacityReservationTarget.capacityReservationResourceGroupArn(
    TfArg<String> capacityReservationResourceGroupArn,
  ) = SpotInstanceRequestCapacityReservationTargetCapacityReservationResourceGroupArn;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestCapacityReservationTarget.capacityReservationId] choice: sets `capacity_reservation_id`.
final class SpotInstanceRequestCapacityReservationTargetCapacityReservationId
    extends SpotInstanceRequestCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationTargetCapacityReservationId(
    this.capacityReservationId,
  );

  final TfArg<String> capacityReservationId;

  @internal
  @override
  String get blockKey => 'capacity_reservation_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_id': capacityReservationId.toTfJson(),
  };
}

/// The [SpotInstanceRequestCapacityReservationTarget.capacityReservationResourceGroupArn] choice: sets `capacity_reservation_resource_group_arn`.
final class SpotInstanceRequestCapacityReservationTargetCapacityReservationResourceGroupArn
    extends SpotInstanceRequestCapacityReservationTarget {
  const SpotInstanceRequestCapacityReservationTargetCapacityReservationResourceGroupArn(
    this.capacityReservationResourceGroupArn,
  );

  final TfArg<String> capacityReservationResourceGroupArn;

  @internal
  @override
  String get blockKey => 'capacity_reservation_resource_group_arn';

  @internal
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

  final SpotInstanceRequestAmdSevSnp? amdSevSnp;

  final TfArg<num>? coreCount;

  final SpotInstanceRequestNestedVirtualization? nestedVirtualization;

  final TfArg<num>? threadsPerCore;

  @internal
  Map<String, Object?> encode() => {
    'amd_sev_snp': ?amdSevSnp?.toTfJson(),
    'core_count': ?coreCount?.toTfJson(),
    'nested_virtualization': ?nestedVirtualization?.toTfJson(),
    'threads_per_core': ?threadsPerCore?.toTfJson(),
  };
}

/// `amd_sev_snp` — derived from the provider schema description.
extension type const SpotInstanceRequestAmdSevSnp._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestAmdSevSnp.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestAmdSevSnp.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestAmdSevSnp.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SpotInstanceRequestAmdSevSnp._(
    TfArgLiteral('enabled'),
  );
  static const disabled = SpotInstanceRequestAmdSevSnp._(
    TfArgLiteral('disabled'),
  );

  static const List<SpotInstanceRequestAmdSevSnp> values = [enabled, disabled];
}

/// `nested_virtualization` — derived from the provider schema description.
extension type const SpotInstanceRequestNestedVirtualization._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestNestedVirtualization.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestNestedVirtualization.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestNestedVirtualization.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SpotInstanceRequestNestedVirtualization._(
    TfArgLiteral('enabled'),
  );
  static const disabled = SpotInstanceRequestNestedVirtualization._(
    TfArgLiteral('disabled'),
  );

  static const List<SpotInstanceRequestNestedVirtualization> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `credit_specification` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestCreditSpecification {
  const SpotInstanceRequestCreditSpecification({this.cpuCredits});

  final SpotInstanceRequestCpuCredits? cpuCredits;

  @internal
  Map<String, Object?> encode() => {'cpu_credits': ?cpuCredits?.toTfJson()};
}

/// `cpu_credits` — derived from the provider schema description.
extension type const SpotInstanceRequestCpuCredits._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestCpuCredits.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestCpuCredits.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestCpuCredits.arg(TfArg<String> arg) : this._(arg);

  static const standard = SpotInstanceRequestCpuCredits._(
    TfArgLiteral('standard'),
  );
  static const unlimited = SpotInstanceRequestCpuCredits._(
    TfArgLiteral('unlimited'),
  );

  static const List<SpotInstanceRequestCpuCredits> values = [
    standard,
    unlimited,
  ];
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

  final SpotInstanceRequestVolumeType? volumeType;

  @internal
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
extension type const SpotInstanceRequestVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = SpotInstanceRequestVolumeType._(
    TfArgLiteral('standard'),
  );
  static const io1 = SpotInstanceRequestVolumeType._(TfArgLiteral('io1'));
  static const io2 = SpotInstanceRequestVolumeType._(TfArgLiteral('io2'));
  static const gp2 = SpotInstanceRequestVolumeType._(TfArgLiteral('gp2'));
  static const sc1 = SpotInstanceRequestVolumeType._(TfArgLiteral('sc1'));
  static const st1 = SpotInstanceRequestVolumeType._(TfArgLiteral('st1'));
  static const gp3 = SpotInstanceRequestVolumeType._(TfArgLiteral('gp3'));

  static const List<SpotInstanceRequestVolumeType> values = [
    standard,
    io1,
    io2,
    gp2,
    sc1,
    st1,
    gp3,
  ];
}

/// Typed helper for the `enclave_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestEnclaveOptions {
  const SpotInstanceRequestEnclaveOptions({this.enabled});

  final TfArg<bool>? enabled;

  @internal
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

  @internal
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

  final SpotInstanceRequestIdentifier identifier;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    ...identifier.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// Exactly one of `id`, `name` on the `launch_template` block of `aws_spot_instance_request`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class SpotInstanceRequestIdentifier {
  const SpotInstanceRequestIdentifier();

  /// Sets `id`.
  const factory SpotInstanceRequestIdentifier.id(TfArg<String> id) =
      SpotInstanceRequestIdentifierId;

  /// Sets `name`.
  const factory SpotInstanceRequestIdentifier.name(TfArg<String> name) =
      SpotInstanceRequestIdentifierName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SpotInstanceRequestIdentifier.id] choice: sets `id`.
final class SpotInstanceRequestIdentifierId
    extends SpotInstanceRequestIdentifier {
  const SpotInstanceRequestIdentifierId(this.id);

  final TfArg<String> id;

  @internal
  @override
  String get blockKey => 'id';

  @internal
  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [SpotInstanceRequestIdentifier.name] choice: sets `name`.
final class SpotInstanceRequestIdentifierName
    extends SpotInstanceRequestIdentifier {
  const SpotInstanceRequestIdentifierName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `maintenance_options` block of
/// `aws_spot_instance_request` (derived from provider schema).
@immutable
final class SpotInstanceRequestMaintenanceOptions {
  const SpotInstanceRequestMaintenanceOptions({this.autoRecovery});

  final SpotInstanceRequestAutoRecovery? autoRecovery;

  @internal
  Map<String, Object?> encode() => {'auto_recovery': ?autoRecovery?.toTfJson()};
}

/// `auto_recovery` — derived from the provider schema description.
extension type const SpotInstanceRequestAutoRecovery._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestAutoRecovery.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestAutoRecovery.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestAutoRecovery.arg(TfArg<String> arg) : this._(arg);

  static const disabled = SpotInstanceRequestAutoRecovery._(
    TfArgLiteral('disabled'),
  );
  static const defaultCase = SpotInstanceRequestAutoRecovery._(
    TfArgLiteral('default'),
  );

  static const List<SpotInstanceRequestAutoRecovery> values = [
    disabled,
    defaultCase,
  ];
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

  final SpotInstanceRequestHttpEndpoint? httpEndpoint;

  final SpotInstanceRequestHttpProtocolIpv6? httpProtocolIpv6;

  final TfArg<num>? httpPutResponseHopLimit;

  final SpotInstanceRequestHttpTokens? httpTokens;

  final SpotInstanceRequestInstanceMetadataTags? instanceMetadataTags;

  @internal
  Map<String, Object?> encode() => {
    'http_endpoint': ?httpEndpoint?.toTfJson(),
    'http_protocol_ipv6': ?httpProtocolIpv6?.toTfJson(),
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
    'instance_metadata_tags': ?instanceMetadataTags?.toTfJson(),
  };
}

/// `http_endpoint` — derived from the provider schema description.
extension type const SpotInstanceRequestHttpEndpoint._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestHttpEndpoint.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestHttpEndpoint.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestHttpEndpoint.arg(TfArg<String> arg) : this._(arg);

  static const disabled = SpotInstanceRequestHttpEndpoint._(
    TfArgLiteral('disabled'),
  );
  static const enabled = SpotInstanceRequestHttpEndpoint._(
    TfArgLiteral('enabled'),
  );

  static const List<SpotInstanceRequestHttpEndpoint> values = [
    disabled,
    enabled,
  ];
}

/// `http_protocol_ipv6` — derived from the provider schema description.
extension type const SpotInstanceRequestHttpProtocolIpv6._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestHttpProtocolIpv6.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestHttpProtocolIpv6.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestHttpProtocolIpv6.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = SpotInstanceRequestHttpProtocolIpv6._(
    TfArgLiteral('disabled'),
  );
  static const enabled = SpotInstanceRequestHttpProtocolIpv6._(
    TfArgLiteral('enabled'),
  );

  static const List<SpotInstanceRequestHttpProtocolIpv6> values = [
    disabled,
    enabled,
  ];
}

/// `http_tokens` — derived from the provider schema description.
extension type const SpotInstanceRequestHttpTokens._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestHttpTokens.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestHttpTokens.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestHttpTokens.arg(TfArg<String> arg) : this._(arg);

  static const optional = SpotInstanceRequestHttpTokens._(
    TfArgLiteral('optional'),
  );
  static const required = SpotInstanceRequestHttpTokens._(
    TfArgLiteral('required'),
  );

  static const List<SpotInstanceRequestHttpTokens> values = [
    optional,
    required,
  ];
}

/// `instance_metadata_tags` — derived from the provider schema description.
extension type const SpotInstanceRequestInstanceMetadataTags._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestInstanceMetadataTags.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestInstanceMetadataTags.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestInstanceMetadataTags.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = SpotInstanceRequestInstanceMetadataTags._(
    TfArgLiteral('disabled'),
  );
  static const enabled = SpotInstanceRequestInstanceMetadataTags._(
    TfArgLiteral('enabled'),
  );

  static const List<SpotInstanceRequestInstanceMetadataTags> values = [
    disabled,
    enabled,
  ];
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

  @internal
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

  final SpotInstanceRequestHostnameType? hostnameType;

  @internal
  Map<String, Object?> encode() => {
    'enable_resource_name_dns_a_record': ?enableResourceNameDnsARecord
        ?.toTfJson(),
    'enable_resource_name_dns_aaaa_record': ?enableResourceNameDnsAaaaRecord
        ?.toTfJson(),
    'hostname_type': ?hostnameType?.toTfJson(),
  };
}

/// `hostname_type` — derived from the provider schema description.
extension type const SpotInstanceRequestHostnameType._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestHostnameType.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestHostnameType.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestHostnameType.arg(TfArg<String> arg) : this._(arg);

  static const ipName = SpotInstanceRequestHostnameType._(
    TfArgLiteral('ip-name'),
  );
  static const resourceName = SpotInstanceRequestHostnameType._(
    TfArgLiteral('resource-name'),
  );

  static const List<SpotInstanceRequestHostnameType> values = [
    ipName,
    resourceName,
  ];
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

  final SpotInstanceRequestVolumeType? volumeType;

  @internal
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

  final SpotInstanceRequestInterfaceType? interfaceType;

  final TfArg<num> networkCardIndex;

  final TfArg<num>? privateIpAddressCount;

  final TfArg<String> secondarySubnetId;

  @internal
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
extension type const SpotInstanceRequestInterfaceType._(TfArg<String> _)
    implements TfArg<String> {
  SpotInstanceRequestInterfaceType.variable(String name)
    : this._(TfArg.variable(name));
  SpotInstanceRequestInterfaceType.expression(String template)
    : this._(TfArg.expression(template));
  const SpotInstanceRequestInterfaceType.arg(TfArg<String> arg) : this._(arg);

  static const secondary = SpotInstanceRequestInterfaceType._(
    TfArgLiteral('secondary'),
  );

  static const List<SpotInstanceRequestInterfaceType> values = [secondary];
}

/// Factory wrapper for `aws_spot_instance_request`.
final class AwsSpotInstanceRequest extends Resource {
  static const String tfType = 'aws_spot_instance_request';

  AwsSpotInstanceRequest(
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
    SpotInstanceRequestTenancy? tenancy,
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

  /// Reference to `instance_interruption_behavior` attribute.
  TfRef<String> get instanceInterruptionBehavior =>
      TfRef.attribute<String>(this, 'instance_interruption_behavior');

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

  /// Reference to `launch_group` attribute.
  TfRef<String> get launchGroup =>
      TfRef.attribute<String>(this, 'launch_group');

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

  /// Reference to `spot_price` attribute.
  TfRef<String> get spotPrice => TfRef.attribute<String>(this, 'spot_price');

  /// Reference to `spot_type` attribute.
  TfRef<String> get spotType => TfRef.attribute<String>(this, 'spot_type');

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

  /// Reference to `valid_from` attribute.
  TfRef<String> get validFrom => TfRef.attribute<String>(this, 'valid_from');

  /// Reference to `valid_until` attribute.
  TfRef<String> get validUntil => TfRef.attribute<String>(this, 'valid_until');

  /// Reference to `volume_tags` attribute.
  TfRef<Map<String, String>> get volumeTags =>
      TfRef.attribute<Map<String, String>>(this, 'volume_tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `wait_for_fulfillment` attribute.
  TfRef<bool> get waitForFulfillment =>
      TfRef.attribute<bool>(this, 'wait_for_fulfillment');
}
