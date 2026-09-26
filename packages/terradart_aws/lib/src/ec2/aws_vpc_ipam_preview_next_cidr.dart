// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_preview_next_cidr`.
const Set<String> _awsVpcIpamPreviewNextCidrSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_preview_next_cidr`.
final class AwsVpcIpamPreviewNextCidr extends Resource {
  static const String tfType = 'aws_vpc_ipam_preview_next_cidr';

  AwsVpcIpamPreviewNextCidr({
    required super.localName,
    TfArg<List<String>>? disallowedCidrs,
    required TfArg<String> ipamPoolId,
    TfArg<num>? netmaskLength,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (disallowedCidrs != null) 'disallowed_cidrs': disallowedCidrs,
           'ipam_pool_id': ipamPoolId,
           if (netmaskLength != null) 'netmask_length': netmaskLength,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPreviewNextCidrSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');
}
