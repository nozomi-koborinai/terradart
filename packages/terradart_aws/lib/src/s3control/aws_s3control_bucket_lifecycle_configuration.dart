// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_bucket_lifecycle_configuration`.
const Set<String> _awsS3controlBucketLifecycleConfigurationSensitive =
    <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3control_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3controlBucketLifecycleConfigurationRule {
  const S3controlBucketLifecycleConfigurationRule({
    required this.id,
    this.status,
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
  });

  final TfArg<String> id;

  final TfArg<String>? status;

  final S3controlBucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload?
  abortIncompleteMultipartUpload;

  final S3controlBucketLifecycleConfigurationRuleExpiration? expiration;

  final S3controlBucketLifecycleConfigurationRuleFilter? filter;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (abortIncompleteMultipartUpload != null)
      'abort_incomplete_multipart_upload': abortIncompleteMultipartUpload!
          .encode(),
    if (expiration != null) 'expiration': expiration!.encode(),
    if (filter != null) 'filter': filter!.encode(),
  };
}

/// Typed helper for the `rule.abort_incomplete_multipart_upload` block of
/// `aws_s3control_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3controlBucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload {
  const S3controlBucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload({
    required this.daysAfterInitiation,
  });

  final TfArg<num> daysAfterInitiation;

  Map<String, Object?> encode() => {
    'days_after_initiation': daysAfterInitiation.toTfJson(),
  };
}

/// Typed helper for the `rule.expiration` block of
/// `aws_s3control_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3controlBucketLifecycleConfigurationRuleExpiration {
  const S3controlBucketLifecycleConfigurationRuleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<bool>? expiredObjectDeleteMarker;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (days != null) 'days': days!.toTfJson(),
    if (expiredObjectDeleteMarker != null)
      'expired_object_delete_marker': expiredObjectDeleteMarker!.toTfJson(),
  };
}

/// Typed helper for the `rule.filter` block of
/// `aws_s3control_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3controlBucketLifecycleConfigurationRuleFilter {
  const S3controlBucketLifecycleConfigurationRuleFilter({
    this.prefix,
    this.tags,
  });

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_bucket_lifecycle_configuration`.
final class AwsS3controlBucketLifecycleConfiguration extends Resource {
  static const String tfType = 'aws_s3control_bucket_lifecycle_configuration';

  AwsS3controlBucketLifecycleConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? region,
    required List<S3controlBucketLifecycleConfigurationRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (region != null) 'region': region,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlBucketLifecycleConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
