// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_logging_setting`.
const Set<String> _googleGeminiLoggingSettingSensitive = <String>{};

/// Factory wrapper for `google_gemini_logging_setting`.
///
/// The resource for managing Logging settings for Admin Control.
final class GoogleGeminiLoggingSetting extends Resource {
  static const String tfType = 'google_gemini_logging_setting';

  GoogleGeminiLoggingSetting(
    super.localName, {
    required TfArg<String> loggingSettingId,
    required TfArg<String> location,
    TfArg<bool>? logMetadata,
    TfArg<bool>? logPromptsAndResponses,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'logging_setting_id': loggingSettingId,
           'location': location,
           'log_metadata': ?logMetadata,
           'log_prompts_and_responses': ?logPromptsAndResponses,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGeminiLoggingSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiLoggingSetting>`.
  RefTo<GoogleGeminiLoggingSetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_metadata` attribute.
  TfRef<bool> get logMetadata => TfRef.attribute<bool>(this, 'log_metadata');

  /// Reference to `log_prompts_and_responses` attribute.
  TfRef<bool> get logPromptsAndResponses =>
      TfRef.attribute<bool>(this, 'log_prompts_and_responses');

  /// Reference to `logging_setting_id` attribute.
  TfRef<String> get loggingSettingId =>
      TfRef.attribute<String>(this, 'logging_setting_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
