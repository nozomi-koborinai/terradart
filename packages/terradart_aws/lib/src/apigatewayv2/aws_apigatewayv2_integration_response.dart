// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_integration_response`.
const Set<String> _awsApigatewayv2IntegrationResponseSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_integration_response`.
final class AwsApigatewayv2IntegrationResponse extends Resource {
  static const String tfType = 'aws_apigatewayv2_integration_response';

  AwsApigatewayv2IntegrationResponse({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? contentHandlingStrategy,
    required TfArg<String> integrationId,
    required TfArg<String> integrationResponseKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? responseTemplates,
    TfArg<String>? templateSelectionExpression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (contentHandlingStrategy != null)
             'content_handling_strategy': contentHandlingStrategy,
           'integration_id': integrationId,
           'integration_response_key': integrationResponseKey,
           if (region != null) 'region': region,
           if (responseTemplates != null)
             'response_templates': responseTemplates,
           if (templateSelectionExpression != null)
             'template_selection_expression': templateSelectionExpression,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApigatewayv2IntegrationResponseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
