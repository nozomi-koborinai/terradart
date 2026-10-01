// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_gda_observability_setting.dart'
    show GoogleGeminiGdaObservabilitySetting;

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

  GoogleGeminiGdaObservabilitySettingBinding(
    super.localName, {
    required RefTo<GoogleGeminiGdaObservabilitySetting>
    gdaObservabilitySettingId,
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
           'gda_observability_setting_id': gdaObservabilitySettingId.encodeAs(
             'gda_observability_setting_id',
           ),
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
      _googleGeminiGdaObservabilitySettingBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGdaObservabilitySettingBinding>`.
  RefTo<GoogleGeminiGdaObservabilitySettingBinding> get ref => RefTo.of(this);

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

  /// Reference to `gda_observability_setting_id` attribute.
  TfRef<String> get gdaObservabilitySettingId =>
      TfRef.attribute<String>(this, 'gda_observability_setting_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `product` attribute.
  TfRef<String> get product => TfRef.attribute<String>(this, 'product');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `setting_binding_id` attribute.
  TfRef<String> get settingBindingId =>
      TfRef.attribute<String>(this, 'setting_binding_id');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
