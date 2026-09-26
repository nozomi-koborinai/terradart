// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_virtual_gateway`.
const Set<String> _awsAppmeshVirtualGatewaySensitive = <String>{};

/// Factory wrapper for `aws_appmesh_virtual_gateway`.
final class DataAwsAppmeshVirtualGateway extends Data {
  static const String tfType = 'aws_appmesh_virtual_gateway';

  DataAwsAppmeshVirtualGateway({
    required super.localName,
    required TfArg<String> meshName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_name': meshName,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `spec` attribute.
  TfRef<List<Map<String, Object?>>> get spec =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'spec');
}
