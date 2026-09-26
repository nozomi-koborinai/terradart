// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_resource`.
const Set<String> _awsApiGatewayResourceSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_resource`.
final class AwsApiGatewayResource extends Resource {
  static const String tfType = 'aws_api_gateway_resource';

  AwsApiGatewayResource({
    required super.localName,
    required TfArg<String> parentId,
    required TfArg<String> pathPart,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent_id': parentId,
           'path_part': pathPart,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');
}
