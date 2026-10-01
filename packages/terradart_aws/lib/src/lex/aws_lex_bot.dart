// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lex_bot`.
const Set<String> _awsLexBotSensitive = <String>{};

/// Lex Bot enum for `locale`.
extension type const LexBotLocale._(TfArg<String> _) implements TfArg<String> {
  LexBotLocale.variable(String name) : this._(TfArg.variable(name));
  LexBotLocale.expression(String template) : this._(TfArg.expression(template));
  const LexBotLocale.arg(TfArg<String> arg) : this._(arg);

  static const deDe = LexBotLocale._(TfArgLiteral('de-DE'));
  static const enAu = LexBotLocale._(TfArgLiteral('en-AU'));
  static const enGb = LexBotLocale._(TfArgLiteral('en-GB'));
  static const enIn = LexBotLocale._(TfArgLiteral('en-IN'));
  static const enUs = LexBotLocale._(TfArgLiteral('en-US'));
  static const es419 = LexBotLocale._(TfArgLiteral('es-419'));
  static const esEs = LexBotLocale._(TfArgLiteral('es-ES'));
  static const esUs = LexBotLocale._(TfArgLiteral('es-US'));
  static const frFr = LexBotLocale._(TfArgLiteral('fr-FR'));
  static const frCa = LexBotLocale._(TfArgLiteral('fr-CA'));
  static const itIt = LexBotLocale._(TfArgLiteral('it-IT'));
  static const jaJp = LexBotLocale._(TfArgLiteral('ja-JP'));
  static const koKr = LexBotLocale._(TfArgLiteral('ko-KR'));

  static const List<LexBotLocale> values = [
    deDe,
    enAu,
    enGb,
    enIn,
    enUs,
    es419,
    esEs,
    esUs,
    frFr,
    frCa,
    itIt,
    jaJp,
    koKr,
  ];
}

/// Lex Bot Process enum for `process_behavior`.
extension type const LexBotProcessBehavior._(TfArg<String> _)
    implements TfArg<String> {
  LexBotProcessBehavior.variable(String name) : this._(TfArg.variable(name));
  LexBotProcessBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const LexBotProcessBehavior.arg(TfArg<String> arg) : this._(arg);

  static const save = LexBotProcessBehavior._(TfArgLiteral('SAVE'));
  static const build = LexBotProcessBehavior._(TfArgLiteral('BUILD'));

  static const List<LexBotProcessBehavior> values = [save, build];
}

/// Typed helper for the `abort_statement` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotAbortStatement {
  const LexBotAbortStatement({this.responseCard, required this.message});

  final TfArg<String>? responseCard;

  final List<LexBotMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `abort_statement.message` block of
/// `aws_lex_bot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LexBotMessage {
  const LexBotMessage({
    required this.content,
    required this.contentType,
    this.groupNumber,
  });

  final TfArg<String> content;

  final TfArg<String> contentType;

  final TfArg<num>? groupNumber;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'content_type': contentType.toTfJson(),
    'group_number': ?groupNumber?.toTfJson(),
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

  final List<LexBotMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `intent` block of
/// `aws_lex_bot` (derived from provider schema).
@immutable
final class LexBotIntent {
  const LexBotIntent({required this.intentName, required this.intentVersion});

  final TfArg<String> intentName;

  final TfArg<String> intentVersion;

  @internal
  Map<String, Object?> encode() => {
    'intent_name': intentName.toTfJson(),
    'intent_version': intentVersion.toTfJson(),
  };
}

/// Factory wrapper for `aws_lex_bot`.
final class AwsLexBot extends Resource {
  static const String tfType = 'aws_lex_bot';

  AwsLexBot(
    super.localName, {
    required TfArg<bool> childDirected,
    TfArg<bool>? createVersion,
    TfArg<String>? description,
    TfArg<bool>? detectSentiment,
    TfArg<bool>? enableModelImprovements,
    TfArg<num>? idleSessionTtlInSeconds,
    LexBotLocale? locale,
    required TfArg<String> name,
    TfArg<num>? nluIntentConfidenceThreshold,
    LexBotProcessBehavior? processBehavior,
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
           'create_version': ?createVersion,
           'description': ?description,
           'detect_sentiment': ?detectSentiment,
           'enable_model_improvements': ?enableModelImprovements,
           'idle_session_ttl_in_seconds': ?idleSessionTtlInSeconds,
           'locale': ?locale,
           'name': name,
           'nlu_intent_confidence_threshold': ?nluIntentConfidenceThreshold,
           'process_behavior': ?processBehavior,
           'region': ?region,
           'voice_id': ?voiceId,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexBot>`.
  RefTo<AwsLexBot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `child_directed` attribute.
  TfRef<bool> get childDirected =>
      TfRef.attribute<bool>(this, 'child_directed');

  /// Reference to `create_version` attribute.
  TfRef<bool> get createVersion =>
      TfRef.attribute<bool>(this, 'create_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `detect_sentiment` attribute.
  TfRef<bool> get detectSentiment =>
      TfRef.attribute<bool>(this, 'detect_sentiment');

  /// Reference to `enable_model_improvements` attribute.
  TfRef<bool> get enableModelImprovements =>
      TfRef.attribute<bool>(this, 'enable_model_improvements');

  /// Reference to `idle_session_ttl_in_seconds` attribute.
  TfRef<num> get idleSessionTtlInSeconds =>
      TfRef.attribute<num>(this, 'idle_session_ttl_in_seconds');

  /// Reference to `locale` attribute.
  TfRef<String> get locale => TfRef.attribute<String>(this, 'locale');

  /// Reference to `nlu_intent_confidence_threshold` attribute.
  TfRef<num> get nluIntentConfidenceThreshold =>
      TfRef.attribute<num>(this, 'nlu_intent_confidence_threshold');

  /// Reference to `process_behavior` attribute.
  TfRef<String> get processBehavior =>
      TfRef.attribute<String>(this, 'process_behavior');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `voice_id` attribute.
  TfRef<String> get voiceId => TfRef.attribute<String>(this, 'voice_id');
}
