// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_table_export`.
const Set<String> _awsDynamodbTableExportSensitive = <String>{};

/// Typed helper for the `incremental_export_specification` block of
/// `aws_dynamodb_table_export` (derived from provider schema).
@immutable
final class DynamodbTableExportIncrementalExportSpecification {
  const DynamodbTableExportIncrementalExportSpecification({
    this.exportFromTime,
    this.exportToTime,
    this.exportViewType,
  });

  final TfArg<String>? exportFromTime;

  final TfArg<String>? exportToTime;

  final TfArg<String>? exportViewType;

  Map<String, Object?> encode() => {
    if (exportFromTime != null) 'export_from_time': exportFromTime!.toTfJson(),
    if (exportToTime != null) 'export_to_time': exportToTime!.toTfJson(),
    if (exportViewType != null) 'export_view_type': exportViewType!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dynamodb_table_export`.
final class AwsDynamodbTableExport extends Resource {
  static const String tfType = 'aws_dynamodb_table_export';

  AwsDynamodbTableExport({
    required super.localName,
    TfArg<String>? exportFormat,
    TfArg<String>? exportTime,
    TfArg<String>? exportType,
    TfArg<String>? region,
    required TfArg<String> s3Bucket,
    TfArg<String>? s3BucketOwner,
    TfArg<String>? s3Prefix,
    TfArg<String>? s3SseAlgorithm,
    TfArg<String>? s3SseKmsKeyId,
    required TfArg<String> tableArn,
    DynamodbTableExportIncrementalExportSpecification?
    incrementalExportSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (exportFormat != null) 'export_format': exportFormat,
           if (exportTime != null) 'export_time': exportTime,
           if (exportType != null) 'export_type': exportType,
           if (region != null) 'region': region,
           's3_bucket': s3Bucket,
           if (s3BucketOwner != null) 's3_bucket_owner': s3BucketOwner,
           if (s3Prefix != null) 's3_prefix': s3Prefix,
           if (s3SseAlgorithm != null) 's3_sse_algorithm': s3SseAlgorithm,
           if (s3SseKmsKeyId != null) 's3_sse_kms_key_id': s3SseKmsKeyId,
           'table_arn': tableArn,
           if (incrementalExportSpecification != null)
             'incremental_export_specification': TfArg.literal(
               incrementalExportSpecification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `billed_size_in_bytes` attribute.
  TfRef<num> get billedSizeInBytes =>
      TfRef.attribute<num>(this, 'billed_size_in_bytes');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `export_status` attribute.
  TfRef<String> get exportStatus =>
      TfRef.attribute<String>(this, 'export_status');

  /// Reference to `item_count` attribute.
  TfRef<num> get itemCount => TfRef.attribute<num>(this, 'item_count');

  /// Reference to `manifest_files_s3_key` attribute.
  TfRef<String> get manifestFilesS3Key =>
      TfRef.attribute<String>(this, 'manifest_files_s3_key');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');
}
