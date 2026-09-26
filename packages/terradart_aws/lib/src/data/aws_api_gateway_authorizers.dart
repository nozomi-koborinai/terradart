// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_authorizers`.
const Set<String> _awsApiGatewayAuthorizersSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_authorizers`.
final class DataAwsApiGatewayAuthorizers extends Data {
  static const String tfType = 'aws_api_gateway_authorizers';

  DataAwsApiGatewayAuthorizers({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayAuthorizersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
