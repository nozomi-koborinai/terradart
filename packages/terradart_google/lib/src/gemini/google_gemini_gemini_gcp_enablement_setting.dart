// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gemini_gcp_enablement_setting`.
const Set<String> _googleGeminiGeminiGcpEnablementSettingSensitive = <String>{};

/// Factory wrapper for `google_gemini_gemini_gcp_enablement_setting`.
///
/// The resource for managing GeminiGcpEnablement settings for Admin Control.
final class GoogleGeminiGeminiGcpEnablementSetting extends Resource {
  static const String tfType = 'google_gemini_gemini_gcp_enablement_setting';

  GoogleGeminiGeminiGcpEnablementSetting(
    super.localName, {
    required TfArg<String> geminiGcpEnablementSettingId,
    required TfArg<String> location,
    TfArg<bool>? enableCustomerDataSharing,
    TfArg<bool>? disableWebGrounding,
    TfArg<String>? webGroundingType,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gemini_gcp_enablement_setting_id': geminiGcpEnablementSettingId,
           'location': location,
           'enable_customer_data_sharing': ?enableCustomerDataSharing,
           'disable_web_grounding': ?disableWebGrounding,
           'web_grounding_type': ?webGroundingType,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiGeminiGcpEnablementSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiGeminiGcpEnablementSetting>`.
  RefTo<GoogleGeminiGeminiGcpEnablementSetting> get ref => RefTo.of(this);

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

  /// Reference to `disable_web_grounding` attribute.
  TfRef<bool> get disableWebGrounding =>
      TfRef.attribute<bool>(this, 'disable_web_grounding');

  /// Reference to `enable_customer_data_sharing` attribute.
  TfRef<bool> get enableCustomerDataSharing =>
      TfRef.attribute<bool>(this, 'enable_customer_data_sharing');

  /// Reference to `gemini_gcp_enablement_setting_id` attribute.
  TfRef<String> get geminiGcpEnablementSettingId =>
      TfRef.attribute<String>(this, 'gemini_gcp_enablement_setting_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mutations_enabled` attribute.
  TfRef<bool> get mutationsEnabled =>
      TfRef.attribute<bool>(this, 'mutations_enabled');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `web_grounding_type` attribute.
  TfRef<String> get webGroundingType =>
      TfRef.attribute<String>(this, 'web_grounding_type');
}
