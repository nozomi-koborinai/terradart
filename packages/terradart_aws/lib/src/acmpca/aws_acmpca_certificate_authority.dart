// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_certificate_authority`.
const Set<String> _awsAcmpcaCertificateAuthoritySensitive = <String>{};

/// Acmpca Certificate Authority Key Storage Security enum for `key_storage_security_standard`.
enum AcmpcaCertificateAuthorityKeyStorageSecurityStandard
    implements TerraformEnum {
  fips1402Level2OrHigher('FIPS_140_2_LEVEL_2_OR_HIGHER'),
  fips1402Level3OrHigher('FIPS_140_2_LEVEL_3_OR_HIGHER'),
  ccpcLevel1OrHigher('CCPC_LEVEL_1_OR_HIGHER');

  const AcmpcaCertificateAuthorityKeyStorageSecurityStandard(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Acmpca Certificate Authority enum for `type`.
enum AcmpcaCertificateAuthorityType implements TerraformEnum {
  root('ROOT'),
  subordinate('SUBORDINATE');

  const AcmpcaCertificateAuthorityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Acmpca Certificate Authority Usage enum for `usage_mode`.
enum AcmpcaCertificateAuthorityUsageMode implements TerraformEnum {
  generalPurpose('GENERAL_PURPOSE'),
  shortLivedCertificate('SHORT_LIVED_CERTIFICATE');

  const AcmpcaCertificateAuthorityUsageMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `certificate_authority_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityCertificateAuthorityConfiguration {
  const AcmpcaCertificateAuthorityCertificateAuthorityConfiguration({
    required this.keyAlgorithm,
    required this.signingAlgorithm,
    required this.subject,
  });

  final TfArg<
    AcmpcaCertificateAuthorityCertificateAuthorityConfigurationKeyAlgorithm
  >
  keyAlgorithm;

  final TfArg<
    AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSigningAlgorithm
  >
  signingAlgorithm;

  final AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSubject
  subject;

  Map<String, Object?> encode() => {
    'key_algorithm': keyAlgorithm.toTfJson(),
    'signing_algorithm': signingAlgorithm.toTfJson(),
    'subject': subject.encode(),
  };
}

/// `key_algorithm` — derived from the provider schema description.
enum AcmpcaCertificateAuthorityCertificateAuthorityConfigurationKeyAlgorithm
    implements TerraformEnum {
  rsa2048('RSA_2048'),
  rsa3072('RSA_3072'),
  rsa4096('RSA_4096'),
  ecPrime256v1('EC_prime256v1'),
  ecSecp384r1('EC_secp384r1'),
  ecSecp521r1('EC_secp521r1'),
  mlDsa44('ML_DSA_44'),
  mlDsa65('ML_DSA_65'),
  mlDsa87('ML_DSA_87'),
  sm2('SM2');

  const AcmpcaCertificateAuthorityCertificateAuthorityConfigurationKeyAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `signing_algorithm` — derived from the provider schema description.
enum AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSigningAlgorithm
    implements TerraformEnum {
  sha256withecdsa('SHA256WITHECDSA'),
  sha384withecdsa('SHA384WITHECDSA'),
  sha512withecdsa('SHA512WITHECDSA'),
  sha256withrsa('SHA256WITHRSA'),
  sha384withrsa('SHA384WITHRSA'),
  sha512withrsa('SHA512WITHRSA'),
  sha256withrsaPss('SHA256WITHRSA_PSS'),
  sha384withrsaPss('SHA384WITHRSA_PSS'),
  sha512withrsaPss('SHA512WITHRSA_PSS'),
  sm3withsm2('SM3WITHSM2'),
  mlDsa44('ML_DSA_44'),
  mlDsa65('ML_DSA_65'),
  mlDsa87('ML_DSA_87');

  const AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSigningAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `certificate_authority_configuration.subject` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSubject {
  const AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSubject({
    this.commonName,
    this.country,
    this.distinguishedNameQualifier,
    this.generationQualifier,
    this.givenName,
    this.initials,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.pseudonym,
    this.state,
    this.surname,
    this.title,
  });

  final TfArg<String>? commonName;

  final TfArg<String>? country;

  final TfArg<String>? distinguishedNameQualifier;

  final TfArg<String>? generationQualifier;

  final TfArg<String>? givenName;

  final TfArg<String>? initials;

  final TfArg<String>? locality;

  final TfArg<String>? organization;

  final TfArg<String>? organizationalUnit;

  final TfArg<String>? pseudonym;

  final TfArg<String>? state;

  final TfArg<String>? surname;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (commonName != null) 'common_name': commonName!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (distinguishedNameQualifier != null)
      'distinguished_name_qualifier': distinguishedNameQualifier!.toTfJson(),
    if (generationQualifier != null)
      'generation_qualifier': generationQualifier!.toTfJson(),
    if (givenName != null) 'given_name': givenName!.toTfJson(),
    if (initials != null) 'initials': initials!.toTfJson(),
    if (locality != null) 'locality': locality!.toTfJson(),
    if (organization != null) 'organization': organization!.toTfJson(),
    if (organizationalUnit != null)
      'organizational_unit': organizationalUnit!.toTfJson(),
    if (pseudonym != null) 'pseudonym': pseudonym!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (surname != null) 'surname': surname!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `revocation_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityRevocationConfiguration {
  const AcmpcaCertificateAuthorityRevocationConfiguration({
    this.crlConfiguration,
    this.ocspConfiguration,
  });

  final AcmpcaCertificateAuthorityRevocationConfigurationCrlConfiguration?
  crlConfiguration;

  final AcmpcaCertificateAuthorityRevocationConfigurationOcspConfiguration?
  ocspConfiguration;

  Map<String, Object?> encode() => {
    if (crlConfiguration != null)
      'crl_configuration': crlConfiguration!.encode(),
    if (ocspConfiguration != null)
      'ocsp_configuration': ocspConfiguration!.encode(),
  };
}

/// Typed helper for the `revocation_configuration.crl_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityRevocationConfigurationCrlConfiguration {
  const AcmpcaCertificateAuthorityRevocationConfigurationCrlConfiguration({
    this.customCname,
    this.customPath,
    this.enabled,
    this.expirationInDays,
    this.s3BucketName,
    this.s3ObjectAcl,
  });

  final TfArg<String>? customCname;

  final TfArg<String>? customPath;

  final TfArg<bool>? enabled;

  final TfArg<num>? expirationInDays;

  final TfArg<String>? s3BucketName;

  final TfArg<
    AcmpcaCertificateAuthorityRevocationConfigurationCrlConfigurationS3ObjectAcl
  >?
  s3ObjectAcl;

  Map<String, Object?> encode() => {
    if (customCname != null) 'custom_cname': customCname!.toTfJson(),
    if (customPath != null) 'custom_path': customPath!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (expirationInDays != null)
      'expiration_in_days': expirationInDays!.toTfJson(),
    if (s3BucketName != null) 's3_bucket_name': s3BucketName!.toTfJson(),
    if (s3ObjectAcl != null) 's3_object_acl': s3ObjectAcl!.toTfJson(),
  };
}

/// `s3_object_acl` — derived from the provider schema description.
enum AcmpcaCertificateAuthorityRevocationConfigurationCrlConfigurationS3ObjectAcl
    implements TerraformEnum {
  publicRead('PUBLIC_READ'),
  bucketOwnerFullControl('BUCKET_OWNER_FULL_CONTROL');

  const AcmpcaCertificateAuthorityRevocationConfigurationCrlConfigurationS3ObjectAcl(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `revocation_configuration.ocsp_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityRevocationConfigurationOcspConfiguration {
  const AcmpcaCertificateAuthorityRevocationConfigurationOcspConfiguration({
    required this.enabled,
    this.ocspCustomCname,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? ocspCustomCname;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (ocspCustomCname != null)
      'ocsp_custom_cname': ocspCustomCname!.toTfJson(),
  };
}

/// Factory wrapper for `aws_acmpca_certificate_authority`.
final class AwsAcmpcaCertificateAuthority extends Resource {
  static const String tfType = 'aws_acmpca_certificate_authority';

  AwsAcmpcaCertificateAuthority({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<AcmpcaCertificateAuthorityKeyStorageSecurityStandard>?
    keyStorageSecurityStandard,
    TfArg<num>? permanentDeletionTimeInDays,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<AcmpcaCertificateAuthorityType>? type,
    TfArg<AcmpcaCertificateAuthorityUsageMode>? usageMode,
    required AcmpcaCertificateAuthorityCertificateAuthorityConfiguration
    certificateAuthorityConfiguration,
    AcmpcaCertificateAuthorityRevocationConfiguration? revocationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (keyStorageSecurityStandard != null)
             'key_storage_security_standard': keyStorageSecurityStandard,
           if (permanentDeletionTimeInDays != null)
             'permanent_deletion_time_in_days': permanentDeletionTimeInDays,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (usageMode != null) 'usage_mode': usageMode,
           'certificate_authority_configuration': TfArg.literal(
             certificateAuthorityConfiguration.encode(),
           ),
           if (revocationConfiguration != null)
             'revocation_configuration': TfArg.literal(
               revocationConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaCertificateAuthoritySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `certificate_signing_request` attribute.
  TfRef<String> get certificateSigningRequest =>
      TfRef.attribute<String>(this, 'certificate_signing_request');

  /// Reference to `not_after` attribute.
  TfRef<String> get notAfter => TfRef.attribute<String>(this, 'not_after');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `serial` attribute.
  TfRef<String> get serial => TfRef.attribute<String>(this, 'serial');
}
