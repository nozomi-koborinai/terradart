// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_key_ring.dart' show GoogleKmsKeyRing;

/// Sensitive field paths for `google_kms_key_ring_import_job`.
const Set<String> _googleKmsKeyRingImportJobSensitive = <String>{};

/// Kms Key Ring Import Job Import enum for `import_method`.
extension type const KmsKeyRingImportJobImportMethod._(TfArg<String> _)
    implements TfArg<String> {
  KmsKeyRingImportJobImportMethod.variable(String name)
    : this._(TfArg.variable(name));
  KmsKeyRingImportJobImportMethod.expression(String template)
    : this._(TfArg.expression(template));
  const KmsKeyRingImportJobImportMethod.arg(TfArg<String> arg) : this._(arg);

  static const rsaOaep3072Sha1Aes256 = KmsKeyRingImportJobImportMethod._(
    TfArgLiteral('RSA_OAEP_3072_SHA1_AES_256'),
  );
  static const rsaOaep4096Sha1Aes256 = KmsKeyRingImportJobImportMethod._(
    TfArgLiteral('RSA_OAEP_4096_SHA1_AES_256'),
  );
  static const rsaOaep3072Sha256Aes256 = KmsKeyRingImportJobImportMethod._(
    TfArgLiteral('RSA_OAEP_3072_SHA256_AES_256'),
  );
  static const rsaOaep4096Sha256Aes256 = KmsKeyRingImportJobImportMethod._(
    TfArgLiteral('RSA_OAEP_4096_SHA256_AES_256'),
  );
  static const rsaOaep3072Sha256 = KmsKeyRingImportJobImportMethod._(
    TfArgLiteral('RSA_OAEP_3072_SHA256'),
  );
  static const rsaOaep4096Sha256 = KmsKeyRingImportJobImportMethod._(
    TfArgLiteral('RSA_OAEP_4096_SHA256'),
  );

  static const List<KmsKeyRingImportJobImportMethod> values = [
    rsaOaep3072Sha1Aes256,
    rsaOaep4096Sha1Aes256,
    rsaOaep3072Sha256Aes256,
    rsaOaep4096Sha256Aes256,
    rsaOaep3072Sha256,
    rsaOaep4096Sha256,
  ];
}

/// Kms Key Ring Import Job Protection enum for `protection_level`.
extension type const KmsKeyRingImportJobProtectionLevel._(TfArg<String> _)
    implements TfArg<String> {
  KmsKeyRingImportJobProtectionLevel.variable(String name)
    : this._(TfArg.variable(name));
  KmsKeyRingImportJobProtectionLevel.expression(String template)
    : this._(TfArg.expression(template));
  const KmsKeyRingImportJobProtectionLevel.arg(TfArg<String> arg) : this._(arg);

  static const software = KmsKeyRingImportJobProtectionLevel._(
    TfArgLiteral('SOFTWARE'),
  );
  static const hsm = KmsKeyRingImportJobProtectionLevel._(TfArgLiteral('HSM'));
  static const external = KmsKeyRingImportJobProtectionLevel._(
    TfArgLiteral('EXTERNAL'),
  );

  static const List<KmsKeyRingImportJobProtectionLevel> values = [
    software,
    hsm,
    external,
  ];
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
///   'import',
///   keyRing: ring.ref,
///   importJobId: TfArg.literal('terradart-import'),
///   importMethod: KmsKeyRingImportJobImportMethod.rsaOaep3072Sha1Aes256,
///   protectionLevel: KmsKeyRingImportJobProtectionLevel.software,
/// );
/// ```
final class GoogleKmsKeyRingImportJob extends Resource {
  static const String tfType = 'google_kms_key_ring_import_job';

  GoogleKmsKeyRingImportJob(
    super.localName, {
    required RefTo<GoogleKmsKeyRing> keyRing,
    required TfArg<String> importJobId,
    required KmsKeyRingImportJobImportMethod importMethod,
    required KmsKeyRingImportJobProtectionLevel protectionLevel,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_ring': keyRing.encodeAs('id'),
           'import_job_id': importJobId,
           'import_method': importMethod,
           'protection_level': protectionLevel,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingImportJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsKeyRingImportJob>`.
  RefTo<GoogleKmsKeyRingImportJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `import_job_id` attribute.
  TfRef<String> get importJobId =>
      TfRef.attribute<String>(this, 'import_job_id');

  /// Reference to `import_method` attribute.
  TfRef<String> get importMethod =>
      TfRef.attribute<String>(this, 'import_method');

  /// Reference to `key_ring` attribute.
  TfRef<String> get keyRing => TfRef.attribute<String>(this, 'key_ring');

  /// Reference to `protection_level` attribute.
  TfRef<String> get protectionLevel =>
      TfRef.attribute<String>(this, 'protection_level');
}
