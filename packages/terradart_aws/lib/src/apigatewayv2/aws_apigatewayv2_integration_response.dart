// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_integration_response`.
const Set<String> _awsApigatewayv2IntegrationResponseSensitive = <String>{};

/// Apigatewayv2 Integration Response Content Handling enum for `content_handling_strategy`.
enum Apigatewayv2IntegrationResponseContentHandlingStrategy
    implements TerraformEnum {
  convertToBinary('CONVERT_TO_BINARY'),
  convertToText('CONVERT_TO_TEXT');

  const Apigatewayv2IntegrationResponseContentHandlingStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_apigatewayv2_integration_response`.
final class AwsApigatewayv2IntegrationResponse extends Resource {
  static const String tfType = 'aws_apigatewayv2_integration_response';

  AwsApigatewayv2IntegrationResponse({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<Apigatewayv2IntegrationResponseContentHandlingStrategy>?
    contentHandlingStrategy,
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
           'content_handling_strategy': ?contentHandlingStrategy,
           'integration_id': integrationId,
           'integration_response_key': integrationResponseKey,
           'region': ?region,
           'response_templates': ?responseTemplates,
           'template_selection_expression': ?templateSelectionExpression,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApigatewayv2IntegrationResponseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2IntegrationResponse>`.
  RefTo<AwsApigatewayv2IntegrationResponse> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiIdRef => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `content_handling_strategy` attribute.
  TfRef<String> get contentHandlingStrategyRef =>
      TfRef.attribute<String>(this, 'content_handling_strategy');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationIdRef =>
      TfRef.attribute<String>(this, 'integration_id');

  /// Reference to `integration_response_key` attribute.
  TfRef<String> get integrationResponseKeyRef =>
      TfRef.attribute<String>(this, 'integration_response_key');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `response_templates` attribute.
  TfRef<Map<String, String>> get responseTemplatesRef =>
      TfRef.attribute<Map<String, String>>(this, 'response_templates');

  /// Reference to `template_selection_expression` attribute.
  TfRef<String> get templateSelectionExpressionRef =>
      TfRef.attribute<String>(this, 'template_selection_expression');
}
