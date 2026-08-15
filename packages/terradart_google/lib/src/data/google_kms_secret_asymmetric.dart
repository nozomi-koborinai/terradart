// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_secret_asymmetric`.
const Set<String> _googleKmsSecretAsymmetricSensitive = <String>{'plaintext'};

/// Factory wrapper for `google_kms_secret_asymmetric`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsSecretAsymmetric extends Data {
  static const String tfType = 'google_kms_secret_asymmetric';

  DataGoogleKmsSecretAsymmetric({
    required super.localName,
    required TfArg<String> ciphertext,
    TfArg<String>? crc32,
    required TfArg<String> cryptoKeyVersion,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ciphertext': ciphertext,
           if (crc32 != null) 'crc32': crc32,
           'crypto_key_version': cryptoKeyVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsSecretAsymmetricSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `plaintext` attribute.
  TfRef<String> get plaintext => TfRef.attribute<String>(this, 'plaintext');
}
