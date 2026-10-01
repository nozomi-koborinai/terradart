// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_project_mute_config`.
const Set<String> _googleSccV2ProjectMuteConfigSensitive = <String>{};

/// Factory wrapper for `google_scc_v2_project_mute_config`.
///
/// Mute Findings is a volume management feature in Security Command Center that
/// lets you manually or programmatically hide irrelevant findings, and create
/// filters to automatically silence existing and future findings based on
/// criteria you specify.
///
/// SCC v2 project mute config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccV2ProjectMuteConfig extends Resource {
  static const String tfType = 'google_scc_v2_project_mute_config';

  GoogleSccV2ProjectMuteConfig(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> filter,
    TfArg<String>? location,
    required TfArg<String> muteConfigId,
    TfArg<String>? project,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'filter': filter,
           'location': ?location,
           'mute_config_id': muteConfigId,
           'project': ?project,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccV2ProjectMuteConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2ProjectMuteConfig>`.
  RefTo<GoogleSccV2ProjectMuteConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `most_recent_editor` attribute.
  TfRef<String> get mostRecentEditor =>
      TfRef.attribute<String>(this, 'most_recent_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mute_config_id` attribute.
  TfRef<String> get muteConfigId =>
      TfRef.attribute<String>(this, 'mute_config_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
