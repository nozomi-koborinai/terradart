// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_policy`.
const Set<String> _awsVpcEndpointPolicySensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_policy`.
final class AwsVpcEndpointPolicy extends Resource {
  static const String tfType = 'aws_vpc_endpoint_policy';

  AwsVpcEndpointPolicy({
    required super.localName,
    TfArg<String>? policy,
    TfArg<String>? region,
    required TfArg<String> vpcEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
