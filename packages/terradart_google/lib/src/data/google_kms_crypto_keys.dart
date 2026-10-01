// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/google_kms_key_ring.dart' show GoogleKmsKeyRing;

/// Sensitive field paths for `google_kms_crypto_keys`.
const Set<String> _googleKmsCryptoKeysSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_keys`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKeys extends Data {
  static const String tfType = 'google_kms_crypto_keys';

  DataGoogleKmsCryptoKeys(
    super.localName, {
    TfArg<String>? filter,
    required RefTo<GoogleKmsKeyRing> keyRing,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'filter': ?filter, 'key_ring': keyRing.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `keys` attribute.
  TfRef<List<Map<String, Object?>>> get keys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'keys');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `key_ring` attribute.
  TfRef<String> get keyRing => TfRef.attribute<String>(this, 'key_ring');
}
