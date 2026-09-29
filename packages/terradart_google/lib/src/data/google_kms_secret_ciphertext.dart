// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/google_kms_secret_ciphertext.dart';

/// Sensitive field paths for `google_kms_secret_ciphertext`.
const Set<String> _googleKmsSecretCiphertextSensitive = <String>{'plaintext'};

/// Factory wrapper for `google_kms_secret_ciphertext`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsSecretCiphertext extends Data {
  static const String tfType = 'google_kms_secret_ciphertext';

  DataGoogleKmsSecretCiphertext({
    required super.localName,
    required TfArg<String> cryptoKey,
    required TfArg<String> plaintext,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'crypto_key': cryptoKey, 'plaintext': plaintext},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsSecretCiphertextSensitive;

  /// A reference to the `google_kms_secret_ciphertext` this data source reads, for
  /// arguments typed `RefTo<GoogleKmsSecretCiphertext>`.
  RefTo<GoogleKmsSecretCiphertext> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ciphertext` attribute.
  TfRef<String> get ciphertext => TfRef.attribute<String>(this, 'ciphertext');
}
