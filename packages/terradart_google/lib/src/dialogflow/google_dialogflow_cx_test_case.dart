// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_test_case`.
const Set<String> _googleDialogflowCxTestCaseSensitive = <String>{};

/// Typed helper for the `test_case_conversation_turns` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseConversationTurns {
  const DialogflowCxTestCaseConversationTurns({
    this.userInput,
    this.virtualAgentOutput,
  });

  final DialogflowCxTestCaseUserInput? userInput;

  final DialogflowCxTestCaseVirtualAgentOutput? virtualAgentOutput;

  Map<String, Object?> encode() => {
    'user_input': ?userInput?.encode(),
    'virtual_agent_output': ?virtualAgentOutput?.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseUserInput {
  const DialogflowCxTestCaseUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.isWebhookEnabled,
    this.input,
  });

  final TfArg<bool>? enableSentimentAnalysis;

  final TfArg<String>? injectedParameters;

  final TfArg<bool>? isWebhookEnabled;

  final DialogflowCxTestCaseInput? input;

  Map<String, Object?> encode() => {
    'enable_sentiment_analysis': ?enableSentimentAnalysis?.toTfJson(),
    'injected_parameters': ?injectedParameters?.toTfJson(),
    'is_webhook_enabled': ?isWebhookEnabled?.toTfJson(),
    'input': ?input?.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input.input` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseInput {
  const DialogflowCxTestCaseInput({
    this.languageCode,
    this.dtmf,
    this.event,
    this.text,
  });

  final TfArg<String>? languageCode;

  final DialogflowCxTestCaseDtmf? dtmf;

  final DialogflowCxTestCaseEvent? event;

  final DialogflowCxTestCaseText? text;

  Map<String, Object?> encode() => {
    'language_code': ?languageCode?.toTfJson(),
    'dtmf': ?dtmf?.encode(),
    'event': ?event?.encode(),
    'text': ?text?.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input.input.dtmf` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseDtmf {
  const DialogflowCxTestCaseDtmf({this.digits, this.finishDigit});

  final TfArg<String>? digits;

  final TfArg<String>? finishDigit;

  Map<String, Object?> encode() => {
    'digits': ?digits?.toTfJson(),
    'finish_digit': ?finishDigit?.toTfJson(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input.input.event` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseEvent {
  const DialogflowCxTestCaseEvent({required this.event});

  final TfArg<String> event;

  Map<String, Object?> encode() => {'event': event.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.user_input.input.text` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseText {
  const DialogflowCxTestCaseText({required this.text});

  final TfArg<String> text;

  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseVirtualAgentOutput {
  const DialogflowCxTestCaseVirtualAgentOutput({
    this.sessionParameters,
    this.currentPage,
    this.textResponses,
    this.triggeredIntent,
  });

  final TfArg<String>? sessionParameters;

  final DialogflowCxTestCaseCurrentPage? currentPage;

  final List<DialogflowCxTestCaseTextResponses>? textResponses;

  final DialogflowCxTestCaseTriggeredIntent? triggeredIntent;

  Map<String, Object?> encode() => {
    'session_parameters': ?sessionParameters?.toTfJson(),
    'current_page': ?currentPage?.encode(),
    if (textResponses != null)
      'text_responses': [for (final e in textResponses!) e.encode()],
    'triggered_intent': ?triggeredIntent?.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output.current_page` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseCurrentPage {
  const DialogflowCxTestCaseCurrentPage({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output.text_responses` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTextResponses {
  const DialogflowCxTestCaseTextResponses({this.text});

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output.triggered_intent` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTriggeredIntent {
  const DialogflowCxTestCaseTriggeredIntent({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `test_config` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestConfig {
  const DialogflowCxTestCaseTestConfig({this.start, this.trackingParameters});

  final DialogflowCxTestCaseStart? start;

  final TfArg<List<String>>? trackingParameters;

  Map<String, Object?> encode() => {
    ...?start?.encode(),
    'tracking_parameters': ?trackingParameters?.toTfJson(),
  };
}

/// At most one of `flow`, `page` on the `test_config` block of `google_dialogflow_cx_test_case`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.flow(...)`.
sealed class DialogflowCxTestCaseStart {
  const DialogflowCxTestCaseStart();

  /// Sets `flow`.
  const factory DialogflowCxTestCaseStart.flow(TfArg<String> flow) =
      DialogflowCxTestCaseStartFlow;

  /// Sets `page`.
  const factory DialogflowCxTestCaseStart.page(TfArg<String> page) =
      DialogflowCxTestCaseStartPage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DialogflowCxTestCaseStart.flow] choice: sets `flow`.
final class DialogflowCxTestCaseStartFlow extends DialogflowCxTestCaseStart {
  const DialogflowCxTestCaseStartFlow(this.flow);

  final TfArg<String> flow;

  @override
  String get blockKey => 'flow';

  @override
  Map<String, Object?> encode() => {'flow': flow.toTfJson()};
}

/// The [DialogflowCxTestCaseStart.page] choice: sets `page`.
final class DialogflowCxTestCaseStartPage extends DialogflowCxTestCaseStart {
  const DialogflowCxTestCaseStartPage(this.page);

  final TfArg<String> page;

  @override
  String get blockKey => 'page';

  @override
  Map<String, Object?> encode() => {'page': page.toTfJson()};
}

/// Factory wrapper for `google_dialogflow_cx_test_case`.
///
/// You can use the built-in test feature to uncover bugs and prevent
/// regressions. A test execution verifies that agent responses have not changed
/// for end-user inputs defined in the test case.
///
/// Dialogflow CX **test case** — conversation-turn regression test for a
/// CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: test cases exercise the
/// never_apply [GoogleDialogflowCxAgent] session path. **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxTestCase extends Resource {
  static const String tfType = 'google_dialogflow_cx_test_case';

  GoogleDialogflowCxTestCase({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? notes,
    TfArg<List<String>>? tags,
    DialogflowCxTestCaseTestConfig? testConfig,
    List<DialogflowCxTestCaseConversationTurns>? testCaseConversationTurns,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'parent': ?parent,
           'notes': ?notes,
           'tags': ?tags,
           if (testConfig != null)
             'test_config': TfArg.literal(testConfig.encode()),
           if (testCaseConversationTurns != null)
             'test_case_conversation_turns': TfArg.literal([
               for (final e in testCaseConversationTurns) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxTestCaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxTestCase>`.
  RefTo<GoogleDialogflowCxTestCase> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_test_result` attribute.
  TfRef<List<Map<String, Object?>>> get lastTestResult =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'last_test_result');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `notes` attribute.
  TfRef<String> get notesRef => TfRef.attribute<String>(this, 'notes');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tagsRef =>
      TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
