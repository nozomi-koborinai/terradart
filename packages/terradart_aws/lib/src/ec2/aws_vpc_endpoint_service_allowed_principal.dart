// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_service_allowed_principal`.
const Set<String> _awsVpcEndpointServiceAllowedPrincipalSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_service_allowed_principal`.
final class AwsVpcEndpointServiceAllowedPrincipal extends Resource {
  static const String tfType = 'aws_vpc_endpoint_service_allowed_principal';

  AwsVpcEndpointServiceAllowedPrincipal({
    required super.localName,
    required TfArg<String> principalArn,
    TfArg<String>? region,
    required TfArg<String> vpcEndpointServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'principal_arn': principalArn,
           if (region != null) 'region': region,
           'vpc_endpoint_service_id': vpcEndpointServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcEndpointServiceAllowedPrincipalSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
