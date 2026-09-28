// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eip_association`.
const Set<String> _awsEipAssociationSensitive = <String>{};

/// Exactly one of `instance_id`, `network_interface_id` on `aws_eip_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class EipAssociationInstanceIdOrNetworkInterfaceId {
  const EipAssociationInstanceIdOrNetworkInterfaceId();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `instance_id` (one of the [EipAssociationInstanceIdOrNetworkInterfaceId] choices).
final class EipAssociationInstanceIdOption
    extends EipAssociationInstanceIdOrNetworkInterfaceId {
  const EipAssociationInstanceIdOption({required this.instanceId});

  final TfArg<String> instanceId;

  @override
  String get blockKey => 'instance_id';

  @override
  Map<String, Object?> encode() => {'instance_id': instanceId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'instance_id': instanceId};
}

/// Sets `network_interface_id` (one of the [EipAssociationInstanceIdOrNetworkInterfaceId] choices).
final class EipAssociationNetworkInterfaceIdOption
    extends EipAssociationInstanceIdOrNetworkInterfaceId {
  const EipAssociationNetworkInterfaceIdOption({
    required this.networkInterfaceId,
  });

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
