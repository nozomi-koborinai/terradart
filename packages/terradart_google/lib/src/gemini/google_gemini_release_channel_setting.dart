// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_release_channel_setting`.
const Set<String> _googleGeminiReleaseChannelSettingSensitive = <String>{};

/// Factory wrapper for `google_gemini_release_channel_setting`.
///
/// The resource for managing ReleaseChannel settings for Admin Control.
final class GoogleGeminiReleaseChannelSetting extends Resource {
  static const String tfType = 'google_gemini_release_channel_setting';

  GoogleGeminiReleaseChannelSetting(
    super.localName, {
    required TfArg<String> releaseChannelSettingId,
    required TfArg<String> location,
    TfArg<String>? releaseChannel,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'release_channel_setting_id': releaseChannelSettingId,
           'location': location,
           'release_channel': ?releaseChannel,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiReleaseChannelSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiReleaseChannelSetting>`.
  RefTo<GoogleGeminiReleaseChannelSetting> get ref => RefTo.of(this);

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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `release_channel` attribute.
  TfRef<String> get releaseChannel =>
      TfRef.attribute<String>(this, 'release_channel');

  /// Reference to `release_channel_setting_id` attribute.
  TfRef<String> get releaseChannelSettingId =>
      TfRef.attribute<String>(this, 'release_channel_setting_id');
}
