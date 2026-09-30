// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate`.
const Set<String> _googlePrivatecaCertificateSensitive = <String>{};

/// Exactly one of `pem_csr`, `config` on `google_privateca_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pemCsr(...)`.
sealed class PrivatecaCertificateRequest {
  const PrivatecaCertificateRequest();

  /// Sets `pem_csr`.
  const factory PrivatecaCertificateRequest.pemCsr(TfArg<String> pemCsr) =
      PrivatecaCertificateRequestPemCsr;

  /// Sets `config`.
  const factory PrivatecaCertificateRequest.config(
    PrivatecaCertificateConfig config,
  ) = PrivatecaCertificateRequestConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PrivatecaCertificateRequest.pemCsr] choice: sets `pem_csr`.
final class PrivatecaCertificateRequestPemCsr
    extends PrivatecaCertificateRequest {
  const PrivatecaCertificateRequestPemCsr(this.pemCsr);

  final TfArg<String> pemCsr;

  @override
  String get blockKey => 'pem_csr';

  @override
  Map<String, Object?> encode() => {'pem_csr': pemCsr.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'pem_csr': pemCsr};
}

/// The [PrivatecaCertificateRequest.config] choice: sets `config`.
final class PrivatecaCertificateRequestConfig
    extends PrivatecaCertificateRequest {
  const PrivatecaCertificateRequestConfig(this.config);

  final PrivatecaCertificateConfig config;

  @override
  String get blockKey => 'config';

  @override
  Map<String, Object?> encode() => {'config': config.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'config': TfArg.literal(config.encode()),
  };
}

/// Typed helper for the `config` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfig {
  const PrivatecaCertificateConfig({
    required this.publicKey,
    required this.subjectConfig,
    this.subjectKeyId,
    required this.x509Config,
  });

  final PrivatecaCertificateConfigPublicKey publicKey;

  final PrivatecaCertificateConfigSubjectConfig subjectConfig;

  final PrivatecaCertificateConfigSubjectKeyId? subjectKeyId;

  final PrivatecaCertificateConfigX509Config x509Config;

  Map<String, Object?> encode() => {
    'public_key': publicKey.encode(),
    'subject_config': subjectConfig.encode(),
    'subject_key_id': ?subjectKeyId?.encode(),
    'x509_config': x509Config.encode(),
  };
}

/// Typed helper for the `config.public_key` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigPublicKey {
  const PrivatecaCertificateConfigPublicKey({required this.format, this.key});

  final TfArg<PrivatecaCertificateConfigPublicKeyFormat> format;

  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'key': ?key?.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
enum PrivatecaCertificateConfigPublicKeyFormat implements TerraformEnum {
  keyTypeUnspecified('KEY_TYPE_UNSPECIFIED'),
  pem('PEM');

