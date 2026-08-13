// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_guardrail`.
const Set<String> _googleCesGuardrailSensitive = <String>{};

/// Typed helper for the `action` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailAction {
  const CesGuardrailAction({
    this.generativeAnswer,
    this.respondImmediately,
    this.transferAgent,
  });

  final CesGuardrailActionGenerativeAnswer? generativeAnswer;

  final CesGuardrailActionRespondImmediately? respondImmediately;

  final CesGuardrailActionTransferAgent? transferAgent;

  Map<String, Object?> encode() => {
    if (generativeAnswer != null)
      'generative_answer': generativeAnswer!.encode(),
    if (respondImmediately != null)
      'respond_immediately': respondImmediately!.encode(),
    if (transferAgent != null) 'transfer_agent': transferAgent!.encode(),
  };
}

/// Typed helper for the `action.generative_answer` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailActionGenerativeAnswer {
  const CesGuardrailActionGenerativeAnswer({required this.prompt});

  final TfArg<String> prompt;

  Map<String, Object?> encode() => {'prompt': prompt.toTfJson()};
}

/// Typed helper for the `action.respond_immediately` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailActionRespondImmediately {
  const CesGuardrailActionRespondImmediately({required this.responses});

  final List<CesGuardrailActionRespondImmediatelyResponses> responses;

  Map<String, Object?> encode() => {
    'responses': [for (final e in responses) e.encode()],
  };
}

/// Typed helper for the `action.respond_immediately.responses` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailActionRespondImmediatelyResponses {
  const CesGuardrailActionRespondImmediatelyResponses({
    this.disabled,
    required this.text,
  });

  final TfArg<bool>? disabled;

  final TfArg<String> text;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'text': text.toTfJson(),
  };
}

/// Typed helper for the `action.transfer_agent` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailActionTransferAgent {
  const CesGuardrailActionTransferAgent({required this.agent});

  final TfArg<String> agent;

  Map<String, Object?> encode() => {'agent': agent.toTfJson()};
}

/// Typed helper for the `code_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailCodeCallback {
  const CesGuardrailCodeCallback({
    this.afterAgentCallback,
    this.afterModelCallback,
    this.beforeAgentCallback,
    this.beforeModelCallback,
  });

  final CesGuardrailCodeCallbackAfterAgentCallback? afterAgentCallback;

  final CesGuardrailCodeCallbackAfterModelCallback? afterModelCallback;

  final CesGuardrailCodeCallbackBeforeAgentCallback? beforeAgentCallback;

  final CesGuardrailCodeCallbackBeforeModelCallback? beforeModelCallback;

  Map<String, Object?> encode() => {
    if (afterAgentCallback != null)
      'after_agent_callback': afterAgentCallback!.encode(),
    if (afterModelCallback != null)
      'after_model_callback': afterModelCallback!.encode(),
    if (beforeAgentCallback != null)
      'before_agent_callback': beforeAgentCallback!.encode(),
    if (beforeModelCallback != null)
      'before_model_callback': beforeModelCallback!.encode(),
  };
}

