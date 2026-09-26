// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_api`.
const Set<String> _awsApigatewayv2ApiSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_api`.
final class DataAwsApigatewayv2Api extends Data {
  static const String tfType = 'aws_apigatewayv2_api';

  DataAwsApigatewayv2Api({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `api_key_selection_expression` attribute.
  TfRef<String> get apiKeySelectionExpression =>
      TfRef.attribute<String>(this, 'api_key_selection_expression');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cors_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get corsConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors_configuration');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_execute_api_endpoint` attribute.
  TfRef<bool> get disableExecuteApiEndpoint =>
      TfRef.attribute<bool>(this, 'disable_execute_api_endpoint');

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `protocol_type` attribute.
  TfRef<String> get protocolType =>
      TfRef.attribute<String>(this, 'protocol_type');

  /// Reference to `route_selection_expression` attribute.
  TfRef<String> get routeSelectionExpression =>
      TfRef.attribute<String>(this, 'route_selection_expression');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
