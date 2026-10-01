// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../logging/google_logging_project_bucket_config.dart'
    show GoogleLoggingProjectBucketConfig;

/// Sensitive field paths for `google_logging_linked_dataset`.
const Set<String> _googleLoggingLinkedDatasetSensitive = <String>{};

/// `bigquery_dataset` block — destination dataset for log analytics.
class LoggingLinkedDatasetBigqueryDataset {
  const LoggingLinkedDatasetBigqueryDataset({required this.datasetId});
  final TfArg<String> datasetId;
  Map<String, Object?> toArgMap() => {'dataset_id': datasetId.toTfJson()};
}

/// Factory wrapper for `google_logging_linked_dataset`.
///
/// Describes a BigQuery linked dataset
///
/// Links a log bucket to a BigQuery dataset for Log Analytics. Pair with
/// [GoogleLoggingProjectBucketConfig] and [GoogleBigqueryDataset].
///
/// Example:
/// ```dart
/// GoogleLoggingLinkedDataset(
///   localName: 'audit_analytics',
///   bucket: auditBucket.ref,
///   linkId: TfArg.literal('audit-analytics'),
///   bigqueryDataset: LoggingLinkedDatasetBigqueryDataset(
///     datasetId: dataset.datasetId,
///   ),
/// );
/// ```
final class GoogleLoggingLinkedDataset extends Resource {
  static const String tfType = 'google_logging_linked_dataset';

  GoogleLoggingLinkedDataset({
    required super.localName,
    required RefTo<GoogleLoggingProjectBucketConfig> bucket,
    required TfArg<String> linkId,
    TfArg<String>? description,
    LoggingLinkedDatasetBigqueryDataset? bigqueryDataset,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'link_id': linkId,
           'description': ?description,
           if (bigqueryDataset != null)
             'bigquery_dataset': TfArg.literal([bigqueryDataset.toArgMap()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLinkedDatasetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingLinkedDataset>`.
  RefTo<GoogleLoggingLinkedDataset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkId => TfRef.attribute<String>(this, 'link_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
