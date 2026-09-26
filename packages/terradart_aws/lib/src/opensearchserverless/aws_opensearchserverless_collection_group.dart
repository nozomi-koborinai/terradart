// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection_group`.
const Set<String> _awsOpensearchserverlessCollectionGroupSensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_collection_group`.
final class AwsOpensearchserverlessCollectionGroup extends Resource {
  static const String tfType = 'aws_opensearchserverless_collection_group';

  AwsOpensearchserverlessCollectionGroup({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? capacityLimits,
    TfArg<String>? description,
    TfArg<String>? generation,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> standbyReplicas,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (capacityLimits != null) 'capacity_limits': capacityLimits,
           if (description != null) 'description': description,
           if (generation != null) 'generation': generation,
           'name': name,
           if (region != null) 'region': region,
           'standby_replicas': standbyReplicas,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessCollectionGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
