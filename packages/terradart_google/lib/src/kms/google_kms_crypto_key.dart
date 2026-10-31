// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_key_ring.dart' show GoogleKmsKeyRing;

/// Sensitive field paths for `google_kms_crypto_key`.
const Set<String> _googleKmsCryptoKeySensitive = <String>{};

/// Purpose for `google_kms_crypto_key.purpose` (immutable, default
/// `encryptDecrypt`). See the
/// [CryptoKeyPurpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose).
extension type const KmsKeyPurpose._(TfArg<String> _) implements TfArg<String> {
  KmsKeyPurpose.variable(String name) : this._(TfArg.variable(name));
  KmsKeyPurpose.expression(String template)
    : this._(TfArg.expression(template));
  const KmsKeyPurpose.arg(TfArg<String> arg) : this._(arg);

  static const encryptDecrypt = KmsKeyPurpose._(
    TfArgLiteral('ENCRYPT_DECRYPT'),
  );
  static const asymmetricSign = KmsKeyPurpose._(
    TfArgLiteral('ASYMMETRIC_SIGN'),
  );
  static const asymmetricDecrypt = KmsKeyPurpose._(
    TfArgLiteral('ASYMMETRIC_DECRYPT'),
  );
  static const mac = KmsKeyPurpose._(TfArgLiteral('MAC'));
  static const rawEncryptDecrypt = KmsKeyPurpose._(
    TfArgLiteral('RAW_ENCRYPT_DECRYPT'),
  );

  static const List<KmsKeyPurpose> values = [
    encryptDecrypt,
    asymmetricSign,
    asymmetricDecrypt,
    mac,
    rawEncryptDecrypt,
  ];
}

/// Protection level for `version_template.protection_level` (immutable,
/// default `software`). Per MM docs, possible values are SOFTWARE, HSM,
/// EXTERNAL, EXTERNAL_VPC.
extension type const KmsProtectionLevel._(TfArg<String> _)
    implements TfArg<String> {
  KmsProtectionLevel.variable(String name) : this._(TfArg.variable(name));
  KmsProtectionLevel.expression(String template)
    : this._(TfArg.expression(template));
  const KmsProtectionLevel.arg(TfArg<String> arg) : this._(arg);

  static const software = KmsProtectionLevel._(TfArgLiteral('SOFTWARE'));
  static const hsm = KmsProtectionLevel._(TfArgLiteral('HSM'));
  static const external = KmsProtectionLevel._(TfArgLiteral('EXTERNAL'));
  static const externalVpc = KmsProtectionLevel._(TfArgLiteral('EXTERNAL_VPC'));

  static const List<KmsProtectionLevel> values = [
    software,
    hsm,
    external,
    externalVpc,
  ];
}

