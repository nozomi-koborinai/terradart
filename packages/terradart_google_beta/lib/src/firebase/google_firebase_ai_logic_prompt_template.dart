// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_ai_logic_prompt_template`.
const Set<String> _googleFirebaseAiLogicPromptTemplateSensitive = <String>{};

/// Factory wrapper for `google_firebase_ai_logic_prompt_template`.
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'location': location,
           if (project != null) 'project': project,
           if (regionalPropagationDisabled != null)
             'regional_propagation_disabled': regionalPropagationDisabled,
           'template_id': templateId,
           'template_string': templateString,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseAiLogicPromptTemplateSensitive;
}
