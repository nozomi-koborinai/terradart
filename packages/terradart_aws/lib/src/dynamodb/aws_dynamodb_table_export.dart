// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_dynamodb_table_export`.
const Set<String> _awsDynamodbTableExportSensitive = <String>{};

/// Dynamodb Table Export enum for `export_format`.
extension type const DynamodbTableExportFormat._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableExportFormat.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableExportFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableExportFormat.arg(TfArg<String> arg) : this._(arg);

  static const dynamodbJson = DynamodbTableExportFormat._(
    TfArgLiteral('DYNAMODB_JSON'),
  );
  static const ion = DynamodbTableExportFormat._(TfArgLiteral('ION'));

  static const List<DynamodbTableExportFormat> values = [dynamodbJson, ion];
}

/// Dynamodb Table Export enum for `export_type`.
extension type const DynamodbTableExportType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableExportType.variable(String name) : this._(TfArg.variable(name));
  DynamodbTableExportType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableExportType.arg(TfArg<String> arg) : this._(arg);

  static const fullExport = DynamodbTableExportType._(
    TfArgLiteral('FULL_EXPORT'),
  );
  static const incrementalExport = DynamodbTableExportType._(
    TfArgLiteral('INCREMENTAL_EXPORT'),
  );

  static const List<DynamodbTableExportType> values = [
    fullExport,
    incrementalExport,
  ];
}

/// Dynamodb Table Export S3 Sse enum for `s3_sse_algorithm`.
extension type const DynamodbTableExportS3SseAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableExportS3SseAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableExportS3SseAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableExportS3SseAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const aes256 = DynamodbTableExportS3SseAlgorithm._(
    TfArgLiteral('AES256'),
  );
  static const kms = DynamodbTableExportS3SseAlgorithm._(TfArgLiteral('KMS'));

  static const List<DynamodbTableExportS3SseAlgorithm> values = [aes256, kms];
}

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

  final DynamodbTableExportViewType? exportViewType;

  Map<String, Object?> encode() => {
    'export_from_time': ?exportFromTime?.toTfJson(),
    'export_to_time': ?exportToTime?.toTfJson(),
    'export_view_type': ?exportViewType?.toTfJson(),
  };
}

/// `export_view_type` — derived from the provider schema description.
extension type const DynamodbTableExportViewType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableExportViewType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableExportViewType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableExportViewType.arg(TfArg<String> arg) : this._(arg);

  static const newImage = DynamodbTableExportViewType._(
    TfArgLiteral('NEW_IMAGE'),
  );
  static const newAndOldImages = DynamodbTableExportViewType._(
    TfArgLiteral('NEW_AND_OLD_IMAGES'),
  );

  static const List<DynamodbTableExportViewType> values = [
    newImage,
    newAndOldImages,
  ];
}

/// Factory wrapper for `aws_dynamodb_table_export`.
final class AwsDynamodbTableExport extends Resource {
  static const String tfType = 'aws_dynamodb_table_export';

  AwsDynamodbTableExport(
    super.localName, {
    DynamodbTableExportFormat? exportFormat,
    TfArg<String>? exportTime,
    DynamodbTableExportType? exportType,
    TfArg<String>? region,
    required RefTo<AwsS3Bucket> s3Bucket,
    TfArg<String>? s3BucketOwner,
    TfArg<String>? s3Prefix,
    DynamodbTableExportS3SseAlgorithm? s3SseAlgorithm,
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
           'export_format': ?exportFormat,
           'export_time': ?exportTime,
           'export_type': ?exportType,
           'region': ?region,
           's3_bucket': s3Bucket.encodeAs('id'),
           's3_bucket_owner': ?s3BucketOwner,
           's3_prefix': ?s3Prefix,
           's3_sse_algorithm': ?s3SseAlgorithm,
           's3_sse_kms_key_id': ?s3SseKmsKeyId,
           'table_arn': tableArn,
           if (incrementalExportSpecification != null)
             'incremental_export_specification': TfArg.literal(
               incrementalExportSpecification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableExportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbTableExport>`.
  RefTo<AwsDynamodbTableExport> get ref => RefTo.of(this);

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

  /// Reference to `export_format` attribute.
  TfRef<String> get exportFormat =>
      TfRef.attribute<String>(this, 'export_format');

  /// Reference to `export_time` attribute.
  TfRef<String> get exportTime => TfRef.attribute<String>(this, 'export_time');

  /// Reference to `export_type` attribute.
  TfRef<String> get exportType => TfRef.attribute<String>(this, 'export_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3Bucket => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `s3_bucket_owner` attribute.
  TfRef<String> get s3BucketOwner =>
      TfRef.attribute<String>(this, 's3_bucket_owner');

  /// Reference to `s3_prefix` attribute.
  TfRef<String> get s3Prefix => TfRef.attribute<String>(this, 's3_prefix');

  /// Reference to `s3_sse_algorithm` attribute.
  TfRef<String> get s3SseAlgorithm =>
      TfRef.attribute<String>(this, 's3_sse_algorithm');

  /// Reference to `s3_sse_kms_key_id` attribute.
  TfRef<String> get s3SseKmsKeyId =>
      TfRef.attribute<String>(this, 's3_sse_kms_key_id');

  /// Reference to `table_arn` attribute.
  TfRef<String> get tableArn => TfRef.attribute<String>(this, 'table_arn');
}
