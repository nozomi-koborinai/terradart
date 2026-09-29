// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_authorizer`.
const Set<String> _awsApigatewayv2AuthorizerSensitive = <String>{};

/// Apigatewayv2 Authorizer Authorizer Payload Format enum for `authorizer_payload_format_version`.
enum Apigatewayv2AuthorizerAuthorizerPayloadFormatVersion
    implements TerraformEnum {
  v1p0('1.0'),
  v2p0('2.0');

  const Apigatewayv2AuthorizerAuthorizerPayloadFormatVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Apigatewayv2 Authorizer Authorizer enum for `authorizer_type`.
enum Apigatewayv2AuthorizerAuthorizerType implements TerraformEnum {
  request('REQUEST'),
  jwt('JWT');

  const Apigatewayv2AuthorizerAuthorizerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `jwt_configuration` block of
/// `aws_apigatewayv2_authorizer` (derived from provider schema).
@immutable
final class Apigatewayv2AuthorizerJwtConfiguration {
  const Apigatewayv2AuthorizerJwtConfiguration({this.audience, this.issuer});

  final TfArg<List<Object?>>? audience;

  final TfArg<String>? issuer;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_authorizer`.
final class AwsApigatewayv2Authorizer extends Resource {
  static const String tfType = 'aws_apigatewayv2_authorizer';

  AwsApigatewayv2Authorizer({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? authorizerCredentialsArn,
    TfArg<Apigatewayv2AuthorizerAuthorizerPayloadFormatVersion>?
    authorizerPayloadFormatVersion,
    TfArg<num>? authorizerResultTtlInSeconds,
    required TfArg<Apigatewayv2AuthorizerAuthorizerType> authorizerType,
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
           'authorizer_credentials_arn': ?authorizerCredentialsArn,
           'authorizer_payload_format_version': ?authorizerPayloadFormatVersion,
           'authorizer_result_ttl_in_seconds': ?authorizerResultTtlInSeconds,
           'authorizer_type': authorizerType,
           'authorizer_uri': ?authorizerUri,
           'enable_simple_responses': ?enableSimpleResponses,
           'identity_sources': ?identitySources,
           'name': name,
           'region': ?region,
           if (jwtConfiguration != null)
             'jwt_configuration': TfArg.literal(jwtConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2AuthorizerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Authorizer>`.
  RefTo<AwsApigatewayv2Authorizer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
