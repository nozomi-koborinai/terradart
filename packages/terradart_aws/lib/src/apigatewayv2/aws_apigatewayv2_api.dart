// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_api`.
const Set<String> _awsApigatewayv2ApiSensitive = <String>{};

/// Apigatewayv2 Api Api Key Selection enum for `api_key_selection_expression`.
enum Apigatewayv2ApiApiKeySelectionExpression implements TerraformEnum {
  contextAuthorizerUsageidentifierkey(
    '\$context.authorizer.usageIdentifierKey',
  ),
  requestHeaderXApiKey('\$request.header.x-api-key');

  const Apigatewayv2ApiApiKeySelectionExpression(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigatewayv2 Api Ip Address enum for `ip_address_type`.
enum Apigatewayv2ApiIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack');

  const Apigatewayv2ApiIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigatewayv2 Api Protocol enum for `protocol_type`.
enum Apigatewayv2ApiProtocolType implements TerraformEnum {
  websocket('WEBSOCKET'),
  http('HTTP');

  const Apigatewayv2ApiProtocolType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cors_configuration` block of
/// `aws_apigatewayv2_api` (derived from provider schema).
@immutable
final class Apigatewayv2ApiCorsConfiguration {
  const Apigatewayv2ApiCorsConfiguration({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<String>>? allowHeaders;

  final TfArg<List<String>>? allowMethods;

  final TfArg<List<String>>? allowOrigins;

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'allow_headers': ?allowHeaders?.toTfJson(),
    'allow_methods': ?allowMethods?.toTfJson(),
    'allow_origins': ?allowOrigins?.toTfJson(),
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_api`.
final class AwsApigatewayv2Api extends Resource {
  static const String tfType = 'aws_apigatewayv2_api';

  AwsApigatewayv2Api({
    required super.localName,
    TfArg<Apigatewayv2ApiApiKeySelectionExpression>? apiKeySelectionExpression,
    TfArg<String>? body,
    TfArg<String>? credentialsArn,
    TfArg<String>? description,
    TfArg<bool>? disableExecuteApiEndpoint,
    TfArg<bool>? failOnWarnings,
    TfArg<Apigatewayv2ApiIpAddressType>? ipAddressType,
    required TfArg<String> name,
    required TfArg<Apigatewayv2ApiProtocolType> protocolType,
    TfArg<String>? region,
    TfArg<String>? routeKey,
    TfArg<String>? routeSelectionExpression,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? target,
    TfArg<String>? version,
    Apigatewayv2ApiCorsConfiguration? corsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key_selection_expression': ?apiKeySelectionExpression,
           'body': ?body,
           'credentials_arn': ?credentialsArn,
           'description': ?description,
           'disable_execute_api_endpoint': ?disableExecuteApiEndpoint,
           'fail_on_warnings': ?failOnWarnings,
           'ip_address_type': ?ipAddressType,
           'name': name,
           'protocol_type': protocolType,
           'region': ?region,
           'route_key': ?routeKey,
           'route_selection_expression': ?routeSelectionExpression,
           'tags': ?tags,
           'target': ?target,
           'version': ?version,
           if (corsConfiguration != null)
             'cors_configuration': TfArg.literal(corsConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ApiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Api>`.
  RefTo<AwsApigatewayv2Api> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_endpoint` attribute.
  TfRef<String> get apiEndpoint =>
      TfRef.attribute<String>(this, 'api_endpoint');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `api_key_selection_expression` attribute.
  TfRef<String> get apiKeySelectionExpressionRef =>
      TfRef.attribute<String>(this, 'api_key_selection_expression');

  /// Reference to `body` attribute.
  TfRef<String> get bodyRef => TfRef.attribute<String>(this, 'body');

  /// Reference to `credentials_arn` attribute.
  TfRef<String> get credentialsArnRef =>
      TfRef.attribute<String>(this, 'credentials_arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_execute_api_endpoint` attribute.
  TfRef<bool> get disableExecuteApiEndpointRef =>
      TfRef.attribute<bool>(this, 'disable_execute_api_endpoint');

  /// Reference to `fail_on_warnings` attribute.
  TfRef<bool> get failOnWarningsRef =>
      TfRef.attribute<bool>(this, 'fail_on_warnings');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressTypeRef =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `protocol_type` attribute.
  TfRef<String> get protocolTypeRef =>
      TfRef.attribute<String>(this, 'protocol_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_key` attribute.
  TfRef<String> get routeKeyRef => TfRef.attribute<String>(this, 'route_key');

  /// Reference to `route_selection_expression` attribute.
  TfRef<String> get routeSelectionExpressionRef =>
      TfRef.attribute<String>(this, 'route_selection_expression');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target` attribute.
  TfRef<String> get targetRef => TfRef.attribute<String>(this, 'target');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
