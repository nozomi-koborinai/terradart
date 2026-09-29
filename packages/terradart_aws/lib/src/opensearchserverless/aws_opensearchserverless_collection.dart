// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection`.
const Set<String> _awsOpensearchserverlessCollectionSensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_collection`.
final class AwsOpensearchserverlessCollection extends Resource {
  static const String tfType = 'aws_opensearchserverless_collection';

  AwsOpensearchserverlessCollection({
    required super.localName,
    TfArg<String>? collectionGroupName,
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? encryptionConfig,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? standbyReplicas,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    TfArg<List<Map<String, Object?>>>? vectorOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection_group_name': ?collectionGroupName,
           'description': ?description,
           'encryption_config': ?encryptionConfig,
           'name': name,
           'region': ?region,
           'standby_replicas': ?standbyReplicas,
           'tags': ?tags,
           'type': ?type,
           'vector_options': ?vectorOptions,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessCollection>`.
  RefTo<AwsOpensearchserverlessCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `collection_endpoint` attribute.
  TfRef<String> get collectionEndpoint =>
      TfRef.attribute<String>(this, 'collection_endpoint');

  /// Reference to `dashboard_endpoint` attribute.
  TfRef<String> get dashboardEndpoint =>
      TfRef.attribute<String>(this, 'dashboard_endpoint');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
