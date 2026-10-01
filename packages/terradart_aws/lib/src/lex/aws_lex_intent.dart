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
sealed class LexIntentClosing {
  const LexIntentClosing();

  /// Sets `conclusion_statement`.
  const factory LexIntentClosing.conclusionStatement(
    LexIntentConclusionStatement conclusionStatement,
  ) = LexIntentClosingConclusionStatement;

  /// Sets `follow_up_prompt`.
  const factory LexIntentClosing.followUpPrompt(
    LexIntentFollowUpPrompt followUpPrompt,
  ) = LexIntentClosingFollowUpPrompt;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LexIntentClosing.conclusionStatement] choice: sets `conclusion_statement`.
final class LexIntentClosingConclusionStatement extends LexIntentClosing {
  const LexIntentClosingConclusionStatement(this.conclusionStatement);

  final LexIntentConclusionStatement conclusionStatement;

  @internal
  @override
  String get blockKey => 'conclusion_statement';

  @internal
  @override
  Map<String, Object?> encode() => {
    'conclusion_statement': conclusionStatement.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'conclusion_statement': TfArg.literal(conclusionStatement.encode()),
  };
}

/// The [LexIntentClosing.followUpPrompt] choice: sets `follow_up_prompt`.
final class LexIntentClosingFollowUpPrompt extends LexIntentClosing {
  const LexIntentClosingFollowUpPrompt(this.followUpPrompt);

  final LexIntentFollowUpPrompt followUpPrompt;

  @internal
  @override
  String get blockKey => 'follow_up_prompt';

  @internal
  @override
  Map<String, Object?> encode() => {
    'follow_up_prompt': followUpPrompt.encode(),
  };

  @internal
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

  final List<LexIntentMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `conclusion_statement.message` block of
/// `aws_lex_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LexIntentMessage {
  const LexIntentMessage({
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

  final List<LexIntentMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
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

  @internal
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

  final LexIntentPrompt prompt;

  final LexIntentRejectionStatement rejectionStatement;

  @internal
  Map<String, Object?> encode() => {
    'prompt': prompt.encode(),
    'rejection_statement': rejectionStatement.encode(),
  };
}

/// Typed helper for the `follow_up_prompt.prompt` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentPrompt {
  const LexIntentPrompt({
    required this.maxAttempts,
    this.responseCard,
    required this.message,
  });

  final TfArg<num> maxAttempts;

  final TfArg<String>? responseCard;

  final List<LexIntentMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `rejection_statement` block of
/// `aws_lex_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LexIntentRejectionStatement {
  const LexIntentRejectionStatement({this.responseCard, required this.message});

  final TfArg<String>? responseCard;

  final List<LexIntentMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Typed helper for the `fulfillment_activity` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentFulfillmentActivity {
  const LexIntentFulfillmentActivity({required this.type, this.codeHook});

  final LexIntentType type;

  final LexIntentCodeHook? codeHook;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'code_hook': ?codeHook?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LexIntentType._(TfArg<String> _) implements TfArg<String> {
  LexIntentType.variable(String name) : this._(TfArg.variable(name));
  LexIntentType.expression(String template)
    : this._(TfArg.expression(template));
  const LexIntentType.arg(TfArg<String> arg) : this._(arg);

  static const returnintent = LexIntentType._(TfArgLiteral('ReturnIntent'));
  static const codehook = LexIntentType._(TfArgLiteral('CodeHook'));

  static const List<LexIntentType> values = [returnintent, codehook];
}

/// Typed helper for the `fulfillment_activity.code_hook` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentCodeHook {
  const LexIntentCodeHook({required this.messageVersion, required this.uri});

  final TfArg<String> messageVersion;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'message_version': messageVersion.toTfJson(),
    'uri': uri.toTfJson(),
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

  final TfArg<List<String>>? sampleUtterances;

  final LexIntentSlotConstraint slotConstraint;

  final TfArg<String> slotType;

  final TfArg<String>? slotTypeVersion;

  final LexIntentValueElicitationPrompt? valueElicitationPrompt;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'response_card': ?responseCard?.toTfJson(),
    'sample_utterances': ?sampleUtterances?.toTfJson(),
    'slot_constraint': slotConstraint.toTfJson(),
    'slot_type': slotType.toTfJson(),
    'slot_type_version': ?slotTypeVersion?.toTfJson(),
    'value_elicitation_prompt': ?valueElicitationPrompt?.encode(),
  };
}

/// `slot_constraint` — derived from the provider schema description.
extension type const LexIntentSlotConstraint._(TfArg<String> _)
    implements TfArg<String> {
  LexIntentSlotConstraint.variable(String name) : this._(TfArg.variable(name));
  LexIntentSlotConstraint.expression(String template)
    : this._(TfArg.expression(template));
  const LexIntentSlotConstraint.arg(TfArg<String> arg) : this._(arg);

  static const required = LexIntentSlotConstraint._(TfArgLiteral('Required'));
  static const optional = LexIntentSlotConstraint._(TfArgLiteral('Optional'));

  static const List<LexIntentSlotConstraint> values = [required, optional];
}

/// Typed helper for the `slot.value_elicitation_prompt` block of
/// `aws_lex_intent` (derived from provider schema).
@immutable
final class LexIntentValueElicitationPrompt {
  const LexIntentValueElicitationPrompt({
    required this.maxAttempts,
    this.responseCard,
    required this.message,
  });

  final TfArg<num> maxAttempts;

  final TfArg<String>? responseCard;

  final List<LexIntentMessage> message;

  @internal
  Map<String, Object?> encode() => {
    'max_attempts': maxAttempts.toTfJson(),
    'response_card': ?responseCard?.toTfJson(),
    'message': [for (final e in message) e.encode()],
  };
}

/// Factory wrapper for `aws_lex_intent`.
final class AwsLexIntent extends Resource {
  static const String tfType = 'aws_lex_intent';

  AwsLexIntent(
    super.localName, {
    TfArg<bool>? createVersion,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? parentIntentSignature,
    TfArg<String>? region,
    TfArg<List<String>>? sampleUtterances,
    LexIntentClosing? closing,
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
           'create_version': ?createVersion,
           'description': ?description,
           'name': name,
           'parent_intent_signature': ?parentIntentSignature,
           'region': ?region,
           'sample_utterances': ?sampleUtterances,
           ...?closing?.argMap,
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

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `create_version` attribute.
  TfRef<bool> get createVersion =>
      TfRef.attribute<bool>(this, 'create_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parent_intent_signature` attribute.
  TfRef<String> get parentIntentSignature =>
      TfRef.attribute<String>(this, 'parent_intent_signature');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sample_utterances` attribute.
  TfRef<List<String>> get sampleUtterances =>
      TfRef.attribute<List<String>>(this, 'sample_utterances');
}
