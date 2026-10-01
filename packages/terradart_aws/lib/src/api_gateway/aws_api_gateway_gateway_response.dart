// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_gateway_response`.
const Set<String> _awsApiGatewayGatewayResponseSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_gateway_response`.
final class AwsApiGatewayGatewayResponse extends Resource {
  static const String tfType = 'aws_api_gateway_gateway_response';

  AwsApiGatewayGatewayResponse(
    super.localName, {
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
           'region': ?region,
           'response_parameters': ?responseParameters,
           'response_templates': ?responseTemplates,
           'response_type': responseType,
           'rest_api_id': restApiId,
           'status_code': ?statusCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayGatewayResponseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayGatewayResponse>`.
  RefTo<AwsApiGatewayGatewayResponse> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `response_parameters` attribute.
  TfRef<Map<String, String>> get responseParameters =>
      TfRef.attribute<Map<String, String>>(this, 'response_parameters');

  /// Reference to `response_templates` attribute.
  TfRef<Map<String, String>> get responseTemplates =>
      TfRef.attribute<Map<String, String>>(this, 'response_templates');

  /// Reference to `response_type` attribute.
  TfRef<String> get responseType =>
      TfRef.attribute<String>(this, 'response_type');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `status_code` attribute.
  TfRef<String> get statusCode => TfRef.attribute<String>(this, 'status_code');
}
