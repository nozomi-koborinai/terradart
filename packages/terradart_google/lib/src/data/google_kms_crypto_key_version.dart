// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key_version`.
const Set<String> _googleKmsCryptoKeyVersionSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_version`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKeyVersion extends Data {
  static const String tfType = 'google_kms_crypto_key_version';

  DataGoogleKmsCryptoKeyVersion({
    required super.localName,
    required TfArg<String> cryptoKey,
    TfArg<num>? version,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key': cryptoKey,
           if (version != null) 'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
