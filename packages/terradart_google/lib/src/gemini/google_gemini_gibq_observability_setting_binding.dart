// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_gibq_observability_setting.dart'
    show GoogleGeminiGibqObservabilitySetting;

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
    required RefTo<GoogleGeminiGibqObservabilitySetting>
    gibqObservabilitySettingId,
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
           'gibq_observability_setting_id': gibqObservabilitySettingId.encodeAs(
             'gibq_observability_setting_id',
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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `gibq_observability_setting_id` attribute.
  TfRef<String> get gibqObservabilitySettingIdRef =>
      TfRef.attribute<String>(this, 'gibq_observability_setting_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `product` attribute.
  TfRef<String> get productRef => TfRef.attribute<String>(this, 'product');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `setting_binding_id` attribute.
  TfRef<String> get settingBindingIdRef =>
      TfRef.attribute<String>(this, 'setting_binding_id');

  /// Reference to `target` attribute.
  TfRef<String> get targetRef => TfRef.attribute<String>(this, 'target');
}
