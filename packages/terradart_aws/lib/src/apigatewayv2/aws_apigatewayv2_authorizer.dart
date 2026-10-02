// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_authorizer`.
const Set<String> _awsApigatewayv2AuthorizerSensitive = <String>{};

/// Apigatewayv2 Authorizer Payload Format enum for `authorizer_payload_format_version`.
extension type const Apigatewayv2AuthorizerPayloadFormatVersion._(
  TfArg<String> _
) implements TfArg<String> {
  Apigatewayv2AuthorizerPayloadFormatVersion.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2AuthorizerPayloadFormatVersion.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2AuthorizerPayloadFormatVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = Apigatewayv2AuthorizerPayloadFormatVersion._(
    TfArgLiteral('1.0'),
  );
  static const v2p0 = Apigatewayv2AuthorizerPayloadFormatVersion._(
    TfArgLiteral('2.0'),
  );

  static const List<Apigatewayv2AuthorizerPayloadFormatVersion> values = [
    v1p0,
    v2p0,
  ];
}

/// Apigatewayv2 Authorizer enum for `authorizer_type`.
extension type const Apigatewayv2AuthorizerType._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2AuthorizerType.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2AuthorizerType.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2AuthorizerType.arg(TfArg<String> arg) : this._(arg);

  static const request = Apigatewayv2AuthorizerType._(TfArgLiteral('REQUEST'));
  static const jwt = Apigatewayv2AuthorizerType._(TfArgLiteral('JWT'));

  static const List<Apigatewayv2AuthorizerType> values = [request, jwt];
}

/// Typed helper for the `jwt_configuration` block of
/// `aws_apigatewayv2_authorizer` (derived from provider schema).
@immutable
final class Apigatewayv2AuthorizerJwtConfiguration {
  const Apigatewayv2AuthorizerJwtConfiguration({this.audience, this.issuer});

  final TfArg<List<String>>? audience;

  final TfArg<String>? issuer;

  @internal
  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_authorizer`.
final class AwsApigatewayv2Authorizer extends Resource {
  static const String tfType = 'aws_apigatewayv2_authorizer';

  AwsApigatewayv2Authorizer(
    super.localName, {
    required TfArg<String> apiId,
    TfArg<String>? authorizerCredentialsArn,
    Apigatewayv2AuthorizerPayloadFormatVersion? authorizerPayloadFormatVersion,
    TfArg<num>? authorizerResultTtlInSeconds,
    required Apigatewayv2AuthorizerType authorizerType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `authorizer_credentials_arn` attribute.
  TfRef<String> get authorizerCredentialsArn =>
      TfRef.attribute<String>(this, 'authorizer_credentials_arn');

  /// Reference to `authorizer_payload_format_version` attribute.
  TfRef<String> get authorizerPayloadFormatVersion =>
      TfRef.attribute<String>(this, 'authorizer_payload_format_version');

  /// Reference to `authorizer_result_ttl_in_seconds` attribute.
  TfRef<num> get authorizerResultTtlInSeconds =>
      TfRef.attribute<num>(this, 'authorizer_result_ttl_in_seconds');

  /// Reference to `authorizer_type` attribute.
  TfRef<String> get authorizerType =>
      TfRef.attribute<String>(this, 'authorizer_type');

  /// Reference to `authorizer_uri` attribute.
  TfRef<String> get authorizerUri =>
      TfRef.attribute<String>(this, 'authorizer_uri');

  /// Reference to `enable_simple_responses` attribute.
  TfRef<bool> get enableSimpleResponses =>
      TfRef.attribute<bool>(this, 'enable_simple_responses');

  /// Reference to `identity_sources` attribute.
  TfRef<List<String>> get identitySources =>
      TfRef.attribute<List<String>>(this, 'identity_sources');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
