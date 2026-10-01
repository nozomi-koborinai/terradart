// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_route`.
const Set<String> _awsApigatewayv2RouteSensitive = <String>{};

/// Apigatewayv2 Route Authorization enum for `authorization_type`.
enum Apigatewayv2RouteAuthorizationType implements TerraformEnum {
  none('NONE'),
  awsIam('AWS_IAM'),
  custom('CUSTOM'),
  jwt('JWT');

  const Apigatewayv2RouteAuthorizationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `request_parameter` block of
/// `aws_apigatewayv2_route` (derived from provider schema).
@immutable
final class Apigatewayv2RouteRequestParameter {
  const Apigatewayv2RouteRequestParameter({
    required this.requestParameterKey,
    required this.required,
  });

  final TfArg<String> requestParameterKey;

  final TfArg<bool> required;

  Map<String, Object?> encode() => {
    'request_parameter_key': requestParameterKey.toTfJson(),
    'required': required.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_route`.
final class AwsApigatewayv2Route extends Resource {
  static const String tfType = 'aws_apigatewayv2_route';

  AwsApigatewayv2Route({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<bool>? apiKeyRequired,
    TfArg<List<String>>? authorizationScopes,
    TfArg<Apigatewayv2RouteAuthorizationType>? authorizationType,
    TfArg<String>? authorizerId,
    TfArg<String>? modelSelectionExpression,
    TfArg<String>? operationName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? requestModels,
    required TfArg<String> routeKey,
    TfArg<String>? routeResponseSelectionExpression,
    TfArg<String>? target,
    List<Apigatewayv2RouteRequestParameter>? requestParameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'api_key_required': ?apiKeyRequired,
           'authorization_scopes': ?authorizationScopes,
           'authorization_type': ?authorizationType,
           'authorizer_id': ?authorizerId,
           'model_selection_expression': ?modelSelectionExpression,
           'operation_name': ?operationName,
           'region': ?region,
           'request_models': ?requestModels,
           'route_key': routeKey,
           'route_response_selection_expression':
               ?routeResponseSelectionExpression,
           'target': ?target,
           if (requestParameter != null)
             'request_parameter': TfArg.literal([
               for (final e in requestParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2RouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Route>`.
  RefTo<AwsApigatewayv2Route> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `api_key_required` attribute.
  TfRef<bool> get apiKeyRequired =>
      TfRef.attribute<bool>(this, 'api_key_required');

  /// Reference to `authorization_scopes` attribute.
  TfRef<List<String>> get authorizationScopes =>
      TfRef.attribute<List<String>>(this, 'authorization_scopes');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `authorizer_id` attribute.
  TfRef<String> get authorizerId =>
      TfRef.attribute<String>(this, 'authorizer_id');

  /// Reference to `model_selection_expression` attribute.
  TfRef<String> get modelSelectionExpression =>
      TfRef.attribute<String>(this, 'model_selection_expression');

  /// Reference to `operation_name` attribute.
  TfRef<String> get operationName =>
      TfRef.attribute<String>(this, 'operation_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_models` attribute.
  TfRef<Map<String, String>> get requestModels =>
      TfRef.attribute<Map<String, String>>(this, 'request_models');

  /// Reference to `route_key` attribute.
  TfRef<String> get routeKey => TfRef.attribute<String>(this, 'route_key');

  /// Reference to `route_response_selection_expression` attribute.
  TfRef<String> get routeResponseSelectionExpression =>
      TfRef.attribute<String>(this, 'route_response_selection_expression');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
