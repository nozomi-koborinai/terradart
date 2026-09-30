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
    required TfArg<String> gibqObservabilitySettingId,
    required TfArg<String> settingBindingId,
    TfArg<String>? location,
    required TfArg<String> target,
    TfArg<String>? product,
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
           'setting_binding_id': settingBindingId,
           'location': ?location,
           'target': target,
           'product': ?product,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGibqObservabilitySettingBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGibqObservabilitySettingBinding>`.
  RefTo<GoogleGeminiGibqObservabilitySettingBinding> get ref => RefTo.of(this);

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
