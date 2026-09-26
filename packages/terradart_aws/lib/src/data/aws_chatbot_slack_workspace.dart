// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chatbot_slack_workspace`.
const Set<String> _awsChatbotSlackWorkspaceSensitive = <String>{};

/// Factory wrapper for `aws_chatbot_slack_workspace`.
final class DataAwsChatbotSlackWorkspace extends Data {
  static const String tfType = 'aws_chatbot_slack_workspace';

  DataAwsChatbotSlackWorkspace({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> slackTeamName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'slack_team_name': slackTeamName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChatbotSlackWorkspaceSensitive;

  /// Reference to `slack_team_id` attribute.
  TfRef<String> get slackTeamId =>
      TfRef.attribute<String>(this, 'slack_team_id');
}
