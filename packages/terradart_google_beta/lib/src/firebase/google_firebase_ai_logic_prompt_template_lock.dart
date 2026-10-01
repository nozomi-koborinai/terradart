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

  GoogleFirebaseAiLogicPromptTemplateLock(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<bool>? regionalPropagationDisabled,
    required TfArg<String> templateId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'location': location,
           'project': ?project,
           'regional_propagation_disabled': ?regionalPropagationDisabled,
           'template_id': templateId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseAiLogicPromptTemplateLockSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAiLogicPromptTemplateLock>`.
  RefTo<GoogleFirebaseAiLogicPromptTemplateLock> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `regional_propagation_disabled` attribute.
  TfRef<bool> get regionalPropagationDisabled =>
      TfRef.attribute<bool>(this, 'regional_propagation_disabled');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');
}
