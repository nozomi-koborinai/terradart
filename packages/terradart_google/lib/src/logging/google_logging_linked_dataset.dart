// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
/// Links a log bucket to a BigQuery dataset for Log Analytics. Pair with
/// [GoogleLoggingProjectBucketConfig] and [GoogleBigqueryDataset].
///
/// Example:
/// ```dart
/// GoogleLoggingLinkedDataset(
///   localName: 'audit_analytics',
///   bucket: TfArg.ref(auditBucket.bucketIdRef),
///   linkId: TfArg.literal('audit-analytics'),
///   bigqueryDataset: LoggingLinkedDatasetBigqueryDataset(
///     datasetId: TfArg.ref(dataset.datasetIdRef),
///   ),
/// );
/// ```
final class GoogleLoggingLinkedDataset extends Resource {
  static const String tfType = 'google_logging_linked_dataset';

  GoogleLoggingLinkedDataset({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> linkId,
    TfArg<String>? description,
    LoggingLinkedDatasetBigqueryDataset? bigqueryDataset,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'link_id': linkId,
           if (description != null) 'description': description,
           if (bigqueryDataset != null)
             'bigquery_dataset': TfArg.literal([bigqueryDataset.toArgMap()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLinkedDatasetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');
}
