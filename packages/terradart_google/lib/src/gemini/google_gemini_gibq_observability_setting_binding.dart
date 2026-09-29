// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gibq_observability_setting_binding`.
const Set<String> _googleGeminiGibqObservabilitySettingBindingSensitive =
    <String>{};

/// Factory wrapper for `google_gemini_gibq_observability_setting_binding`.
///
/// The resource for managing GibqObservabilitySetting setting bindings for
/// Admin Control.
final class GoogleGeminiGibqObservabilitySettingBinding extends Resource {
  static const String tfType =
      'google_gemini_gibq_observability_setting_binding';

  GoogleGeminiGibqObservabilitySettingBinding({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> gibqObservabilitySettingId,
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
           'gibq_observability_setting_id': gibqObservabilitySettingId,
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
      _googleGeminiGibqObservabilitySettingBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGibqObservabilitySettingBinding>`.
  RefTo<GoogleGeminiGibqObservabilitySettingBinding> get ref => RefTo.of(this);
}
