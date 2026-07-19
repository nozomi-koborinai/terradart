// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_data_sharing_with_google_setting`.
const Set<String> _googleGeminiDataSharingWithGoogleSettingSensitive =
    <String>{};

/// Factory wrapper for `google_gemini_data_sharing_with_google_setting`.
///
/// The resource for managing DataSharingWithGoogle settings for Admin Control.
///
/// Gemini for Google Cloud **data-sharing-with-Google** Admin Control setting.
///
/// Project/location config that toggles whether Gemini products may share
/// usage data with Google (GA and Preview independently). Creating the
/// setting alone does not call Gemini models or incur token SKUs.
///
/// Enable `cloudaicompanion.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleGeminiDataSharingWithGoogleSetting(
///   localName: 'sharing',
///   dataSharingWithGoogleSettingId: TfArg.literal('terradart-sharing'),
///   location: TfArg.literal('global'),
///   enableDataSharing: TfArg.literal(false),
///   enablePreviewDataSharing: TfArg.literal(false),
/// );
/// ```
final class GoogleGeminiDataSharingWithGoogleSetting extends Resource {
  static const String tfType = 'google_gemini_data_sharing_with_google_setting';

  GoogleGeminiDataSharingWithGoogleSetting({
    required super.localName,
    required TfArg<String> dataSharingWithGoogleSettingId,
    TfArg<String>? location,
    TfArg<bool>? enableDataSharing,
    TfArg<bool>? enablePreviewDataSharing,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_sharing_with_google_setting_id':
               dataSharingWithGoogleSettingId,
           if (location != null) 'location': location,
           if (enableDataSharing != null)
             'enable_data_sharing': enableDataSharing,
           if (enablePreviewDataSharing != null)
             'enable_preview_data_sharing': enablePreviewDataSharing,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiDataSharingWithGoogleSettingSensitive;

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
}
