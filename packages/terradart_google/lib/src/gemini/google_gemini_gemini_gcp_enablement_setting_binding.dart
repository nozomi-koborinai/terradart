// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gemini_gcp_enablement_setting_binding`.
const Set<String> _googleGeminiGeminiGcpEnablementSettingBindingSensitive =
    <String>{};

/// Factory wrapper for `google_gemini_gemini_gcp_enablement_setting_binding`.
///
/// The resource for managing GeminiGcpEnablementSetting setting bindings for
/// Admin Control.
///
/// Gemini Admin Control **GCP enablement setting binding** — attaches a
/// [GoogleGeminiGeminiGcpEnablementSetting] to a target project
/// (`projects/<number>`).
///
/// **Cost:** Cloud Billing Catalog service `AEFD-7695-64FA` (Gemini API)
/// has **no Admin Control setting/binding SKU** after MCP `list_skus`
/// (SKUs are generate_content / token usage). Binding metadata alone does
/// not invoke models. Covered by `gemini_quickstart`.
///
/// Requires [geminiGcpEnablementSettingId], [settingBindingId], and
/// [target]. Enable `cloudaicompanion.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleGeminiGeminiGcpEnablementSettingBinding(
///   localName: 'enablement_bind',
///   geminiGcpEnablementSettingId: TfArg.literal('terradart-enablement'),
///   settingBindingId: TfArg.literal('terradart-enablement-bind'),
///   location: TfArg.literal('global'),
///   target: TfArg.literal('projects/${current.number.interpolation}'),
/// );
/// ```
final class GoogleGeminiGeminiGcpEnablementSettingBinding extends Resource {
  static const String tfType =
      'google_gemini_gemini_gcp_enablement_setting_binding';

  GoogleGeminiGeminiGcpEnablementSettingBinding({
    required super.localName,
    required TfArg<String> geminiGcpEnablementSettingId,
    required TfArg<String> settingBindingId,
    required TfArg<String> target,
    TfArg<String>? location,
    TfArg<String>? product,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gemini_gcp_enablement_setting_id': geminiGcpEnablementSettingId,
           'setting_binding_id': settingBindingId,
           'target': target,
           if (location != null) 'location': location,
           if (product != null) 'product': product,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGeminiGcpEnablementSettingBindingSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
