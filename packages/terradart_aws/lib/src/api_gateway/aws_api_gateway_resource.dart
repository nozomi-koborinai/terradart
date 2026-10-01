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
           'region': ?region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayResource>`.
  RefTo<AwsApiGatewayResource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');

  /// Reference to `path_part` attribute.
  TfRef<String> get pathPart => TfRef.attribute<String>(this, 'path_part');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');
}
