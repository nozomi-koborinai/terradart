// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chatbot_teams_channel_configuration`.
const Set<String> _awsChatbotTeamsChannelConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_chatbot_teams_channel_configuration`.
final class AwsChatbotTeamsChannelConfiguration extends Resource {
  static const String tfType = 'aws_chatbot_teams_channel_configuration';

  AwsChatbotTeamsChannelConfiguration({
    required super.localName,
    required TfArg<String> channelId,
    TfArg<String>? channelName,
    required TfArg<String> configurationName,
    TfArg<List<String>>? guardrailPolicyArns,
    required TfArg<String> iamRoleArn,
    TfArg<String>? loggingLevel,
    TfArg<String>? region,
    TfArg<List<String>>? snsTopicArns,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> teamId,
    TfArg<String>? teamName,
    required TfArg<String> tenantId,
    TfArg<bool>? userAuthorizationRequired,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'channel_id': channelId,
           if (channelName != null) 'channel_name': channelName,
           'configuration_name': configurationName,
           if (guardrailPolicyArns != null)
             'guardrail_policy_arns': guardrailPolicyArns,
           'iam_role_arn': iamRoleArn,
           if (loggingLevel != null) 'logging_level': loggingLevel,
           if (region != null) 'region': region,
           if (snsTopicArns != null) 'sns_topic_arns': snsTopicArns,
           if (tags != null) 'tags': tags,
           'team_id': teamId,
           if (teamName != null) 'team_name': teamName,
           'tenant_id': tenantId,
           if (userAuthorizationRequired != null)
             'user_authorization_required': userAuthorizationRequired,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChatbotTeamsChannelConfigurationSensitive;

  /// Reference to `chat_configuration_arn` attribute.
  TfRef<String> get chatConfigurationArn =>
      TfRef.attribute<String>(this, 'chat_configuration_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
