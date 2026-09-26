// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api_policy`.
const Set<String> _awsApiGatewayRestApiPolicySensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_rest_api_policy`.
final class AwsApiGatewayRestApiPolicy extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api_policy';

  AwsApiGatewayRestApiPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRestApiPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
