// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate`.
const Set<String> _googlePrivatecaCertificateSensitive = <String>{};

/// `public_key.format` — only PEM is supported today.
enum PrivatecaCertificatePublicKeyFormat implements TerraformEnum {
  keyTypeUnspecified('KEY_TYPE_UNSPECIFIED'),
  pem('PEM');

  const PrivatecaCertificatePublicKeyFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `config.public_key` block.
final class PrivatecaCertificatePublicKey {
  const PrivatecaCertificatePublicKey({required this.format, this.key});

  final TfArg<PrivatecaCertificatePublicKeyFormat> format;
  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    'format': format,
    if (key != null) 'key': key,
  };
}

/// `config.subject_config.subject` — distinguished name fields.
final class PrivatecaCertificateSubject {
  const PrivatecaCertificateSubject({
    required this.commonName,
    required this.organization,
    this.organizationalUnit,
    this.countryCode,
    this.locality,
    this.province,
    this.streetAddress,
    this.postalCode,
  });

  final TfArg<String> commonName;
  final TfArg<String> organization;
  final TfArg<String>? organizationalUnit;
  final TfArg<String>? countryCode;
  final TfArg<String>? locality;
  final TfArg<String>? province;
  final TfArg<String>? streetAddress;
  final TfArg<String>? postalCode;

  Map<String, Object?> encode() => {
    'common_name': commonName,
    'organization': organization,
    if (organizationalUnit != null) 'organizational_unit': organizationalUnit,
    if (countryCode != null) 'country_code': countryCode,
    if (locality != null) 'locality': locality,
    if (province != null) 'province': province,
    if (streetAddress != null) 'street_address': streetAddress,
    if (postalCode != null) 'postal_code': postalCode,
  };
}

/// `config.subject_config.subject_alt_name` block.
final class PrivatecaCertificateSubjectAltName {
  const PrivatecaCertificateSubjectAltName({
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  final List<TfArg<String>>? dnsNames;
  final List<TfArg<String>>? emailAddresses;
  final List<TfArg<String>>? ipAddresses;
  final List<TfArg<String>>? uris;

  Map<String, Object?> encode() => {
    if (dnsNames != null) 'dns_names': dnsNames,
    if (emailAddresses != null) 'email_addresses': emailAddresses,
    if (ipAddresses != null) 'ip_addresses': ipAddresses,
    if (uris != null) 'uris': uris,
  };
}

/// `config.subject_config` block.
final class PrivatecaCertificateSubjectConfig {
  const PrivatecaCertificateSubjectConfig({
    required this.subject,
    this.subjectAltName,
  });

  final PrivatecaCertificateSubject subject;
  final PrivatecaCertificateSubjectAltName? subjectAltName;

  Map<String, Object?> encode() => {
    'subject': [subject.encode()],
    if (subjectAltName != null) 'subject_alt_name': [subjectAltName!.encode()],
  };
}

/// `config.x509_config.ca_options`.
final class PrivatecaCertificateCaOptions {
  const PrivatecaCertificateCaOptions({this.isCa});

  final TfArg<bool>? isCa;

  Map<String, Object?> encode() => {if (isCa != null) 'is_ca': isCa};
}

/// `config.x509_config.key_usage.base_key_usage`.
final class PrivatecaCertificateBaseKeyUsage {
  const PrivatecaCertificateBaseKeyUsage({
    this.digitalSignature,
    this.keyEncipherment,
  });

  final TfArg<bool>? digitalSignature;
  final TfArg<bool>? keyEncipherment;

  Map<String, Object?> encode() => {
    if (digitalSignature != null) 'digital_signature': digitalSignature,
    if (keyEncipherment != null) 'key_encipherment': keyEncipherment,
  };
}

/// `config.x509_config.key_usage.extended_key_usage`.
final class PrivatecaCertificateExtendedKeyUsage {
  const PrivatecaCertificateExtendedKeyUsage({
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
final class PrivatecaCertificateKeyUsage {
  const PrivatecaCertificateKeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
  });

  final PrivatecaCertificateBaseKeyUsage? baseKeyUsage;
  final PrivatecaCertificateExtendedKeyUsage? extendedKeyUsage;

  Map<String, Object?> encode() => {
    if (baseKeyUsage != null) 'base_key_usage': [baseKeyUsage!.encode()],
    if (extendedKeyUsage != null)
      'extended_key_usage': [extendedKeyUsage!.encode()],
  };
}

/// `config.x509_config` — X.509 profile for the leaf certificate.
final class PrivatecaCertificateX509Config {
  const PrivatecaCertificateX509Config({this.caOptions, this.keyUsage});

  final PrivatecaCertificateCaOptions? caOptions;
  final PrivatecaCertificateKeyUsage? keyUsage;

  /// TLS server certificate defaults (`is_ca: false`, server-auth EKU).
  factory PrivatecaCertificateX509Config.serverTls() =>
      PrivatecaCertificateX509Config(
        caOptions: PrivatecaCertificateCaOptions(isCa: TfArg.literal(false)),
        keyUsage: PrivatecaCertificateKeyUsage(
          baseKeyUsage: PrivatecaCertificateBaseKeyUsage(
            digitalSignature: TfArg.literal(true),
            keyEncipherment: TfArg.literal(true),
          ),
          extendedKeyUsage: PrivatecaCertificateExtendedKeyUsage(
            serverAuth: TfArg.literal(true),
          ),
        ),
      );

  Map<String, Object?> encode() => {
    if (caOptions != null) 'ca_options': [caOptions!.encode()],
    if (keyUsage != null) 'key_usage': [keyUsage!.encode()],
  };
}

/// `config` block — subject, X.509 profile, and optional public key.
final class PrivatecaCertificateConfig {
  const PrivatecaCertificateConfig({
    required this.subjectConfig,
    this.x509Config,
    this.publicKey,
  });

  final PrivatecaCertificateSubjectConfig subjectConfig;
  final PrivatecaCertificateX509Config? x509Config;
  final PrivatecaCertificatePublicKey? publicKey;

  Map<String, Object?> encode() => {
    'subject_config': [subjectConfig.encode()],
    if (x509Config != null) 'x509_config': [x509Config!.encode()],
    if (publicKey != null) 'public_key': [publicKey!.encode()],
  };
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
/// - [pool]: CAS pool — `TfArg.ref(pool.id)` from [GooglePrivatecaCaPool].
/// - [location]: regional location (match the pool).
///
/// Issue via CSR (`pem_csr`) or inline `config` (subject + public key).
///
/// Example (CSR-based issuance from a root CA):
/// ```dart
/// GooglePrivatecaCertificate(
///   localName: 'leaf_cert',
///   name: TfArg.literal('app-leaf-cert'),
///   pool: TfArg.ref(caPool.id),
///   location: TfArg.literal('us-central1'),
///   certificateAuthority: TfArg.literal('app-root-ca'),
///   lifetime: TfArg.literal('86400s'),
///   pemCsr: TfArg.variable('leaf_cert_csr_pem'),
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
    PrivatecaCertificateConfig? config,
    TfArg<String>? pemCsr,
    TfArg<String>? certificateTemplate,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'pool': pool,
           'location': location,
           if (certificateAuthority != null)
             'certificate_authority': certificateAuthority,
           if (lifetime != null) 'lifetime': lifetime,
           if (config != null) 'config': TfArg.literal([config.encode()]),
           if (pemCsr != null) 'pem_csr': pemCsr,
           if (certificateTemplate != null)
             'certificate_template': certificateTemplate,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCertificateSensitive;

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
}
