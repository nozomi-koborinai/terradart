// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_code_tools_setting_binding`.
const Set<String> _googleGeminiCodeToolsSettingBindingSensitive = <String>{};

/// Gemini Code Tools Setting Binding enum for `product`.
enum GeminiCodeToolsSettingBindingProduct implements TerraformEnum {
  geminiCodeAssist('GEMINI_CODE_ASSIST');

  const GeminiCodeToolsSettingBindingProduct(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gemini_code_tools_setting_binding`.
///
/// The resource for managing CodeTools setting bindings for Admin Control.
///
/// Gemini Code Assist **code tools setting binding** — binds a
/// [GoogleGeminiCodeToolsSetting] to a target (project / folder / org).
///
/// **Cost / apply:** gcp-cost: Duet AI `719A-983F-202D` Gemini Code Assist
/// subscription SKU `7743-4D2E-8A79` **$19/mo** (Enterprise `78B4-81D7-89D8`
/// **$45/mo**). billing-behavior: bindings activate Code Assist tools under
/// an entitlement / seat subscription. Not applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `cloudaicompanion.googleapis.com` before apply.
final class GoogleGeminiCodeToolsSettingBinding extends Resource {
  static const String tfType = 'google_gemini_code_tools_setting_binding';

  GoogleGeminiCodeToolsSettingBinding({
    required super.localName,
    required TfArg<String> codeToolsSettingId,
    required TfArg<String> settingBindingId,
    required TfArg<String> target,
    TfArg<String>? location,
    TfArg<GeminiCodeToolsSettingBindingProduct>? product,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_tools_setting_id': codeToolsSettingId,
           'setting_binding_id': settingBindingId,
           'target': target,
           if (location != null) 'location': location,
           if (product != null) 'product': product,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiCodeToolsSettingBindingSensitive;

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
