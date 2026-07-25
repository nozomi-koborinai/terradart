// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_assistant`.
const Set<String> _googleDiscoveryEngineAssistantSensitive = <String>{};

/// Typed helper for the `customer_policy` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantCustomerPolicy {
  const DiscoveryEngineAssistantCustomerPolicy({
    this.bannedPhrases,
    this.modelArmorConfig,
  });

  final List<DiscoveryEngineAssistantCustomerPolicyBannedPhrases>?
  bannedPhrases;

  final DiscoveryEngineAssistantCustomerPolicyModelArmorConfig?
  modelArmorConfig;

  Map<String, Object?> encode() => {
    if (bannedPhrases != null)
      'banned_phrases': [for (final e in bannedPhrases!) e.encode()],
    if (modelArmorConfig != null)
      'model_armor_config': modelArmorConfig!.encode(),
  };
}

/// Typed helper for the `customer_policy.banned_phrases` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantCustomerPolicyBannedPhrases {
  const DiscoveryEngineAssistantCustomerPolicyBannedPhrases({
    this.ignoreDiacritics,
    this.matchType,
    required this.phrase,
  });

  final TfArg<bool>? ignoreDiacritics;

  final TfArg<String>? matchType;

  final TfArg<String> phrase;

  Map<String, Object?> encode() => {
    if (ignoreDiacritics != null)
      'ignore_diacritics': ignoreDiacritics!.toTfJson(),
    if (matchType != null) 'match_type': matchType!.toTfJson(),
    'phrase': phrase.toTfJson(),
  };
}

/// Typed helper for the `customer_policy.model_armor_config` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantCustomerPolicyModelArmorConfig {
  const DiscoveryEngineAssistantCustomerPolicyModelArmorConfig({
    this.failureMode,
    required this.responseTemplate,
    required this.userPromptTemplate,
  });

  final TfArg<String>? failureMode;

  final TfArg<String> responseTemplate;

  final TfArg<String> userPromptTemplate;

  Map<String, Object?> encode() => {
    if (failureMode != null) 'failure_mode': failureMode!.toTfJson(),
    'response_template': responseTemplate.toTfJson(),
    'user_prompt_template': userPromptTemplate.toTfJson(),
  };
}

/// Typed helper for the `generation_config` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantGenerationConfig {
  const DiscoveryEngineAssistantGenerationConfig({
    this.defaultLanguage,
    this.systemInstruction,
  });

  final TfArg<String>? defaultLanguage;

  final DiscoveryEngineAssistantGenerationConfigSystemInstruction?
  systemInstruction;

  Map<String, Object?> encode() => {
    if (defaultLanguage != null)
      'default_language': defaultLanguage!.toTfJson(),
    if (systemInstruction != null)
      'system_instruction': systemInstruction!.encode(),
  };
}

/// Typed helper for the `generation_config.system_instruction` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantGenerationConfigSystemInstruction {
  const DiscoveryEngineAssistantGenerationConfigSystemInstruction({
    this.additionalSystemInstruction,
  });

  final TfArg<String>? additionalSystemInstruction;

  Map<String, Object?> encode() => {
    if (additionalSystemInstruction != null)
      'additional_system_instruction': additionalSystemInstruction!.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_assistant`.
///
/// Assistant
///
/// Vertex AI Search / Gemini Enterprise **assistant** — Agentspace
/// assistant bound to a search/chat engine.
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**). billing-behavior: assistants are the
/// Gemini Enterprise Agentspace runtime surface (seat/entitlement path);
/// not applyable without that subscription on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleDiscoveryEngineAssistant extends Resource {
  static const String tfType = 'google_discovery_engine_assistant';

  GoogleDiscoveryEngineAssistant({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> assistantId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    DiscoveryEngineAssistantGenerationConfig? generationConfig,
    DiscoveryEngineAssistantCustomerPolicy? customerPolicy,
    TfArg<String>? webGroundingType,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'assistant_id': assistantId,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (generationConfig != null)
             'generation_config': TfArg.literal(generationConfig.encode()),
           if (customerPolicy != null)
             'customer_policy': TfArg.literal(customerPolicy.encode()),
           if (webGroundingType != null) 'web_grounding_type': webGroundingType,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineAssistantSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
