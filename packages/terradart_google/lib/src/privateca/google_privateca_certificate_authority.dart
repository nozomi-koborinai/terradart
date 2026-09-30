// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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

/// Typed helper for the `config` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfig {
  const PrivatecaCertificateAuthorityConfig({
    required this.subjectConfig,
    this.subjectKeyId,
    required this.x509Config,
  });

  final PrivatecaCertificateAuthorityConfigSubjectConfig subjectConfig;

  final PrivatecaCertificateAuthorityConfigSubjectKeyId? subjectKeyId;

  final PrivatecaCertificateAuthorityConfigX509Config x509Config;

  Map<String, Object?> encode() => {
    'subject_config': subjectConfig.encode(),
    'subject_key_id': ?subjectKeyId?.encode(),
    'x509_config': x509Config.encode(),
  };
}

/// Typed helper for the `config.subject_config` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigSubjectConfig {
  const PrivatecaCertificateAuthorityConfigSubjectConfig({
    required this.subject,
    this.subjectAltName,
  });

  final PrivatecaCertificateAuthorityConfigSubjectConfigSubject subject;

  final PrivatecaCertificateAuthorityConfigSubjectConfigSubjectAltName?
  subjectAltName;

  Map<String, Object?> encode() => {
    'subject': subject.encode(),
    'subject_alt_name': ?subjectAltName?.encode(),
  };
}

/// Typed helper for the `config.subject_config.subject` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigSubjectConfigSubject {
  const PrivatecaCertificateAuthorityConfigSubjectConfigSubject({
    required this.commonName,
    this.countryCode,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.streetAddress,
  });

  final TfArg<String> commonName;

  final TfArg<String>? countryCode;

  final TfArg<String>? locality;

  final TfArg<String>? organization;

  final TfArg<String>? organizationalUnit;

  final TfArg<String>? postalCode;

  final TfArg<String>? province;

  final TfArg<String>? streetAddress;

  Map<String, Object?> encode() => {
    'common_name': commonName.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'locality': ?locality?.toTfJson(),
    'organization': ?organization?.toTfJson(),
    'organizational_unit': ?organizationalUnit?.toTfJson(),
    'postal_code': ?postalCode?.toTfJson(),
    'province': ?province?.toTfJson(),
    'street_address': ?streetAddress?.toTfJson(),
  };
}

/// Typed helper for the `config.subject_config.subject_alt_name` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigSubjectConfigSubjectAltName {
  const PrivatecaCertificateAuthorityConfigSubjectConfigSubjectAltName({
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  final TfArg<List<String>>? dnsNames;

  final TfArg<List<String>>? emailAddresses;

  final TfArg<List<String>>? ipAddresses;

  final TfArg<List<String>>? uris;

  Map<String, Object?> encode() => {
    'dns_names': ?dnsNames?.toTfJson(),
    'email_addresses': ?emailAddresses?.toTfJson(),
    'ip_addresses': ?ipAddresses?.toTfJson(),
    'uris': ?uris?.toTfJson(),
  };
}

/// Typed helper for the `config.subject_key_id` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigSubjectKeyId {
  const PrivatecaCertificateAuthorityConfigSubjectKeyId({this.keyId});

  final TfArg<String>? keyId;

  Map<String, Object?> encode() => {'key_id': ?keyId?.toTfJson()};
}

