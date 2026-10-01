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
           'content_handling': ?contentHandling,
           'http_method': httpMethod,
           'region': ?region,
           'resource_id': resourceId,
           'response_parameters': ?responseParameters,
           'response_templates': ?responseTemplates,
           'rest_api_id': restApiId,
           'selection_pattern': ?selectionPattern,
           'status_code': statusCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayIntegrationResponseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayIntegrationResponse>`.
  RefTo<AwsApiGatewayIntegrationResponse> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content_handling` attribute.
  TfRef<String> get contentHandling =>
      TfRef.attribute<String>(this, 'content_handling');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethod => TfRef.attribute<String>(this, 'http_method');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `response_parameters` attribute.
  TfRef<Map<String, String>> get responseParameters =>
      TfRef.attribute<Map<String, String>>(this, 'response_parameters');

  /// Reference to `response_templates` attribute.
  TfRef<Map<String, String>> get responseTemplates =>
      TfRef.attribute<Map<String, String>>(this, 'response_templates');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `selection_pattern` attribute.
  TfRef<String> get selectionPattern =>
      TfRef.attribute<String>(this, 'selection_pattern');

  /// Reference to `status_code` attribute.
  TfRef<String> get statusCode => TfRef.attribute<String>(this, 'status_code');
}
