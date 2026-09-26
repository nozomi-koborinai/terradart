// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_private_dns`.
const Set<String> _awsVpcEndpointPrivateDnsSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_private_dns`.
final class AwsVpcEndpointPrivateDns extends Resource {
  static const String tfType = 'aws_vpc_endpoint_private_dns';

  AwsVpcEndpointPrivateDns({
    required super.localName,
    required TfArg<bool> privateDnsEnabled,
    TfArg<String>? region,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'private_dns_enabled': privateDnsEnabled,
           if (region != null) 'region': region,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointPrivateDnsSensitive;
}
