// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_api`.
const Set<String> _awsApigatewayv2ApiSensitive = <String>{};

/// Apigatewayv2 Api Key Selection enum for `api_key_selection_expression`.
extension type const Apigatewayv2ApiKeySelectionExpression._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2ApiKeySelectionExpression.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2ApiKeySelectionExpression.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2ApiKeySelectionExpression.arg(TfArg<String> arg)
    : this._(arg);

  static const contextAuthorizerUsageidentifierkey =
      Apigatewayv2ApiKeySelectionExpression._(
        TfArgLiteral('\$context.authorizer.usageIdentifierKey'),
      );
  static const requestHeaderXApiKey = Apigatewayv2ApiKeySelectionExpression._(
    TfArgLiteral('\$request.header.x-api-key'),
  );

  static const List<Apigatewayv2ApiKeySelectionExpression> values = [
    contextAuthorizerUsageidentifierkey,
    requestHeaderXApiKey,
  ];
}

/// Apigatewayv2 Api Ip Address enum for `ip_address_type`.
extension type const Apigatewayv2ApiIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2ApiIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2ApiIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2ApiIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = Apigatewayv2ApiIpAddressType._(TfArgLiteral('ipv4'));
  static const dualstack = Apigatewayv2ApiIpAddressType._(
    TfArgLiteral('dualstack'),
  );

  static const List<Apigatewayv2ApiIpAddressType> values = [ipv4, dualstack];
}

/// Apigatewayv2 Api Protocol enum for `protocol_type`.
extension type const Apigatewayv2ApiProtocolType._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2ApiProtocolType.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2ApiProtocolType.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2ApiProtocolType.arg(TfArg<String> arg) : this._(arg);

  static const websocket = Apigatewayv2ApiProtocolType._(
    TfArgLiteral('WEBSOCKET'),
  );
  static const http = Apigatewayv2ApiProtocolType._(TfArgLiteral('HTTP'));

  static const List<Apigatewayv2ApiProtocolType> values = [websocket, http];
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

  @internal
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

  AwsApigatewayv2Api(
    super.localName, {
    Apigatewayv2ApiKeySelectionExpression? apiKeySelectionExpression,
    TfArg<String>? body,
    TfArg<String>? credentialsArn,
    TfArg<String>? description,
    TfArg<bool>? disableExecuteApiEndpoint,
    TfArg<bool>? failOnWarnings,
    Apigatewayv2ApiIpAddressType? ipAddressType,
    required TfArg<String> name,
    required Apigatewayv2ApiProtocolType protocolType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get apiKeySelectionExpression =>
      TfRef.attribute<String>(this, 'api_key_selection_expression');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `credentials_arn` attribute.
  TfRef<String> get credentialsArn =>
      TfRef.attribute<String>(this, 'credentials_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_execute_api_endpoint` attribute.
  TfRef<bool> get disableExecuteApiEndpoint =>
      TfRef.attribute<bool>(this, 'disable_execute_api_endpoint');

  /// Reference to `fail_on_warnings` attribute.
  TfRef<bool> get failOnWarnings =>
      TfRef.attribute<bool>(this, 'fail_on_warnings');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `protocol_type` attribute.
  TfRef<String> get protocolType =>
      TfRef.attribute<String>(this, 'protocol_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_key` attribute.
  TfRef<String> get routeKey => TfRef.attribute<String>(this, 'route_key');

  /// Reference to `route_selection_expression` attribute.
  TfRef<String> get routeSelectionExpression =>
      TfRef.attribute<String>(this, 'route_selection_expression');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
