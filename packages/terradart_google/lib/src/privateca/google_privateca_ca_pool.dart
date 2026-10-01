// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_ca_pool`.
const Set<String> _googlePrivatecaCaPoolSensitive = <String>{};

/// `tier` — CAS pool service tier.
enum PrivatecaCaPoolTier implements TerraformEnum {
  enterprise('ENTERPRISE'),
  devops('DEVOPS');

  const PrivatecaCaPoolTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_spec` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolEncryptionSpec {
  const PrivatecaCaPoolEncryptionSpec({this.cloudKmsKey});

  final TfArg<String>? cloudKmsKey;

  Map<String, Object?> encode() => {'cloud_kms_key': ?cloudKmsKey?.toTfJson()};
}

/// Typed helper for the `issuance_policy` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolIssuancePolicy {
  const PrivatecaCaPoolIssuancePolicy({
    this.backdateDuration,
    this.maximumLifetime,
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.baselineValues,
    this.identityConstraints,
  });

  final TfArg<String>? backdateDuration;

  final TfArg<String>? maximumLifetime;

  final PrivatecaCaPoolAllowedIssuanceModes? allowedIssuanceModes;

  final List<PrivatecaCaPoolAllowedKeyTypes>? allowedKeyTypes;

  final PrivatecaCaPoolBaselineValues? baselineValues;

  final PrivatecaCaPoolIdentityConstraints? identityConstraints;

  Map<String, Object?> encode() => {
    'backdate_duration': ?backdateDuration?.toTfJson(),
    'maximum_lifetime': ?maximumLifetime?.toTfJson(),
    'allowed_issuance_modes': ?allowedIssuanceModes?.encode(),
    if (allowedKeyTypes != null)
      'allowed_key_types': [for (final e in allowedKeyTypes!) e.encode()],
    'baseline_values': ?baselineValues?.encode(),
    'identity_constraints': ?identityConstraints?.encode(),
  };
}

/// Typed helper for the `issuance_policy.allowed_issuance_modes` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolAllowedIssuanceModes {
  const PrivatecaCaPoolAllowedIssuanceModes({
    required this.allowConfigBasedIssuance,
    required this.allowCsrBasedIssuance,
  });

  final TfArg<bool> allowConfigBasedIssuance;

  final TfArg<bool> allowCsrBasedIssuance;

  Map<String, Object?> encode() => {
    'allow_config_based_issuance': allowConfigBasedIssuance.toTfJson(),
    'allow_csr_based_issuance': allowCsrBasedIssuance.toTfJson(),
  };
}

/// Typed helper for the `issuance_policy.allowed_key_types` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolAllowedKeyTypes {
  const PrivatecaCaPoolAllowedKeyTypes({this.ellipticCurve, this.rsa});

  final PrivatecaCaPoolEllipticCurve? ellipticCurve;

  final PrivatecaCaPoolRsa? rsa;

  Map<String, Object?> encode() => {
    'elliptic_curve': ?ellipticCurve?.encode(),
    'rsa': ?rsa?.encode(),
  };
}

/// Typed helper for the `issuance_policy.allowed_key_types.elliptic_curve` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolEllipticCurve {
  const PrivatecaCaPoolEllipticCurve({required this.signatureAlgorithm});

  final TfArg<PrivatecaCaPoolSignatureAlgorithm> signatureAlgorithm;

  Map<String, Object?> encode() => {
    'signature_algorithm': signatureAlgorithm.toTfJson(),
  };
}

/// `signature_algorithm` — derived from the provider schema description.
enum PrivatecaCaPoolSignatureAlgorithm implements TerraformEnum {
  ecdsaP256('ECDSA_P256'),
  ecdsaP384('ECDSA_P384'),
  eddsa25519('EDDSA_25519');

  const PrivatecaCaPoolSignatureAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `issuance_policy.allowed_key_types.rsa` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolRsa {
  const PrivatecaCaPoolRsa({this.maxModulusSize, this.minModulusSize});

  final TfArg<String>? maxModulusSize;

  final TfArg<String>? minModulusSize;

  Map<String, Object?> encode() => {
    'max_modulus_size': ?maxModulusSize?.toTfJson(),
    'min_modulus_size': ?minModulusSize?.toTfJson(),
  };
}

/// Typed helper for the `issuance_policy.baseline_values` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolBaselineValues {
  const PrivatecaCaPoolBaselineValues({
    this.aiaOcspServers,
    this.additionalExtensions,
    required this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  final TfArg<List<String>>? aiaOcspServers;

  final List<PrivatecaCaPoolAdditionalExtensions>? additionalExtensions;

  final PrivatecaCaPoolCaOptions caOptions;

  final PrivatecaCaPoolKeyUsage keyUsage;

  final PrivatecaCaPoolNameConstraints? nameConstraints;

  final List<PrivatecaCaPoolPolicyIds>? policyIds;

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

/// Typed helper for the `issuance_policy.baseline_values.additional_extensions` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolAdditionalExtensions {
  const PrivatecaCaPoolAdditionalExtensions({
    required this.critical,
    required this.value,
    required this.objectId,
  });

  final TfArg<bool> critical;

  final TfArg<String> value;

  final PrivatecaCaPoolObjectId objectId;

  Map<String, Object?> encode() => {
    'critical': critical.toTfJson(),
    'value': value.toTfJson(),
    'object_id': objectId.encode(),
  };
}

/// Typed helper for the `issuance_policy.baseline_values.additional_extensions.object_id` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolObjectId {
  const PrivatecaCaPoolObjectId({required this.objectIdPath});

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `issuance_policy.baseline_values.ca_options` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolCaOptions {
  const PrivatecaCaPoolCaOptions({
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

/// Typed helper for the `issuance_policy.baseline_values.key_usage` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolKeyUsage {
  const PrivatecaCaPoolKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  final PrivatecaCaPoolBaseKeyUsage baseKeyUsage;

  final PrivatecaCaPoolExtendedKeyUsage extendedKeyUsage;

  final List<PrivatecaCaPoolUnknownExtendedKeyUsages>? unknownExtendedKeyUsages;

  Map<String, Object?> encode() => {
    'base_key_usage': baseKeyUsage.encode(),
    'extended_key_usage': extendedKeyUsage.encode(),
    if (unknownExtendedKeyUsages != null)
      'unknown_extended_key_usages': [
        for (final e in unknownExtendedKeyUsages!) e.encode(),
      ],
  };
}

/// Typed helper for the `issuance_policy.baseline_values.key_usage.base_key_usage` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolBaseKeyUsage {
  const PrivatecaCaPoolBaseKeyUsage({
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

/// Typed helper for the `issuance_policy.baseline_values.key_usage.extended_key_usage` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolExtendedKeyUsage {
  const PrivatecaCaPoolExtendedKeyUsage({
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

/// Typed helper for the `issuance_policy.baseline_values.key_usage.unknown_extended_key_usages` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolUnknownExtendedKeyUsages {
  const PrivatecaCaPoolUnknownExtendedKeyUsages({required this.objectIdPath});

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `issuance_policy.baseline_values.name_constraints` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolNameConstraints {
  const PrivatecaCaPoolNameConstraints({
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

/// Typed helper for the `issuance_policy.baseline_values.policy_ids` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolPolicyIds {
  const PrivatecaCaPoolPolicyIds({required this.objectIdPath});

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `issuance_policy.identity_constraints` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolIdentityConstraints {
  const PrivatecaCaPoolIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  final TfArg<bool> allowSubjectAltNamesPassthrough;

  final TfArg<bool> allowSubjectPassthrough;

  final PrivatecaCaPoolCelExpression? celExpression;

  Map<String, Object?> encode() => {
    'allow_subject_alt_names_passthrough': allowSubjectAltNamesPassthrough
        .toTfJson(),
    'allow_subject_passthrough': allowSubjectPassthrough.toTfJson(),
    'cel_expression': ?celExpression?.encode(),
  };
}

/// Typed helper for the `issuance_policy.identity_constraints.cel_expression` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolCelExpression {
  const PrivatecaCaPoolCelExpression({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `publishing_options` block of
/// `google_privateca_ca_pool` (derived from provider schema).
@immutable
final class PrivatecaCaPoolPublishingOptions {
  const PrivatecaCaPoolPublishingOptions({
    this.encodingFormat,
    required this.publishCaCert,
    required this.publishCrl,
  });

  final TfArg<PrivatecaCaPoolEncodingFormat>? encodingFormat;

  final TfArg<bool> publishCaCert;

  final TfArg<bool> publishCrl;

  Map<String, Object?> encode() => {
    'encoding_format': ?encodingFormat?.toTfJson(),
    'publish_ca_cert': publishCaCert.toTfJson(),
    'publish_crl': publishCrl.toTfJson(),
  };
}

/// `encoding_format` — derived from the provider schema description.
enum PrivatecaCaPoolEncodingFormat implements TerraformEnum {
  pem('PEM'),
  der('DER');

  const PrivatecaCaPoolEncodingFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_privateca_ca_pool`.
///
/// A CaPool represents a group of CertificateAuthorities that form a trust
/// anchor. A CaPool can be used to manage issuance policies for one or more
/// CertificateAuthority resources and to rotate CA certificates in and out of
/// the trust anchor.
///
/// Certificate Authority Service (CAS) CA pool — container for one or more
/// certificate authorities used by [GoogleCertificateManagerCertificateIssuanceConfig].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: pool ID.
/// - [location]: regional location (e.g. `us-central1`).
/// - [tier]: `ENTERPRISE` or `DEVOPS`.
///
/// Enable `privateca.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// final pool = GooglePrivatecaCaPool(
///   localName: 'app_pool',
///   name: TfArg.literal('app-pool'),
///   location: TfArg.literal('us-central1'),
///   tier: TfArg.literal(PrivatecaCaPoolTier.devops),
/// );
///
/// GoogleCertificateManagerCertificateIssuanceConfig(
///   localName: 'issuance',
///   name: TfArg.literal('app-issuance'),
///   certificateAuthorityConfig:
///       CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig(
///     certificateAuthorityServiceConfig: .new(
///       caPool: pool.ref,
///     ),
///   ),
///   keyAlgorithm: TfArg.literal(
///     CertificateManagerCertificateIssuanceConfigKeyAlgorithm.rsa2048,
///   ),
///   lifetime: TfArg.literal('2592000s'),
///   rotationWindowPercentage: TfArg.literal(50),
/// );
/// ```
final class GooglePrivatecaCaPool extends Resource {
  static const String tfType = 'google_privateca_ca_pool';

  GooglePrivatecaCaPool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<PrivatecaCaPoolTier> tier,
    PrivatecaCaPoolIssuancePolicy? issuancePolicy,
    PrivatecaCaPoolPublishingOptions? publishingOptions,
    PrivatecaCaPoolEncryptionSpec? encryptionSpec,
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
           'location': location,
           'tier': tier,
           if (issuancePolicy != null)
             'issuance_policy': TfArg.literal(issuancePolicy.encode()),
           if (publishingOptions != null)
             'publishing_options': TfArg.literal(publishingOptions.encode()),
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCaPool>`.
  RefTo<GooglePrivatecaCaPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `tier` attribute.
  TfRef<String> get tierRef => TfRef.attribute<String>(this, 'tier');
}
