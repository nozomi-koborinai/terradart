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
           'region': ?region,
           'resource_id': resourceId,
           'response_models': ?responseModels,
           'response_parameters': ?responseParameters,
           'rest_api_id': restApiId,
           'status_code': statusCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayMethodResponseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayMethodResponse>`.
  RefTo<AwsApiGatewayMethodResponse> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethodRef =>
      TfRef.attribute<String>(this, 'http_method');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceIdRef =>
      TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `response_models` attribute.
  TfRef<Map<String, String>> get responseModelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'response_models');

  /// Reference to `response_parameters` attribute.
  TfRef<Map<String, bool>> get responseParametersRef =>
      TfRef.attribute<Map<String, bool>>(this, 'response_parameters');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiIdRef =>
      TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `status_code` attribute.
  TfRef<String> get statusCodeRef =>
      TfRef.attribute<String>(this, 'status_code');
}
