// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_kms_secret`.
const Set<String> _googleKmsSecretSensitive = <String>{'plaintext'};

/// Factory wrapper for `google_kms_secret`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsSecret extends Data {
  static const String tfType = 'google_kms_secret';

  DataGoogleKmsSecret({
    required super.localName,
    TfArg<String>? additionalAuthenticatedData,
    required TfArg<String> ciphertext,
    required RefTo<GoogleKmsCryptoKey> cryptoKey,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_authenticated_data': ?additionalAuthenticatedData,
           'ciphertext': ciphertext,
           'crypto_key': cryptoKey.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsSecretSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `plaintext` attribute.
  TfRef<String> get plaintext => TfRef.attribute<String>(this, 'plaintext');

  /// Reference to `additional_authenticated_data` attribute.
  TfRef<String> get additionalAuthenticatedData =>
      TfRef.attribute<String>(this, 'additional_authenticated_data');

  /// Reference to `ciphertext` attribute.
  TfRef<String> get ciphertext => TfRef.attribute<String>(this, 'ciphertext');

  /// Reference to `crypto_key` attribute.
  TfRef<String> get cryptoKey => TfRef.attribute<String>(this, 'crypto_key');
}
