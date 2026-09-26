// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_route_response`.
const Set<String> _awsApigatewayv2RouteResponseSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_route_response`.
final class AwsApigatewayv2RouteResponse extends Resource {
  static const String tfType = 'aws_apigatewayv2_route_response';

  AwsApigatewayv2RouteResponse({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? modelSelectionExpression,
    TfArg<String>? region,
    TfArg<Map<String, String>>? responseModels,
    required TfArg<String> routeId,
    required TfArg<String> routeResponseKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (modelSelectionExpression != null)
             'model_selection_expression': modelSelectionExpression,
           if (region != null) 'region': region,
           if (responseModels != null) 'response_models': responseModels,
           'route_id': routeId,
           'route_response_key': routeResponseKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2RouteResponseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
