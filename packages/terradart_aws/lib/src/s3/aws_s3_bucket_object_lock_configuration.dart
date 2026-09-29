// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_object_lock_configuration`.
const Set<String> _awsS3BucketObjectLockConfigurationSensitive = <String>{
  'token',
};

/// S3 Bucket Object Lock Configuration Object Lock enum for `object_lock_enabled`.
enum S3BucketObjectLockConfigurationObjectLockEnabled implements TerraformEnum {
  enabled('Enabled');

  const S3BucketObjectLockConfigurationObjectLockEnabled(this.terraformValue);
  @override
  final String terraformValue;
}

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
    this.daysOrYears,
    this.mode,
  });

  final S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears?
  daysOrYears;

  final TfArg<S3BucketObjectLockConfigurationRuleDefaultRetentionMode>? mode;

  Map<String, Object?> encode() => {
    ...?daysOrYears?.encode(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// At most one of `days`, `years` on the `rule.default_retention` block of `aws_s3_bucket_object_lock_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.days(...)`.
sealed class S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears {
  const S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears();

  /// Sets `days`.
  const factory S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears.days(
    TfArg<num> days,
  ) = S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYearsDays;

  /// Sets `years`.
  const factory S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears.years(
    TfArg<num> years,
  ) = S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYearsYears;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears.days] choice: sets `days`.
final class S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYearsDays
    extends S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears {
  const S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYearsDays(
    this.days,
  );

  final TfArg<num> days;

  @override
  String get blockKey => 'days';

  @override
  Map<String, Object?> encode() => {'days': days.toTfJson()};
}

/// The [S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears.years] choice: sets `years`.
final class S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYearsYears
    extends S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYears {
  const S3BucketObjectLockConfigurationRuleDefaultRetentionDaysOrYearsYears(
    this.years,
  );

  final TfArg<num> years;

  @override
  String get blockKey => 'years';

  @override
  Map<String, Object?> encode() => {'years': years.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum S3BucketObjectLockConfigurationRuleDefaultRetentionMode
    implements TerraformEnum {
  governance('GOVERNANCE'),
  compliance('COMPLIANCE');

  const S3BucketObjectLockConfigurationRuleDefaultRetentionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_object_lock_configuration`.
final class AwsS3BucketObjectLockConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_object_lock_configuration';

  AwsS3BucketObjectLockConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<S3BucketObjectLockConfigurationObjectLockEnabled>? objectLockEnabled,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketObjectLockConfiguration>`.
  RefTo<AwsS3BucketObjectLockConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
