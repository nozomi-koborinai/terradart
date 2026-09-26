// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection_group`.
const Set<String> _awsOpensearchserverlessCollectionGroupSensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_collection_group`.
final class DataAwsOpensearchserverlessCollectionGroup extends Data {
  static const String tfType = 'aws_opensearchserverless_collection_group';

  DataAwsOpensearchserverlessCollectionGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
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

  /// Reference to `capacity_limits` attribute.
  TfRef<List<Map<String, Object?>>> get capacityLimits =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'capacity_limits');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `standby_replicas` attribute.
  TfRef<String> get standbyReplicas =>
      TfRef.attribute<String>(this, 'standby_replicas');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
