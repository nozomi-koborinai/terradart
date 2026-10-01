// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_chatbot_slack_channel_configuration`.
const Set<String> _awsChatbotSlackChannelConfigurationSensitive = <String>{};

/// Chatbot Slack Channel Configuration Logging enum for `logging_level`.
enum ChatbotSlackChannelConfigurationLoggingLevel implements TerraformEnum {
  error('ERROR'),
  info('INFO'),
  none('NONE');

  const ChatbotSlackChannelConfigurationLoggingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_chatbot_slack_channel_configuration`.
final class AwsChatbotSlackChannelConfiguration extends Resource {
  static const String tfType = 'aws_chatbot_slack_channel_configuration';

  AwsChatbotSlackChannelConfiguration({
    required super.localName,
    required TfArg<String> configurationName,
    TfArg<List<String>>? guardrailPolicyArns,
    required RefTo<AwsIamRole> iamRoleArn,
    TfArg<ChatbotSlackChannelConfigurationLoggingLevel>? loggingLevel,
    TfArg<String>? region,
    required TfArg<String> slackChannelId,
    required TfArg<String> slackTeamId,
    TfArg<List<RefTo<AwsSnsTopic>>>? snsTopicArns,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? userAuthorizationRequired,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_name': configurationName,
           'guardrail_policy_arns': ?guardrailPolicyArns,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'logging_level': ?loggingLevel,
           'region': ?region,
           'slack_channel_id': slackChannelId,
           'slack_team_id': slackTeamId,
           'sns_topic_arns': ?snsTopicArns?.encodeAs('arn'),
           'tags': ?tags,
           'user_authorization_required': ?userAuthorizationRequired,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChatbotSlackChannelConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChatbotSlackChannelConfiguration>`.
  RefTo<AwsChatbotSlackChannelConfiguration> get ref => RefTo.of(this);

  /// Reference to `chat_configuration_arn` attribute.
  TfRef<String> get chatConfigurationArn =>
      TfRef.attribute<String>(this, 'chat_configuration_arn');

  /// Reference to `slack_channel_name` attribute.
  TfRef<String> get slackChannelName =>
      TfRef.attribute<String>(this, 'slack_channel_name');

  /// Reference to `slack_team_name` attribute.
  TfRef<String> get slackTeamName =>
      TfRef.attribute<String>(this, 'slack_team_name');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `configuration_name` attribute.
  TfRef<String> get configurationName =>
      TfRef.attribute<String>(this, 'configuration_name');

  /// Reference to `guardrail_policy_arns` attribute.
  TfRef<List<String>> get guardrailPolicyArns =>
      TfRef.attribute<List<String>>(this, 'guardrail_policy_arns');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `logging_level` attribute.
  TfRef<String> get loggingLevel =>
      TfRef.attribute<String>(this, 'logging_level');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `slack_channel_id` attribute.
  TfRef<String> get slackChannelId =>
      TfRef.attribute<String>(this, 'slack_channel_id');

  /// Reference to `slack_team_id` attribute.
  TfRef<String> get slackTeamId =>
      TfRef.attribute<String>(this, 'slack_team_id');

  /// Reference to `sns_topic_arns` attribute.
  TfRef<List<String>> get snsTopicArns =>
      TfRef.attribute<List<String>>(this, 'sns_topic_arns');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_authorization_required` attribute.
  TfRef<bool> get userAuthorizationRequired =>
      TfRef.attribute<bool>(this, 'user_authorization_required');
}
