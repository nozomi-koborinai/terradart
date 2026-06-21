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

  GoogleGeminiLoggingSetting({
    required super.localName,
    required TfArg<String> loggingSettingId,
    required TfArg<String> location,
    TfArg<bool>? logMetadata,
    TfArg<bool>? logPromptsAndResponses,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'logging_setting_id': loggingSettingId,
           'location': location,
           if (logMetadata != null) 'log_metadata': logMetadata,
           if (logPromptsAndResponses != null)
             'log_prompts_and_responses': logPromptsAndResponses,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGeminiLoggingSettingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