/// Typed helper for the `config.x509_config` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509Config {
  const PrivatecaCertificateAuthorityConfigX509Config({
    this.aiaOcspServers,
    this.additionalExtensions,
    required this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  final TfArg<List<String>>? aiaOcspServers;

  final List<PrivatecaCertificateAuthorityConfigX509ConfigAdditionalExtensions>?
  additionalExtensions;

  final PrivatecaCertificateAuthorityConfigX509ConfigCaOptions caOptions;

  final PrivatecaCertificateAuthorityConfigX509ConfigKeyUsage keyUsage;

  final PrivatecaCertificateAuthorityConfigX509ConfigNameConstraints?
  nameConstraints;

  final List<PrivatecaCertificateAuthorityConfigX509ConfigPolicyIds>? policyIds;

  Map<String, Object?> encode() => {
    'aia_ocsp_servers': ?aiaOcspServers?.toTfJson(),
    if (additionalExtensions != null)
      'additional_extensions': [
        for (final e in additionalExtensions!) e.encode(),
      ],
    'ca_options': caOptions.encode(),
    'key_usage': keyUsage.encode(),
    'name_constraints': ?nameConstraints?.encode(),
    if (policyIds != null)
      'policy_ids': [for (final e in policyIds!) e.encode()],
  };
}

/// Typed helper for the `config.x509_config.additional_extensions` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigAdditionalExtensions {
  const PrivatecaCertificateAuthorityConfigX509ConfigAdditionalExtensions({
    required this.critical,
    required this.value,
    required this.objectId,
  });

  final TfArg<bool> critical;

  final TfArg<String> value;

  final PrivatecaCertificateAuthorityConfigX509ConfigAdditionalExtensionsObjectId
  objectId;

  Map<String, Object?> encode() => {
    'critical': critical.toTfJson(),
    'value': value.toTfJson(),
    'object_id': objectId.encode(),
  };
}

/// Typed helper for the `config.x509_config.additional_extensions.object_id` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigAdditionalExtensionsObjectId {
  const PrivatecaCertificateAuthorityConfigX509ConfigAdditionalExtensionsObjectId({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `config.x509_config.ca_options` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigCaOptions {
  const PrivatecaCertificateAuthorityConfigX509ConfigCaOptions({
    required this.isCa,
    this.maxIssuerPathLength,
    this.nonCa,
    this.zeroMaxIssuerPathLength,
  });

  final TfArg<bool> isCa;

  final TfArg<num>? maxIssuerPathLength;

  final TfArg<bool>? nonCa;

  final TfArg<bool>? zeroMaxIssuerPathLength;

  Map<String, Object?> encode() => {
    'is_ca': isCa.toTfJson(),
    'max_issuer_path_length': ?maxIssuerPathLength?.toTfJson(),
    'non_ca': ?nonCa?.toTfJson(),
    'zero_max_issuer_path_length': ?zeroMaxIssuerPathLength?.toTfJson(),
  };
}

/// Typed helper for the `config.x509_config.key_usage` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigKeyUsage {
  const PrivatecaCertificateAuthorityConfigX509ConfigKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  final PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageBaseKeyUsage
  baseKeyUsage;

  final PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage
  extendedKeyUsage;

  final List<
    PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsages
  >?
  unknownExtendedKeyUsages;

  Map<String, Object?> encode() => {
    'base_key_usage': baseKeyUsage.encode(),
    'extended_key_usage': extendedKeyUsage.encode(),
    if (unknownExtendedKeyUsages != null)
      'unknown_extended_key_usages': [
        for (final e in unknownExtendedKeyUsages!) e.encode(),
      ],
  };
}

/// Typed helper for the `config.x509_config.key_usage.base_key_usage` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageBaseKeyUsage {
  const PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageBaseKeyUsage({
    this.certSign,
    this.contentCommitment,
    this.crlSign,
    this.dataEncipherment,
    this.decipherOnly,
    this.digitalSignature,
    this.encipherOnly,
    this.keyAgreement,
    this.keyEncipherment,
  });

  final TfArg<bool>? certSign;

  final TfArg<bool>? contentCommitment;

  final TfArg<bool>? crlSign;

  final TfArg<bool>? dataEncipherment;

  final TfArg<bool>? decipherOnly;

  final TfArg<bool>? digitalSignature;

  final TfArg<bool>? encipherOnly;

  final TfArg<bool>? keyAgreement;

  final TfArg<bool>? keyEncipherment;

  Map<String, Object?> encode() => {
    'cert_sign': ?certSign?.toTfJson(),
    'content_commitment': ?contentCommitment?.toTfJson(),
    'crl_sign': ?crlSign?.toTfJson(),
    'data_encipherment': ?dataEncipherment?.toTfJson(),
    'decipher_only': ?decipherOnly?.toTfJson(),
    'digital_signature': ?digitalSignature?.toTfJson(),
    'encipher_only': ?encipherOnly?.toTfJson(),
    'key_agreement': ?keyAgreement?.toTfJson(),
    'key_encipherment': ?keyEncipherment?.toTfJson(),
  };
}

