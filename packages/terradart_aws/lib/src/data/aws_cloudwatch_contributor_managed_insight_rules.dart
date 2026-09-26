// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_contributor_managed_insight_rules`.
const Set<String> _awsCloudwatchContributorManagedInsightRulesSensitive =
    <String>{};

/// Factory wrapper for `aws_cloudwatch_contributor_managed_insight_rules`.
final class DataAwsCloudwatchContributorManagedInsightRules extends Data {
  static const String tfType =
      'aws_cloudwatch_contributor_managed_insight_rules';

  DataAwsCloudwatchContributorManagedInsightRules({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchContributorManagedInsightRulesSensitive;

  /// Reference to `managed_rules` attribute.
  TfRef<List<Map<String, Object?>>> get managedRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_rules');
}
