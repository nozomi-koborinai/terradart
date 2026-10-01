// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ces/google_ces_app.dart' show GoogleCesApp;

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

  final CesGuardrailGenerativeAnswer? generativeAnswer;

  final CesGuardrailRespondImmediately? respondImmediately;

  final CesGuardrailTransferAgent? transferAgent;

  Map<String, Object?> encode() => {
    'generative_answer': ?generativeAnswer?.encode(),
    'respond_immediately': ?respondImmediately?.encode(),
    'transfer_agent': ?transferAgent?.encode(),
  };
}

/// Typed helper for the `action.generative_answer` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailGenerativeAnswer {
  const CesGuardrailGenerativeAnswer({required this.prompt});

  final TfArg<String> prompt;

  Map<String, Object?> encode() => {'prompt': prompt.toTfJson()};
}

/// Typed helper for the `action.respond_immediately` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailRespondImmediately {
  const CesGuardrailRespondImmediately({required this.responses});

  final List<CesGuardrailResponses> responses;

  Map<String, Object?> encode() => {
    'responses': [for (final e in responses) e.encode()],
  };
}

/// Typed helper for the `action.respond_immediately.responses` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailResponses {
  const CesGuardrailResponses({this.disabled, required this.text});

  final TfArg<bool>? disabled;

  final TfArg<String> text;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'text': text.toTfJson(),
  };
}

/// Typed helper for the `action.transfer_agent` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailTransferAgent {
  const CesGuardrailTransferAgent({required this.agent});

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

  final CesGuardrailAfterAgentCallback? afterAgentCallback;

  final CesGuardrailAfterModelCallback? afterModelCallback;

  final CesGuardrailBeforeAgentCallback? beforeAgentCallback;

  final CesGuardrailBeforeModelCallback? beforeModelCallback;

  Map<String, Object?> encode() => {
    'after_agent_callback': ?afterAgentCallback?.encode(),
    'after_model_callback': ?afterModelCallback?.encode(),
    'before_agent_callback': ?beforeAgentCallback?.encode(),
    'before_model_callback': ?beforeModelCallback?.encode(),
  };
}

