// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eip`.
const Set<String> _awsEipSensitive = <String>{};

/// Factory wrapper for `aws_eip`.
final class AwsEip extends Resource {
  static const String tfType = 'aws_eip';

  AwsEip({
    required super.localName,
    TfArg<String>? address,
    TfArg<String>? associateWithPrivateIp,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<String>? domain,
    TfArg<String>? instance,
    TfArg<String>? ipamPoolId,
    TfArg<String>? networkBorderGroup,
    TfArg<String>? networkInterface,
    TfArg<String>? publicIpv4Pool,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (address != null) 'address': address,
           if (associateWithPrivateIp != null)
             'associate_with_private_ip': associateWithPrivateIp,
           if (customerOwnedIpv4Pool != null)
             'customer_owned_ipv4_pool': customerOwnedIpv4Pool,
           if (domain != null) 'domain': domain,
           if (instance != null) 'instance': instance,
           if (ipamPoolId != null) 'ipam_pool_id': ipamPoolId,
           if (networkBorderGroup != null)
             'network_border_group': networkBorderGroup,
           if (networkInterface != null) 'network_interface': networkInterface,
           if (publicIpv4Pool != null) 'public_ipv4_pool': publicIpv4Pool,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_id` attribute.
  TfRef<String> get allocationId =>
      TfRef.attribute<String>(this, 'allocation_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `carrier_ip` attribute.
  TfRef<String> get carrierIp => TfRef.attribute<String>(this, 'carrier_ip');

  /// Reference to `customer_owned_ip` attribute.
  TfRef<String> get customerOwnedIp =>
      TfRef.attribute<String>(this, 'customer_owned_ip');

  /// Reference to `private_dns` attribute.
  TfRef<String> get privateDns => TfRef.attribute<String>(this, 'private_dns');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `ptr_record` attribute.
  TfRef<String> get ptrRecord => TfRef.attribute<String>(this, 'ptr_record');

  /// Reference to `public_dns` attribute.
  TfRef<String> get publicDns => TfRef.attribute<String>(this, 'public_dns');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');
}
