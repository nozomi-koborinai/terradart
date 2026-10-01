// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_logging_setting.dart'
    show GoogleGeminiLoggingSetting;

/// Sensitive field paths for `google_gemini_logging_setting_binding`.
const Set<String> _googleGeminiLoggingSettingBindingSensitive = <String>{};

/// Gemini Logging Setting Binding enum for `product`.
extension type const GeminiLoggingSettingBindingProduct._(TfArg<String> _)
    implements TfArg<String> {
  GeminiLoggingSettingBindingProduct.variable(String name)
    : this._(TfArg.variable(name));
  GeminiLoggingSettingBindingProduct.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiLoggingSettingBindingProduct.arg(TfArg<String> arg) : this._(arg);

  static const geminiCodeAssist = GeminiLoggingSettingBindingProduct._(
    TfArgLiteral('GEMINI_CODE_ASSIST'),
  );

  static const List<GeminiLoggingSettingBindingProduct> values = [
    geminiCodeAssist,
  ];
}

/// Factory wrapper for `google_gemini_logging_setting_binding`.
///
/// The resource for managing Logging setting bindings for Admin Control.
///
/// Gemini Admin Control **logging setting binding** — attaches a
/// [GoogleGeminiLoggingSetting] to a target project (`projects/<number>`).
///
/// **Cost:** Cloud Billing Catalog service `AEFD-7695-64FA` (Gemini API)
/// has **no Admin Control setting/binding SKU** after MCP `list_skus`
/// (SKUs are generate_content / token usage). Binding metadata alone does
/// not invoke models. Covered by `gemini_quickstart`.
///
/// Requires [loggingSettingId], [settingBindingId], and [target]. Enable
/// `cloudaicompanion.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleGeminiLoggingSettingBinding(
///   'logging_bind',
///   loggingSettingId: .literal('terradart-logging'),
///   settingBindingId: TfArg.literal('terradart-logging-bind'),
///   location: TfArg.literal('global'),
///   target: TfArg.literal('projects/${current.number.interpolation}'),
/// );
/// ```
final class GoogleGeminiLoggingSettingBinding extends Resource {
  static const String tfType = 'google_gemini_logging_setting_binding';

  GoogleGeminiLoggingSettingBinding(
    super.localName, {
    required RefTo<GoogleGeminiLoggingSetting> loggingSettingId,
    required TfArg<String> settingBindingId,
    required TfArg<String> target,
    TfArg<String>? location,
    TfArg<String>? product,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'logging_setting_id': loggingSettingId.encodeAs(
             'logging_setting_id',
           ),
           'setting_binding_id': settingBindingId,
           'target': target,
           'location': ?location,
           'product': ?product,
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiLoggingSettingBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiLoggingSettingBinding>`.
  RefTo<GoogleGeminiLoggingSettingBinding> get ref => RefTo.of(this);

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

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logging_setting_id` attribute.
  TfRef<String> get loggingSettingId =>
      TfRef.attribute<String>(this, 'logging_setting_id');

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