/// Typed helper for the `code_callback.after_agent_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailCodeCallbackAfterAgentCallback {
  const CesGuardrailCodeCallbackAfterAgentCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `code_callback.after_model_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailCodeCallbackAfterModelCallback {
  const CesGuardrailCodeCallbackAfterModelCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `code_callback.before_agent_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailCodeCallbackBeforeAgentCallback {
  const CesGuardrailCodeCallbackBeforeAgentCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `code_callback.before_model_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailCodeCallbackBeforeModelCallback {
  const CesGuardrailCodeCallbackBeforeModelCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `content_filter` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailContentFilter {
  const CesGuardrailContentFilter({
    this.bannedContents,
    this.bannedContentsInAgentResponse,
    this.bannedContentsInUserInput,
    this.disregardDiacritics,
    required this.matchType,
  });

  final TfArg<List<Object?>>? bannedContents;

  final TfArg<List<Object?>>? bannedContentsInAgentResponse;

  final TfArg<List<Object?>>? bannedContentsInUserInput;

  final TfArg<bool>? disregardDiacritics;

  final TfArg<String> matchType;

  Map<String, Object?> encode() => {
    if (bannedContents != null) 'banned_contents': bannedContents!.toTfJson(),
    if (bannedContentsInAgentResponse != null)
      'banned_contents_in_agent_response': bannedContentsInAgentResponse!
          .toTfJson(),
    if (bannedContentsInUserInput != null)
      'banned_contents_in_user_input': bannedContentsInUserInput!.toTfJson(),
    if (disregardDiacritics != null)
      'disregard_diacritics': disregardDiacritics!.toTfJson(),
    'match_type': matchType.toTfJson(),
  };
}

/// Typed helper for the `llm_policy` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailLlmPolicy {
  const CesGuardrailLlmPolicy({
    this.allowShortUtterance,
    this.failOpen,
    this.maxConversationMessages,
    required this.policyScope,
    required this.prompt,
    this.modelSettings,
  });

  final TfArg<bool>? allowShortUtterance;

  final TfArg<bool>? failOpen;

  final TfArg<num>? maxConversationMessages;

  final TfArg<CesGuardrailLlmPolicyPolicyScope> policyScope;

  final TfArg<String> prompt;

  final CesGuardrailLlmPolicyModelSettings? modelSettings;

  Map<String, Object?> encode() => {
    if (allowShortUtterance != null)
      'allow_short_utterance': allowShortUtterance!.toTfJson(),
    if (failOpen != null) 'fail_open': failOpen!.toTfJson(),
    if (maxConversationMessages != null)
      'max_conversation_messages': maxConversationMessages!.toTfJson(),
    'policy_scope': policyScope.toTfJson(),
    'prompt': prompt.toTfJson(),
    if (modelSettings != null) 'model_settings': modelSettings!.encode(),
  };
}

/// `policy_scope` — derived from the provider schema description.
enum CesGuardrailLlmPolicyPolicyScope implements TerraformEnum {
  userQuery('USER_QUERY'),
  agentResponse('AGENT_RESPONSE'),
  userQueryAndAgentResponse('USER_QUERY_AND_AGENT_RESPONSE');

  const CesGuardrailLlmPolicyPolicyScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `llm_policy.model_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailLlmPolicyModelSettings {
  const CesGuardrailLlmPolicyModelSettings({this.model, this.temperature});

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
  };
}

/// Typed helper for the `llm_prompt_security` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailLlmPromptSecurity {
  const CesGuardrailLlmPromptSecurity({
    this.failOpen,
    this.customPolicy,
    this.defaultSettings,
  });

  final TfArg<bool>? failOpen;

  final CesGuardrailLlmPromptSecurityCustomPolicy? customPolicy;

  final CesGuardrailLlmPromptSecurityDefaultSettings? defaultSettings;

  Map<String, Object?> encode() => {
    if (failOpen != null) 'fail_open': failOpen!.toTfJson(),
    if (customPolicy != null) 'custom_policy': customPolicy!.encode(),
    if (defaultSettings != null) 'default_settings': defaultSettings!.encode(),
  };
}

/// Typed helper for the `llm_prompt_security.custom_policy` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailLlmPromptSecurityCustomPolicy {
  const CesGuardrailLlmPromptSecurityCustomPolicy({
    this.allowShortUtterance,
    this.failOpen,
    this.maxConversationMessages,
    required this.policyScope,
    required this.prompt,
    this.modelSettings,
  });

  final TfArg<bool>? allowShortUtterance;

  final TfArg<bool>? failOpen;

  final TfArg<num>? maxConversationMessages;

  final TfArg<String> policyScope;

  final TfArg<String> prompt;

  final CesGuardrailLlmPromptSecurityCustomPolicyModelSettings? modelSettings;

  Map<String, Object?> encode() => {
    if (allowShortUtterance != null)
      'allow_short_utterance': allowShortUtterance!.toTfJson(),
    if (failOpen != null) 'fail_open': failOpen!.toTfJson(),
    if (maxConversationMessages != null)
      'max_conversation_messages': maxConversationMessages!.toTfJson(),
    'policy_scope': policyScope.toTfJson(),
    'prompt': prompt.toTfJson(),
    if (modelSettings != null) 'model_settings': modelSettings!.encode(),
  };
}

/// Typed helper for the `llm_prompt_security.custom_policy.model_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailLlmPromptSecurityCustomPolicyModelSettings {
  const CesGuardrailLlmPromptSecurityCustomPolicyModelSettings({
    this.model,
    this.temperature,
  });

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
  };
}

