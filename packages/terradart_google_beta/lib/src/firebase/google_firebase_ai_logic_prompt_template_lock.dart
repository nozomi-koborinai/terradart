// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_ai_logic_prompt_template_lock`.
const Set<String> _googleFirebaseAiLogicPromptTemplateLockSensitive =
    <String>{};

/// Factory wrapper for `google_firebase_ai_logic_prompt_template_lock`.
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
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
}
