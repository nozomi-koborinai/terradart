// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring_import_job`.
const Set<String> _googleKmsKeyRingImportJobSensitive = <String>{};

/// Kms Key Ring Import Job Import enum for `import_method`.
enum KmsKeyRingImportJobImportMethod implements TerraformEnum {
  rsaOaep3072Sha1Aes256('RSA_OAEP_3072_SHA1_AES_256'),
  rsaOaep4096Sha1Aes256('RSA_OAEP_4096_SHA1_AES_256'),
  rsaOaep3072Sha256Aes256('RSA_OAEP_3072_SHA256_AES_256'),
  rsaOaep4096Sha256Aes256('RSA_OAEP_4096_SHA256_AES_256'),
  rsaOaep3072Sha256('RSA_OAEP_3072_SHA256'),
  rsaOaep4096Sha256('RSA_OAEP_4096_SHA256');

  const KmsKeyRingImportJobImportMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kms Key Ring Import Job Protection enum for `protection_level`.
enum KmsKeyRingImportJobProtectionLevel implements TerraformEnum {
  software('SOFTWARE'),
  hsm('HSM'),
  external('EXTERNAL');

  const KmsKeyRingImportJobProtectionLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_kms_key_ring_import_job`.
///
/// A `KeyRingImportJob` can be used to create `CryptoKeys` and
/// `CryptoKeyVersions` using pre-existing key material, generated outside of
/// Cloud KMS. A `KeyRingImportJob` expires 3 days after it is created. Once
/// expired, Cloud KMS will no longer be able to import or unwrap any key
/// material that was wrapped with the `KeyRingImportJob`'s public key.
///
/// ~> **Note:** KeyRingImportJobs cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed KeyRingImportJob will remove it from state
/// but *will not delete the resource from the project.*
///
/// Cloud KMS **key-ring import job** — wrapping key used to import
/// externally generated key material into a [GoogleKmsKeyRing].
///
/// Jobs expire ~3 days after create. Terraform destroy removes the job
/// from state only (GCP does not delete import jobs).
///
/// Example:
/// ```dart
/// GoogleKmsKeyRingImportJob(
///   localName: 'import',
///   keyRing: TfArg.ref(ring.id),
///   importJobId: TfArg.literal('terradart-import'),
///   importMethod: TfArg.literal(
///     KmsKeyRingImportJobImportMethod.rsaOaep3072Sha1Aes256,
///   ),
///   protectionLevel: TfArg.literal(
///     KmsKeyRingImportJobProtectionLevel.software,
///   ),
/// );
/// ```
final class GoogleKmsKeyRingImportJob extends Resource {
  static const String tfType = 'google_kms_key_ring_import_job';

  GoogleKmsKeyRingImportJob({
    required super.localName,
    required TfArg<String> keyRing,
    required TfArg<String> importJobId,
    required TfArg<KmsKeyRingImportJobImportMethod> importMethod,
    required TfArg<KmsKeyRingImportJobProtectionLevel> protectionLevel,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_ring': keyRing,
           'import_job_id': importJobId,
           'import_method': importMethod,
           'protection_level': protectionLevel,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingImportJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attestation` attribute.
  TfRef<List<Map<String, Object?>>> get attestation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attestation');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `public_key` attribute.
  TfRef<List<Map<String, Object?>>> get publicKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'public_key');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
