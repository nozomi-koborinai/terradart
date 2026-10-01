// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_apigee_datastore`.
const Set<String> _googleApigeeDatastoreSensitive = <String>{};

/// Target backend for `google_apigee_datastore`.
extension type const ApigeeDatastoreTargetType._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeDatastoreTargetType.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeDatastoreTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeDatastoreTargetType.arg(TfArg<String> arg) : this._(arg);

  static const gcs = ApigeeDatastoreTargetType._(TfArgLiteral('gcs'));
  static const bigquery = ApigeeDatastoreTargetType._(TfArgLiteral('bigquery'));

  static const List<ApigeeDatastoreTargetType> values = [gcs, bigquery];
}

/// Terraform `deletion_policy` for Apigee datastores.
extension type const ApigeeDatastoreDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeDatastoreDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeDatastoreDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeDatastoreDeletionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const delete = ApigeeDatastoreDeletionPolicy._(TfArgLiteral('DELETE'));
  static const abandon = ApigeeDatastoreDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<ApigeeDatastoreDeletionPolicy> values = [delete, abandon];
}

/// Typed helper for the `datastore_config` block of
/// `google_apigee_datastore` (derived from provider schema).
@immutable
final class ApigeeDatastoreConfig {
  const ApigeeDatastoreConfig({
    this.bucketName,
    this.datasetName,
    this.path,
    required this.projectId,
    this.tablePrefix,
  });

  final RefTo<GoogleStorageBucket>? bucketName;

  final TfArg<String>? datasetName;

  final TfArg<String>? path;

  final TfArg<String> projectId;

  final TfArg<String>? tablePrefix;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('name').toTfJson(),
    'dataset_name': ?datasetName?.toTfJson(),
    'path': ?path?.toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_prefix': ?tablePrefix?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_datastore`.
///
/// An analytics datastore for an Apigee organization. Datastores configure
/// export destinations for Apigee Analytics data, supporting either Google
/// Cloud Storage (GCS) or BigQuery as targets.
final class GoogleApigeeDatastore extends Resource {
  static const String tfType = 'google_apigee_datastore';

  GoogleApigeeDatastore(
    super.localName, {
    required TfArg<String> orgId,
    required TfArg<String> displayName,
    required ApigeeDatastoreTargetType targetType,
    required ApigeeDatastoreConfig datastoreConfig,
    ApigeeDatastoreDeletionPolicy? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'display_name': displayName,
           'target_type': targetType,
           'datastore_config': TfArg.literal(datastoreConfig.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDatastoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeDatastore>`.
  RefTo<GoogleApigeeDatastore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_update_time` attribute.
  TfRef<String> get lastUpdateTime =>
      TfRef.attribute<String>(this, 'last_update_time');

  /// Reference to `org` attribute.
  TfRef<String> get org => TfRef.attribute<String>(this, 'org');

  /// Reference to `self` attribute.
  TfRef<String> get self => TfRef.attribute<String>(this, 'self');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');
}
