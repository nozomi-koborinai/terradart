// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fms_resource_set`.
const Set<String> _awsFmsResourceSetSensitive = <String>{};

/// Typed helper for the `resource_set` block of
/// `aws_fms_resource_set` (derived from provider schema).
@immutable
final class FmsResourceSetResourceSet {
  const FmsResourceSetResourceSet({
    this.description,
    required this.name,
    this.resourceSetStatus,
    this.resourceTypeList,
    this.updateToken,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? resourceSetStatus;

  final TfArg<List<Object?>>? resourceTypeList;

  final TfArg<String>? updateToken;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (resourceSetStatus != null)
      'resource_set_status': resourceSetStatus!.toTfJson(),
    if (resourceTypeList != null)
      'resource_type_list': resourceTypeList!.toTfJson(),
    if (updateToken != null) 'update_token': updateToken!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fms_resource_set`.
final class AwsFmsResourceSet extends Resource {
  static const String tfType = 'aws_fms_resource_set';

  AwsFmsResourceSet({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<FmsResourceSetResourceSet>? resourceSet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (resourceSet != null)
             'resource_set': TfArg.literal([
               for (final e in resourceSet) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFmsResourceSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
