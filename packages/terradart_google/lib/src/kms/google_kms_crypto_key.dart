// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_kms_crypto_key.schema.dart'
    show $GoogleKmsCryptoKey, googleKmsCryptoKeySensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleKmsCryptoKeySchemaInstance implements $GoogleKmsCryptoKey {
  const _GoogleKmsCryptoKeySchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Purpose for `google_kms_crypto_key.purpose` (immutable, default
/// `encryptDecrypt`). See the
/// [CryptoKeyPurpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose).
enum KmsKeyPurpose {
  encryptDecrypt('ENCRYPT_DECRYPT'),
  asymmetricSign('ASYMMETRIC_SIGN'),
  asymmetricDecrypt('ASYMMETRIC_DECRYPT'),
  mac('MAC'),
  rawEncryptDecrypt('RAW_ENCRYPT_DECRYPT');

  const KmsKeyPurpose(this.terraformValue);
  final String terraformValue;
}

/// Protection level for `version_template.protection_level` (immutable,
/// default `software`). Per MM docs, possible values are SOFTWARE, HSM,
/// EXTERNAL, EXTERNAL_VPC.
enum KmsProtectionLevel {
  software('SOFTWARE'),
  hsm('HSM'),
  external('EXTERNAL'),
  externalVpc('EXTERNAL_VPC');

  const KmsProtectionLevel(this.terraformValue);
  final String terraformValue;
}

/// `version_template` nested block (max=1) on `google_kms_crypto_key`.
///
/// `algorithm` is left as `String` because the
/// [CryptoKeyVersionAlgorithm enum](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm)
/// has ~30 entries (symmetric, asymmetric sign, asymmetric decrypt, MAC,
/// raw encrypt/decrypt families). Pass the GCP enum literal as a string,
/// e.g. `'GOOGLE_SYMMETRIC_ENCRYPTION'` or `'RSA_SIGN_PKCS1_2048_SHA256'`.
class VersionTemplate {
  const VersionTemplate({required this.algorithm, this.protectionLevel});
  final String algorithm;
  final KmsProtectionLevel? protectionLevel;
  Map<String, Object?> toArgMap() => {
    'algorithm': algorithm,
    if (protectionLevel != null)
      'protection_level': protectionLevel!.terraformValue,
  };
}

/// Factory wrapper for `google_kms_crypto_key` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_kms_crypto_key.`).
/// - `name`: KMS crypto key name (immutable). Pass `TfArg.literal('payments')`.
/// - `keyRing`: The parent KeyRing's full resource id. Pass
///   `TfArg.ref(keyRing.id)` where `keyRing` is a `GoogleKmsKeyRing`.
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
///   versionTemplate: const VersionTemplate(
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
final class GoogleKmsCryptoKey extends Resource<$GoogleKmsCryptoKey> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_kms_crypto_key';

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
    VersionTemplate? versionTemplate,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleKmsCryptoKeySchemaInstance(),
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
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleKmsCryptoKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{name}`).
  /// Use this when declaring `google_kms_crypto_key_iam_member.crypto_key_id`
  /// or any other resource that references a crypto key.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
