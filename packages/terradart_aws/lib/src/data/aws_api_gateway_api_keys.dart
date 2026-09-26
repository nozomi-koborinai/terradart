// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_api_keys`.
const Set<String> _awsApiGatewayApiKeysSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_api_keys`.
final class DataAwsApiGatewayApiKeys extends Data {
  static const String tfType = 'aws_api_gateway_api_keys';

  DataAwsApiGatewayApiKeys({
    required super.localName,
    TfArg<String>? customerId,
    TfArg<bool>? includeValues,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customerId != null) 'customer_id': customerId,
           if (includeValues != null) 'include_values': includeValues,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayApiKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `items` attribute.
  TfRef<List<Map<String, Object?>>> get items =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'items');
}
