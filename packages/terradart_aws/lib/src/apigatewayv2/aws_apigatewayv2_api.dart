// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_api`.
const Set<String> _awsApigatewayv2ApiSensitive = <String>{};

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

  final TfArg<List<Object?>>? allowHeaders;

  final TfArg<List<Object?>>? allowMethods;

  final TfArg<List<Object?>>? allowOrigins;

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    if (allowCredentials != null)
      'allow_credentials': allowCredentials!.toTfJson(),
    if (allowHeaders != null) 'allow_headers': allowHeaders!.toTfJson(),
    if (allowMethods != null) 'allow_methods': allowMethods!.toTfJson(),
    if (allowOrigins != null) 'allow_origins': allowOrigins!.toTfJson(),
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
    if (maxAge != null) 'max_age': maxAge!.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_api`.
final class AwsApigatewayv2Api extends Resource {
  static const String tfType = 'aws_apigatewayv2_api';

  AwsApigatewayv2Api({
    required super.localName,
    TfArg<String>? apiKeySelectionExpression,
    TfArg<String>? body,
    TfArg<String>? credentialsArn,
    TfArg<String>? description,
    TfArg<bool>? disableExecuteApiEndpoint,
    TfArg<bool>? failOnWarnings,
    TfArg<String>? ipAddressType,
    required TfArg<String> name,
    required TfArg<String> protocolType,
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
           if (apiKeySelectionExpression != null)
             'api_key_selection_expression': apiKeySelectionExpression,
           if (body != null) 'body': body,
           if (credentialsArn != null) 'credentials_arn': credentialsArn,
           if (description != null) 'description': description,
           if (disableExecuteApiEndpoint != null)
             'disable_execute_api_endpoint': disableExecuteApiEndpoint,
           if (failOnWarnings != null) 'fail_on_warnings': failOnWarnings,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           'name': name,
           'protocol_type': protocolType,
           if (region != null) 'region': region,
           if (routeKey != null) 'route_key': routeKey,
           if (routeSelectionExpression != null)
             'route_selection_expression': routeSelectionExpression,
           if (tags != null) 'tags': tags,
           if (target != null) 'target': target,
           if (version != null) 'version': version,
           if (corsConfiguration != null)
             'cors_configuration': TfArg.literal(corsConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ApiSensitive;

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
}
