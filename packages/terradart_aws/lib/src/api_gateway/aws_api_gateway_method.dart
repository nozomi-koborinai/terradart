// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_method`.
const Set<String> _awsApiGatewayMethodSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_method`.
final class AwsApiGatewayMethod extends Resource {
  static const String tfType = 'aws_api_gateway_method';

  AwsApiGatewayMethod(
    super.localName, {
    TfArg<bool>? apiKeyRequired,
    required TfArg<String> authorization,
    TfArg<List<String>>? authorizationScopes,
    TfArg<String>? authorizerId,
    required TfArg<String> httpMethod,
    TfArg<String>? operationName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? requestModels,
    TfArg<Map<String, bool>>? requestParameters,
    TfArg<String>? requestValidatorId,
    required TfArg<String> resourceId,
    required TfArg<String> restApiId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key_required': ?apiKeyRequired,
           'authorization': authorization,
           'authorization_scopes': ?authorizationScopes,
           'authorizer_id': ?authorizerId,
           'http_method': httpMethod,
           'operation_name': ?operationName,
           'region': ?region,
           'request_models': ?requestModels,
           'request_parameters': ?requestParameters,
           'request_validator_id': ?requestValidatorId,
           'resource_id': resourceId,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayMethodSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayMethod>`.
  RefTo<AwsApiGatewayMethod> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key_required` attribute.
  TfRef<bool> get apiKeyRequired =>
      TfRef.attribute<bool>(this, 'api_key_required');

  /// Reference to `authorization` attribute.
  TfRef<String> get authorization =>
      TfRef.attribute<String>(this, 'authorization');

  /// Reference to `authorization_scopes` attribute.
  TfRef<List<String>> get authorizationScopes =>
      TfRef.attribute<List<String>>(this, 'authorization_scopes');

  /// Reference to `authorizer_id` attribute.
  TfRef<String> get authorizerId =>
      TfRef.attribute<String>(this, 'authorizer_id');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethod => TfRef.attribute<String>(this, 'http_method');

  /// Reference to `operation_name` attribute.
  TfRef<String> get operationName =>
      TfRef.attribute<String>(this, 'operation_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_models` attribute.
  TfRef<Map<String, String>> get requestModels =>
      TfRef.attribute<Map<String, String>>(this, 'request_models');

  /// Reference to `request_parameters` attribute.
  TfRef<Map<String, bool>> get requestParameters =>
      TfRef.attribute<Map<String, bool>>(this, 'request_parameters');

  /// Reference to `request_validator_id` attribute.
  TfRef<String> get requestValidatorId =>
      TfRef.attribute<String>(this, 'request_validator_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');
}
