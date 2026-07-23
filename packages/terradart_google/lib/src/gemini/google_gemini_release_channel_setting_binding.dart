// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_release_channel_setting_binding`.
const Set<String> _googleGeminiReleaseChannelSettingBindingSensitive =
    <String>{};

/// Gemini Release Channel Setting Binding enum for `product`.
enum GeminiReleaseChannelSettingBindingProduct implements TerraformEnum {
  geminiCloudAssist('GEMINI_CLOUD_ASSIST'),
  geminiCodeAssist('GEMINI_CODE_ASSIST');

  const GeminiReleaseChannelSettingBindingProduct(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gemini_release_channel_setting_binding`.
///
/// The resource for managing ReleaseChannel setting bindings for Admin Control.
///
/// Gemini Admin Control **release-channel setting binding** — attaches a
/// [GoogleGeminiReleaseChannelSetting] to a target project
/// (`projects/<number>`).
///
/// **Cost:** Cloud Billing Catalog service `AEFD-7695-64FA` (Gemini API)
/// has **no Admin Control setting/binding SKU** after MCP `list_skus`
/// (SKUs are generate_content / token usage). Binding metadata alone does
/// not invoke models. Covered by `gemini_quickstart`.
///
/// Requires [releaseChannelSettingId], [settingBindingId], and [target].
/// Enable `cloudaicompanion.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleGeminiReleaseChannelSettingBinding(
///   localName: 'channel_bind',
///   releaseChannelSettingId: TfArg.literal('terradart-channel'),
///   settingBindingId: TfArg.literal('terradart-channel-bind'),
///   location: TfArg.literal('global'),
///   target: TfArg.literal('projects/${current.number.interpolation}'),
/// );
/// ```
final class GoogleGeminiReleaseChannelSettingBinding extends Resource {
  static const String tfType = 'google_gemini_release_channel_setting_binding';

  GoogleGeminiReleaseChannelSettingBinding({
    required super.localName,
    required TfArg<String> releaseChannelSettingId,
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
           'release_channel_setting_id': releaseChannelSettingId,
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
      _googleGeminiReleaseChannelSettingBindingSensitive;

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
