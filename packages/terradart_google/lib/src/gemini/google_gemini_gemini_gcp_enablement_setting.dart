// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_gemini_gcp_enablement_setting`.
const Set<String> _googleGeminiGeminiGcpEnablementSettingSensitive = <String>{};

/// Gemini Gemini Gcp Enablement Setting Release enum for `release_channel`.
extension type const GeminiGeminiGcpEnablementSettingReleaseChannel._(
  TfArg<String> _
) implements TfArg<String> {
  GeminiGeminiGcpEnablementSettingReleaseChannel.variable(String name)
    : this._(TfArg.variable(name));
  GeminiGeminiGcpEnablementSettingReleaseChannel.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiGeminiGcpEnablementSettingReleaseChannel.arg(TfArg<String> arg)
    : this._(arg);

  static const stable = GeminiGeminiGcpEnablementSettingReleaseChannel._(
    TfArgLiteral('STABLE'),
  );
  static const experimental = GeminiGeminiGcpEnablementSettingReleaseChannel._(
    TfArgLiteral('EXPERIMENTAL'),
  );

  static const List<GeminiGeminiGcpEnablementSettingReleaseChannel> values = [
    stable,
    experimental,
  ];
}

/// Gemini Gemini Gcp Enablement Setting Web Grounding enum for `web_grounding_type`.
extension type const GeminiGeminiGcpEnablementSettingWebGroundingType._(
  TfArg<String> _
) implements TfArg<String> {
  GeminiGeminiGcpEnablementSettingWebGroundingType.variable(String name)
    : this._(TfArg.variable(name));
  GeminiGeminiGcpEnablementSettingWebGroundingType.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiGeminiGcpEnablementSettingWebGroundingType.arg(TfArg<String> arg)
    : this._(arg);

  static const groundingWithGoogleSearch =
      GeminiGeminiGcpEnablementSettingWebGroundingType._(
        TfArgLiteral('GROUNDING_WITH_GOOGLE_SEARCH'),
      );
  static const webGroundingForEnterprise =
      GeminiGeminiGcpEnablementSettingWebGroundingType._(
        TfArgLiteral('WEB_GROUNDING_FOR_ENTERPRISE'),
      );

  static const List<GeminiGeminiGcpEnablementSettingWebGroundingType> values = [
    groundingWithGoogleSearch,
    webGroundingForEnterprise,
  ];
}

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
    GeminiGeminiGcpEnablementSettingWebGroundingType? webGroundingType,
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

  /// Reference to `gemini_enterprise_project` attribute.
  TfRef<String> get geminiEnterpriseProject =>
      TfRef.attribute<String>(this, 'gemini_enterprise_project');

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

  /// Reference to `release_channel` attribute.
  TfRef<String> get releaseChannel =>
      TfRef.attribute<String>(this, 'release_channel');

  /// Reference to `web_grounding_type` attribute.
  TfRef<String> get webGroundingType =>
      TfRef.attribute<String>(this, 'web_grounding_type');
}
