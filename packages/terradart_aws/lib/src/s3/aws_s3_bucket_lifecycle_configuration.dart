// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_lifecycle_configuration`.
const Set<String> _awsS3BucketLifecycleConfigurationSensitive = <String>{};

/// S3 Bucket Lifecycle Configuration Transition Default Minimum Object enum for `transition_default_minimum_object_size`.
enum S3BucketLifecycleConfigurationTransitionDefaultMinimumObjectSize
    implements TerraformEnum {
  variesByStorageClass('varies_by_storage_class'),
  allStorageClasses128k('all_storage_classes_128K');

  const S3BucketLifecycleConfigurationTransitionDefaultMinimumObjectSize(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

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

  final TfArg<S3BucketLifecycleConfigurationStatus> status;

  final List<S3BucketLifecycleConfigurationAbortIncompleteMultipartUpload>?
  abortIncompleteMultipartUpload;

  final List<S3BucketLifecycleConfigurationExpiration>? expiration;

  final List<S3BucketLifecycleConfigurationFilter>? filter;

  final List<S3BucketLifecycleConfigurationNoncurrentVersionExpiration>?
  noncurrentVersionExpiration;

  final List<S3BucketLifecycleConfigurationNoncurrentVersionTransition>?
  noncurrentVersionTransition;

  final List<S3BucketLifecycleConfigurationTransition>? transition;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
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

/// `status` — derived from the provider schema description.
enum S3BucketLifecycleConfigurationStatus implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const S3BucketLifecycleConfigurationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.abort_incomplete_multipart_upload` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationAbortIncompleteMultipartUpload {
  const S3BucketLifecycleConfigurationAbortIncompleteMultipartUpload({
    this.daysAfterInitiation,
  });

  final TfArg<num>? daysAfterInitiation;

  Map<String, Object?> encode() => {
    'days_after_initiation': ?daysAfterInitiation?.toTfJson(),
  };
}

/// Typed helper for the `rule.expiration` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationExpiration {
  const S3BucketLifecycleConfigurationExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<bool>? expiredObjectDeleteMarker;

  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'days': ?days?.toTfJson(),
    'expired_object_delete_marker': ?expiredObjectDeleteMarker?.toTfJson(),
  };
}

/// Typed helper for the `rule.filter` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationFilter {
  const S3BucketLifecycleConfigurationFilter({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.and,
    this.tag,
  });

  final TfArg<num>? objectSizeGreaterThan;

  final TfArg<num>? objectSizeLessThan;

  final TfArg<String>? prefix;

  final List<S3BucketLifecycleConfigurationAnd>? and;

  final List<S3BucketLifecycleConfigurationTag>? tag;

  Map<String, Object?> encode() => {
    'object_size_greater_than': ?objectSizeGreaterThan?.toTfJson(),
    'object_size_less_than': ?objectSizeLessThan?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (tag != null) 'tag': [for (final e in tag!) e.encode()],
  };
}

/// Typed helper for the `rule.filter.and` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationAnd {
  const S3BucketLifecycleConfigurationAnd({
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
    'object_size_greater_than': ?objectSizeGreaterThan?.toTfJson(),
    'object_size_less_than': ?objectSizeLessThan?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Typed helper for the `rule.filter.tag` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationTag {
  const S3BucketLifecycleConfigurationTag({
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
final class S3BucketLifecycleConfigurationNoncurrentVersionExpiration {
  const S3BucketLifecycleConfigurationNoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
  });

  final TfArg<num>? newerNoncurrentVersions;

  final TfArg<num> noncurrentDays;

  Map<String, Object?> encode() => {
    'newer_noncurrent_versions': ?newerNoncurrentVersions?.toTfJson(),
    'noncurrent_days': noncurrentDays.toTfJson(),
  };
}

/// Typed helper for the `rule.noncurrent_version_transition` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationNoncurrentVersionTransition {
  const S3BucketLifecycleConfigurationNoncurrentVersionTransition({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
    required this.storageClass,
  });

  final TfArg<num>? newerNoncurrentVersions;

  final TfArg<num> noncurrentDays;

  final TfArg<S3BucketLifecycleConfigurationStorageClass> storageClass;

  Map<String, Object?> encode() => {
    'newer_noncurrent_versions': ?newerNoncurrentVersions?.toTfJson(),
    'noncurrent_days': noncurrentDays.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum S3BucketLifecycleConfigurationStorageClass implements TerraformEnum {
  glacier('GLACIER'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  deepArchive('DEEP_ARCHIVE'),
  glacierIr('GLACIER_IR');

  const S3BucketLifecycleConfigurationStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.transition` block of
/// `aws_s3_bucket_lifecycle_configuration` (derived from provider schema).
@immutable
final class S3BucketLifecycleConfigurationTransition {
  const S3BucketLifecycleConfigurationTransition({
    this.date,
    this.days,
    required this.storageClass,
  });

  final TfArg<String>? date;

  final TfArg<num>? days;

  final TfArg<S3BucketLifecycleConfigurationStorageClass> storageClass;

  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'days': ?days?.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_lifecycle_configuration`.
final class AwsS3BucketLifecycleConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_lifecycle_configuration';

  AwsS3BucketLifecycleConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    TfArg<S3BucketLifecycleConfigurationTransitionDefaultMinimumObjectSize>?
    transitionDefaultMinimumObjectSize,
    List<S3BucketLifecycleConfigurationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'region': ?region,
           'transition_default_minimum_object_size':
               ?transitionDefaultMinimumObjectSize,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketLifecycleConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketLifecycleConfiguration>`.
  RefTo<AwsS3BucketLifecycleConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `transition_default_minimum_object_size` attribute.
  TfRef<String> get transitionDefaultMinimumObjectSize =>
      TfRef.attribute<String>(this, 'transition_default_minimum_object_size');
}
