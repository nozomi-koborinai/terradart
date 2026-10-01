// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/google_kms_crypto_key_version.dart';
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_kms_crypto_key_version`.
const Set<String> _googleKmsCryptoKeyVersionSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_version`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKeyVersion extends Data {
  static const String tfType = 'google_kms_crypto_key_version';

  DataGoogleKmsCryptoKeyVersion(
    super.localName, {
    required RefTo<GoogleKmsCryptoKey> cryptoKey,
    TfArg<num>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'crypto_key': cryptoKey.encodeAs('id'), 'version': ?version},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyVersionSensitive;

  /// A reference to the `google_kms_crypto_key_version` this data source reads, for
  /// arguments typed `RefTo<GoogleKmsCryptoKeyVersion>`.
  RefTo<GoogleKmsCryptoKeyVersion> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `algorithm` attribute.
  TfRef<String> get algorithm => TfRef.attribute<String>(this, 'algorithm');

  /// Reference to `protection_level` attribute.
  TfRef<String> get protectionLevel =>
      TfRef.attribute<String>(this, 'protection_level');

  /// Reference to `public_key` attribute.
  TfRef<List<Map<String, Object?>>> get publicKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'public_key');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `crypto_key` attribute.
  TfRef<String> get cryptoKey => TfRef.attribute<String>(this, 'crypto_key');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
