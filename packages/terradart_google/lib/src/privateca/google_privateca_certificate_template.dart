// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate_template`.
const Set<String> _googlePrivatecaCertificateTemplateSensitive = <String>{};

/// `identity_constraints.cel_expression` block.
final class PrivatecaCertificateTemplateCelExpression {
  const PrivatecaCertificateTemplateCelExpression({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;
  final TfArg<String>? expression;
  final TfArg<String>? location;
  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description,
    if (expression != null) 'expression': expression,
    if (location != null) 'location': location,
    if (title != null) 'title': title,
  };
}

/// `identity_constraints` block — subject / SAN passthrough policy.
final class PrivatecaCertificateTemplateIdentityConstraints {
  const PrivatecaCertificateTemplateIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  final TfArg<bool> allowSubjectAltNamesPassthrough;
  final TfArg<bool> allowSubjectPassthrough;
  final PrivatecaCertificateTemplateCelExpression? celExpression;

  Map<String, Object?> encode() => {
    'allow_subject_alt_names_passthrough': allowSubjectAltNamesPassthrough,
    'allow_subject_passthrough': allowSubjectPassthrough,
    if (celExpression != null) 'cel_expression': [celExpression!.encode()],
  };
}

/// Typed helper for the `passthrough_extensions` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePassthroughExtensions {
  const PrivatecaCertificateTemplatePassthroughExtensions({
    this.knownExtensions,
    this.additionalExtensions,
  });

  final TfArg<List<String>>? knownExtensions;

  final List<
    PrivatecaCertificateTemplatePassthroughExtensionsAdditionalExtensions
  >?
  additionalExtensions;

  Map<String, Object?> encode() => {
    'known_extensions': ?knownExtensions?.toTfJson(),
    if (additionalExtensions != null)
      'additional_extensions': [
        for (final e in additionalExtensions!) e.encode(),
      ],
  };
}

