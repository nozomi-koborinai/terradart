// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_authorizer`.
const Set<String> _awsApiGatewayAuthorizerSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_authorizer`.
final class DataAwsApiGatewayAuthorizer extends Data {
  static const String tfType = 'aws_api_gateway_authorizer';

  DataAwsApiGatewayAuthorizer({
    required super.localName,
    required TfArg<String> authorizerId,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorizer_id': authorizerId,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayAuthorizerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `authorizer_credentials` attribute.
  TfRef<String> get authorizerCredentials =>
      TfRef.attribute<String>(this, 'authorizer_credentials');

  /// Reference to `authorizer_result_ttl_in_seconds` attribute.
  TfRef<num> get authorizerResultTtlInSeconds =>
      TfRef.attribute<num>(this, 'authorizer_result_ttl_in_seconds');

  /// Reference to `authorizer_uri` attribute.
  TfRef<String> get authorizerUri =>
      TfRef.attribute<String>(this, 'authorizer_uri');

  /// Reference to `identity_source` attribute.
  TfRef<String> get identitySource =>
      TfRef.attribute<String>(this, 'identity_source');

  /// Reference to `identity_validation_expression` attribute.
  TfRef<String> get identityValidationExpression =>
      TfRef.attribute<String>(this, 'identity_validation_expression');

  /// Reference to `provider_arns` attribute.
  TfRef<List<String>> get providerArns =>
      TfRef.attribute<List<String>>(this, 'provider_arns');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
