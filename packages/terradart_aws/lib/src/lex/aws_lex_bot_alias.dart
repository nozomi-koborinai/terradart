// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lex_bot_alias`.
const Set<String> _awsLexBotAliasSensitive = <String>{};

/// Typed helper for the `conversation_logs` block of
/// `aws_lex_bot_alias` (derived from provider schema).
@immutable
final class LexBotAliasConversationLogs {
  const LexBotAliasConversationLogs({
    required this.iamRoleArn,
    this.logSettings,
  });

  final TfArg<String> iamRoleArn;

  final List<LexBotAliasConversationLogsLogSettings>? logSettings;

  Map<String, Object?> encode() => {
    'iam_role_arn': iamRoleArn.toTfJson(),
    if (logSettings != null)
      'log_settings': [for (final e in logSettings!) e.encode()],
  };
}

/// Typed helper for the `conversation_logs.log_settings` block of
/// `aws_lex_bot_alias` (derived from provider schema).
@immutable
final class LexBotAliasConversationLogsLogSettings {
  const LexBotAliasConversationLogsLogSettings({
    required this.destination,
    this.kmsKeyArn,
    required this.logType,
    required this.resourceArn,
  });

  final TfArg<String> destination;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String> logType;

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    'log_type': logType.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_lex_bot_alias`.
final class AwsLexBotAlias extends Resource {
  static const String tfType = 'aws_lex_bot_alias';

  AwsLexBotAlias({
    required super.localName,
    required TfArg<String> botName,
    required TfArg<String> botVersion,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    LexBotAliasConversationLogs? conversationLogs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'bot_version': botVersion,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (conversationLogs != null)
             'conversation_logs': TfArg.literal(conversationLogs.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexBotAliasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `checksum` attribute.
  TfRef<String> get checksum => TfRef.attribute<String>(this, 'checksum');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');
}
