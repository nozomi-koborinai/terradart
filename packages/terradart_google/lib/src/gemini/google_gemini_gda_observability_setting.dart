// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gda_observability_setting`.
const Set<String> _googleGeminiGdaObservabilitySettingSensitive = <String>{};

/// Factory wrapper for `google_gemini_gda_observability_setting`.
///
/// The resource for managing GdaObservability settings for Admin Control.
final class GoogleGeminiGdaObservabilitySetting extends Resource {
  static const String tfType = 'google_gemini_gda_observability_setting';

  GoogleGeminiGdaObservabilitySetting({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> gdaObservabilitySettingId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? conversationalAnalyticsSetting,
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
           'location': location,
           if (project != null) 'project': project,
           if (conversationalAnalyticsSetting != null)
             'conversational_analytics_setting': conversationalAnalyticsSetting,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGdaObservabilitySettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGdaObservabilitySetting>`.
  RefTo<GoogleGeminiGdaObservabilitySetting> get ref => RefTo.of(this);
}