/// Algorithm for `version_template.algorithm`. See the
/// [CryptoKeyVersionAlgorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm).
extension type const KmsCryptoKeyVersionAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  KmsCryptoKeyVersionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  KmsCryptoKeyVersionAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const KmsCryptoKeyVersionAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const googleSymmetricEncryption = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('GOOGLE_SYMMETRIC_ENCRYPTION'),
  );
  static const aes128Gcm = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_128_GCM'),
  );
  static const aes256Gcm = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_256_GCM'),
  );
  static const aes128Cbc = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_128_CBC'),
  );
  static const aes256Cbc = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_256_CBC'),
  );
  static const aes128Ctr = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_128_CTR'),
  );
  static const aes256Ctr = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_256_CTR'),
  );
  static const rsaSignPss2048Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PSS_2048_SHA256'),
  );
  static const rsaSignPss3072Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PSS_3072_SHA256'),
  );
  static const rsaSignPss4096Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PSS_4096_SHA256'),
  );
  static const rsaSignPss4096Sha512 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PSS_4096_SHA512'),
  );
  static const rsaSignPkcs12048Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PKCS1_2048_SHA256'),
  );
  static const rsaSignPkcs13072Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PKCS1_3072_SHA256'),
  );
  static const rsaSignPkcs14096Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PKCS1_4096_SHA256'),
  );
  static const rsaSignPkcs14096Sha512 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_PKCS1_4096_SHA512'),
  );
  static const rsaSignRawPkcs12048 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_RAW_PKCS1_2048'),
  );
  static const rsaSignRawPkcs13072 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_RAW_PKCS1_3072'),
  );
  static const rsaSignRawPkcs14096 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_SIGN_RAW_PKCS1_4096'),
  );
  static const rsaDecryptOaep2048Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_2048_SHA256'),
  );
  static const rsaDecryptOaep3072Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_3072_SHA256'),
  );
  static const rsaDecryptOaep4096Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_4096_SHA256'),
  );
  static const rsaDecryptOaep4096Sha512 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_4096_SHA512'),
  );
  static const rsaDecryptOaep2048Sha1 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_2048_SHA1'),
  );
  static const rsaDecryptOaep3072Sha1 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_3072_SHA1'),
  );
  static const rsaDecryptOaep4096Sha1 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('RSA_DECRYPT_OAEP_4096_SHA1'),
  );
  static const ecSignP256Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('EC_SIGN_P256_SHA256'),
  );
  static const ecSignP384Sha384 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('EC_SIGN_P384_SHA384'),
  );
  static const ecSignSecp256k1Sha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('EC_SIGN_SECP256K1_SHA256'),
  );
  static const ecSignEd25519 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('EC_SIGN_ED25519'),
  );
  static const hmacSha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('HMAC_SHA256'),
  );
  static const hmacSha1 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('HMAC_SHA1'),
  );
  static const hmacSha384 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('HMAC_SHA384'),
  );
  static const hmacSha512 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('HMAC_SHA512'),
  );
  static const hmacSha224 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('HMAC_SHA224'),
  );
  static const externalSymmetricEncryption = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('EXTERNAL_SYMMETRIC_ENCRYPTION'),
  );
  static const mlKem768 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('ML_KEM_768'),
  );
  static const mlKem1024 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('ML_KEM_1024'),
  );
  static const kemXwing = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('KEM_XWING'),
  );
  static const pqSignMlDsa44 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_ML_DSA_44'),
  );
  static const pqSignMlDsa65 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_ML_DSA_65'),
  );
  static const pqSignMlDsa87 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_ML_DSA_87'),
  );
  static const pqSignSlhDsaSha2128s = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_SLH_DSA_SHA2_128S'),
  );
  static const pqSignHashSlhDsaSha2128sSha256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256'),
  );
  static const pqSignMlDsa44ExternalMu = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_ML_DSA_44_EXTERNAL_MU'),
  );
  static const pqSignMlDsa65ExternalMu = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_ML_DSA_65_EXTERNAL_MU'),
  );
  static const pqSignMlDsa87ExternalMu = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('PQ_SIGN_ML_DSA_87_EXTERNAL_MU'),
  );
  static const kemEcdhP256 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('KEM_ECDH_P256'),
  );
  static const kemEcdhP384 = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('KEM_ECDH_P384'),
  );
  static const aes256Kwp = KmsCryptoKeyVersionAlgorithm._(
    TfArgLiteral('AES_256_KWP'),
  );

  static const List<KmsCryptoKeyVersionAlgorithm> values = [
    googleSymmetricEncryption,
    aes128Gcm,
    aes256Gcm,
    aes128Cbc,
    aes256Cbc,
    aes128Ctr,
    aes256Ctr,
    rsaSignPss2048Sha256,
    rsaSignPss3072Sha256,
    rsaSignPss4096Sha256,
    rsaSignPss4096Sha512,
    rsaSignPkcs12048Sha256,
    rsaSignPkcs13072Sha256,
    rsaSignPkcs14096Sha256,
    rsaSignPkcs14096Sha512,
    rsaSignRawPkcs12048,
    rsaSignRawPkcs13072,
    rsaSignRawPkcs14096,
    rsaDecryptOaep2048Sha256,
    rsaDecryptOaep3072Sha256,
    rsaDecryptOaep4096Sha256,
    rsaDecryptOaep4096Sha512,
    rsaDecryptOaep2048Sha1,
    rsaDecryptOaep3072Sha1,
    rsaDecryptOaep4096Sha1,
    ecSignP256Sha256,
    ecSignP384Sha384,
    ecSignSecp256k1Sha256,
    ecSignEd25519,
    hmacSha256,
    hmacSha1,
    hmacSha384,
    hmacSha512,
    hmacSha224,
    externalSymmetricEncryption,
    mlKem768,
    mlKem1024,
    kemXwing,
    pqSignMlDsa44,
    pqSignMlDsa65,
    pqSignMlDsa87,
    pqSignSlhDsaSha2128s,
    pqSignHashSlhDsaSha2128sSha256,
    pqSignMlDsa44ExternalMu,
    pqSignMlDsa65ExternalMu,
    pqSignMlDsa87ExternalMu,
    kemEcdhP256,
    kemEcdhP384,
    aes256Kwp,
  ];
}

