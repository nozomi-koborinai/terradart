// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_authorizer`.
const Set<String> _awsApiGatewayAuthorizerSensitive = <String>{};

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
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (authorizerCredentials != null)
             'authorizer_credentials': authorizerCredentials,
           if (authorizerResultTtlInSeconds != null)
             'authorizer_result_ttl_in_seconds': authorizerResultTtlInSeconds,
           if (authorizerUri != null) 'authorizer_uri': authorizerUri,
           if (identitySource != null) 'identity_source': identitySource,
           if (identityValidationExpression != null)
             'identity_validation_expression': identityValidationExpression,
           'name': name,
           if (providerArns != null) 'provider_arns': providerArns,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           if (type != null) 'type': type,
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
}
