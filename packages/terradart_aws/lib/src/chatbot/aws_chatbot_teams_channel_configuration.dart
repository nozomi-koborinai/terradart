// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_chatbot_teams_channel_configuration`.
const Set<String> _awsChatbotTeamsChannelConfigurationSensitive = <String>{};

/// Chatbot Teams Channel Configuration Logging enum for `logging_level`.
enum ChatbotTeamsChannelConfigurationLoggingLevel implements TerraformEnum {
  error('ERROR'),
  info('INFO'),
  none('NONE');

  const ChatbotTeamsChannelConfigurationLoggingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_chatbot_teams_channel_configuration`.
final class AwsChatbotTeamsChannelConfiguration extends Resource {
  static const String tfType = 'aws_chatbot_teams_channel_configuration';

  AwsChatbotTeamsChannelConfiguration({
    required super.localName,
    required TfArg<String> channelId,
    TfArg<String>? channelName,
    required TfArg<String> configurationName,
    TfArg<List<String>>? guardrailPolicyArns,
    required RefTo<AwsIamRole> iamRoleArn,
    TfArg<ChatbotTeamsChannelConfigurationLoggingLevel>? loggingLevel,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSnsTopic>>>? snsTopicArns,
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
           'channel_name': ?channelName,
           'configuration_name': configurationName,
           'guardrail_policy_arns': ?guardrailPolicyArns,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'logging_level': ?loggingLevel,
           'region': ?region,
           'sns_topic_arns': ?snsTopicArns?.encodeAs('arn'),
           'tags': ?tags,
           'team_id': teamId,
           'team_name': ?teamName,
           'tenant_id': tenantId,
           'user_authorization_required': ?userAuthorizationRequired,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChatbotTeamsChannelConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChatbotTeamsChannelConfiguration>`.
  RefTo<AwsChatbotTeamsChannelConfiguration> get ref => RefTo.of(this);

  /// Reference to `chat_configuration_arn` attribute.
  TfRef<String> get chatConfigurationArn =>
      TfRef.attribute<String>(this, 'chat_configuration_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `channel_id` attribute.
  TfRef<String> get channelId => TfRef.attribute<String>(this, 'channel_id');

  /// Reference to `channel_name` attribute.
  TfRef<String> get channelName =>
      TfRef.attribute<String>(this, 'channel_name');

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

  /// Reference to `sns_topic_arns` attribute.
  TfRef<List<String>> get snsTopicArns =>
      TfRef.attribute<List<String>>(this, 'sns_topic_arns');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamId => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `team_name` attribute.
  TfRef<String> get teamName => TfRef.attribute<String>(this, 'team_name');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `user_authorization_required` attribute.
  TfRef<bool> get userAuthorizationRequired =>
      TfRef.attribute<bool>(this, 'user_authorization_required');
}
