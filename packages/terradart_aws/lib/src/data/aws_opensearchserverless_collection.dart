// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../opensearchserverless/aws_opensearchserverless_collection.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection`.
const Set<String> _awsOpensearchserverlessCollectionSensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_collection`.
final class DataAwsOpensearchserverlessCollection extends Data {
  static const String tfType = 'aws_opensearchserverless_collection';

  DataAwsOpensearchserverlessCollection(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': ?name, 'region': ?region});

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessCollectionSensitive;

  /// A reference to the `aws_opensearchserverless_collection` this data source reads, for
  /// arguments typed `RefTo<AwsOpensearchserverlessCollection>`.
  RefTo<AwsOpensearchserverlessCollection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `collection_endpoint` attribute.
  TfRef<String> get collectionEndpoint =>
      TfRef.attribute<String>(this, 'collection_endpoint');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `dashboard_endpoint` attribute.
  TfRef<String> get dashboardEndpoint =>
      TfRef.attribute<String>(this, 'dashboard_endpoint');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `failure_code` attribute.
  TfRef<String> get failureCode =>
      TfRef.attribute<String>(this, 'failure_code');

  /// Reference to `failure_message` attribute.
  TfRef<String> get failureMessage =>
      TfRef.attribute<String>(this, 'failure_message');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');

  /// Reference to `standby_replicas` attribute.
  TfRef<String> get standbyReplicas =>
      TfRef.attribute<String>(this, 'standby_replicas');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