/// Typed helper for the `llm_prompt_security.default_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailLlmPromptSecurityDefaultSettings {
  const CesGuardrailLlmPromptSecurityDefaultSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `model_safety` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailModelSafety {
  const CesGuardrailModelSafety({required this.safetySettings});

  final List<CesGuardrailModelSafetySafetySettings> safetySettings;

  Map<String, Object?> encode() => {
    'safety_settings': [for (final e in safetySettings) e.encode()],
  };
}

/// Typed helper for the `model_safety.safety_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailModelSafetySafetySettings {
  const CesGuardrailModelSafetySafetySettings({
    required this.category,
    required this.threshold,
  });

  final TfArg<CesGuardrailModelSafetySafetySettingsCategory> category;

  final TfArg<CesGuardrailModelSafetySafetySettingsThreshold> threshold;

  Map<String, Object?> encode() => {
    'category': category.toTfJson(),
    'threshold': threshold.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
enum CesGuardrailModelSafetySafetySettingsCategory implements TerraformEnum {
  harmCategoryHateSpeech('HARM_CATEGORY_HATE_SPEECH'),
  harmCategoryDangerousContent('HARM_CATEGORY_DANGEROUS_CONTENT'),
  harmCategoryHarassment('HARM_CATEGORY_HARASSMENT'),
  harmCategorySexuallyExplicit('HARM_CATEGORY_SEXUALLY_EXPLICIT');

  const CesGuardrailModelSafetySafetySettingsCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `threshold` — derived from the provider schema description.
enum CesGuardrailModelSafetySafetySettingsThreshold implements TerraformEnum {
  blockLowAndAbove('BLOCK_LOW_AND_ABOVE'),
  blockMediumAndAbove('BLOCK_MEDIUM_AND_ABOVE'),
  blockOnlyHigh('BLOCK_ONLY_HIGH'),
  blockNone('BLOCK_NONE'),
  off('OFF');

  const CesGuardrailModelSafetySafetySettingsThreshold(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_ces_guardrail`.
///
/// Description
///
/// Customer Engagement Suite **guardrail** — content filter, model
/// safety, LLM policy, or prompt-security bound to a [GoogleCesApp].
/// Optional action / filter blocks fan out (no MM `exactly_one_of`).
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB`). billing-behavior: guardrails are design-time
/// config — session SKUs fire only on CX Agent Studio chat/voice
/// sessions. Enable `ces.googleapis.com` via [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleCesGuardrail(
///   localName: 'safety',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   guardrailId: TfArg.literal('terradart-ces-guardrail'),
///   displayName: TfArg.literal('terradart-ces-guardrail'),
///   enabled: TfArg.literal(true),
///   modelSafety: CesGuardrailModelSafety(
///     safetySettings: [
///       CesGuardrailModelSafetySafetySettings(
///         category: TfArg.literal(
///           CesGuardrailModelSafetySafetySettingsCategory
///               .harmCategoryHateSpeech,
///         ),
///         threshold: TfArg.literal(
///           CesGuardrailModelSafetySafetySettingsThreshold.blockNone,
///         ),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleCesGuardrail extends Resource {
  static const String tfType = 'google_ces_guardrail';

  GoogleCesGuardrail({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> guardrailId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    CesGuardrailAction? action,
    CesGuardrailContentFilter? contentFilter,
    CesGuardrailModelSafety? modelSafety,
    CesGuardrailLlmPolicy? llmPolicy,
    CesGuardrailLlmPromptSecurity? llmPromptSecurity,
    CesGuardrailCodeCallback? codeCallback,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'guardrail_id': guardrailId,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           if (action != null) 'action': TfArg.literal(action.encode()),
           if (contentFilter != null)
             'content_filter': TfArg.literal(contentFilter.encode()),
           if (modelSafety != null)
             'model_safety': TfArg.literal(modelSafety.encode()),
           if (llmPolicy != null)
             'llm_policy': TfArg.literal(llmPolicy.encode()),
           if (llmPromptSecurity != null)
             'llm_prompt_security': TfArg.literal(llmPromptSecurity.encode()),
           if (codeCallback != null)
             'code_callback': TfArg.literal(codeCallback.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesGuardrailSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
