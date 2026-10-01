// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_intent`.
const Set<String> _googleDialogflowIntentSensitive = <String>{};

/// Dialogflow Intent Webhook enum for `webhook_state`.
extension type const DialogflowIntentWebhookState._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowIntentWebhookState.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowIntentWebhookState.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowIntentWebhookState.arg(TfArg<String> arg) : this._(arg);

  static const webhookStateEnabled = DialogflowIntentWebhookState._(
    TfArgLiteral('WEBHOOK_STATE_ENABLED'),
  );
  static const webhookStateEnabledForSlotFilling =
      DialogflowIntentWebhookState._(
        TfArgLiteral('WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING'),
      );

  static const List<DialogflowIntentWebhookState> values = [
    webhookStateEnabled,
    webhookStateEnabledForSlotFilling,
  ];
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

  GoogleDialogflowIntent(
    super.localName, {
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
    DialogflowIntentWebhookState? webhookState,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'action': ?action,
           'default_response_platforms': ?defaultResponsePlatforms,
           'events': ?events,
           'input_context_names': ?inputContextNames,
           'is_fallback': ?isFallback,
           'ml_disabled': ?mlDisabled,
           'parent_followup_intent_name': ?parentFollowupIntentName,
           'priority': ?priority,
           'reset_contexts': ?resetContexts,
           'webhook_state': ?webhookState,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowIntentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowIntent>`.
  RefTo<GoogleDialogflowIntent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `followup_intent_info` attribute.
  TfRef<List<Map<String, Object?>>> get followupIntentInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'followup_intent_info');

  /// Reference to `root_followup_intent_name` attribute.
  TfRef<String> get rootFollowupIntentName =>
      TfRef.attribute<String>(this, 'root_followup_intent_name');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `default_response_platforms` attribute.
  TfRef<List<String>> get defaultResponsePlatforms =>
      TfRef.attribute<List<String>>(this, 'default_response_platforms');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `events` attribute.
  TfRef<List<String>> get events =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `input_context_names` attribute.
  TfRef<List<String>> get inputContextNames =>
      TfRef.attribute<List<String>>(this, 'input_context_names');

  /// Reference to `is_fallback` attribute.
  TfRef<bool> get isFallback => TfRef.attribute<bool>(this, 'is_fallback');

  /// Reference to `ml_disabled` attribute.
  TfRef<bool> get mlDisabled => TfRef.attribute<bool>(this, 'ml_disabled');

  /// Reference to `parent_followup_intent_name` attribute.
  TfRef<String> get parentFollowupIntentName =>
      TfRef.attribute<String>(this, 'parent_followup_intent_name');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reset_contexts` attribute.
  TfRef<bool> get resetContexts =>
      TfRef.attribute<bool>(this, 'reset_contexts');

  /// Reference to `webhook_state` attribute.
  TfRef<String> get webhookState =>
      TfRef.attribute<String>(this, 'webhook_state');
}
