// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_index_policy`.
const Set<String> _awsCloudwatchLogIndexPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_index_policy`.
final class AwsCloudwatchLogIndexPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_index_policy';

  AwsCloudwatchLogIndexPolicy({
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
  Set<String> get sensitiveFields => _awsCloudwatchLogIndexPolicySensitive;
}
