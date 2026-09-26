// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_contributor_insight_rule`.
const Set<String> _awsCloudwatchContributorInsightRuleSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_contributor_insight_rule`.
final class AwsCloudwatchContributorInsightRule extends Resource {
  static const String tfType = 'aws_cloudwatch_contributor_insight_rule';

  AwsCloudwatchContributorInsightRule({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> ruleDefinition,
    required TfArg<String> ruleName,
    TfArg<String>? ruleState,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'rule_definition': ruleDefinition,
           'rule_name': ruleName,
           if (ruleState != null) 'rule_state': ruleState,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchContributorInsightRuleSensitive;

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
