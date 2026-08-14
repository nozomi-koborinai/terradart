// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_conversation_profile`.
const Set<String> _googleDialogflowConversationProfileSensitive = <String>{};

/// Factory wrapper for `google_dialogflow_conversation_profile`.
///
/// A conversation profile configures a set of parameters that control the
/// suggestions made to an agent. These parameters control the suggestions that
/// are surfaced during runtime. Each profile configures either a Dialogflow
/// virtual agent or a human agent for a conversation.
///
/// Dialogflow ES **conversation profile** — Agent Assist config
/// metadata. Creating the profile does **not** start a conversation,
/// call DetectIntent, or enable speech / suggestions.
///
/// Prefer a thin smoke stack: [displayName] plus [location] `global`.
/// Omit automated-agent, human-agent-assistant, STT, TTS, and
/// notification blocks so no runtime path is wired. Set
/// [deletionPolicy] to `DELETE`.
///
/// `dialogflow_quickstart` is apply-smoke skipped (SIP trunk needs
/// a live carrier TLS peer), so this factory is synth +
/// `terraform validate` only.
///
/// Example:
/// ```dart
/// GoogleDialogflowConversationProfile(
///   localName: 'demo_profile',
///   displayName: TfArg.literal('terradart-profile'),
///   location: TfArg.literal('global'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDialogflowConversationProfile extends Resource {
  static const String tfType = 'google_dialogflow_conversation_profile';

  GoogleDialogflowConversationProfile({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? languageCode,
    TfArg<String>? timeZone,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           if (languageCode != null) 'language_code': languageCode,
           if (timeZone != null) 'time_zone': timeZone,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDialogflowConversationProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
