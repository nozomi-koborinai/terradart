// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_secret_ciphertext`.
const Set<String> _googleKmsSecretCiphertextSensitive = <String>{
  'additional_authenticated_data',
  'plaintext',
};

/// Factory wrapper for `google_kms_secret_ciphertext`.
///
/// Encrypts secret data with Google Cloud KMS and provides access to the
/// ciphertext.
///
/// ~> **NOTE:** Using this resource will allow you to conceal secret data
/// within your resource definitions, but it does not take care of protecting
/// that data in the logging output, plan output, or state output. Please take
/// care to secure your secret data outside of resource definitions.
///
/// Encrypts [plaintext] with a [GoogleKmsCryptoKey] and exposes the
/// resulting base64 [ciphertext] attribute.
///
/// Useful for embedding ciphertext in other resources without storing
/// plaintext in Terraform config forever — but **plan/state still see
/// [plaintext]** (schema-sensitive). Prefer Secret Manager for long-lived
/// secrets.
///
/// Terraform cannot delete the ciphertext resource from GCP (`exclude_delete`);
/// destroy removes it from state only.
///
/// Example:
/// ```dart
/// GoogleKmsSecretCiphertext(
///   localName: 'db_password',
///   cryptoKey: TfArg.ref(paymentsKey.id),
///   plaintext: TfArg.literal('change-me'),
/// );
/// ```
final class GoogleKmsSecretCiphertext extends Resource {
  static const String tfType = 'google_kms_secret_ciphertext';

  GoogleKmsSecretCiphertext({
    required super.localName,
    required TfArg<String> cryptoKey,
    required TfArg<String> plaintext,
    TfArg<String>? additionalAuthenticatedData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key': cryptoKey,
           'plaintext': plaintext,
           if (additionalAuthenticatedData != null)
             'additional_authenticated_data': additionalAuthenticatedData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsSecretCiphertextSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ciphertext` attribute.
  TfRef<String> get ciphertext => TfRef.attribute<String>(this, 'ciphertext');
}
