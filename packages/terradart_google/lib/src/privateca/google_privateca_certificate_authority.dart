// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate_authority`.
const Set<String> _googlePrivatecaCertificateAuthoritySensitive = <String>{};

/// `type` — CA tier (must match the parent pool tier).
enum PrivatecaCertificateAuthorityType implements TerraformEnum {
  selfSigned('SELF_SIGNED'),
  subordinate('SUBORDINATE');

  const PrivatecaCertificateAuthorityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `desired_state` — operational state target for the CA.
enum PrivatecaCertificateAuthorityDesiredState implements TerraformEnum {
  enabled('ENABLED'),
  staged('STAGED'),
  disabled('DISABLED');

  const PrivatecaCertificateAuthorityDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `key_spec.algorithm` — managed Cloud KMS key algorithm.
enum PrivatecaCertificateAuthorityKeyAlgorithm implements TerraformEnum {
  signHashAlgorithmUnspecified('SIGN_HASH_ALGORITHM_UNSPECIFIED'),
  rsaPss2048Sha256('RSA_PSS_2048_SHA256'),
  rsaPss3072Sha256('RSA_PSS_3072_SHA256'),
  rsaPss4096Sha256('RSA_PSS_4096_SHA256'),
  rsaPkcs12048Sha256('RSA_PKCS1_2048_SHA256'),
  rsaPkcs13072Sha256('RSA_PKCS1_3072_SHA256'),
  rsaPkcs14096Sha256('RSA_PKCS1_4096_SHA256'),
  ecP256Sha256('EC_P256_SHA256'),
  ecP384Sha384('EC_P384_SHA384');

  const PrivatecaCertificateAuthorityKeyAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// `config.subject_config.subject` — distinguished name fields.
final class PrivatecaCertificateAuthoritySubject {
  const PrivatecaCertificateAuthoritySubject({
    required this.commonName,
    this.organization,
    this.organizationalUnit,
    this.countryCode,
  });

  final TfArg<String> commonName;
  final TfArg<String>? organization;
  final TfArg<String>? organizationalUnit;
  final TfArg<String>? countryCode;

  Map<String, Object?> encode() => {
    'common_name': commonName,
    if (organization != null) 'organization': organization,
    if (organizationalUnit != null) 'organizational_unit': organizationalUnit,
    if (countryCode != null) 'country_code': countryCode,
  };
}

/// `config.subject_config` block.
final class PrivatecaCertificateAuthoritySubjectConfig {
  const PrivatecaCertificateAuthoritySubjectConfig({required this.subject});

  final PrivatecaCertificateAuthoritySubject subject;

  Map<String, Object?> encode() => {
    'subject': [subject.encode()],
  };
}

/// `config.x509_config.ca_options`.
final class PrivatecaCertificateAuthorityCaOptions {
  const PrivatecaCertificateAuthorityCaOptions({required this.isCa});

  final TfArg<bool> isCa;

  Map<String, Object?> encode() => {'is_ca': isCa};
}

/// `config.x509_config.key_usage.base_key_usage`.
final class PrivatecaCertificateAuthorityBaseKeyUsage {
  const PrivatecaCertificateAuthorityBaseKeyUsage({
    this.certSign,
    this.crlSign,
    this.digitalSignature,
  });

  final TfArg<bool>? certSign;
  final TfArg<bool>? crlSign;
  final TfArg<bool>? digitalSignature;

  Map<String, Object?> encode() => {
    if (certSign != null) 'cert_sign': certSign,
    if (crlSign != null) 'crl_sign': crlSign,
    if (digitalSignature != null) 'digital_signature': digitalSignature,
  };
}

/// `config.x509_config.key_usage.extended_key_usage`.
final class PrivatecaCertificateAuthorityExtendedKeyUsage {
  const PrivatecaCertificateAuthorityExtendedKeyUsage({
    this.serverAuth,
    this.clientAuth,
  });

  final TfArg<bool>? serverAuth;
  final TfArg<bool>? clientAuth;

  Map<String, Object?> encode() => {
    if (serverAuth != null) 'server_auth': serverAuth,
    if (clientAuth != null) 'client_auth': clientAuth,
  };
}

/// `config.x509_config.key_usage`.
final class PrivatecaCertificateAuthorityKeyUsage {
  const PrivatecaCertificateAuthorityKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
  });

  final PrivatecaCertificateAuthorityBaseKeyUsage baseKeyUsage;
  final PrivatecaCertificateAuthorityExtendedKeyUsage extendedKeyUsage;

  Map<String, Object?> encode() => {
    'base_key_usage': [baseKeyUsage.encode()],
    'extended_key_usage': [extendedKeyUsage.encode()],
  };
}

/// `config.x509_config` — X.509 profile for the CA certificate.
final class PrivatecaCertificateAuthorityX509Config {
  const PrivatecaCertificateAuthorityX509Config({
    required this.caOptions,
    required this.keyUsage,
  });

  final PrivatecaCertificateAuthorityCaOptions caOptions;
  final PrivatecaCertificateAuthorityKeyUsage keyUsage;

