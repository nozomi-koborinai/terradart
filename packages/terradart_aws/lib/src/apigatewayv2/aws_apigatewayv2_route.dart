// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_route`.
const Set<String> _awsApigatewayv2RouteSensitive = <String>{};

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
    TfArg<String>? authorizationType,
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
           if (apiKeyRequired != null) 'api_key_required': apiKeyRequired,
           if (authorizationScopes != null)
             'authorization_scopes': authorizationScopes,
           if (authorizationType != null)
             'authorization_type': authorizationType,
           if (authorizerId != null) 'authorizer_id': authorizerId,
           if (modelSelectionExpression != null)
             'model_selection_expression': modelSelectionExpression,
           if (operationName != null) 'operation_name': operationName,
           if (region != null) 'region': region,
           if (requestModels != null) 'request_models': requestModels,
           'route_key': routeKey,
           if (routeResponseSelectionExpression != null)
             'route_response_selection_expression':
                 routeResponseSelectionExpression,
           if (target != null) 'target': target,
           if (requestParameter != null)
             'request_parameter': TfArg.literal([
               for (final e in requestParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2RouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