/// `version_template` nested block (max=1) on `google_kms_crypto_key`.
class KmsCryptoKeyVersionTemplate {
  const KmsCryptoKeyVersionTemplate({
    required this.algorithm,
    this.protectionLevel,
  });
  final KmsCryptoKeyVersionAlgorithm algorithm;
  final KmsProtectionLevel? protectionLevel;
  Map<String, Object?> toArgMap() => {
    'algorithm': algorithm.toTfJson(),
    if (protectionLevel != null)
      'protection_level': protectionLevel!.toTfJson(),
  };
}

/// Factory wrapper for `google_kms_crypto_key`.
///
/// A `CryptoKey` represents a logical key that can be used for cryptographic
/// operations.
///
/// ~> **Note:** CryptoKeys cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed CryptoKey will remove it from state and
/// delete all CryptoKeyVersions, rendering the key unusable, but *will not
/// delete the resource from the project.* When Terraform destroys these keys,
/// any data previously encrypted with these keys will be irrecoverable. For
/// this reason, it is strongly recommended that you add
/// [lifecycle](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)
/// hooks to the resource to prevent accidental destruction.
///
///
/// Example:
/// ```dart
/// final ring = GoogleKmsKeyRing(
///   'main',
///   name: TfArg.literal('main-ring'),
///   location: TfArg.literal('asia-northeast1'),
/// );
///
/// final cryptoKey = GoogleKmsCryptoKey(
///   'payments',
///   name: TfArg.literal('payments'),
///   keyRing: ring.ref,
///   purpose: KmsKeyPurpose.encryptDecrypt,
///   // Must be > 86400s (1 day). `TfArg.duration` converts the
///   // Duration into the `"{seconds}s"` form Terraform expects.
///   rotationPeriod: TfArg.duration(const Duration(days: 90)),
///   versionTemplate: KmsCryptoKeyVersionTemplate(
///     algorithm: .googleSymmetricEncryption,
///     protectionLevel: KmsProtectionLevel.software,
///   ),
/// );
/// ```
///
/// **Note:** CryptoKeys cannot be deleted from GCP. Destroying a
/// Terraform-managed CryptoKey removes it from state and renders all
/// CryptoKeyVersions unusable but does not delete the resource from the
/// project. Consider attaching `lifecycle { prevent_destroy = true }` for
/// production keys.
final class GoogleKmsCryptoKey extends Resource {
  static const String tfType = 'google_kms_crypto_key';

  GoogleKmsCryptoKey(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleKmsKeyRing> keyRing,
    KmsKeyPurpose? purpose,
    TfArg<String>? rotationPeriod,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? skipInitialVersionCreation,
    TfArg<String>? destroyScheduledDuration,
    TfArg<bool>? importOnly,
    TfArg<String>? cryptoKeyBackend,
    KmsCryptoKeyVersionTemplate? versionTemplate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'key_ring': keyRing.encodeAs('id'),
           'purpose': ?purpose,
           'rotation_period': ?rotationPeriod,
           'labels': ?labels,
           'skip_initial_version_creation': ?skipInitialVersionCreation,
           'destroy_scheduled_duration': ?destroyScheduledDuration,
           'import_only': ?importOnly,
           'crypto_key_backend': ?cryptoKeyBackend,
           if (versionTemplate != null)
             'version_template': TfArg.literal([versionTemplate.toArgMap()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsCryptoKey>`.
  RefTo<GoogleKmsCryptoKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `primary` attribute.
  TfRef<List<Map<String, Object?>>> get primary =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'primary');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `crypto_key_backend` attribute.
  TfRef<String> get cryptoKeyBackend =>
      TfRef.attribute<String>(this, 'crypto_key_backend');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `destroy_scheduled_duration` attribute.
  TfRef<String> get destroyScheduledDuration =>
      TfRef.attribute<String>(this, 'destroy_scheduled_duration');

  /// Reference to `import_only` attribute.
  TfRef<bool> get importOnly => TfRef.attribute<bool>(this, 'import_only');

  /// Reference to `key_ring` attribute.
  TfRef<String> get keyRing => TfRef.attribute<String>(this, 'key_ring');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `rotation_period` attribute.
  TfRef<String> get rotationPeriod =>
      TfRef.attribute<String>(this, 'rotation_period');

  /// Reference to `skip_initial_version_creation` attribute.
  TfRef<bool> get skipInitialVersionCreation =>
      TfRef.attribute<bool>(this, 'skip_initial_version_creation');
}
