// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_kms_crypto_key_version`.
const Set<String> _googleKmsCryptoKeyVersionSensitive = <String>{};

/// Operational state for `google_kms_crypto_key_version.state`. Usually
/// read-only; set only to manually `ENABLE` or `DISABLE` a version.
enum KmsCryptoKeyVersionState implements TerraformEnum {
  pendingGeneration('PENDING_GENERATION'),
  enabled('ENABLED'),
  disabled('DISABLED'),
  destroyed('DESTROYED'),
  destroyScheduled('DESTROY_SCHEDULED');

  const KmsCryptoKeyVersionState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `external_protection_level_options` block of
/// `google_kms_crypto_key_version` (derived from provider schema).
@immutable
final class KmsCryptoKeyVersionExternalProtectionLevelOptions {
  const KmsCryptoKeyVersionExternalProtectionLevelOptions({
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  final TfArg<String>? ekmConnectionKeyPath;

  final TfArg<String>? externalKeyUri;

  Map<String, Object?> encode() => {
    'ekm_connection_key_path': ?ekmConnectionKeyPath?.toTfJson(),
    'external_key_uri': ?externalKeyUri?.toTfJson(),
  };
}

/// Factory wrapper for `google_kms_crypto_key_version`.
///
/// A `CryptoKeyVersion` represents an individual cryptographic key, and the
/// associated key material.
///
/// Destroying a cryptoKeyVersion will not delete the resource from the project.
///
/// Manages a [GoogleKmsCryptoKey] version (rotation / destroy lifecycle).
/// Pass `cryptoKey` as the parent key id path or `TfArg.ref(key.id)`.
///
/// Example:
/// ```dart
/// GoogleKmsCryptoKeyVersion(
///   localName: 'v1',
///   cryptoKey: TfArg.ref(ringKey.id),
/// );
/// ```
final class GoogleKmsCryptoKeyVersion extends Resource {
  static const String tfType = 'google_kms_crypto_key_version';

  GoogleKmsCryptoKeyVersion({
    required super.localName,
    required RefTo<GoogleKmsCryptoKey> cryptoKey,
    TfArg<KmsCryptoKeyVersionState>? state,
    KmsCryptoKeyVersionExternalProtectionLevelOptions?
    externalProtectionLevelOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key': cryptoKey.encodeAs('id'),
           'state': ?state,
           if (externalProtectionLevelOptions != null)
             'external_protection_level_options': TfArg.literal(
               externalProtectionLevelOptions.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsCryptoKeyVersion>`.
  RefTo<GoogleKmsCryptoKeyVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `algorithm` attribute.
  TfRef<String> get algorithm => TfRef.attribute<String>(this, 'algorithm');

  /// Reference to `attestation` attribute.
  TfRef<List<Map<String, Object?>>> get attestation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attestation');

  /// Reference to `generate_time` attribute.
  TfRef<String> get generateTime =>
      TfRef.attribute<String>(this, 'generate_time');

  /// Reference to `protection_level` attribute.
  TfRef<String> get protectionLevel =>
      TfRef.attribute<String>(this, 'protection_level');

  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
