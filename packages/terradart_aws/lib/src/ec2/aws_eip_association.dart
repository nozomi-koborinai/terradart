// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eip_association`.
const Set<String> _awsEipAssociationSensitive = <String>{};

/// Exactly one of `instance_id`, `network_interface_id` on `aws_eip_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.instanceId(...)`.
sealed class EipAssociationTarget {
  const EipAssociationTarget();

  /// Sets `instance_id`.
  const factory EipAssociationTarget.instanceId(TfArg<String> instanceId) =
      EipAssociationTargetInstanceId;

  /// Sets `network_interface_id`.
  const factory EipAssociationTarget.networkInterfaceId(
    TfArg<String> networkInterfaceId,
  ) = EipAssociationTargetNetworkInterfaceId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EipAssociationTarget.instanceId] choice: sets `instance_id`.
final class EipAssociationTargetInstanceId extends EipAssociationTarget {
  const EipAssociationTargetInstanceId(this.instanceId);

  final TfArg<String> instanceId;

  @override
  String get blockKey => 'instance_id';

  @override
  Map<String, Object?> encode() => {'instance_id': instanceId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'instance_id': instanceId};
}

/// The [EipAssociationTarget.networkInterfaceId] choice: sets `network_interface_id`.
final class EipAssociationTargetNetworkInterfaceId
    extends EipAssociationTarget {
  const EipAssociationTargetNetworkInterfaceId(this.networkInterfaceId);

  final TfArg<String> networkInterfaceId;

  @override
  String get blockKey => 'network_interface_id';

  @override
  Map<String, Object?> encode() => {
    'network_interface_id': networkInterfaceId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_interface_id': networkInterfaceId,
  };
}

/// Factory wrapper for `aws_eip_association`.
final class AwsEipAssociation extends Resource {
  static const String tfType = 'aws_eip_association';

  AwsEipAssociation({
    required super.localName,
    TfArg<String>? allocationId,
    TfArg<bool>? allowReassociation,
    required EipAssociationTarget target,
    TfArg<String>? privateIpAddress,
    TfArg<String>? publicIp,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_id': ?allocationId,
           'allow_reassociation': ?allowReassociation,
           ...target.argMap,
           'private_ip_address': ?privateIpAddress,
           'public_ip': ?publicIp,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEipAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEipAssociation>`.
  RefTo<AwsEipAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_id` attribute.
  TfRef<String> get allocationIdRef =>
      TfRef.attribute<String>(this, 'allocation_id');

  /// Reference to `allow_reassociation` attribute.
  TfRef<bool> get allowReassociationRef =>
      TfRef.attribute<bool>(this, 'allow_reassociation');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceIdRef =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddressRef =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIpRef => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
