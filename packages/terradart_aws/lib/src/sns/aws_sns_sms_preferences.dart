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
           if (defaultSenderId != null) 'default_sender_id': defaultSenderId,
           if (defaultSmsType != null) 'default_sms_type': defaultSmsType,
           if (deliveryStatusIamRoleArn != null)
             'delivery_status_iam_role_arn': deliveryStatusIamRoleArn,
           if (deliveryStatusSuccessSamplingRate != null)
             'delivery_status_success_sampling_rate':
                 deliveryStatusSuccessSamplingRate,
           if (monthlySpendLimit != null)
             'monthly_spend_limit': monthlySpendLimit,
           if (region != null) 'region': region,
           if (usageReportS3Bucket != null)
             'usage_report_s3_bucket': usageReportS3Bucket,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsSmsPreferencesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
