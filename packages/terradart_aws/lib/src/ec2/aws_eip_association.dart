// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eip_association`.
const Set<String> _awsEipAssociationSensitive = <String>{};

/// Factory wrapper for `aws_eip_association`.
final class AwsEipAssociation extends Resource {
  static const String tfType = 'aws_eip_association';

  AwsEipAssociation({
    required super.localName,
    TfArg<String>? allocationId,
    TfArg<bool>? allowReassociation,
    TfArg<String>? instanceId,
    TfArg<String>? networkInterfaceId,
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
           if (instanceId != null) 'instance_id': instanceId,
           if (networkInterfaceId != null)
             'network_interface_id': networkInterfaceId,
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