  const PrivatecaCertificateConfigPublicKeyFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.subject_config` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigSubjectConfig {
  const PrivatecaCertificateConfigSubjectConfig({
    required this.subject,
    this.subjectAltName,
  });

  final PrivatecaCertificateConfigSubjectConfigSubject subject;

  final PrivatecaCertificateConfigSubjectConfigSubjectAltName? subjectAltName;

  Map<String, Object?> encode() => {
    'subject': subject.encode(),
    'subject_alt_name': ?subjectAltName?.encode(),
  };
}

/// Typed helper for the `config.subject_config.subject` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigSubjectConfigSubject {
  const PrivatecaCertificateConfigSubjectConfigSubject({
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
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigSubjectConfigSubjectAltName {
  const PrivatecaCertificateConfigSubjectConfigSubjectAltName({
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
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigSubjectKeyId {
  const PrivatecaCertificateConfigSubjectKeyId({this.keyId});

  final TfArg<String>? keyId;

  Map<String, Object?> encode() => {'key_id': ?keyId?.toTfJson()};
}

/// Typed helper for the `config.x509_config` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509Config {
  const PrivatecaCertificateConfigX509Config({
    this.aiaOcspServers,
    this.additionalExtensions,
    this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  final TfArg<List<String>>? aiaOcspServers;

  final List<PrivatecaCertificateConfigX509ConfigAdditionalExtensions>?
  additionalExtensions;

  final PrivatecaCertificateConfigX509ConfigCaOptions? caOptions;

  final PrivatecaCertificateConfigX509ConfigKeyUsage keyUsage;

  final PrivatecaCertificateConfigX509ConfigNameConstraints? nameConstraints;

  final List<PrivatecaCertificateConfigX509ConfigPolicyIds>? policyIds;

  Map<String, Object?> encode() => {
    'aia_ocsp_servers': ?aiaOcspServers?.toTfJson(),
    if (additionalExtensions != null)
      'additional_extensions': [
        for (final e in additionalExtensions!) e.encode(),
      ],
    'ca_options': ?caOptions?.encode(),
    'key_usage': keyUsage.encode(),
    'name_constraints': ?nameConstraints?.encode(),
    if (policyIds != null)
      'policy_ids': [for (final e in policyIds!) e.encode()],
  };
}

/// Typed helper for the `config.x509_config.additional_extensions` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigAdditionalExtensions {
  const PrivatecaCertificateConfigX509ConfigAdditionalExtensions({
    required this.critical,
    required this.value,
    required this.objectId,
  });

  final TfArg<bool> critical;

  final TfArg<String> value;

  final PrivatecaCertificateConfigX509ConfigAdditionalExtensionsObjectId
  objectId;

  Map<String, Object?> encode() => {
    'critical': critical.toTfJson(),
    'value': value.toTfJson(),
    'object_id': objectId.encode(),
  };
}

/// Typed helper for the `config.x509_config.additional_extensions.object_id` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigAdditionalExtensionsObjectId {
  const PrivatecaCertificateConfigX509ConfigAdditionalExtensionsObjectId({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `config.x509_config.ca_options` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigCaOptions {
  const PrivatecaCertificateConfigX509ConfigCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nonCa,
    this.zeroMaxIssuerPathLength,
  });

  final TfArg<bool>? isCa;

  final TfArg<num>? maxIssuerPathLength;

  final TfArg<bool>? nonCa;

  final TfArg<bool>? zeroMaxIssuerPathLength;

  Map<String, Object?> encode() => {
    'is_ca': ?isCa?.toTfJson(),
    'max_issuer_path_length': ?maxIssuerPathLength?.toTfJson(),
    'non_ca': ?nonCa?.toTfJson(),
    'zero_max_issuer_path_length': ?zeroMaxIssuerPathLength?.toTfJson(),
  };
}

/// Typed helper for the `config.x509_config.key_usage` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigKeyUsage {
  const PrivatecaCertificateConfigX509ConfigKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  final PrivatecaCertificateConfigX509ConfigKeyUsageBaseKeyUsage baseKeyUsage;

  final PrivatecaCertificateConfigX509ConfigKeyUsageExtendedKeyUsage
  extendedKeyUsage;

  final List<
    PrivatecaCertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsages
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
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigKeyUsageBaseKeyUsage {
  const PrivatecaCertificateConfigX509ConfigKeyUsageBaseKeyUsage({
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
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigKeyUsageExtendedKeyUsage {
  const PrivatecaCertificateConfigX509ConfigKeyUsageExtendedKeyUsage({
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
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsages {
  const PrivatecaCertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsages({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `config.x509_config.name_constraints` block of
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigNameConstraints {
  const PrivatecaCertificateConfigX509ConfigNameConstraints({
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
/// `google_privateca_certificate` (derived from provider schema).
@immutable
final class PrivatecaCertificateConfigX509ConfigPolicyIds {
  const PrivatecaCertificateConfigX509ConfigPolicyIds({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Factory wrapper for `google_privateca_certificate`.
///
/// A Certificate corresponds to a signed X.509 certificate issued by a
/// Certificate.
///
/// ~> **Note:** The Certificate Authority that is referenced by this resource
/// **must** be `tier = "ENTERPRISE"`
///
/// Certificate Authority Service (CAS) issued X.509 certificate.
///
/// Issues a cert from a [GooglePrivatecaCertificateAuthority] inside a
/// [GooglePrivatecaCaPool]. The parent CA pool must be **ENTERPRISE** tier
/// at apply time (see provider docs).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: certificate ID within the pool.
/// - [pool]: CAS pool — `.ref(pool.id)` from [GooglePrivatecaCaPool].
/// - [location]: regional location (match the pool).
///
/// Issue via CSR (`request: .pemCsr(...)`) or an inline config
/// (`request: .config(...)`: subject + public key).
///
/// Example (CSR-based issuance from a root CA):
/// ```dart
/// GooglePrivatecaCertificate(
///   localName: 'leaf_cert',
///   name: TfArg.literal('app-leaf-cert'),
///   pool: .ref(caPool.id),
///   location: TfArg.literal('us-central1'),
///   certificateAuthority: TfArg.literal('app-root-ca'),
///   lifetime: TfArg.literal('86400s'),
///   request: .pemCsr(TfArg.variable('leaf_cert_csr_pem')),
/// );
/// ```
final class GooglePrivatecaCertificate extends Resource {
  static const String tfType = 'google_privateca_certificate';

  GooglePrivatecaCertificate({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> pool,
    required TfArg<String> location,
    TfArg<String>? certificateAuthority,
    TfArg<String>? lifetime,
    required PrivatecaCertificateRequest request,
    TfArg<String>? certificateTemplate,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'pool': pool,
           'location': location,
           'certificate_authority': ?certificateAuthority,
           'lifetime': ?lifetime,
           ...request.argMap,
           'certificate_template': ?certificateTemplate,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCertificate>`.
  RefTo<GooglePrivatecaCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_description` attribute.
  TfRef<List<Map<String, Object?>>> get certificateDescription =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_description',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `issuer_certificate_authority` attribute.
  TfRef<String> get issuerCertificateAuthority =>
      TfRef.attribute<String>(this, 'issuer_certificate_authority');

  /// Reference to `pem_certificate` attribute.
  TfRef<String> get pemCertificate =>
      TfRef.attribute<String>(this, 'pem_certificate');

  /// Reference to `pem_certificate_chain` attribute.
  TfRef<List<String>> get pemCertificateChain =>
      TfRef.attribute<List<String>>(this, 'pem_certificate_chain');

  /// Reference to `revocation_details` attribute.
  TfRef<List<Map<String, Object?>>> get revocationDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revocation_details');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthorityRef =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `certificate_template` attribute.
  TfRef<String> get certificateTemplateRef =>
      TfRef.attribute<String>(this, 'certificate_template');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `lifetime` attribute.
  TfRef<String> get lifetimeRef => TfRef.attribute<String>(this, 'lifetime');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `pem_csr` attribute.
  TfRef<String> get pemCsrRef => TfRef.attribute<String>(this, 'pem_csr');

  /// Reference to `pool` attribute.
  TfRef<String> get poolRef => TfRef.attribute<String>(this, 'pool');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
