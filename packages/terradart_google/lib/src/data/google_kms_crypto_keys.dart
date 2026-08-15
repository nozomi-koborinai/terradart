// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_keys`.
const Set<String> _googleKmsCryptoKeysSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_keys`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKeys extends Data {
  static const String tfType = 'google_kms_crypto_keys';

  DataGoogleKmsCryptoKeys({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> keyRing,
  }) : super(
         terraformType: tfType,
         argMap: {if (filter != null) 'filter': filter, 'key_ring': keyRing},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `keys` attribute.
  TfRef<List<Map<String, Object?>>> get keys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'keys');
}
