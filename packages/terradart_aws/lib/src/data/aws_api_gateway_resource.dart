// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_resource`.
const Set<String> _awsApiGatewayResourceSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_resource`.
final class DataAwsApiGatewayResource extends Data {
  static const String tfType = 'aws_api_gateway_resource';

  DataAwsApiGatewayResource({
    required super.localName,
    required TfArg<String> path,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'path': path,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');

  /// Reference to `path_part` attribute.
  TfRef<String> get pathPart => TfRef.attribute<String>(this, 'path_part');
}
