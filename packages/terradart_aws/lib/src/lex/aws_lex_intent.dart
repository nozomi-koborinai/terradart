// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lex_intent`.
const Set<String> _awsLexIntentSensitive = <String>{};

/// At most one of `conclusion_statement`, `follow_up_prompt` on `aws_lex_intent`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.conclusionStatement(...)`.
sealed class LexIntentConclusionStatementOrFollowUpPrompt {
  const LexIntentConclusionStatementOrFollowUpPrompt();

  /// Sets `conclusion_statement`.
  const factory LexIntentConclusionStatementOrFollowUpPrompt.conclusionStatement(
    LexIntentConclusionStatement conclusionStatement,
  ) = LexIntentConclusionStatementOrFollowUpPromptConclusionStatement;

  /// Sets `follow_up_prompt`.
  const factory LexIntentConclusionStatementOrFollowUpPrompt.followUpPrompt(
    LexIntentFollowUpPrompt followUpPrompt,
  ) = LexIntentConclusionStatementOrFollowUpPromptFollowUpPrompt;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LexIntentConclusionStatementOrFollowUpPrompt.conclusionStatement] choice: sets `conclusion_statement`.
final class LexIntentConclusionStatementOrFollowUpPromptConclusionStatement
    extends LexIntentConclusionStatementOrFollowUpPrompt {
  const LexIntentConclusionStatementOrFollowUpPromptConclusionStatement(
    this.conclusionStatement,
  );

  final LexIntentConclusionStatement conclusionStatement;

  @override
  String get blockKey => 'conclusion_statement';

  @override
  Map<String, Object?> encode() => {
    'conclusion_statement': conclusionStatement.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'conclusion_statement': TfArg.literal(conclusionStatement.encode()),
  };
}

/// The [LexIntentConclusionStatementOrFollowUpPrompt.followUpPrompt] choice: sets `follow_up_prompt`.
final class LexIntentConclusionStatementOrFollowUpPromptFollowUpPrompt
    extends LexIntentConclusionStatementOrFollowUpPrompt {
  const LexIntentConclusionStatementOrFollowUpPromptFollowUpPrompt(
    this.followUpPrompt,
  );

  final LexIntentFollowUpPrompt followUpPrompt;

  @override
  String get blockKey => 'follow_up_prompt';

  @override
  Map<String, Object?> encode() => {
    'follow_up_prompt': followUpPrompt.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'follow_up_prompt': TfArg.literal(followUpPrompt.encode()),
  };
}

