// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_discovery_engine_cmek_config`.
const Set<String> _googleDiscoveryEngineCmekConfigSensitive = <String>{};

/// Typed helper for the `single_region_keys` block of
/// `google_discovery_engine_cmek_config` (derived from provider schema).
@immutable
final class DiscoveryEngineCmekConfigSingleRegionKeys {
  const DiscoveryEngineCmekConfigSingleRegionKeys({required this.kmsKey});

  final RefTo<GoogleKmsCryptoKey> kmsKey;

  @internal
  Map<String, Object?> encode() => {
    'kms_key': kmsKey.encodeAs('id').toTfJson(),
  };
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

  GoogleDiscoveryEngineCmekConfig(
    super.localName, {
    required TfArg<String> cmekConfigId,
    TfArg<String>? deletionPolicy,
    required RefTo<GoogleKmsCryptoKey> kmsKey,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<bool>? setDefault,
    List<DiscoveryEngineCmekConfigSingleRegionKeys>? singleRegionKeys,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cmek_config_id': cmekConfigId,
           'deletion_policy': ?deletionPolicy,
           'kms_key': kmsKey.encodeAs('id'),
           'location': location,
           'project': ?project,
           'set_default': ?setDefault,
           if (singleRegionKeys != null)
             'single_region_keys': TfArg.literal([
               for (final e in singleRegionKeys) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineCmekConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineCmekConfig>`.
  RefTo<GoogleDiscoveryEngineCmekConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `cmek_config_id` attribute.
  TfRef<String> get cmekConfigId =>
      TfRef.attribute<String>(this, 'cmek_config_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `set_default` attribute.
  TfRef<bool> get setDefault => TfRef.attribute<bool>(this, 'set_default');
}
