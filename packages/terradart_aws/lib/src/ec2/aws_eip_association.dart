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
sealed class EipAssociationInstanceIdOrNetworkInterfaceId {
  const EipAssociationInstanceIdOrNetworkInterfaceId();

  /// Sets `instance_id`.
  const factory EipAssociationInstanceIdOrNetworkInterfaceId.instanceId(
    TfArg<String> instanceId,
  ) = EipAssociationInstanceIdOrNetworkInterfaceIdInstanceId;

  /// Sets `network_interface_id`.
  const factory EipAssociationInstanceIdOrNetworkInterfaceId.networkInterfaceId(
    TfArg<String> networkInterfaceId,
  ) = EipAssociationInstanceIdOrNetworkInterfaceIdNetworkInterfaceId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EipAssociationInstanceIdOrNetworkInterfaceId.instanceId] choice: sets `instance_id`.
final class EipAssociationInstanceIdOrNetworkInterfaceIdInstanceId
    extends EipAssociationInstanceIdOrNetworkInterfaceId {
  const EipAssociationInstanceIdOrNetworkInterfaceIdInstanceId(this.instanceId);

  final TfArg<String> instanceId;

  @override
  String get blockKey => 'instance_id';

  @override
  Map<String, Object?> encode() => {'instance_id': instanceId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'instance_id': instanceId};
}

/// The [EipAssociationInstanceIdOrNetworkInterfaceId.networkInterfaceId] choice: sets `network_interface_id`.
final class EipAssociationInstanceIdOrNetworkInterfaceIdNetworkInterfaceId
    extends EipAssociationInstanceIdOrNetworkInterfaceId {
  const EipAssociationInstanceIdOrNetworkInterfaceIdNetworkInterfaceId(
    this.networkInterfaceId,
  );

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
    required EipAssociationInstanceIdOrNetworkInterfaceId
    instanceIdOrNetworkInterfaceId,
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
           if (allocationId != null) 'allocation_id': allocationId,
           if (allowReassociation != null)
             'allow_reassociation': allowReassociation,
           ...instanceIdOrNetworkInterfaceId.argMap,
           if (privateIpAddress != null) 'private_ip_address': privateIpAddress,
           if (publicIp != null) 'public_ip': publicIp,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEipAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