/// Typed helper for the `passthrough_extensions.additional_extensions` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePassthroughExtensionsAdditionalExtensions {
  const PrivatecaCertificateTemplatePassthroughExtensionsAdditionalExtensions({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `predefined_values` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValues {
  const PrivatecaCertificateTemplatePredefinedValues({
    this.aiaOcspServers,
    this.additionalExtensions,
    this.caOptions,
    this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  final TfArg<List<String>>? aiaOcspServers;

  final List<PrivatecaCertificateTemplatePredefinedValuesAdditionalExtensions>?
  additionalExtensions;

  final PrivatecaCertificateTemplatePredefinedValuesCaOptions? caOptions;

  final PrivatecaCertificateTemplatePredefinedValuesKeyUsage? keyUsage;

  final PrivatecaCertificateTemplatePredefinedValuesNameConstraints?
  nameConstraints;

  final List<PrivatecaCertificateTemplatePredefinedValuesPolicyIds>? policyIds;

  Map<String, Object?> encode() => {
    'aia_ocsp_servers': ?aiaOcspServers?.toTfJson(),
    if (additionalExtensions != null)
      'additional_extensions': [
        for (final e in additionalExtensions!) e.encode(),
      ],
    'ca_options': ?caOptions?.encode(),
    'key_usage': ?keyUsage?.encode(),
    'name_constraints': ?nameConstraints?.encode(),
    if (policyIds != null)
      'policy_ids': [for (final e in policyIds!) e.encode()],
  };
}

/// Typed helper for the `predefined_values.additional_extensions` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesAdditionalExtensions {
  const PrivatecaCertificateTemplatePredefinedValuesAdditionalExtensions({
    this.critical,
    required this.value,
    required this.objectId,
  });

  final TfArg<bool>? critical;

  final TfArg<String> value;

  final PrivatecaCertificateTemplatePredefinedValuesAdditionalExtensionsObjectId
  objectId;

  Map<String, Object?> encode() => {
    'critical': ?critical?.toTfJson(),
    'value': value.toTfJson(),
    'object_id': objectId.encode(),
  };
}

/// Typed helper for the `predefined_values.additional_extensions.object_id` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesAdditionalExtensionsObjectId {
  const PrivatecaCertificateTemplatePredefinedValuesAdditionalExtensionsObjectId({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `predefined_values.ca_options` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesCaOptions {
  const PrivatecaCertificateTemplatePredefinedValuesCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nullCa,
    this.zeroMaxIssuerPathLength,
  });

  final TfArg<bool>? isCa;

  final TfArg<num>? maxIssuerPathLength;

  final TfArg<bool>? nullCa;

  final TfArg<bool>? zeroMaxIssuerPathLength;

  Map<String, Object?> encode() => {
    'is_ca': ?isCa?.toTfJson(),
    'max_issuer_path_length': ?maxIssuerPathLength?.toTfJson(),
    'null_ca': ?nullCa?.toTfJson(),
    'zero_max_issuer_path_length': ?zeroMaxIssuerPathLength?.toTfJson(),
  };
}

/// Typed helper for the `predefined_values.key_usage` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesKeyUsage {
  const PrivatecaCertificateTemplatePredefinedValuesKeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  final PrivatecaCertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage?
  baseKeyUsage;

  final PrivatecaCertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage?
  extendedKeyUsage;

  final List<
    PrivatecaCertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsages
  >?
  unknownExtendedKeyUsages;

  Map<String, Object?> encode() => {
    'base_key_usage': ?baseKeyUsage?.encode(),
    'extended_key_usage': ?extendedKeyUsage?.encode(),
    if (unknownExtendedKeyUsages != null)
      'unknown_extended_key_usages': [
        for (final e in unknownExtendedKeyUsages!) e.encode(),
      ],
  };
}

/// Typed helper for the `predefined_values.key_usage.base_key_usage` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage {
  const PrivatecaCertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage({
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

/// Typed helper for the `predefined_values.key_usage.extended_key_usage` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage {
  const PrivatecaCertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage({
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

/// Typed helper for the `predefined_values.key_usage.unknown_extended_key_usages` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsages {
  const PrivatecaCertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsages({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Typed helper for the `predefined_values.name_constraints` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesNameConstraints {
  const PrivatecaCertificateTemplatePredefinedValuesNameConstraints({
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

/// Typed helper for the `predefined_values.policy_ids` block of
/// `google_privateca_certificate_template` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplatePredefinedValuesPolicyIds {
  const PrivatecaCertificateTemplatePredefinedValuesPolicyIds({
    required this.objectIdPath,
  });

  final TfArg<List<num>> objectIdPath;

  Map<String, Object?> encode() => {'object_id_path': objectIdPath.toTfJson()};
}

/// Factory wrapper for `google_privateca_certificate_template`.
///
/// Certificate Authority Service provides reusable and parameterized templates
/// that you can use for common certificate issuance scenarios. A certificate
/// template represents a relatively static and well-defined certificate
/// issuance schema within an organization. A certificate template can
/// essentially become a full-fledged vertical certificate issuance framework.
///
/// Certificate Authority Service (CAS) certificate template — reusable X.509
/// profile constraints for [GooglePrivatecaCertificate] issuance.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: template ID.
/// - [location]: regional location (match the target CA pool).
/// - [identityConstraints]: subject / SAN passthrough policy + CEL guard.
///
/// Example (permissive template for a DEVOPS/ENTERPRISE pool):
/// ```dart
/// GooglePrivatecaCertificateTemplate(
///   localName: 'leaf_template',
///   name: TfArg.literal('app-leaf-template'),
///   location: TfArg.literal('us-central1'),
///   identityConstraints: PrivatecaCertificateTemplateIdentityConstraints(
///     allowSubjectAltNamesPassthrough: TfArg.literal(true),
///     allowSubjectPassthrough: TfArg.literal(true),
///     celExpression: PrivatecaCertificateTemplateCelExpression(
///       expression: TfArg.literal('true'),
///       title: TfArg.literal('allow-all'),
///       location: TfArg.literal('any.file.anywhere'),
///       description: TfArg.literal('Always true'),
///     ),
///   ),
/// );
/// ```
final class GooglePrivatecaCertificateTemplate extends Resource {
  static const String tfType = 'google_privateca_certificate_template';

  GooglePrivatecaCertificateTemplate({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required PrivatecaCertificateTemplateIdentityConstraints
    identityConstraints,
    TfArg<String>? description,
    TfArg<String>? maximumLifetime,
    TfArg<Map<String, String>>? labels,
    PrivatecaCertificateTemplatePassthroughExtensions? passthroughExtensions,
    PrivatecaCertificateTemplatePredefinedValues? predefinedValues,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'identity_constraints': TfArg.literal([
             identityConstraints.encode(),
           ]),
           'description': ?description,
           'maximum_lifetime': ?maximumLifetime,
           'labels': ?labels,
           if (passthroughExtensions != null)
             'passthrough_extensions': TfArg.literal(
               passthroughExtensions.encode(),
             ),
           if (predefinedValues != null)
             'predefined_values': TfArg.literal(predefinedValues.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCertificateTemplate>`.
  RefTo<GooglePrivatecaCertificateTemplate> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_lifetime` attribute.
  TfRef<String> get maximumLifetimeRef =>
      TfRef.attribute<String>(this, 'maximum_lifetime');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
