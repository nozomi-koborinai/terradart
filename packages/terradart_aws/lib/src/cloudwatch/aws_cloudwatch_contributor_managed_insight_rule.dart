// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_contributor_managed_insight_rule`.
const Set<String> _awsCloudwatchContributorManagedInsightRuleSensitive =
    <String>{};

/// Factory wrapper for `aws_cloudwatch_contributor_managed_insight_rule`.
final class AwsCloudwatchContributorManagedInsightRule extends Resource {
  static const String tfType =
      'aws_cloudwatch_contributor_managed_insight_rule';

  AwsCloudwatchContributorManagedInsightRule({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           'template_name': templateName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchContributorManagedInsightRuleSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
