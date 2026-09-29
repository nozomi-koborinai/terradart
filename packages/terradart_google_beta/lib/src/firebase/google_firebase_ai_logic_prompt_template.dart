// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_ai_logic_prompt_template`.
const Set<String> _googleFirebaseAiLogicPromptTemplateSensitive = <String>{};

/// Factory wrapper for `google_firebase_ai_logic_prompt_template`.
///
/// The PromptTemplate resource for Firebase AI Logic.
final class GoogleFirebaseAiLogicPromptTemplate extends Resource {
  static const String tfType = 'google_firebase_ai_logic_prompt_template';

  GoogleFirebaseAiLogicPromptTemplate({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<bool>? regionalPropagationDisabled,
    required TfArg<String> templateId,
    required TfArg<String> templateString,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'location': location,
           'project': ?project,
           'regional_propagation_disabled': ?regionalPropagationDisabled,
           'template_id': templateId,
           'template_string': templateString,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseAiLogicPromptTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAiLogicPromptTemplate>`.
  RefTo<GoogleFirebaseAiLogicPromptTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `model` attribute.
  TfRef<String> get model => TfRef.attribute<String>(this, 'model');

  /// Reference to `state_change_time` attribute.
  TfRef<String> get stateChangeTime =>
      TfRef.attribute<String>(this, 'state_change_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
