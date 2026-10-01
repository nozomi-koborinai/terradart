// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_code_tools_setting.dart'
    show GoogleGeminiCodeToolsSetting;

/// Sensitive field paths for `google_gemini_code_tools_setting_binding`.
const Set<String> _googleGeminiCodeToolsSettingBindingSensitive = <String>{};

/// Gemini Code Tools Setting Binding enum for `product`.
extension type const GeminiCodeToolsSettingBindingProduct._(TfArg<String> _)
    implements TfArg<String> {
  GeminiCodeToolsSettingBindingProduct.variable(String name)
    : this._(TfArg.variable(name));
  GeminiCodeToolsSettingBindingProduct.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiCodeToolsSettingBindingProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const geminiCodeAssist = GeminiCodeToolsSettingBindingProduct._(
    TfArgLiteral('GEMINI_CODE_ASSIST'),
  );

  static const List<GeminiCodeToolsSettingBindingProduct> values = [
    geminiCodeAssist,
  ];
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

  GoogleGeminiCodeToolsSettingBinding(
    super.localName, {
    required RefTo<GoogleGeminiCodeToolsSetting> codeToolsSettingId,
    required TfArg<String> settingBindingId,
    required TfArg<String> target,
    TfArg<String>? location,
    GeminiCodeToolsSettingBindingProduct? product,
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
           'code_tools_setting_id': codeToolsSettingId.encodeAs(
             'code_tools_setting_id',
           ),
           'setting_binding_id': settingBindingId,
           'target': target,
           'location': ?location,
           'product': ?product,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiCodeToolsSettingBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiCodeToolsSettingBinding>`.
  RefTo<GoogleGeminiCodeToolsSettingBinding> get ref => RefTo.of(this);

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

  /// Reference to `code_tools_setting_id` attribute.
  TfRef<String> get codeToolsSettingId =>
      TfRef.attribute<String>(this, 'code_tools_setting_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

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
