// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool_cidr`.
const Set<String> _awsVpcIpamPoolCidrSensitive = <String>{};

/// Typed helper for the `cidr_authorization_context` block of
/// `aws_vpc_ipam_pool_cidr` (derived from provider schema).
@immutable
final class VpcIpamPoolCidrCidrAuthorizationContext {
  const VpcIpamPoolCidrCidrAuthorizationContext({this.message, this.signature});

  final TfArg<String>? message;

  final TfArg<String>? signature;

  Map<String, Object?> encode() => {
    if (message != null) 'message': message!.toTfJson(),
    if (signature != null) 'signature': signature!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipam_pool_cidr`.
final class AwsVpcIpamPoolCidr extends Resource {
  static const String tfType = 'aws_vpc_ipam_pool_cidr';

  AwsVpcIpamPoolCidr({
    required super.localName,
    TfArg<String>? cidr,
    required TfArg<String> ipamPoolId,
    TfArg<num>? netmaskLength,
    TfArg<String>? region,
    VpcIpamPoolCidrCidrAuthorizationContext? cidrAuthorizationContext,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidr != null) 'cidr': cidr,
           'ipam_pool_id': ipamPoolId,
           if (netmaskLength != null) 'netmask_length': netmaskLength,
           if (region != null) 'region': region,
           if (cidrAuthorizationContext != null)
             'cidr_authorization_context': TfArg.literal(
               cidrAuthorizationContext.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolCidrSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ipam_pool_cidr_id` attribute.
  TfRef<String> get ipamPoolCidrId =>
      TfRef.attribute<String>(this, 'ipam_pool_cidr_id');
}
