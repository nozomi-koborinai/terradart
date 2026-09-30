// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sns_sms_preferences`.
const Set<String> _awsSnsSmsPreferencesSensitive = <String>{};

/// Factory wrapper for `aws_sns_sms_preferences`.
final class AwsSnsSmsPreferences extends Resource {
  static const String tfType = 'aws_sns_sms_preferences';

  AwsSnsSmsPreferences({
    required super.localName,
    TfArg<String>? defaultSenderId,
    TfArg<String>? defaultSmsType,
    TfArg<String>? deliveryStatusIamRoleArn,
    TfArg<String>? deliveryStatusSuccessSamplingRate,
    TfArg<num>? monthlySpendLimit,
    TfArg<String>? region,
    TfArg<String>? usageReportS3Bucket,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_sender_id': ?defaultSenderId,
           'default_sms_type': ?defaultSmsType,
           'delivery_status_iam_role_arn': ?deliveryStatusIamRoleArn,
           'delivery_status_success_sampling_rate':
               ?deliveryStatusSuccessSamplingRate,
           'monthly_spend_limit': ?monthlySpendLimit,
           'region': ?region,
           'usage_report_s3_bucket': ?usageReportS3Bucket,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsSmsPreferencesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSnsSmsPreferences>`.
  RefTo<AwsSnsSmsPreferences> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_sender_id` attribute.
  TfRef<String> get defaultSenderIdRef =>
      TfRef.attribute<String>(this, 'default_sender_id');

  /// Reference to `default_sms_type` attribute.
  TfRef<String> get defaultSmsTypeRef =>
      TfRef.attribute<String>(this, 'default_sms_type');

  /// Reference to `delivery_status_iam_role_arn` attribute.
  TfRef<String> get deliveryStatusIamRoleArnRef =>
      TfRef.attribute<String>(this, 'delivery_status_iam_role_arn');

  /// Reference to `delivery_status_success_sampling_rate` attribute.
  TfRef<String> get deliveryStatusSuccessSamplingRateRef =>
      TfRef.attribute<String>(this, 'delivery_status_success_sampling_rate');

  /// Reference to `monthly_spend_limit` attribute.
  TfRef<num> get monthlySpendLimitRef =>
      TfRef.attribute<num>(this, 'monthly_spend_limit');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `usage_report_s3_bucket` attribute.
  TfRef<String> get usageReportS3BucketRef =>
      TfRef.attribute<String>(this, 'usage_report_s3_bucket');
}
