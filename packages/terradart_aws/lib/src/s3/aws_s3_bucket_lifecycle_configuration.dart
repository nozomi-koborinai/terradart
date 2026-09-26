// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_lifecycle_configuration`.
const Set<String> _awsS3BucketLifecycleConfigurationSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRule {
  const S3BucketLifecycleConfigurationRule({
    required this.id,
    this.prefix,
    required this.status,
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransition,
    this.transition,
  });

  final TfArg<String> id;

  final TfArg<String>? prefix;

  final TfArg<String> status;

  final List<S3BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload>?
  abortIncompleteMultipartUpload;

  final List<S3BucketLifecycleConfigurationRuleExpiration>? expiration;

  final List<S3BucketLifecycleConfigurationRuleFilter>? filter;

  final List<S3BucketLifecycleConfigurationRuleNoncurrentVersionExpiration>?
  noncurrentVersionExpiration;

  final List<S3BucketLifecycleConfigurationRuleNoncurrentVersionTransition>?
  noncurrentVersionTransition;

  final List<S3BucketLifecycleConfigurationRuleTransition>? transition;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'status': status.toTfJson(),
    if (abortIncompleteMultipartUpload != null)
      'abort_incomplete_multipart_upload': [
        for (final e in abortIncompleteMultipartUpload!) e.encode(),
      ],
    if (expiration != null)
      'expiration': [for (final e in expiration!) e.encode()],
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
    if (noncurrentVersionExpiration != null)
      'noncurrent_version_expiration': [
        for (final e in noncurrentVersionExpiration!) e.encode(),
      ],
    if (noncurrentVersionTransition != null)
      'noncurrent_version_transition': [
        for (final e in noncurrentVersionTransition!) e.encode(),
      ],
    if (transition != null)
      'transition': [for (final e in transition!) e.encode()],
  };
}

/// Typed helper for the `rule.abort_incomplete_multipart_upload` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload {
  const S3BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload({
    this.daysAfterInitiation,
  });

  final TfArg<num>? daysAfterInitiation;

  Map<String, Object?> encode() => {
    if (daysAfterInitiation != null)
      'days_after_initiation': daysAfterInitiation!.toTfJson(),
  };
}

/// Typed helper for the `rule.expiration` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleExpiration {
  const S3BucketLifecycleConfigurationRuleExpiration({
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
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleFilter {
  const S3BucketLifecycleConfigurationRuleFilter({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.and,
    this.tag,
  });

  final TfArg<num>? objectSizeGreaterThan;

  final TfArg<num>? objectSizeLessThan;

  final TfArg<String>? prefix;

  final List<S3BucketLifecycleConfigurationRuleFilterAnd>? and;

  final List<S3BucketLifecycleConfigurationRuleFilterTag>? tag;

  Map<String, Object?> encode() => {
    if (objectSizeGreaterThan != null)
      'object_size_greater_than': objectSizeGreaterThan!.toTfJson(),
    if (objectSizeLessThan != null)
      'object_size_less_than': objectSizeLessThan!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (tag != null) 'tag': [for (final e in tag!) e.encode()],
  };
}

/// Typed helper for the `rule.filter.and` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleFilterAnd {
  const S3BucketLifecycleConfigurationRuleFilterAnd({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tags,
  });

  final TfArg<num>? objectSizeGreaterThan;

  final TfArg<num>? objectSizeLessThan;

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (objectSizeGreaterThan != null)
      'object_size_greater_than': objectSizeGreaterThan!.toTfJson(),
    if (objectSizeLessThan != null)
      'object_size_less_than': objectSizeLessThan!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Typed helper for the `rule.filter.tag` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleFilterTag {
  const S3BucketLifecycleConfigurationRuleFilterTag({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `rule.noncurrent_version_expiration` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleNoncurrentVersionExpiration {
  const S3BucketLifecycleConfigurationRuleNoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
  });

  final TfArg<num>? newerNoncurrentVersions;

  final TfArg<num> noncurrentDays;

  Map<String, Object?> encode() => {
    if (newerNoncurrentVersions != null)
      'newer_noncurrent_versions': newerNoncurrentVersions!.toTfJson(),
    'noncurrent_days': noncurrentDays.toTfJson(),
  };
}

/// Typed helper for the `rule.noncurrent_version_transition` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleNoncurrentVersionTransition {
  const S3BucketLifecycleConfigurationRuleNoncurrentVersionTransition({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
    required this.storageClass,
  });

  final TfArg<num>? newerNoncurrentVersions;

  final TfArg<num> noncurrentDays;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    if (newerNoncurrentVersions != null)
      'newer_noncurrent_versions': newerNoncurrentVersions!.toTfJson(),
    'noncurrent_days': noncurrentDays.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Typed helper for the `rule.transition` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationRuleTransition {
  const S3BucketLifecycleConfigurationRuleTransition({
    this.date,
    this.days,
    required this.storageClass,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (days != null) 'days': days!.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_lifecycle_configuration`.
final class AwsS3BucketLifecycleConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_lifecycle_configuration';

  AwsS3BucketLifecycleConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    TfArg<String>? transitionDefaultMinimumObjectSize,
    List<S3BucketLifecycleConfigurationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           if (transitionDefaultMinimumObjectSize != null)
             'transition_default_minimum_object_size':
                 transitionDefaultMinimumObjectSize,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketLifecycleConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
