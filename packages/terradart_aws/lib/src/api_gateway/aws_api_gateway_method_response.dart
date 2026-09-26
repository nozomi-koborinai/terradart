// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_method_response`.
const Set<String> _awsApiGatewayMethodResponseSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_method_response`.
final class AwsApiGatewayMethodResponse extends Resource {
  static const String tfType = 'aws_api_gateway_method_response';

  AwsApiGatewayMethodResponse({
    required super.localName,
    required TfArg<String> httpMethod,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    TfArg<Map<String, String>>? responseModels,
    TfArg<Map<String, bool>>? responseParameters,
    required TfArg<String> restApiId,
    required TfArg<String> statusCode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'http_method': httpMethod,
           if (region != null) 'region': region,
           'resource_id': resourceId,
           if (responseModels != null) 'response_models': responseModels,
           if (responseParameters != null)
             'response_parameters': responseParameters,
           'rest_api_id': restApiId,
           'status_code': statusCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayMethodResponseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
