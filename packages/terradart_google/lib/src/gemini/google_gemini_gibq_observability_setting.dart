// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gibq_observability_setting`.
const Set<String> _googleGeminiGibqObservabilitySettingSensitive = <String>{};

/// Typed helper for the `conversational_analytics_setting` block of
/// `google_gemini_gibq_observability_setting` (derived from provider schema).
@immutable
final class GeminiGibqObservabilitySettingConversationalAnalyticsSetting {
  const GeminiGibqObservabilitySettingConversationalAnalyticsSetting({
    this.feedbackEnabled,
    this.loggingEnabled,
    this.metricsEnabled,
    this.tracesEnabled,
  });

  final TfArg<bool>? feedbackEnabled;

  final TfArg<bool>? loggingEnabled;

  final TfArg<bool>? metricsEnabled;

  final TfArg<bool>? tracesEnabled;

  Map<String, Object?> encode() => {
    'feedback_enabled': ?feedbackEnabled?.toTfJson(),
    'logging_enabled': ?loggingEnabled?.toTfJson(),
    'metrics_enabled': ?metricsEnabled?.toTfJson(),
    'traces_enabled': ?tracesEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `google_gemini_gibq_observability_setting`.
///
/// A setting that controls observability features for Gemini in BigQuery.
final class GoogleGeminiGibqObservabilitySetting extends Resource {
  static const String tfType = 'google_gemini_gibq_observability_setting';

  GoogleGeminiGibqObservabilitySetting({
    required super.localName,
    required TfArg<String> gibqObservabilitySettingId,
    TfArg<String>? location,
    GeminiGibqObservabilitySettingConversationalAnalyticsSetting?
    conversationalAnalyticsSetting,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gibq_observability_setting_id': gibqObservabilitySettingId,
           'location': ?location,
           if (conversationalAnalyticsSetting != null)
             'conversational_analytics_setting': TfArg.literal(
               conversationalAnalyticsSetting.encode(),
             ),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGibqObservabilitySettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGibqObservabilitySetting>`.
  RefTo<GoogleGeminiGibqObservabilitySetting> get ref => RefTo.of(this);

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
