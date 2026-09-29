// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_authorizer`.
const Set<String> _awsApiGatewayAuthorizerSensitive = <String>{};

/// Api Gateway Authorizer enum for `type`.
enum ApiGatewayAuthorizerType implements TerraformEnum {
  token('TOKEN'),
  request('REQUEST'),
  cognitoUserPools('COGNITO_USER_POOLS');

  const ApiGatewayAuthorizerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_api_gateway_authorizer`.
final class AwsApiGatewayAuthorizer extends Resource {
  static const String tfType = 'aws_api_gateway_authorizer';

  AwsApiGatewayAuthorizer({
    required super.localName,
    TfArg<String>? authorizerCredentials,
    TfArg<num>? authorizerResultTtlInSeconds,
    TfArg<String>? authorizerUri,
    TfArg<String>? identitySource,
    TfArg<String>? identityValidationExpression,
    required TfArg<String> name,
    TfArg<List<String>>? providerArns,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    TfArg<ApiGatewayAuthorizerType>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorizer_credentials': ?authorizerCredentials,
           'authorizer_result_ttl_in_seconds': ?authorizerResultTtlInSeconds,
           'authorizer_uri': ?authorizerUri,
           'identity_source': ?identitySource,
           'identity_validation_expression': ?identityValidationExpression,
           'name': name,
           'provider_arns': ?providerArns,
           'region': ?region,
           'rest_api_id': restApiId,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayAuthorizerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayAuthorizer>`.
  RefTo<AwsApiGatewayAuthorizer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
