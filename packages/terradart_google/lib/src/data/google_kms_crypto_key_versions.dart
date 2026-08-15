// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key_versions`.
const Set<String> _googleKmsCryptoKeyVersionsSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKeyVersions extends Data {
  static const String tfType = 'google_kms_crypto_key_versions';

  DataGoogleKmsCryptoKeyVersions({
    required super.localName,
    required TfArg<String> cryptoKey,
    TfArg<String>? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key': cryptoKey,
           if (filter != null) 'filter': filter,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `public_key` attribute.
  TfRef<List<Map<String, Object?>>> get publicKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'public_key');

  /// Reference to `versions` attribute.
  TfRef<List<Map<String, Object?>>> get versions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'versions');
}
