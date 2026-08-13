// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_intent`.
const Set<String> _googleDialogflowIntentSensitive = <String>{};

/// Dialogflow Intent Webhook enum for `webhook_state`.
enum DialogflowIntentWebhookState implements TerraformEnum {
  webhookStateEnabled('WEBHOOK_STATE_ENABLED'),
  webhookStateEnabledForSlotFilling('WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING');

  const DialogflowIntentWebhookState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dialogflow_intent`.
///
/// Represents a Dialogflow intent. Intents convert a number of user expressions
/// or patterns into an action. An action is an extraction of a user command or
/// sentence semantics.
///
/// Dialogflow ES **intent** — maps user phrases to an action on the
/// per-project ES agent.
///
/// **Cost:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Intent Detection
/// Text Query Operations for Enterprise Essentials Agents `114B-F183-612D`
/// **$0.002/count**. billing-behavior: intents are design-time config;
/// query SKUs fire only on DetectIntent (this factory never invokes it).
/// Standard-tier agents have no catalog query SKU. Enable
/// `dialogflow.googleapis.com` before apply. The ES agent is a
/// per-project singleton — create [GoogleDialogflowAgent] first.
final class GoogleDialogflowIntent extends Resource {
  static const String tfType = 'google_dialogflow_intent';

  GoogleDialogflowIntent({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? action,
    TfArg<List<String>>? defaultResponsePlatforms,
    TfArg<List<String>>? events,
    TfArg<List<String>>? inputContextNames,
    TfArg<bool>? isFallback,
    TfArg<bool>? mlDisabled,
    TfArg<String>? parentFollowupIntentName,
    TfArg<num>? priority,
    TfArg<bool>? resetContexts,
    TfArg<DialogflowIntentWebhookState>? webhookState,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (action != null) 'action': action,
           if (defaultResponsePlatforms != null)
             'default_response_platforms': defaultResponsePlatforms,
           if (events != null) 'events': events,
           if (inputContextNames != null)
             'input_context_names': inputContextNames,
           if (isFallback != null) 'is_fallback': isFallback,
           if (mlDisabled != null) 'ml_disabled': mlDisabled,
           if (parentFollowupIntentName != null)
             'parent_followup_intent_name': parentFollowupIntentName,
           if (priority != null) 'priority': priority,
           if (resetContexts != null) 'reset_contexts': resetContexts,
           if (webhookState != null) 'webhook_state': webhookState,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowIntentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `followup_intent_info` attribute.
  TfRef<List<Map<String, Object?>>> get followupIntentInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'followup_intent_info');

  /// Reference to `root_followup_intent_name` attribute.
  TfRef<String> get rootFollowupIntentName =>
      TfRef.attribute<String>(this, 'root_followup_intent_name');
}
