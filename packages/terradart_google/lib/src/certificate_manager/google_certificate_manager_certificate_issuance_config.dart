// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificate_issuance_config`.
const Set<String> _googleCertificateManagerCertificateIssuanceConfigSensitive =
    <String>{};

/// `key_algorithm` — private key algorithm for issued certificates.
enum CertificateManagerCertificateIssuanceConfigKeyAlgorithm
    implements TerraformEnum {
  rsa2048('RSA_2048'),
  ecdsaP256('ECDSA_P256');

  const CertificateManagerCertificateIssuanceConfigKeyAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// CAS pool reference inside [CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig].
final class CertificateManagerCertificateIssuanceConfigCertificateAuthorityServiceConfig {
  const CertificateManagerCertificateIssuanceConfigCertificateAuthorityServiceConfig({
    required this.caPool,
  });

  final TfArg<String> caPool;

  Map<String, Object?> encode() => {'ca_pool': caPool};
}

/// Certificate authority backend for [GoogleCertificateManagerCertificateIssuanceConfig].
final class CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig {
  const CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig({
    required this.certificateAuthorityServiceConfig,
  });

  final CertificateManagerCertificateIssuanceConfigCertificateAuthorityServiceConfig
  certificateAuthorityServiceConfig;

  Map<String, Object?> encode() => {
    'certificate_authority_service_config': certificateAuthorityServiceConfig
        .encode(),
  };
}

/// Factory wrapper for `google_certificate_manager_certificate_issuance_config`.
///
/// Certificate issuance policy for Google-managed Certificate Manager certs.
///
/// Binds a [GoogleCertificateManagerCertificate] managed provisioning path to
/// a Certificate Authority Service pool and defines key algorithm, lifetime,
/// and rotation window.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: issuance config ID.
/// - [certificateAuthorityConfig]: CA pool reference (CAS `ca_pool` resource).
/// - [keyAlgorithm]: `RSA_2048` or `ECDSA_P256`.
/// - [lifetime]: certificate lifetime (e.g. `86400s`).
/// - [rotationWindowPercentage]: percent of lifetime before rotation (0–100).
///
/// Example:
/// ```dart
/// GoogleCertificateManagerCertificateIssuanceConfig(
///   localName: 'app_issuance',
///   name: TfArg.literal('app-issuance'),
///   certificateAuthorityConfig:
///       CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig(
///     certificateAuthorityServiceConfig:
///         CertificateManagerCertificateIssuanceConfigCertificateAuthorityServiceConfig(
///       caPool: TfArg.literal(
///         'projects/my-project/locations/us-central1/caPools/my-pool',
///       ),
///     ),
///   ),
///   keyAlgorithm: TfArg.literal(
///     CertificateManagerCertificateIssuanceConfigKeyAlgorithm.rsa2048,
///   ),
///   lifetime: TfArg.literal('2592000s'),
///   rotationWindowPercentage: TfArg.literal(50),
/// );
/// ```
final class GoogleCertificateManagerCertificateIssuanceConfig extends Resource {
  static const String tfType =
      'google_certificate_manager_certificate_issuance_config';

  GoogleCertificateManagerCertificateIssuanceConfig({
    required super.localName,
    required TfArg<String> name,
    required CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig
    certificateAuthorityConfig,
    required TfArg<CertificateManagerCertificateIssuanceConfigKeyAlgorithm>
    keyAlgorithm,
    required TfArg<String> lifetime,
    required TfArg<num> rotationWindowPercentage,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'certificate_authority_config': TfArg.literal([
             certificateAuthorityConfig.encode(),
           ]),
           'key_algorithm': keyAlgorithm,
           'lifetime': lifetime,
           'rotation_window_percentage': rotationWindowPercentage,
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificateIssuanceConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
