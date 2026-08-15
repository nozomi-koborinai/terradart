// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_cmek_config`.
const Set<String> _googleDiscoveryEngineCmekConfigSensitive = <String>{};

/// Typed helper for the `single_region_keys` block of
/// `google_discovery_engine_cmek_config` (derived from provider schema).
@immutable
final class DiscoveryEngineCmekConfigSingleRegionKeys {
  const DiscoveryEngineCmekConfigSingleRegionKeys({required this.kmsKey});

  final TfArg<String> kmsKey;

  Map<String, Object?> encode() => {'kms_key': kmsKey.toTfJson()};
}

/// Factory wrapper for `google_discovery_engine_cmek_config`.
///
/// CmekConfig represents configurations used to enable CMEK data encryption
/// with Cloud KMS keys.
///
/// Discovery Engine CMEK config — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleDiscoveryEngineCmekConfig extends Resource {
  static const String tfType = 'google_discovery_engine_cmek_config';

  GoogleDiscoveryEngineCmekConfig({
    required super.localName,
    required TfArg<String> cmekConfigId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> kmsKey,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<bool>? setDefault,
    List<DiscoveryEngineCmekConfigSingleRegionKeys>? singleRegionKeys,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cmek_config_id': cmekConfigId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'kms_key': kmsKey,
           'location': location,
           if (project != null) 'project': project,
           if (setDefault != null) 'set_default': setDefault,
           if (singleRegionKeys != null)
             'single_region_keys': TfArg.literal([
               for (final e in singleRegionKeys) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineCmekConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `kms_key_version` attribute.
  TfRef<String> get kmsKeyVersion =>
      TfRef.attribute<String>(this, 'kms_key_version');

  /// Reference to `last_rotation_timestamp_micros` attribute.
  TfRef<num> get lastRotationTimestampMicros =>
      TfRef.attribute<num>(this, 'last_rotation_timestamp_micros');

  /// Reference to `notebooklm_state` attribute.
  TfRef<String> get notebooklmState =>
      TfRef.attribute<String>(this, 'notebooklm_state');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