/// Typed helper for the `conclusion_statement` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentConclusionStatement {
  const LexIntentConclusionStatement({
    this.responseCard,
    required this.message,
  });

  final TfArg<String>? responseCard;

  final List<LexIntentConclusionStatementMessage> message;

  Map<String, Object?> encode() => {
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `conclusion_statement.message` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentConclusionStatementMessage {
  const LexIntentConclusionStatementMessage({
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

/// Typed helper for the `confirmation_prompt` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentConfirmationPrompt {
  const LexIntentConfirmationPrompt({
    required this.maxAttempts,
    this.responseCard,
    required this.message,
  });

  final TfArg<num> maxAttempts;

  final TfArg<String>? responseCard;

  final List<LexIntentConfirmationPromptMessage> message;

  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `confirmation_prompt.message` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentConfirmationPromptMessage {
  const LexIntentConfirmationPromptMessage({
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

/// Typed helper for the `dialog_code_hook` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentDialogCodeHook {
  const LexIntentDialogCodeHook({
    required this.messageVersion,
    required this.uri,
  });

  final TfArg<String> messageVersion;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'message_version': messageVersion.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `follow_up_prompt` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFollowUpPrompt {
  const LexIntentFollowUpPrompt({
    required this.prompt,
    required this.rejectionStatement,
  });

  final LexIntentFollowUpPromptPrompt prompt;

  final LexIntentFollowUpPromptRejectionStatement rejectionStatement;

  Map<String, Object?> encode() => {
    'prompt': prompt.encode(),
    'rejection_statement': rejectionStatement.encode(),
  };
}

/// Typed helper for the `follow_up_prompt.prompt` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFollowUpPromptPrompt {
  const LexIntentFollowUpPromptPrompt({
    required this.maxAttempts,
    this.responseCard,
    required this.message,
  });

  final TfArg<num> maxAttempts;

  final TfArg<String>? responseCard;

  final List<LexIntentFollowUpPromptPromptMessage> message;

  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `follow_up_prompt.prompt.message` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFollowUpPromptPromptMessage {
  const LexIntentFollowUpPromptPromptMessage({
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

/// Typed helper for the `follow_up_prompt.rejection_statement` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFollowUpPromptRejectionStatement {
  const LexIntentFollowUpPromptRejectionStatement({
    this.responseCard,
    required this.message,
  });

  final TfArg<String>? responseCard;

  final List<LexIntentFollowUpPromptRejectionStatementMessage> message;

  Map<String, Object?> encode() => {
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `follow_up_prompt.rejection_statement.message` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFollowUpPromptRejectionStatementMessage {
  const LexIntentFollowUpPromptRejectionStatementMessage({
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

/// Typed helper for the `fulfillment_activity` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFulfillmentActivity {
  const LexIntentFulfillmentActivity({required this.type, this.codeHook});

  final TfArg<LexIntentFulfillmentActivityType> type;

  final LexIntentFulfillmentActivityCodeHook? codeHook;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (codeHook != null) 'code_hook': codeHook!.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum LexIntentFulfillmentActivityType implements TerraformEnum {
  returnintent('ReturnIntent'),
  codehook('CodeHook');

  const LexIntentFulfillmentActivityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `fulfillment_activity.code_hook` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFulfillmentActivityCodeHook {
  const LexIntentFulfillmentActivityCodeHook({
    required this.messageVersion,
    required this.uri,
  });

  final TfArg<String> messageVersion;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'message_version': messageVersion.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `rejection_statement` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentRejectionStatement {
  const LexIntentRejectionStatement({this.responseCard, required this.message});

  final TfArg<String>? responseCard;

  final List<LexIntentRejectionStatementMessage> message;

  Map<String, Object?> encode() => {
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `rejection_statement.message` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentRejectionStatementMessage {
  const LexIntentRejectionStatementMessage({
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

/// Typed helper for the `slot` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentSlot {
  const LexIntentSlot({
    this.description,
    required this.name,
    this.priority,
    this.responseCard,
    this.sampleUtterances,
    required this.slotConstraint,
    required this.slotType,
    this.slotTypeVersion,
    this.valueElicitationPrompt,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<num>? priority;

  final TfArg<String>? responseCard;

  final TfArg<List<Object?>>? sampleUtterances;

  final TfArg<LexIntentSlotSlotConstraint> slotConstraint;

  final TfArg<String> slotType;

  final TfArg<String>? slotTypeVersion;

  final LexIntentSlotValueElicitationPrompt? valueElicitationPrompt;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    if (sampleUtterances != null)
      'sample_utterances': sampleUtterances!.toTfJson(),
    'slot_constraint': slotConstraint.toTfJson(),
    'slot_type': slotType.toTfJson(),
    if (slotTypeVersion != null)
      'slot_type_version': slotTypeVersion!.toTfJson(),
    if (valueElicitationPrompt != null)
      'value_elicitation_prompt': valueElicitationPrompt!.encode(),
  };
}

/// `slot_constraint` — derived from the provider schema description.
enum LexIntentSlotSlotConstraint implements TerraformEnum {
  required('Required'),
  optional('Optional');

  const LexIntentSlotSlotConstraint(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `slot.value_elicitation_prompt` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentSlotValueElicitationPrompt {
  const LexIntentSlotValueElicitationPrompt({
    required this.maxAttempts,
    this.responseCard,
    required this.message,
  });

  final TfArg<num> maxAttempts;

  final TfArg<String>? responseCard;

  final List<LexIntentSlotValueElicitationPromptMessage> message;

  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    if (responseCard != null) 'response_card': responseCard!.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `slot.value_elicitation_prompt.message` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentSlotValueElicitationPromptMessage {
  const LexIntentSlotValueElicitationPromptMessage({
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

/// Factory wrapper for `aws_lex_intent`.
final class AwsLexIntent extends Resource {
  static const String tfType = 'aws_lex_intent';

  AwsLexIntent({
    required super.localName,
    TfArg<bool>? createVersion,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? parentIntentSignature,
    TfArg<String>? region,
    TfArg<List<String>>? sampleUtterances,
    LexIntentConclusionStatementOrFollowUpPrompt?
    conclusionStatementOrFollowUpPrompt,
    LexIntentConfirmationPrompt? confirmationPrompt,
    LexIntentDialogCodeHook? dialogCodeHook,
    required LexIntentFulfillmentActivity fulfillmentActivity,
    LexIntentRejectionStatement? rejectionStatement,
    List<LexIntentSlot>? slot,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (createVersion != null) 'create_version': createVersion,
           if (description != null) 'description': description,
           'name': name,
           if (parentIntentSignature != null)
             'parent_intent_signature': parentIntentSignature,
           if (region != null) 'region': region,
           if (sampleUtterances != null) 'sample_utterances': sampleUtterances,
           ...?conclusionStatementOrFollowUpPrompt?.argMap,
           if (confirmationPrompt != null)
             'confirmation_prompt': TfArg.literal(confirmationPrompt.encode()),
           if (dialogCodeHook != null)
             'dialog_code_hook': TfArg.literal(dialogCodeHook.encode()),
           'fulfillment_activity': TfArg.literal(fulfillmentActivity.encode()),
           if (rejectionStatement != null)
             'rejection_statement': TfArg.literal(rejectionStatement.encode()),
           if (slot != null)
             'slot': TfArg.literal([for (final e in slot) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexIntentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexIntent>`.
  RefTo<AwsLexIntent> get ref => RefTo.of(this);

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

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
