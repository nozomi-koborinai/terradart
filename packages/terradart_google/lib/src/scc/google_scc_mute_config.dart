// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_mute_config`.
const Set<String> _googleSccMuteConfigSensitive = <String>{};

/// Scc Mute Config enum for `type`.
enum SccMuteConfigType implements TerraformEnum {
  muteConfigTypeUnspecified('MUTE_CONFIG_TYPE_UNSPECIFIED'),
  static('STATIC'),
  dynamic('DYNAMIC');

  const SccMuteConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_scc_mute_config`.
///
/// Mute Findings is a volume management feature in Security Command Center that
/// lets you manually or programmatically hide irrelevant findings, and create
/// filters to automatically silence existing and future findings based on
/// criteria you specify.
///
/// SCC mute config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccMuteConfig extends Resource {
  static const String tfType = 'google_scc_mute_config';

  GoogleSccMuteConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? expiryTime,
    required TfArg<String> filter,
    required TfArg<String> muteConfigId,
    required TfArg<String> parent,
    TfArg<SccMuteConfigType>? type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (expiryTime != null) 'expiry_time': expiryTime,
           'filter': filter,
           'mute_config_id': muteConfigId,
           'parent': parent,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccMuteConfigSensitive;

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
