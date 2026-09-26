// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_authorizer`.
const Set<String> _awsApigatewayv2AuthorizerSensitive = <String>{};

/// Typed helper for the `jwt_configuration` block of
/// `aws_apigatewayv2_authorizer` (derived from provider schema).
@immutable
final class Apigatewayv2AuthorizerJwtConfiguration {
  const Apigatewayv2AuthorizerJwtConfiguration({this.audience, this.issuer});

  final TfArg<List<Object?>>? audience;

  final TfArg<String>? issuer;

  Map<String, Object?> encode() => {
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_authorizer`.
final class AwsApigatewayv2Authorizer extends Resource {
  static const String tfType = 'aws_apigatewayv2_authorizer';

  AwsApigatewayv2Authorizer({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? authorizerCredentialsArn,
    TfArg<String>? authorizerPayloadFormatVersion,
    TfArg<num>? authorizerResultTtlInSeconds,
    required TfArg<String> authorizerType,
    TfArg<String>? authorizerUri,
    TfArg<bool>? enableSimpleResponses,
    TfArg<List<String>>? identitySources,
    required TfArg<String> name,
    TfArg<String>? region,
    Apigatewayv2AuthorizerJwtConfiguration? jwtConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (authorizerCredentialsArn != null)
             'authorizer_credentials_arn': authorizerCredentialsArn,
           if (authorizerPayloadFormatVersion != null)
             'authorizer_payload_format_version':
                 authorizerPayloadFormatVersion,
           if (authorizerResultTtlInSeconds != null)
             'authorizer_result_ttl_in_seconds': authorizerResultTtlInSeconds,
           'authorizer_type': authorizerType,
           if (authorizerUri != null) 'authorizer_uri': authorizerUri,
           if (enableSimpleResponses != null)
             'enable_simple_responses': enableSimpleResponses,
           if (identitySources != null) 'identity_sources': identitySources,
           'name': name,
           if (region != null) 'region': region,
           if (jwtConfiguration != null)
             'jwt_configuration': TfArg.literal(jwtConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2AuthorizerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
