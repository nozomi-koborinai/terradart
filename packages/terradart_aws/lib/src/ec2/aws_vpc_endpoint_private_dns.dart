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
           'region': ?region,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointPrivateDnsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpointPrivateDns>`.
  RefTo<AwsVpcEndpointPrivateDns> get ref => RefTo.of(this);

  /// Reference to `private_dns_enabled` attribute.
  TfRef<bool> get privateDnsEnabled =>
      TfRef.attribute<bool>(this, 'private_dns_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointId =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');
}
