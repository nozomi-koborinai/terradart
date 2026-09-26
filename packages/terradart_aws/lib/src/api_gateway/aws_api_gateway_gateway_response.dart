// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_gateway_response`.
const Set<String> _awsApiGatewayGatewayResponseSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_gateway_response`.
final class AwsApiGatewayGatewayResponse extends Resource {
  static const String tfType = 'aws_api_gateway_gateway_response';

  AwsApiGatewayGatewayResponse({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? responseParameters,
    TfArg<Map<String, String>>? responseTemplates,
    required TfArg<String> responseType,
    required TfArg<String> restApiId,
    TfArg<String>? statusCode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (responseParameters != null)
             'response_parameters': responseParameters,
           if (responseTemplates != null)
             'response_templates': responseTemplates,
           'response_type': responseType,
           'rest_api_id': restApiId,
           if (statusCode != null) 'status_code': statusCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayGatewayResponseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
