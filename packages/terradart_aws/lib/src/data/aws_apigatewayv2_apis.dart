// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_apis`.
const Set<String> _awsApigatewayv2ApisSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_apis`.
final class DataAwsApigatewayv2Apis extends Data {
  static const String tfType = 'aws_apigatewayv2_apis';

  DataAwsApigatewayv2Apis({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? protocolType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (protocolType != null) 'protocol_type': protocolType,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ApisSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
