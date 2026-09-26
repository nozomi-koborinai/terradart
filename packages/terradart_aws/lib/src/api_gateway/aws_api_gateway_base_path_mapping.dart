// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_base_path_mapping`.
const Set<String> _awsApiGatewayBasePathMappingSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_base_path_mapping`.
final class AwsApiGatewayBasePathMapping extends Resource {
  static const String tfType = 'aws_api_gateway_base_path_mapping';

  AwsApiGatewayBasePathMapping({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? basePath,
    required TfArg<String> domainName,
    TfArg<String>? domainNameId,
    TfArg<String>? region,
    TfArg<String>? stageName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (basePath != null) 'base_path': basePath,
           'domain_name': domainName,
           if (domainNameId != null) 'domain_name_id': domainNameId,
           if (region != null) 'region': region,
           if (stageName != null) 'stage_name': stageName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayBasePathMappingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
