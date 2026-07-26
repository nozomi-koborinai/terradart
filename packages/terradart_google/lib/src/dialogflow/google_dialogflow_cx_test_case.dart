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
final class DialogflowCxTestCaseTestCaseConversationTurns {
  const DialogflowCxTestCaseTestCaseConversationTurns({
    this.userInput,
    this.virtualAgentOutput,
  });

  final DialogflowCxTestCaseTestCaseConversationTurnsUserInput? userInput;

  final DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutput?
  virtualAgentOutput;

  Map<String, Object?> encode() => {
    if (userInput != null) 'user_input': userInput!.encode(),
    if (virtualAgentOutput != null)
      'virtual_agent_output': virtualAgentOutput!.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsUserInput {
  const DialogflowCxTestCaseTestCaseConversationTurnsUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.isWebhookEnabled,
    this.input,
  });

  final TfArg<bool>? enableSentimentAnalysis;

  final TfArg<String>? injectedParameters;

  final TfArg<bool>? isWebhookEnabled;

  final DialogflowCxTestCaseTestCaseConversationTurnsUserInputInput? input;

  Map<String, Object?> encode() => {
    if (enableSentimentAnalysis != null)
      'enable_sentiment_analysis': enableSentimentAnalysis!.toTfJson(),
    if (injectedParameters != null)
      'injected_parameters': injectedParameters!.toTfJson(),
    if (isWebhookEnabled != null)
      'is_webhook_enabled': isWebhookEnabled!.toTfJson(),
    if (input != null) 'input': input!.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input.input` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsUserInputInput {
  const DialogflowCxTestCaseTestCaseConversationTurnsUserInputInput({
    this.languageCode,
    this.dtmf,
    this.event,
    this.text,
  });

  final TfArg<String>? languageCode;

  final DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputDtmf? dtmf;

  final DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputEvent? event;

  final DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputText? text;

  Map<String, Object?> encode() => {
    if (languageCode != null) 'language_code': languageCode!.toTfJson(),
    if (dtmf != null) 'dtmf': dtmf!.encode(),
    if (event != null) 'event': event!.encode(),
    if (text != null) 'text': text!.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input.input.dtmf` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputDtmf {
  const DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputDtmf({
    this.digits,
    this.finishDigit,
  });

  final TfArg<String>? digits;

  final TfArg<String>? finishDigit;

  Map<String, Object?> encode() => {
    if (digits != null) 'digits': digits!.toTfJson(),
    if (finishDigit != null) 'finish_digit': finishDigit!.toTfJson(),
  };
}

/// Typed helper for the `test_case_conversation_turns.user_input.input.event` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputEvent {
  const DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputEvent({
    required this.event,
  });

  final TfArg<String> event;

  Map<String, Object?> encode() => {'event': event.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.user_input.input.text` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputText {
  const DialogflowCxTestCaseTestCaseConversationTurnsUserInputInputText({
    required this.text,
  });

  final TfArg<String> text;

  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutput {
  const DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutput({
    this.sessionParameters,
    this.currentPage,
    this.textResponses,
    this.triggeredIntent,
  });

  final TfArg<String>? sessionParameters;

  final DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputCurrentPage?
  currentPage;

  final List<
    DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputTextResponses
  >?
  textResponses;

  final DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputTriggeredIntent?
  triggeredIntent;

  Map<String, Object?> encode() => {
    if (sessionParameters != null)
      'session_parameters': sessionParameters!.toTfJson(),
    if (currentPage != null) 'current_page': currentPage!.encode(),
    if (textResponses != null)
      'text_responses': [for (final e in textResponses!) e.encode()],
    if (triggeredIntent != null) 'triggered_intent': triggeredIntent!.encode(),
  };
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output.current_page` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputCurrentPage {
  const DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputCurrentPage({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output.text_responses` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputTextResponses {
  const DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputTextResponses({
    this.text,
  });

  final TfArg<List<Object?>>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
}

/// Typed helper for the `test_case_conversation_turns.virtual_agent_output.triggered_intent` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputTriggeredIntent {
  const DialogflowCxTestCaseTestCaseConversationTurnsVirtualAgentOutputTriggeredIntent({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `test_config` block of
/// `google_dialogflow_cx_test_case` (derived from provider schema).
@immutable
final class DialogflowCxTestCaseTestConfig {
  const DialogflowCxTestCaseTestConfig({
    this.flow,
    this.page,
    this.trackingParameters,
  });

  final TfArg<String>? flow;

  final TfArg<String>? page;

  final TfArg<List<Object?>>? trackingParameters;

  Map<String, Object?> encode() => {
    if (flow != null) 'flow': flow!.toTfJson(),
    if (page != null) 'page': page!.toTfJson(),
    if (trackingParameters != null)
      'tracking_parameters': trackingParameters!.toTfJson(),
  };
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
    List<DialogflowCxTestCaseTestCaseConversationTurns>?
    testCaseConversationTurns,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (parent != null) 'parent': parent,
           if (notes != null) 'notes': notes,
           if (tags != null) 'tags': tags,
           if (testConfig != null)
             'test_config': TfArg.literal(testConfig.encode()),
           if (testCaseConversationTurns != null)
             'test_case_conversation_turns': TfArg.literal([
               for (final e in testCaseConversationTurns) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxTestCaseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_test_result` attribute.
  TfRef<List<Map<String, Object?>>> get lastTestResult =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'last_test_result');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
