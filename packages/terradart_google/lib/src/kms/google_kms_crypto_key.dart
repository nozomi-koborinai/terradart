// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key`.
const Set<String> _googleKmsCryptoKeySensitive = <String>{};

/// Purpose for `google_kms_crypto_key.purpose` (immutable, default
/// `encryptDecrypt`). See the
/// [CryptoKeyPurpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose).
enum KmsKeyPurpose implements TerraformEnum {
  encryptDecrypt('ENCRYPT_DECRYPT'),
  asymmetricSign('ASYMMETRIC_SIGN'),
  asymmetricDecrypt('ASYMMETRIC_DECRYPT'),
  mac('MAC'),
  rawEncryptDecrypt('RAW_ENCRYPT_DECRYPT');

  const KmsKeyPurpose(this.terraformValue);
  @override
  final String terraformValue;
}

/// Protection level for `version_template.protection_level` (immutable,
/// default `software`). Per MM docs, possible values are SOFTWARE, HSM,
/// EXTERNAL, EXTERNAL_VPC.
enum KmsProtectionLevel implements TerraformEnum {
  software('SOFTWARE'),
  hsm('HSM'),
  external('EXTERNAL'),
  externalVpc('EXTERNAL_VPC');

  const KmsProtectionLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `version_template` nested block (max=1) on `google_kms_crypto_key`.
///
/// `algorithm` is left as `String` because the
/// [CryptoKeyVersionAlgorithm enum](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm)
/// has ~30 entries (symmetric, asymmetric sign, asymmetric decrypt, MAC,
/// raw encrypt/decrypt families). Pass the GCP enum literal as a string,
/// e.g. `'GOOGLE_SYMMETRIC_ENCRYPTION'` or `'RSA_SIGN_PKCS1_2048_SHA256'`.
class KmsCryptoKeyVersionTemplate {
  const KmsCryptoKeyVersionTemplate({
    required this.algorithm,
    this.protectionLevel,
  });
  final TfArg<String> algorithm;
  final KmsProtectionLevel? protectionLevel;
  Map<String, Object?> toArgMap() => {
    'algorithm': algorithm.toTfJson(),
    if (protectionLevel != null)
      'protection_level': protectionLevel!.terraformValue,
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
///   localName: 'main',
///   name: TfArg.literal('main-ring'),
///   location: TfArg.literal('asia-northeast1'),
/// );
///
/// final cryptoKey = GoogleKmsCryptoKey(
///   localName: 'payments',
///   name: TfArg.literal('payments'),
///   keyRing: TfArg.ref(ring.id),
///   purpose: TfArg.literal(KmsKeyPurpose.encryptDecrypt),
///   // Must be > 86400s (1 day). `TfArg.duration` converts the
///   // Duration into the `"{seconds}s"` form Terraform expects.
///   rotationPeriod: TfArg.duration(const Duration(days: 90)),
///   versionTemplate: const KmsCryptoKeyVersionTemplate(
///     algorithm: 'GOOGLE_SYMMETRIC_ENCRYPTION',
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

  GoogleKmsCryptoKey({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> keyRing,
    TfArg<KmsKeyPurpose>? purpose,
    TfArg<String>? rotationPeriod,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? skipInitialVersionCreation,
    TfArg<String>? destroyScheduledDuration,
    TfArg<bool>? importOnly,
    TfArg<String>? cryptoKeyBackend,
    KmsCryptoKeyVersionTemplate? versionTemplate,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'key_ring': keyRing,
           if (purpose != null) 'purpose': purpose,
           if (rotationPeriod != null) 'rotation_period': rotationPeriod,
           if (labels != null) 'labels': labels,
           if (skipInitialVersionCreation != null)
             'skip_initial_version_creation': skipInitialVersionCreation,
           if (destroyScheduledDuration != null)
             'destroy_scheduled_duration': destroyScheduledDuration,
           if (importOnly != null) 'import_only': importOnly,
           if (cryptoKeyBackend != null) 'crypto_key_backend': cryptoKeyBackend,
           if (versionTemplate != null)
             'version_template': TfArg.literal([versionTemplate.toArgMap()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
