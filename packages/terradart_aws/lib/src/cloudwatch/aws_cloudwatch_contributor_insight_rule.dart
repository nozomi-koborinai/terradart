// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_contributor_insight_rule`.
const Set<String> _awsCloudwatchContributorInsightRuleSensitive = <String>{};

/// Cloudwatch Contributor Insight Rule enum for `rule_state`.
enum CloudwatchContributorInsightRuleState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const CloudwatchContributorInsightRuleState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudwatch_contributor_insight_rule`.
final class AwsCloudwatchContributorInsightRule extends Resource {
  static const String tfType = 'aws_cloudwatch_contributor_insight_rule';

  AwsCloudwatchContributorInsightRule({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> ruleDefinition,
    required TfArg<String> ruleName,
    TfArg<CloudwatchContributorInsightRuleState>? ruleState,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'rule_definition': ruleDefinition,
           'rule_name': ruleName,
           'rule_state': ?ruleState,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchContributorInsightRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchContributorInsightRule>`.
  RefTo<AwsCloudwatchContributorInsightRule> get ref => RefTo.of(this);

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_definition` attribute.
  TfRef<String> get ruleDefinition =>
      TfRef.attribute<String>(this, 'rule_definition');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `rule_state` attribute.
  TfRef<String> get ruleState => TfRef.attribute<String>(this, 'rule_state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