/// Typed helper for the `config.x509_config.key_usage.extended_key_usage` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage {
  const PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage({
    this.clientAuth,
    this.codeSigning,
    this.emailProtection,
    this.ocspSigning,
    this.serverAuth,
    this.timeStamping,
  });

  final TfArg<bool>? clientAuth;

  final TfArg<bool>? codeSigning;

  final TfArg<bool>? emailProtection;

  final TfArg<bool>? ocspSigning;

  final TfArg<bool>? serverAuth;

  final TfArg<bool>? timeStamping;

  Map<String, Object?> encode() => {
    'client_auth': ?clientAuth?.toTfJson(),
    'code_signing': ?codeSigning?.toTfJson(),
    'email_protection': ?emailProtection?.toTfJson(),
    'ocsp_signing': ?ocspSigning?.toTfJson(),
    'server_auth': ?serverAuth?.toTfJson(),
    'time_stamping': ?timeStamping?.toTfJson(),
  };
}

/// Typed helper for the `config.x509_config.key_usage.unknown_extended_key_usages` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsages {
  const PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsages({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `config.x509_config.name_constraints` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigNameConstraints {
  const PrivatecaCertificateAuthorityConfigX509ConfigNameConstraints({
    required this.critical,
    this.excludedDnsNames,
    this.excludedEmailAddresses,
    this.excludedIpRanges,
    this.excludedUris,
    this.permittedDnsNames,
    this.permittedEmailAddresses,
    this.permittedIpRanges,
    this.permittedUris,
  });

  final TfArg<bool> critical;

  final TfArg<List<String>>? excludedDnsNames;

  final TfArg<List<String>>? excludedEmailAddresses;

  final TfArg<List<String>>? excludedIpRanges;

  final TfArg<List<String>>? excludedUris;

  final TfArg<List<String>>? permittedDnsNames;

  final TfArg<List<String>>? permittedEmailAddresses;

  final TfArg<List<String>>? permittedIpRanges;

  final TfArg<List<String>>? permittedUris;

  Map<String, Object?> encode() => {
    'critical': critical.toTfJson(),
    'excluded_dns_names': ?excludedDnsNames?.toTfJson(),
    'excluded_email_addresses': ?excludedEmailAddresses?.toTfJson(),
    'excluded_ip_ranges': ?excludedIpRanges?.toTfJson(),
    'excluded_uris': ?excludedUris?.toTfJson(),
    'permitted_dns_names': ?permittedDnsNames?.toTfJson(),
    'permitted_email_addresses': ?permittedEmailAddresses?.toTfJson(),
    'permitted_ip_ranges': ?permittedIpRanges?.toTfJson(),
    'permitted_uris': ?permittedUris?.toTfJson(),
  };
}

/// Typed helper for the `config.x509_config.policy_ids` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityConfigX509ConfigPolicyIds {
  const PrivatecaCertificateAuthorityConfigX509ConfigPolicyIds({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Exactly one of `cloud_kms_key_version`, `algorithm` on the `key_spec` block of `google_privateca_certificate_authority`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudKmsKeyVersion(...)`.
sealed class PrivatecaCertificateAuthorityKeySpec {
  const PrivatecaCertificateAuthorityKeySpec();

  /// Sets `cloud_kms_key_version`.
  const factory PrivatecaCertificateAuthorityKeySpec.cloudKmsKeyVersion(
    TfArg<String> cloudKmsKeyVersion,
  ) = PrivatecaCertificateAuthorityKeySpecCloudKmsKeyVersion;

  /// Sets `algorithm`.
  const factory PrivatecaCertificateAuthorityKeySpec.algorithm(
    TfArg<PrivatecaCertificateAuthorityKeyAlgorithm> algorithm,
  ) = PrivatecaCertificateAuthorityKeySpecAlgorithm;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrivatecaCertificateAuthorityKeySpec.cloudKmsKeyVersion] choice: sets `cloud_kms_key_version`.
final class PrivatecaCertificateAuthorityKeySpecCloudKmsKeyVersion
    extends PrivatecaCertificateAuthorityKeySpec {
  const PrivatecaCertificateAuthorityKeySpecCloudKmsKeyVersion(
    this.cloudKmsKeyVersion,
  );

  final TfArg<String> cloudKmsKeyVersion;

  @override
  String get blockKey => 'cloud_kms_key_version';

  @override
  Map<String, Object?> encode() => {
    'cloud_kms_key_version': cloudKmsKeyVersion.toTfJson(),
  };
}

/// The [PrivatecaCertificateAuthorityKeySpec.algorithm] choice: sets `algorithm`.
final class PrivatecaCertificateAuthorityKeySpecAlgorithm
    extends PrivatecaCertificateAuthorityKeySpec {
  const PrivatecaCertificateAuthorityKeySpecAlgorithm(this.algorithm);

  final TfArg<PrivatecaCertificateAuthorityKeyAlgorithm> algorithm;

  @override
  String get blockKey => 'algorithm';

  @override
  Map<String, Object?> encode() => {'algorithm': algorithm.toTfJson()};
}

/// Exactly one of `certificate_authority`, `pem_issuer_chain` on the `subordinate_config` block of `google_privateca_certificate_authority`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.certificateAuthority(...)`.
sealed class PrivatecaCertificateAuthoritySubordinateConfig {
  const PrivatecaCertificateAuthoritySubordinateConfig();

  /// Sets `certificate_authority`.
  const factory PrivatecaCertificateAuthoritySubordinateConfig.certificateAuthority(
    TfArg<String> certificateAuthority,
  ) = PrivatecaCertificateAuthoritySubordinateConfigCertificateAuthority;

  /// Sets `pem_issuer_chain`.
  const factory PrivatecaCertificateAuthoritySubordinateConfig.pemIssuerChain(
    PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChain pemIssuerChain,
  ) = PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChainChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrivatecaCertificateAuthoritySubordinateConfig.certificateAuthority] choice: sets `certificate_authority`.
final class PrivatecaCertificateAuthoritySubordinateConfigCertificateAuthority
    extends PrivatecaCertificateAuthoritySubordinateConfig {
  const PrivatecaCertificateAuthoritySubordinateConfigCertificateAuthority(
    this.certificateAuthority,
  );

  final TfArg<String> certificateAuthority;

  @override
  String get blockKey => 'certificate_authority';

  @override
  Map<String, Object?> encode() => {
    'certificate_authority': certificateAuthority.toTfJson(),
  };
}

/// The [PrivatecaCertificateAuthoritySubordinateConfig.pemIssuerChain] choice: sets `pem_issuer_chain`.
final class PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChainChoice
    extends PrivatecaCertificateAuthoritySubordinateConfig {
  const PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChainChoice(
    this.pemIssuerChain,
  );

  final PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChain
  pemIssuerChain;

  @override
  String get blockKey => 'pem_issuer_chain';

  @override
  Map<String, Object?> encode() => {
    'pem_issuer_chain': pemIssuerChain.encode(),
  };
}

/// Typed helper for the `subordinate_config.pem_issuer_chain` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChain {
  const PrivatecaCertificateAuthoritySubordinateConfigPemIssuerChain({
    this.pemCertificates,
  });

  final TfArg<List<String>>? pemCertificates;

  Map<String, Object?> encode() => {
    'pem_certificates': ?pemCertificates?.toTfJson(),
  };
}

/// Typed helper for the `user_defined_access_urls` block of
/// `google_privateca_certificate_authority` (derived from provider schema).
@immutable
final class PrivatecaCertificateAuthorityUserDefinedAccessUrls {
  const PrivatecaCertificateAuthorityUserDefinedAccessUrls({
    this.aiaIssuingCertificateUrls,
    this.crlAccessUrls,
  });

  final TfArg<List<String>>? aiaIssuingCertificateUrls;

  final TfArg<List<String>>? crlAccessUrls;

  Map<String, Object?> encode() => {
    'aia_issuing_certificate_urls': ?aiaIssuingCertificateUrls?.toTfJson(),
    'crl_access_urls': ?crlAccessUrls?.toTfJson(),
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
///     subjectConfig: PrivatecaCertificateAuthorityConfigSubjectConfig(
///       subject: PrivatecaCertificateAuthorityConfigSubjectConfigSubject(
///         commonName: TfArg.literal('app.example.com'),
///       ),
///     ),
///     x509Config: PrivatecaCertificateAuthorityConfigX509Config(
///       caOptions: PrivatecaCertificateAuthorityConfigX509ConfigCaOptions(
///         isCa: .literal(true),
///       ),
///       keyUsage: PrivatecaCertificateAuthorityConfigX509ConfigKeyUsage(
///         baseKeyUsage:
///             PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageBaseKeyUsage(
///           certSign: .literal(true),
///           crlSign: .literal(true),
///         ),
///         extendedKeyUsage:
///             PrivatecaCertificateAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage(),
///       ),
///     ),
///   ),
///   keySpec: .algorithm(.literal(.rsaPkcs14096Sha256)),
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
    TfArg<String>? lifetime,
    RefTo<GoogleStorageBucket>? gcsBucket,
    PrivatecaCertificateAuthoritySubordinateConfig? subordinateConfig,
    TfArg<String>? pemCaCertificate,
    PrivatecaCertificateAuthorityUserDefinedAccessUrls? userDefinedAccessUrls,
    TfArg<bool>? skipGracePeriod,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority_id': certificateAuthorityId,
           'pool': pool,
           'location': location,
           'config': TfArg.literal(config.encode()),
           'key_spec': TfArg.literal(keySpec.encode()),
           'deletion_protection': ?deletionProtection,
           'ignore_active_certificates_on_deletion':
               ?ignoreActiveCertificatesOnDeletion,
           'labels': ?labels,
           'project': ?project,
           'type': ?type,
           'desired_state': ?desiredState,
           'lifetime': ?lifetime,
           'gcs_bucket': ?gcsBucket?.encodeAs('name'),
           if (subordinateConfig != null)
             'subordinate_config': TfArg.literal(subordinateConfig.encode()),
           'pem_ca_certificate': ?pemCaCertificate,
           if (userDefinedAccessUrls != null)
             'user_defined_access_urls': TfArg.literal(
               userDefinedAccessUrls.encode(),
             ),
           'skip_grace_period': ?skipGracePeriod,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateAuthoritySensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCertificateAuthority>`.
  RefTo<GooglePrivatecaCertificateAuthority> get ref => RefTo.of(this);

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

  /// Reference to `certificate_authority_id` attribute.
  TfRef<String> get certificateAuthorityIdRef =>
      TfRef.attribute<String>(this, 'certificate_authority_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredStateRef =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `gcs_bucket` attribute.
  TfRef<String> get gcsBucketRef => TfRef.attribute<String>(this, 'gcs_bucket');

  /// Reference to `ignore_active_certificates_on_deletion` attribute.
  TfRef<bool> get ignoreActiveCertificatesOnDeletionRef =>
      TfRef.attribute<bool>(this, 'ignore_active_certificates_on_deletion');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `lifetime` attribute.
  TfRef<String> get lifetimeRef => TfRef.attribute<String>(this, 'lifetime');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `pem_ca_certificate` attribute.
  TfRef<String> get pemCaCertificateRef =>
      TfRef.attribute<String>(this, 'pem_ca_certificate');

  /// Reference to `pool` attribute.
  TfRef<String> get poolRef => TfRef.attribute<String>(this, 'pool');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `skip_grace_period` attribute.
  TfRef<bool> get skipGracePeriodRef =>
      TfRef.attribute<bool>(this, 'skip_grace_period');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
