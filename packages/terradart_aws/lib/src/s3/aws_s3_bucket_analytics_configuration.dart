// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_analytics_configuration`.
const Set<String> _awsS3BucketAnalyticsConfigurationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_s3_bucket_analytics_configuration` (derived from provider schema).
@immutable
final class S3BucketAnalyticsConfigurationFilter {
  const S3BucketAnalyticsConfigurationFilter({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Typed helper for the `storage_class_analysis` block of
/// `aws_s3_bucket_analytics_configuration` (derived from provider schema).
@immutable
final class S3BucketAnalyticsConfigurationStorageClassAnalysis {
  const S3BucketAnalyticsConfigurationStorageClassAnalysis({
    required this.dataExport,
  });

  final S3BucketAnalyticsConfigurationStorageClassAnalysisDataExport dataExport;

  Map<String, Object?> encode() => {'data_export': dataExport.encode()};
}

/// Typed helper for the `storage_class_analysis.data_export` block of
/// `aws_s3_bucket_analytics_configuration` (derived from provider schema).
@immutable
final class S3BucketAnalyticsConfigurationStorageClassAnalysisDataExport {
  const S3BucketAnalyticsConfigurationStorageClassAnalysisDataExport({
    this.outputSchemaVersion,
    required this.destination,
  });

  final TfArg<
    S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportOutputSchemaVersion
  >?
  outputSchemaVersion;

  final S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestination
  destination;

  Map<String, Object?> encode() => {
    'output_schema_version': ?outputSchemaVersion?.toTfJson(),
    'destination': destination.encode(),
  };
}

/// `output_schema_version` — derived from the provider schema description.
enum S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportOutputSchemaVersion
    implements TerraformEnum {
  v1('V_1');

  const S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportOutputSchemaVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_class_analysis.data_export.destination` block of
/// `aws_s3_bucket_analytics_configuration` (derived from provider schema).
@immutable
final class S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestination {
  const S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestination({
    required this.s3BucketDestination,
  });

  final S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination
  s3BucketDestination;

  Map<String, Object?> encode() => {
    's3_bucket_destination': s3BucketDestination.encode(),
  };
}

/// Typed helper for the `storage_class_analysis.data_export.destination.s3_bucket_destination` block of
/// `aws_s3_bucket_analytics_configuration` (derived from provider schema).
@immutable
final class S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination {
  const S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination({
    this.bucketAccountId,
    required this.bucketArn,
    this.format,
    this.prefix,
  });

  final TfArg<String>? bucketAccountId;

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<
    S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationFormat
  >?
  format;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_account_id': ?bucketAccountId?.toTfJson(),
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'format': ?format?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
enum S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationFormat
    implements TerraformEnum {
  csv('CSV');

  const S3BucketAnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_analytics_configuration`.
final class AwsS3BucketAnalyticsConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_analytics_configuration';

  AwsS3BucketAnalyticsConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    required TfArg<String> name,
    TfArg<String>? region,
    S3BucketAnalyticsConfigurationFilter? filter,
    S3BucketAnalyticsConfigurationStorageClassAnalysis? storageClassAnalysis,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'name': name,
           'region': ?region,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           if (storageClassAnalysis != null)
             'storage_class_analysis': TfArg.literal(
               storageClassAnalysis.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketAnalyticsConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketAnalyticsConfiguration>`.
  RefTo<AwsS3BucketAnalyticsConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
