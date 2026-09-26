// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chatbot_slack_channel_configuration`.
const Set<String> _awsChatbotSlackChannelConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_chatbot_slack_channel_configuration`.
final class AwsChatbotSlackChannelConfiguration extends Resource {
  static const String tfType = 'aws_chatbot_slack_channel_configuration';

  AwsChatbotSlackChannelConfiguration({
    required super.localName,
    required TfArg<String> configurationName,
    TfArg<List<String>>? guardrailPolicyArns,
    required TfArg<String> iamRoleArn,
    TfArg<String>? loggingLevel,
    TfArg<String>? region,
    required TfArg<String> slackChannelId,
    required TfArg<String> slackTeamId,
    TfArg<List<String>>? snsTopicArns,
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
           if (guardrailPolicyArns != null)
             'guardrail_policy_arns': guardrailPolicyArns,
           'iam_role_arn': iamRoleArn,
           if (loggingLevel != null) 'logging_level': loggingLevel,
           if (region != null) 'region': region,
           'slack_channel_id': slackChannelId,
           'slack_team_id': slackTeamId,
           if (snsTopicArns != null) 'sns_topic_arns': snsTopicArns,
           if (tags != null) 'tags': tags,
           if (userAuthorizationRequired != null)
             'user_authorization_required': userAuthorizationRequired,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChatbotSlackChannelConfigurationSensitive;

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
}