  /// Root / self-signed CA defaults (`is_ca` + cert-signing key usage).
  factory PrivatecaCertificateAuthorityX509Config.rootCa() =>
      PrivatecaCertificateAuthorityX509Config(
        caOptions: PrivatecaCertificateAuthorityCaOptions(
          isCa: TfArg.literal(true),
        ),
        keyUsage: PrivatecaCertificateAuthorityKeyUsage(
          baseKeyUsage: PrivatecaCertificateAuthorityBaseKeyUsage(
            certSign: TfArg.literal(true),
            crlSign: TfArg.literal(true),
          ),
          extendedKeyUsage:
              const PrivatecaCertificateAuthorityExtendedKeyUsage(),
        ),
      );

  Map<String, Object?> encode() => {
    'ca_options': [caOptions.encode()],
    'key_usage': [keyUsage.encode()],
  };
}

/// `config` block — subject + X.509 profile.
final class PrivatecaCertificateAuthorityConfig {
  const PrivatecaCertificateAuthorityConfig({
    required this.subjectConfig,
    required this.x509Config,
  });

  final PrivatecaCertificateAuthoritySubjectConfig subjectConfig;
  final PrivatecaCertificateAuthorityX509Config x509Config;

  Map<String, Object?> encode() => {
    'subject_config': [subjectConfig.encode()],
    'x509_config': [x509Config.encode()],
  };
}

/// `key_spec` block — managed key algorithm or Cloud KMS version.
final class PrivatecaCertificateAuthorityKeySpec {
  const PrivatecaCertificateAuthorityKeySpec({
    this.algorithm,
    this.cloudKmsKeyVersion,
  });

  final TfArg<PrivatecaCertificateAuthorityKeyAlgorithm>? algorithm;
  final TfArg<String>? cloudKmsKeyVersion;

  Map<String, Object?> encode() => {
    if (algorithm != null) 'algorithm': algorithm,
    if (cloudKmsKeyVersion != null) 'cloud_kms_key_version': cloudKmsKeyVersion,
  };
}

/// Factory wrapper for `google_privateca_certificate_authority`.
///
/// A CertificateAuthority represents an individual Certificate Authority. A
/// CertificateAuthority can be used to create Certificates.
///
/// Certificate Authority Service (CAS) certificate authority — issues
/// certs inside a [GooglePrivatecaCaPool] for [GoogleCertificateManagerCertificateIssuanceConfig].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [certificateAuthorityId]: short CA ID within the pool.
/// - [pool]: full CAS pool ID — `TfArg.ref(pool.id)` from [GooglePrivatecaCaPool].
/// - [location]: regional location (match the pool).
/// - [config]: subject + X.509 profile ([PrivatecaCertificateAuthorityConfig]).
/// - [keySpec]: managed key algorithm ([PrivatecaCertificateAuthorityKeySpec]).
///
/// Example (self-signed root in a DEVOPS pool):
/// ```dart
/// GooglePrivatecaCertificateAuthority(
///   localName: 'app_ca',
///   certificateAuthorityId: TfArg.literal('app-root-ca'),
///   pool: TfArg.ref(caPool.id),
///   location: TfArg.literal('us-central1'),
///   config: PrivatecaCertificateAuthorityConfig(
///     subjectConfig: PrivatecaCertificateAuthoritySubjectConfig(
///       subject: PrivatecaCertificateAuthoritySubject(
///         commonName: TfArg.literal('app.example.com'),
///       ),
///     ),
///     x509Config: PrivatecaCertificateAuthorityX509Config.rootCa(),
///   ),
///   keySpec: PrivatecaCertificateAuthorityKeySpec(
///     algorithm: TfArg.literal(
///       PrivatecaCertificateAuthorityKeyAlgorithm.rsaPkcs14096Sha256,
///     ),
///   ),
/// );
/// ```
final class GooglePrivatecaCertificateAuthority extends Resource {
  static const String tfType = 'google_privateca_certificate_authority';

  GooglePrivatecaCertificateAuthority({
    required super.localName,
    required TfArg<String> certificateAuthorityId,
    required TfArg<String> pool,
    required TfArg<String> location,
    required PrivatecaCertificateAuthorityConfig config,
    required PrivatecaCertificateAuthorityKeySpec keySpec,
    TfArg<bool>? deletionProtection,
    TfArg<bool>? ignoreActiveCertificatesOnDeletion,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<PrivatecaCertificateAuthorityType>? type,
    TfArg<PrivatecaCertificateAuthorityDesiredState>? desiredState,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority_id': certificateAuthorityId,
           'pool': pool,
           'location': location,
           'config': TfArg.literal([config.encode()]),
           'key_spec': TfArg.literal([keySpec.encode()]),
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (ignoreActiveCertificatesOnDeletion != null)
             'ignore_active_certificates_on_deletion':
                 ignoreActiveCertificatesOnDeletion,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (type != null) 'type': type,
           if (desiredState != null) 'desired_state': desiredState,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateAuthoritySensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_urls` attribute.
  TfRef<List<Map<String, Object?>>> get accessUrls =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_urls');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `pem_ca_certificates` attribute.
  TfRef<List<String>> get pemCaCertificates =>
      TfRef.attribute<List<String>>(this, 'pem_ca_certificates');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
