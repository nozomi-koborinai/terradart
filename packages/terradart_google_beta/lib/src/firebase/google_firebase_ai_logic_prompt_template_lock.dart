// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_ai_logic_prompt_template_lock`.
const Set<String> _googleFirebaseAiLogicPromptTemplateLockSensitive =
    <String>{};

/// Factory wrapper for `google_firebase_ai_logic_prompt_template_lock`.
///
/// A resource that manages the lock state of a PromptTemplate. When this
/// resource is created, the template is locked. When this resource is deleted,
/// the template is unlocked.
final class GoogleFirebaseAiLogicPromptTemplateLock extends Resource {
  static const String tfType = 'google_firebase_ai_logic_prompt_template_lock';

  GoogleFirebaseAiLogicPromptTemplateLock({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<bool>? regionalPropagationDisabled,
    required TfArg<String> templateId,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'location': location,
           if (project != null) 'project': project,
           if (regionalPropagationDisabled != null)
             'regional_propagation_disabled': regionalPropagationDisabled,
           'template_id': templateId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseAiLogicPromptTemplateLockSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');
}
