// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_method`.
const Set<String> _awsApiGatewayMethodSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_method`.
final class AwsApiGatewayMethod extends Resource {
  static const String tfType = 'aws_api_gateway_method';

  AwsApiGatewayMethod({
    required super.localName,
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
           if (apiKeyRequired != null) 'api_key_required': apiKeyRequired,
           'authorization': authorization,
           if (authorizationScopes != null)
             'authorization_scopes': authorizationScopes,
           if (authorizerId != null) 'authorizer_id': authorizerId,
           'http_method': httpMethod,
           if (operationName != null) 'operation_name': operationName,
           if (region != null) 'region': region,
           if (requestModels != null) 'request_models': requestModels,
           if (requestParameters != null)
             'request_parameters': requestParameters,
           if (requestValidatorId != null)
             'request_validator_id': requestValidatorId,
           'resource_id': resourceId,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayMethodSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
