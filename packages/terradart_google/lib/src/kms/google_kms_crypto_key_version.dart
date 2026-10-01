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
extension type const KmsCryptoKeyVersionState._(TfArg<String> _)
    implements TfArg<String> {
  KmsCryptoKeyVersionState.variable(String name) : this._(TfArg.variable(name));
  KmsCryptoKeyVersionState.expression(String template)
    : this._(TfArg.expression(template));
  const KmsCryptoKeyVersionState.arg(TfArg<String> arg) : this._(arg);

  static const pendingGeneration = KmsCryptoKeyVersionState._(
    TfArgLiteral('PENDING_GENERATION'),
  );
  static const enabled = KmsCryptoKeyVersionState._(TfArgLiteral('ENABLED'));
  static const disabled = KmsCryptoKeyVersionState._(TfArgLiteral('DISABLED'));
  static const destroyed = KmsCryptoKeyVersionState._(
    TfArgLiteral('DESTROYED'),
  );
  static const destroyScheduled = KmsCryptoKeyVersionState._(
    TfArgLiteral('DESTROY_SCHEDULED'),
  );

  static const List<KmsCryptoKeyVersionState> values = [
    pendingGeneration,
    enabled,
    disabled,
    destroyed,
    destroyScheduled,
  ];
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
/// Pass `cryptoKey` as the parent key (`key.ref`) or its id path.
///
/// Example:
/// ```dart
/// GoogleKmsCryptoKeyVersion(
///   'v1',
///   cryptoKey: ringKey.ref,
/// );
/// ```
final class GoogleKmsCryptoKeyVersion extends Resource {
  static const String tfType = 'google_kms_crypto_key_version';

  GoogleKmsCryptoKeyVersion(
    super.localName, {
    required RefTo<GoogleKmsCryptoKey> cryptoKey,
    KmsCryptoKeyVersionState? state,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `crypto_key` attribute.
  TfRef<String> get cryptoKey => TfRef.attribute<String>(this, 'crypto_key');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
