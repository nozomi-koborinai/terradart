// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gibq_observability_setting`.
const Set<String> _googleGeminiGibqObservabilitySettingSensitive = <String>{};

/// Factory wrapper for `google_gemini_gibq_observability_setting`.
///
/// A setting that controls observability features for Gemini in BigQuery.
final class GoogleGeminiGibqObservabilitySetting extends Resource {
  static const String tfType = 'google_gemini_gibq_observability_setting';

  GoogleGeminiGibqObservabilitySetting({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> gibqObservabilitySettingId,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
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
           'gibq_observability_setting_id': gibqObservabilitySettingId,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (conversationalAnalyticsSetting != null)
             'conversational_analytics_setting': conversationalAnalyticsSetting,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGibqObservabilitySettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGibqObservabilitySetting>`.
  RefTo<GoogleGeminiGibqObservabilitySetting> get ref => RefTo.of(this);
}
