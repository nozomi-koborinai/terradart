// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_object_lock_configuration`.
const Set<String> _awsS3BucketObjectLockConfigurationSensitive = <String>{
  'token',
};

/// S3 Bucket Object Lock Configuration Object Lock enum for `object_lock_enabled`.
extension type const S3BucketObjectLockConfigurationObjectLockEnabled._(
  TfArg<String> _
) implements TfArg<String> {
  S3BucketObjectLockConfigurationObjectLockEnabled.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketObjectLockConfigurationObjectLockEnabled.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectLockConfigurationObjectLockEnabled.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = S3BucketObjectLockConfigurationObjectLockEnabled._(
    TfArgLiteral('Enabled'),
  );

  static const List<S3BucketObjectLockConfigurationObjectLockEnabled> values = [
    enabled,
  ];
}

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_object_lock_configuration` (derived from provider schema).
@immutable
final class S3BucketObjectLockConfigurationRule {
  const S3BucketObjectLockConfigurationRule({required this.defaultRetention});

  final S3BucketObjectLockConfigurationDefaultRetention defaultRetention;

  @internal
  Map<String, Object?> encode() => {
    'default_retention': defaultRetention.encode(),
  };
}

/// Typed helper for the `rule.default_retention` block of
/// `aws_s3_bucket_object_lock_configuration` (derived from provider schema).
@immutable
final class S3BucketObjectLockConfigurationDefaultRetention {
  const S3BucketObjectLockConfigurationDefaultRetention({
    this.period,
    this.mode,
  });

  final S3BucketObjectLockConfigurationPeriod? period;

  final S3BucketObjectLockConfigurationMode? mode;

  @internal
  Map<String, Object?> encode() => {
    ...?period?.encode(),
    'mode': ?mode?.toTfJson(),
  };
}

/// At most one of `days`, `years` on the `rule.default_retention` block of `aws_s3_bucket_object_lock_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.days(...)`.
sealed class S3BucketObjectLockConfigurationPeriod {
  const S3BucketObjectLockConfigurationPeriod();

  /// Sets `days`.
  const factory S3BucketObjectLockConfigurationPeriod.days(TfArg<num> days) =
      S3BucketObjectLockConfigurationPeriodDays;

  /// Sets `years`.
  const factory S3BucketObjectLockConfigurationPeriod.years(TfArg<num> years) =
      S3BucketObjectLockConfigurationPeriodYears;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [S3BucketObjectLockConfigurationPeriod.days] choice: sets `days`.
final class S3BucketObjectLockConfigurationPeriodDays
    extends S3BucketObjectLockConfigurationPeriod {
  const S3BucketObjectLockConfigurationPeriodDays(this.days);

  final TfArg<num> days;

  @internal
  @override
  String get blockKey => 'days';

  @internal
  @override
  Map<String, Object?> encode() => {'days': days.toTfJson()};
}

/// The [S3BucketObjectLockConfigurationPeriod.years] choice: sets `years`.
final class S3BucketObjectLockConfigurationPeriodYears
    extends S3BucketObjectLockConfigurationPeriod {
  const S3BucketObjectLockConfigurationPeriodYears(this.years);

  final TfArg<num> years;

  @internal
  @override
  String get blockKey => 'years';

  @internal
  @override
  Map<String, Object?> encode() => {'years': years.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const S3BucketObjectLockConfigurationMode._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketObjectLockConfigurationMode.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketObjectLockConfigurationMode.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketObjectLockConfigurationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const governance = S3BucketObjectLockConfigurationMode._(
    TfArgLiteral('GOVERNANCE'),
  );
  static const compliance = S3BucketObjectLockConfigurationMode._(
    TfArgLiteral('COMPLIANCE'),
  );

  static const List<S3BucketObjectLockConfigurationMode> values = [
    governance,
    compliance,
  ];
}

/// Factory wrapper for `aws_s3_bucket_object_lock_configuration`.
final class AwsS3BucketObjectLockConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_object_lock_configuration';

  AwsS3BucketObjectLockConfiguration(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    S3BucketObjectLockConfigurationObjectLockEnabled? objectLockEnabled,
    TfArg<String>? region,
    Sensitive<String>? token,
    S3BucketObjectLockConfigurationRule? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'object_lock_enabled': ?objectLockEnabled,
           'region': ?region,
           'token': ?token,
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

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `object_lock_enabled` attribute.
  TfRef<String> get objectLockEnabled =>
      TfRef.attribute<String>(this, 'object_lock_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');
}
