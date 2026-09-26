// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lex_bot`.
const Set<String> _awsLexBotSensitive = <String>{};

/// Typed helper for the `abort_statement` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotAbortStatement {
  const LexBotAbortStatement({this.responseCard, required this.message});

  final TfArg<String>? responseCard;

  final List<LexBotAbortStatementMessage> message;

  Map<String, Object?> encode() => {
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `abort_statement.message` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotAbortStatementMessage {
  const LexBotAbortStatementMessage({
    required this.content,
    required this.contentType,
    this.groupNumber,
  });

  final TfArg<String> content;

  final TfArg<String> contentType;

  final TfArg<num>? groupNumber;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'content_type': contentType.toTfJson(),
    if (groupNumber != null) 'group_number': groupNumber!.toTfJson(),
  };
}

/// Typed helper for the `clarification_prompt` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotClarificationPrompt {
  const LexBotClarificationPrompt({
    required this.maxAttempts,
    this.responseCard,
    required this.message,
  });

  final TfArg<num> maxAttempts;

  final TfArg<String>? responseCard;

  final List<LexBotClarificationPromptMessage> message;

  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `clarification_prompt.message` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotClarificationPromptMessage {
  const LexBotClarificationPromptMessage({
    required this.content,
    required this.contentType,
    this.groupNumber,
  });

  final TfArg<String> content;

  final TfArg<String> contentType;

  final TfArg<num>? groupNumber;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'content_type': contentType.toTfJson(),
    if (groupNumber != null) 'group_number': groupNumber!.toTfJson(),
  };
}

/// Typed helper for the `intent` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotIntent {
  const LexBotIntent({required this.intentName, required this.intentVersion});

  final TfArg<String> intentName;

  final TfArg<String> intentVersion;

  Map<String, Object?> encode() => {
    'intent_name': intentName.toTfJson(),
    'intent_version': intentVersion.toTfJson(),
  };
}

/// Factory wrapper for `aws_lex_bot`.
final class AwsLexBot extends Resource {
  static const String tfType = 'aws_lex_bot';

  AwsLexBot({
    required super.localName,
    required TfArg<bool> childDirected,
    TfArg<bool>? createVersion,
    TfArg<String>? description,
    TfArg<bool>? detectSentiment,
    TfArg<bool>? enableModelImprovements,
    TfArg<num>? idleSessionTtlInSeconds,
    TfArg<String>? locale,
    required TfArg<String> name,
    TfArg<num>? nluIntentConfidenceThreshold,
    TfArg<String>? processBehavior,
    TfArg<String>? region,
    TfArg<String>? voiceId,
    required LexBotAbortStatement abortStatement,
    LexBotClarificationPrompt? clarificationPrompt,
    required List<LexBotIntent> intent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'child_directed': childDirected,
           if (createVersion != null) 'create_version': createVersion,
           if (description != null) 'description': description,
           if (detectSentiment != null) 'detect_sentiment': detectSentiment,
           if (enableModelImprovements != null)
             'enable_model_improvements': enableModelImprovements,
           if (idleSessionTtlInSeconds != null)
             'idle_session_ttl_in_seconds': idleSessionTtlInSeconds,
           if (locale != null) 'locale': locale,
           'name': name,
           if (nluIntentConfidenceThreshold != null)
             'nlu_intent_confidence_threshold': nluIntentConfidenceThreshold,
           if (processBehavior != null) 'process_behavior': processBehavior,
           if (region != null) 'region': region,
           if (voiceId != null) 'voice_id': voiceId,
           'abort_statement': TfArg.literal(abortStatement.encode()),
           if (clarificationPrompt != null)
             'clarification_prompt': TfArg.literal(
               clarificationPrompt.encode(),
             ),
           'intent': TfArg.literal([for (final e in intent) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexBotSensitive;

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

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
