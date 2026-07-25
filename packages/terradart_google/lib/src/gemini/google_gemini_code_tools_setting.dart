// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_code_tools_setting`.
const Set<String> _googleGeminiCodeToolsSettingSensitive = <String>{};

/// Typed helper for the `enabled_tool` block of
/// `google_gemini_code_tools_setting` (derived from provider schema).
@immutable
final class GeminiCodeToolsSettingEnabledTool {
  const GeminiCodeToolsSettingEnabledTool({
    this.accountConnector,
    required this.handle,
    required this.tool,
    this.uriOverride,
    this.config,
  });

  final TfArg<String>? accountConnector;

  final TfArg<String> handle;

  final TfArg<String> tool;

  final TfArg<String>? uriOverride;

  final List<GeminiCodeToolsSettingEnabledToolConfig>? config;

  Map<String, Object?> encode() => {
    if (accountConnector != null)
      'account_connector': accountConnector!.toTfJson(),
    'handle': handle.toTfJson(),
    'tool': tool.toTfJson(),
    if (uriOverride != null) 'uri_override': uriOverride!.toTfJson(),
    if (config != null) 'config': [for (final e in config!) e.encode()],
  };
}

/// Typed helper for the `enabled_tool.config` block of
/// `google_gemini_code_tools_setting` (derived from provider schema).
@immutable
final class GeminiCodeToolsSettingEnabledToolConfig {
  const GeminiCodeToolsSettingEnabledToolConfig({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_gemini_code_tools_setting`.
///
/// The resource for managing CodeTools settings for Admin Control.
///
/// Gemini Code Assist **code tools setting** — enables Code Assist tools
/// (handles / connectors) for a project location.
///
/// **Cost / apply:** gcp-cost: Duet AI `719A-983F-202D` Gemini Code Assist
/// subscription SKU `7743-4D2E-8A79` **$19/mo** (Enterprise `78B4-81D7-89D8`
/// **$45/mo**; Enterprise monthly `B0A0-018B-6B14` **$54/mo`).
/// billing-behavior: tools settings sit on the Code Assist subscription /
/// entitlement path. Not applyable on `terradart-validate`. **Never** wire
/// into apply-smoke.
///
/// Enable `cloudaicompanion.googleapis.com` before apply. [enabledTool] is
/// required (min 1).
final class GoogleGeminiCodeToolsSetting extends Resource {
  static const String tfType = 'google_gemini_code_tools_setting';

  GoogleGeminiCodeToolsSetting({
    required super.localName,
    required TfArg<String> codeToolsSettingId,
    required List<GeminiCodeToolsSettingEnabledTool> enabledTool,
    TfArg<String>? location,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_tools_setting_id': codeToolsSettingId,
           'enabled_tool': TfArg.literal([
             for (final e in enabledTool) e.encode(),
           ]),
           if (location != null) 'location': location,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGeminiCodeToolsSettingSensitive;

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
