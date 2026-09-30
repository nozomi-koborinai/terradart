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
           'region': ?region,
           'rest_api_id': restApiId,
           'validate_request_body': ?validateRequestBody,
           'validate_request_parameters': ?validateRequestParameters,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRequestValidatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayRequestValidator>`.
  RefTo<AwsApiGatewayRequestValidator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiIdRef =>
      TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `validate_request_body` attribute.
  TfRef<bool> get validateRequestBodyRef =>
      TfRef.attribute<bool>(this, 'validate_request_body');

  /// Reference to `validate_request_parameters` attribute.
  TfRef<bool> get validateRequestParametersRef =>
      TfRef.attribute<bool>(this, 'validate_request_parameters');
}
