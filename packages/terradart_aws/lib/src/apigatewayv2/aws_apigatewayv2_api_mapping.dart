// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_api_mapping`.
const Set<String> _awsApigatewayv2ApiMappingSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_api_mapping`.
final class AwsApigatewayv2ApiMapping extends Resource {
  static const String tfType = 'aws_apigatewayv2_api_mapping';

  AwsApigatewayv2ApiMapping({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? apiMappingKey,
    required TfArg<String> domainName,
    TfArg<String>? region,
    required TfArg<String> stage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (apiMappingKey != null) 'api_mapping_key': apiMappingKey,
           'domain_name': domainName,
           if (region != null) 'region': region,
           'stage': stage,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ApiMappingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
