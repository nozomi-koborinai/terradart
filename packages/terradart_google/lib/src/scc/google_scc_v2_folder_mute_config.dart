// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_folder_mute_config`.
const Set<String> _googleSccV2FolderMuteConfigSensitive = <String>{};

/// Factory wrapper for `google_scc_v2_folder_mute_config`.
///
/// Mute Findings is a volume management feature in Security Command Center that
/// lets you manually or programmatically hide irrelevant findings, and create
/// filters to automatically silence existing and future findings based on
/// criteria you specify.
///
/// SCC v2 folder mute config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccV2FolderMuteConfig extends Resource {
  static const String tfType = 'google_scc_v2_folder_mute_config';

  GoogleSccV2FolderMuteConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> filter,
    required TfArg<String> folder,
    TfArg<String>? location,
    required TfArg<String> muteConfigId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'filter': filter,
           'folder': folder,
           if (location != null) 'location': location,
           'mute_config_id': muteConfigId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccV2FolderMuteConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `most_recent_editor` attribute.
  TfRef<String> get mostRecentEditor =>
      TfRef.attribute<String>(this, 'most_recent_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
