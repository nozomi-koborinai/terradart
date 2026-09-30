// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_metric`.
const Set<String> _awsS3BucketMetricSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_s3_bucket_metric` (derived from provider schema).
@immutable
final class S3BucketMetricFilter {
  const S3BucketMetricFilter({this.accessPoint, this.prefix, this.tags});

  final TfArg<String>? accessPoint;

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'access_point': ?accessPoint?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_metric`.
final class AwsS3BucketMetric extends Resource {
  static const String tfType = 'aws_s3_bucket_metric';

  AwsS3BucketMetric({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    required TfArg<String> name,
    TfArg<String>? region,
    S3BucketMetricFilter? filter,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketMetricSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketMetric>`.
  RefTo<AwsS3BucketMetric> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
