// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_object_lock_configuration`.
const Set<String> _awsS3BucketObjectLockConfigurationSensitive = <String>{
  'token',
};

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_object_lock_configuration` (derived from provider schema).
@immutable
final class S3BucketObjectLockConfigurationRule {
  const S3BucketObjectLockConfigurationRule({required this.defaultRetention});

  final S3BucketObjectLockConfigurationRuleDefaultRetention defaultRetention;

  Map<String, Object?> encode() => {
    'default_retention': defaultRetention.encode(),
  };
}

/// Typed helper for the `rule.default_retention` block of
/// `aws_s3_bucket_object_lock_configuration` (derived from provider schema).
@immutable
final class S3BucketObjectLockConfigurationRuleDefaultRetention {
  const S3BucketObjectLockConfigurationRuleDefaultRetention({
    this.days,
    this.mode,
    this.years,
  });

  final TfArg<num>? days;

  final TfArg<String>? mode;

  final TfArg<num>? years;

  Map<String, Object?> encode() => {
    if (days != null) 'days': days!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (years != null) 'years': years!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_object_lock_configuration`.
final class AwsS3BucketObjectLockConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_object_lock_configuration';

  AwsS3BucketObjectLockConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? objectLockEnabled,
    TfArg<String>? region,
    TfArg<String>? token,
    S3BucketObjectLockConfigurationRule? rule,
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
           if (objectLockEnabled != null)
             'object_lock_enabled': objectLockEnabled,
           if (region != null) 'region': region,
           if (token != null) 'token': token,
           if (rule != null) 'rule': TfArg.literal(rule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketObjectLockConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
