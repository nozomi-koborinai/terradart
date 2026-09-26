// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_data_protection_policy`.
const Set<String> _awsCloudwatchLogDataProtectionPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_data_protection_policy`.
final class AwsCloudwatchLogDataProtectionPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_data_protection_policy';

  AwsCloudwatchLogDataProtectionPolicy({
    required super.localName,
    required TfArg<String> logGroupName,
    required TfArg<String> policyDocument,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_group_name': logGroupName,
           'policy_document': policyDocument,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDataProtectionPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
