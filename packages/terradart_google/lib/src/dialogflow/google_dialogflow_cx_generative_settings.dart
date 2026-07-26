// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_generative_settings`.
const Set<String> _googleDialogflowCxGenerativeSettingsSensitive = <String>{};

/// Typed helper for the `fallback_settings` block of
/// `google_dialogflow_cx_generative_settings` (derived from provider schema).
@immutable
final class DialogflowCxGenerativeSettingsFallbackSettings {
  const DialogflowCxGenerativeSettingsFallbackSettings({
    this.selectedPrompt,
    this.promptTemplates,
  });

  final TfArg<String>? selectedPrompt;

  final List<DialogflowCxGenerativeSettingsFallbackSettingsPromptTemplates>?
  promptTemplates;

  Map<String, Object?> encode() => {
    if (selectedPrompt != null) 'selected_prompt': selectedPrompt!.toTfJson(),
    if (promptTemplates != null)
      'prompt_templates': [for (final e in promptTemplates!) e.encode()],
  };
}

/// Typed helper for the `fallback_settings.prompt_templates` block of
/// `google_dialogflow_cx_generative_settings` (derived from provider schema).
@immutable
final class DialogflowCxGenerativeSettingsFallbackSettingsPromptTemplates {
  const DialogflowCxGenerativeSettingsFallbackSettingsPromptTemplates({
    this.displayName,
    this.frozen,
    this.promptText,
  });

  final TfArg<String>? displayName;

  final TfArg<bool>? frozen;

  final TfArg<String>? promptText;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (frozen != null) 'frozen': frozen!.toTfJson(),
    if (promptText != null) 'prompt_text': promptText!.toTfJson(),
  };
}

/// Typed helper for the `generative_safety_settings` block of
/// `google_dialogflow_cx_generative_settings` (derived from provider schema).
@immutable
final class DialogflowCxGenerativeSettingsGenerativeSafetySettings {
  const DialogflowCxGenerativeSettingsGenerativeSafetySettings({
    this.defaultBannedPhraseMatchStrategy,
    this.bannedPhrases,
  });

  final TfArg<String>? defaultBannedPhraseMatchStrategy;

  final List<
    DialogflowCxGenerativeSettingsGenerativeSafetySettingsBannedPhrases
  >?
  bannedPhrases;

  Map<String, Object?> encode() => {
    if (defaultBannedPhraseMatchStrategy != null)
      'default_banned_phrase_match_strategy': defaultBannedPhraseMatchStrategy!
          .toTfJson(),
    if (bannedPhrases != null)
      'banned_phrases': [for (final e in bannedPhrases!) e.encode()],
  };
}

/// Typed helper for the `generative_safety_settings.banned_phrases` block of
/// `google_dialogflow_cx_generative_settings` (derived from provider schema).
@immutable
final class DialogflowCxGenerativeSettingsGenerativeSafetySettingsBannedPhrases {
  const DialogflowCxGenerativeSettingsGenerativeSafetySettingsBannedPhrases({
    required this.languageCode,
    required this.text,
  });

  final TfArg<String> languageCode;

  final TfArg<String> text;

  Map<String, Object?> encode() => {
    'language_code': languageCode.toTfJson(),
    'text': text.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings` block of
/// `google_dialogflow_cx_generative_settings` (derived from provider schema).
@immutable
final class DialogflowCxGenerativeSettingsKnowledgeConnectorSettings {
  const DialogflowCxGenerativeSettingsKnowledgeConnectorSettings({
    this.agent,
    this.agentIdentity,
    this.agentScope,
    this.business,
    this.businessDescription,
    this.disableDataStoreFallback,
  });

  final TfArg<String>? agent;

  final TfArg<String>? agentIdentity;

  final TfArg<String>? agentScope;

  final TfArg<String>? business;

  final TfArg<String>? businessDescription;

  final TfArg<bool>? disableDataStoreFallback;

  Map<String, Object?> encode() => {
    if (agent != null) 'agent': agent!.toTfJson(),
    if (agentIdentity != null) 'agent_identity': agentIdentity!.toTfJson(),
    if (agentScope != null) 'agent_scope': agentScope!.toTfJson(),
    if (business != null) 'business': business!.toTfJson(),
    if (businessDescription != null)
      'business_description': businessDescription!.toTfJson(),
    if (disableDataStoreFallback != null)
      'disable_data_store_fallback': disableDataStoreFallback!.toTfJson(),
  };
}

/// Typed helper for the `llm_model_settings` block of
/// `google_dialogflow_cx_generative_settings` (derived from provider schema).
@immutable
final class DialogflowCxGenerativeSettingsLlmModelSettings {
  const DialogflowCxGenerativeSettingsLlmModelSettings({
    this.model,
    this.promptText,
  });

  final TfArg<String>? model;

  final TfArg<String>? promptText;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (promptText != null) 'prompt_text': promptText!.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_generative_settings`.
///
/// Settings for Generative AI.
///
/// Dialogflow CX **generative settings** — LLM / safety / knowledge
/// connector defaults for a CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session; plus generative model usage). billing-behavior:
/// configures the never_apply [GoogleDialogflowCxAgent] generative path;
/// MM `exclude_delete: true` (Terraform cannot destroy). **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxGenerativeSettings extends Resource {
  static const String tfType = 'google_dialogflow_cx_generative_settings';

  GoogleDialogflowCxGenerativeSettings({
    required super.localName,
    required TfArg<String> languageCode,
    TfArg<String>? parent,
    DialogflowCxGenerativeSettingsFallbackSettings? fallbackSettings,
    DialogflowCxGenerativeSettingsGenerativeSafetySettings?
    generativeSafetySettings,
    DialogflowCxGenerativeSettingsKnowledgeConnectorSettings?
    knowledgeConnectorSettings,
    DialogflowCxGenerativeSettingsLlmModelSettings? llmModelSettings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'language_code': languageCode,
           if (parent != null) 'parent': parent,
           if (fallbackSettings != null)
             'fallback_settings': TfArg.literal(fallbackSettings.encode()),
           if (generativeSafetySettings != null)
             'generative_safety_settings': TfArg.literal(
               generativeSafetySettings.encode(),
             ),
           if (knowledgeConnectorSettings != null)
             'knowledge_connector_settings': TfArg.literal(
               knowledgeConnectorSettings.encode(),
             ),
           if (llmModelSettings != null)
             'llm_model_settings': TfArg.literal(llmModelSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDialogflowCxGenerativeSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
