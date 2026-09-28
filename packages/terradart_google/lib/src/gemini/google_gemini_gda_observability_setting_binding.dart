// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gda_observability_setting_binding`.
const Set<String> _googleGeminiGdaObservabilitySettingBindingSensitive =
    <String>{};

/// Factory wrapper for `google_gemini_gda_observability_setting_binding`.
///
/// The resource for managing GdaObservability setting bindings for Admin
/// Control.
final class GoogleGeminiGdaObservabilitySettingBinding extends Resource {
  static const String tfType =
      'google_gemini_gda_observability_setting_binding';

  GoogleGeminiGdaObservabilitySettingBinding({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> gdaObservabilitySettingId,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    TfArg<String>? product,
    TfArg<String>? project,
    required TfArg<String> settingBindingId,
    required TfArg<String> target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'gda_observability_setting_id': gdaObservabilitySettingId,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           if (product != null) 'product': product,
           if (project != null) 'project': project,
           'setting_binding_id': settingBindingId,
           'target': target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGdaObservabilitySettingBindingSensitive;
}
