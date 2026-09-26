// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_integration_response`.
const Set<String> _awsApiGatewayIntegrationResponseSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_integration_response`.
final class AwsApiGatewayIntegrationResponse extends Resource {
  static const String tfType = 'aws_api_gateway_integration_response';

  AwsApiGatewayIntegrationResponse({
    required super.localName,
    TfArg<String>? contentHandling,
    required TfArg<String> httpMethod,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    TfArg<Map<String, String>>? responseParameters,
    TfArg<Map<String, String>>? responseTemplates,
    required TfArg<String> restApiId,
    TfArg<String>? selectionPattern,
    required TfArg<String> statusCode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (contentHandling != null) 'content_handling': contentHandling,
           'http_method': httpMethod,
           if (region != null) 'region': region,
           'resource_id': resourceId,
           if (responseParameters != null)
             'response_parameters': responseParameters,
           if (responseTemplates != null)
             'response_templates': responseTemplates,
           'rest_api_id': restApiId,
           if (selectionPattern != null) 'selection_pattern': selectionPattern,
           'status_code': statusCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayIntegrationResponseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
