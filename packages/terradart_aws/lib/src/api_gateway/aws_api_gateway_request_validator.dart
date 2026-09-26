// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_request_validator`.
const Set<String> _awsApiGatewayRequestValidatorSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_request_validator`.
final class AwsApiGatewayRequestValidator extends Resource {
  static const String tfType = 'aws_api_gateway_request_validator';

  AwsApiGatewayRequestValidator({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    TfArg<bool>? validateRequestBody,
    TfArg<bool>? validateRequestParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           if (validateRequestBody != null)
             'validate_request_body': validateRequestBody,
           if (validateRequestParameters != null)
             'validate_request_parameters': validateRequestParameters,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRequestValidatorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
