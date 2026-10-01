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
           'model_selection_expression': ?modelSelectionExpression,
           'region': ?region,
           'response_models': ?responseModels,
           'route_id': routeId,
           'route_response_key': routeResponseKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2RouteResponseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2RouteResponse>`.
  RefTo<AwsApigatewayv2RouteResponse> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `model_selection_expression` attribute.
  TfRef<String> get modelSelectionExpression =>
      TfRef.attribute<String>(this, 'model_selection_expression');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `response_models` attribute.
  TfRef<Map<String, String>> get responseModels =>
      TfRef.attribute<Map<String, String>>(this, 'response_models');

  /// Reference to `route_id` attribute.
  TfRef<String> get routeId => TfRef.attribute<String>(this, 'route_id');

  /// Reference to `route_response_key` attribute.
  TfRef<String> get routeResponseKey =>
      TfRef.attribute<String>(this, 'route_response_key');
}
