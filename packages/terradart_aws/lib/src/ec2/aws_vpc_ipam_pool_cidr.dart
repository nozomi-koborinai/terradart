// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool_cidr`.
const Set<String> _awsVpcIpamPoolCidrSensitive = <String>{};

/// At most one of `cidr`, `netmask_length` on `aws_vpc_ipam_pool_cidr`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class VpcIpamPoolCidrCidrOrNetmaskLength {
  const VpcIpamPoolCidrCidrOrNetmaskLength();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `cidr` (one of the [VpcIpamPoolCidrCidrOrNetmaskLength] choices).
final class VpcIpamPoolCidrCidrOption
    extends VpcIpamPoolCidrCidrOrNetmaskLength {
  const VpcIpamPoolCidrCidrOption({required this.cidr});

  final TfArg<String> cidr;

  @override
  String get blockKey => 'cidr';

  @override
  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr': cidr};
}

/// Sets `netmask_length` (one of the [VpcIpamPoolCidrCidrOrNetmaskLength] choices).
final class VpcIpamPoolCidrNetmaskLengthOption
    extends VpcIpamPoolCidrCidrOrNetmaskLength {
  const VpcIpamPoolCidrNetmaskLengthOption({required this.netmaskLength});

  final TfArg<num> netmaskLength;

  @override
  String get blockKey => 'netmask_length';

  @override
  Map<String, Object?> encode() => {'netmask_length': netmaskLength.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'netmask_length': netmaskLength};
}

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
    VpcIpamPoolCidrCidrOrNetmaskLength? cidrOrNetmaskLength,
    required TfArg<String> ipamPoolId,
    TfArg<String>? region,
    VpcIpamPoolCidrCidrAuthorizationContext? cidrAuthorizationContext,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?cidrOrNetmaskLength?.argMap,
           'ipam_pool_id': ipamPoolId,
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
