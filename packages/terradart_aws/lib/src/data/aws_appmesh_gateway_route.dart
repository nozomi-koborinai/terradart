// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../appmesh/aws_appmesh_gateway_route.dart';

/// Sensitive field paths for `aws_appmesh_gateway_route`.
const Set<String> _awsAppmeshGatewayRouteSensitive = <String>{};

/// Factory wrapper for `aws_appmesh_gateway_route`.
final class DataAwsAppmeshGatewayRoute extends Data {
  static const String tfType = 'aws_appmesh_gateway_route';

  DataAwsAppmeshGatewayRoute(
    super.localName, {
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualGatewayName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_name': meshName,
           'mesh_owner': ?meshOwner,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'virtual_gateway_name': virtualGatewayName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshGatewayRouteSensitive;

  /// A reference to the `aws_appmesh_gateway_route` this data source reads, for
  /// arguments typed `RefTo<AwsAppmeshGatewayRoute>`.
  RefTo<AwsAppmeshGatewayRoute> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `spec` attribute.
  TfRef<List<Map<String, Object?>>> get spec =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'spec');

  /// Reference to `mesh_name` attribute.
  TfRef<String> get meshName => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_gateway_name` attribute.
  TfRef<String> get virtualGatewayName =>
      TfRef.attribute<String>(this, 'virtual_gateway_name');
}