/// Typed helper for the `code_callback.after_agent_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailAfterAgentCallback {
  const CesGuardrailAfterAgentCallback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `code_callback.after_model_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailAfterModelCallback {
  const CesGuardrailAfterModelCallback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `code_callback.before_agent_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailBeforeAgentCallback {
  const CesGuardrailBeforeAgentCallback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `code_callback.before_model_callback` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailBeforeModelCallback {
  const CesGuardrailBeforeModelCallback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
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

  final TfArg<List<String>>? bannedContents;

  final TfArg<List<String>>? bannedContentsInAgentResponse;

  final TfArg<List<String>>? bannedContentsInUserInput;

  final TfArg<bool>? disregardDiacritics;

  final TfArg<String> matchType;

  Map<String, Object?> encode() => {
    'banned_contents': ?bannedContents?.toTfJson(),
    'banned_contents_in_agent_response': ?bannedContentsInAgentResponse
        ?.toTfJson(),
    'banned_contents_in_user_input': ?bannedContentsInUserInput?.toTfJson(),
    'disregard_diacritics': ?disregardDiacritics?.toTfJson(),
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

  final TfArg<CesGuardrailPolicyScope> policyScope;

  final TfArg<String> prompt;

  final CesGuardrailModelSettings? modelSettings;

  Map<String, Object?> encode() => {
    'allow_short_utterance': ?allowShortUtterance?.toTfJson(),
    'fail_open': ?failOpen?.toTfJson(),
    'max_conversation_messages': ?maxConversationMessages?.toTfJson(),
    'policy_scope': policyScope.toTfJson(),
    'prompt': prompt.toTfJson(),
    'model_settings': ?modelSettings?.encode(),
  };
}

/// `policy_scope` — derived from the provider schema description.
enum CesGuardrailPolicyScope implements TerraformEnum {
  userQuery('USER_QUERY'),
  agentResponse('AGENT_RESPONSE'),
  userQueryAndAgentResponse('USER_QUERY_AND_AGENT_RESPONSE');

  const CesGuardrailPolicyScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `llm_policy.model_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesGuardrailModelSettings {
  const CesGuardrailModelSettings({this.model, this.temperature});

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    'model': ?model?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
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

  final CesGuardrailCustomPolicy? customPolicy;

  final CesGuardrailDefaultSettings? defaultSettings;

  Map<String, Object?> encode() => {
    'fail_open': ?failOpen?.toTfJson(),
    'custom_policy': ?customPolicy?.encode(),
    'default_settings': ?defaultSettings?.encode(),
  };
}

/// Typed helper for the `llm_prompt_security.custom_policy` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailCustomPolicy {
  const CesGuardrailCustomPolicy({
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

  final CesGuardrailModelSettings? modelSettings;

  Map<String, Object?> encode() => {
    'allow_short_utterance': ?allowShortUtterance?.toTfJson(),
    'fail_open': ?failOpen?.toTfJson(),
    'max_conversation_messages': ?maxConversationMessages?.toTfJson(),
    'policy_scope': policyScope.toTfJson(),
    'prompt': prompt.toTfJson(),
    'model_settings': ?modelSettings?.encode(),
  };
}

/// Typed helper for the `llm_prompt_security.default_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailDefaultSettings {
  const CesGuardrailDefaultSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `model_safety` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailModelSafety {
  const CesGuardrailModelSafety({required this.safetySettings});

  final List<CesGuardrailSafetySettings> safetySettings;

  Map<String, Object?> encode() => {
    'safety_settings': [for (final e in safetySettings) e.encode()],
  };
}

/// Typed helper for the `model_safety.safety_settings` block of
/// `google_ces_guardrail` (derived from provider schema).
@immutable
final class CesGuardrailSafetySettings {
  const CesGuardrailSafetySettings({
    required this.category,
    required this.threshold,
  });

  final TfArg<CesGuardrailCategory> category;

  final TfArg<CesGuardrailThreshold> threshold;

  Map<String, Object?> encode() => {
    'category': category.toTfJson(),
    'threshold': threshold.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
enum CesGuardrailCategory implements TerraformEnum {
  harmCategoryHateSpeech('HARM_CATEGORY_HATE_SPEECH'),
  harmCategoryDangerousContent('HARM_CATEGORY_DANGEROUS_CONTENT'),
  harmCategoryHarassment('HARM_CATEGORY_HARASSMENT'),
  harmCategorySexuallyExplicit('HARM_CATEGORY_SEXUALLY_EXPLICIT');

  const CesGuardrailCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `threshold` — derived from the provider schema description.
enum CesGuardrailThreshold implements TerraformEnum {
  blockLowAndAbove('BLOCK_LOW_AND_ABOVE'),
  blockMediumAndAbove('BLOCK_MEDIUM_AND_ABOVE'),
  blockOnlyHigh('BLOCK_ONLY_HIGH'),
  blockNone('BLOCK_NONE'),
  off('OFF');

  const CesGuardrailThreshold(this.terraformValue);
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
///   app: app.ref,
///   guardrailId: TfArg.literal('terradart-ces-guardrail'),
///   displayName: TfArg.literal('terradart-ces-guardrail'),
///   enabled: TfArg.literal(true),
///   modelSafety: CesGuardrailModelSafety(
///     safetySettings: [
///       CesGuardrailSafetySettings(
///         category: TfArg.literal(
///           CesGuardrailCategory
///               .harmCategoryHateSpeech,
///         ),
///         threshold: TfArg.literal(
///           CesGuardrailThreshold.blockNone,
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
    TfArg<String>? location,
    required RefTo<GoogleCesApp> app,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? app.alsoAs('location')),
           'app': app.encodeAs('app_id'),
           'guardrail_id': guardrailId,
           'display_name': displayName,
           'description': ?description,
           'enabled': ?enabled,
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
           'deletion_policy': ?deletionPolicy,
           'project': ?(project ?? app.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesGuardrailSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesGuardrail>`.
  RefTo<GoogleCesGuardrail> get ref => RefTo.of(this);

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

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `guardrail_id` attribute.
  TfRef<String> get guardrailIdRef =>
      TfRef.attribute<String>(this, 'guardrail_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
