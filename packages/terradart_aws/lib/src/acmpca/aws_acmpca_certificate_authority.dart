// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_acmpca_certificate_authority`.
const Set<String> _awsAcmpcaCertificateAuthoritySensitive = <String>{};

/// Acmpca Certificate Authority Key Storage Security enum for `key_storage_security_standard`.
extension type const AcmpcaCertificateAuthorityKeyStorageSecurityStandard._(
  TfArg<String> _
) implements TfArg<String> {
  AcmpcaCertificateAuthorityKeyStorageSecurityStandard.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateAuthorityKeyStorageSecurityStandard.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AcmpcaCertificateAuthorityKeyStorageSecurityStandard.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const fips1402Level2OrHigher =
      AcmpcaCertificateAuthorityKeyStorageSecurityStandard._(
        TfArgLiteral('FIPS_140_2_LEVEL_2_OR_HIGHER'),
      );
  static const fips1402Level3OrHigher =
      AcmpcaCertificateAuthorityKeyStorageSecurityStandard._(
        TfArgLiteral('FIPS_140_2_LEVEL_3_OR_HIGHER'),
      );
  static const ccpcLevel1OrHigher =
      AcmpcaCertificateAuthorityKeyStorageSecurityStandard._(
        TfArgLiteral('CCPC_LEVEL_1_OR_HIGHER'),
      );

  static const List<AcmpcaCertificateAuthorityKeyStorageSecurityStandard>
  values = [fips1402Level2OrHigher, fips1402Level3OrHigher, ccpcLevel1OrHigher];
}

/// Acmpca Certificate Authority enum for `type`.
extension type const AcmpcaCertificateAuthorityType._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaCertificateAuthorityType.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateAuthorityType.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateAuthorityType.arg(TfArg<String> arg) : this._(arg);

  static const root = AcmpcaCertificateAuthorityType._(TfArgLiteral('ROOT'));
  static const subordinate = AcmpcaCertificateAuthorityType._(
    TfArgLiteral('SUBORDINATE'),
  );

  static const List<AcmpcaCertificateAuthorityType> values = [
    root,
    subordinate,
  ];
}

/// Acmpca Certificate Authority Usage enum for `usage_mode`.
extension type const AcmpcaCertificateAuthorityUsageMode._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaCertificateAuthorityUsageMode.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateAuthorityUsageMode.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateAuthorityUsageMode.arg(TfArg<String> arg)
    : this._(arg);

  static const generalPurpose = AcmpcaCertificateAuthorityUsageMode._(
    TfArgLiteral('GENERAL_PURPOSE'),
  );
  static const shortLivedCertificate = AcmpcaCertificateAuthorityUsageMode._(
    TfArgLiteral('SHORT_LIVED_CERTIFICATE'),
  );

  static const List<AcmpcaCertificateAuthorityUsageMode> values = [
    generalPurpose,
    shortLivedCertificate,
  ];
}

/// Typed helper for the `certificate_authority_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityConfiguration {
  const AcmpcaCertificateAuthorityConfiguration({
    required this.keyAlgorithm,
    required this.signingAlgorithm,
    required this.subject,
  });

  final AcmpcaCertificateAuthorityKeyAlgorithm keyAlgorithm;

  final AcmpcaCertificateAuthoritySigningAlgorithm signingAlgorithm;

  final AcmpcaCertificateAuthoritySubject subject;

  @internal
  Map<String, Object?> encode() => {
    'key_algorithm': keyAlgorithm.toTfJson(),
    'signing_algorithm': signingAlgorithm.toTfJson(),
    'subject': subject.encode(),
  };
}

/// `key_algorithm` — derived from the provider schema description.
extension type const AcmpcaCertificateAuthorityKeyAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaCertificateAuthorityKeyAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateAuthorityKeyAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateAuthorityKeyAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const rsa2048 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('RSA_2048'),
  );
  static const rsa3072 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('RSA_3072'),
  );
  static const rsa4096 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('RSA_4096'),
  );
  static const ecPrime256v1 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('EC_prime256v1'),
  );
  static const ecSecp384r1 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('EC_secp384r1'),
  );
  static const ecSecp521r1 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('EC_secp521r1'),
  );
  static const mlDsa44 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('ML_DSA_44'),
  );
  static const mlDsa65 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('ML_DSA_65'),
  );
  static const mlDsa87 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('ML_DSA_87'),
  );
  static const sm2 = AcmpcaCertificateAuthorityKeyAlgorithm._(
    TfArgLiteral('SM2'),
  );

  static const List<AcmpcaCertificateAuthorityKeyAlgorithm> values = [
    rsa2048,
    rsa3072,
    rsa4096,
    ecPrime256v1,
    ecSecp384r1,
    ecSecp521r1,
    mlDsa44,
    mlDsa65,
    mlDsa87,
    sm2,
  ];
}

/// `signing_algorithm` — derived from the provider schema description.
extension type const AcmpcaCertificateAuthoritySigningAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  AcmpcaCertificateAuthoritySigningAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateAuthoritySigningAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateAuthoritySigningAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const sha256withecdsa = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA256WITHECDSA'),
  );
  static const sha384withecdsa = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA384WITHECDSA'),
  );
  static const sha512withecdsa = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA512WITHECDSA'),
  );
  static const sha256withrsa = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA256WITHRSA'),
  );
  static const sha384withrsa = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA384WITHRSA'),
  );
  static const sha512withrsa = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA512WITHRSA'),
  );
  static const sha256withrsaPss = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA256WITHRSA_PSS'),
  );
  static const sha384withrsaPss = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA384WITHRSA_PSS'),
  );
  static const sha512withrsaPss = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SHA512WITHRSA_PSS'),
  );
  static const sm3withsm2 = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('SM3WITHSM2'),
  );
  static const mlDsa44 = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('ML_DSA_44'),
  );
  static const mlDsa65 = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('ML_DSA_65'),
  );
  static const mlDsa87 = AcmpcaCertificateAuthoritySigningAlgorithm._(
    TfArgLiteral('ML_DSA_87'),
  );

  static const List<AcmpcaCertificateAuthoritySigningAlgorithm> values = [
    sha256withecdsa,
    sha384withecdsa,
    sha512withecdsa,
    sha256withrsa,
    sha384withrsa,
    sha512withrsa,
    sha256withrsaPss,
    sha384withrsaPss,
    sha512withrsaPss,
    sm3withsm2,
    mlDsa44,
    mlDsa65,
    mlDsa87,
  ];
}

/// Typed helper for the `certificate_authority_configuration.subject` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthoritySubject {
  const AcmpcaCertificateAuthoritySubject({
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

  @internal
  Map<String, Object?> encode() => {
    'common_name': ?commonName?.toTfJson(),
    'country': ?country?.toTfJson(),
    'distinguished_name_qualifier': ?distinguishedNameQualifier?.toTfJson(),
    'generation_qualifier': ?generationQualifier?.toTfJson(),
    'given_name': ?givenName?.toTfJson(),
    'initials': ?initials?.toTfJson(),
    'locality': ?locality?.toTfJson(),
    'organization': ?organization?.toTfJson(),
    'organizational_unit': ?organizationalUnit?.toTfJson(),
    'pseudonym': ?pseudonym?.toTfJson(),
    'state': ?state?.toTfJson(),
    'surname': ?surname?.toTfJson(),
    'title': ?title?.toTfJson(),
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

  final AcmpcaCertificateAuthorityCrlConfiguration? crlConfiguration;

  final AcmpcaCertificateAuthorityOcspConfiguration? ocspConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'crl_configuration': ?crlConfiguration?.encode(),
    'ocsp_configuration': ?ocspConfiguration?.encode(),
  };
}

/// Typed helper for the `revocation_configuration.crl_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityCrlConfiguration {
  const AcmpcaCertificateAuthorityCrlConfiguration({
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

  final RefTo<AwsS3Bucket>? s3BucketName;

  final AcmpcaCertificateAuthorityS3ObjectAcl? s3ObjectAcl;

  @internal
  Map<String, Object?> encode() => {
    'custom_cname': ?customCname?.toTfJson(),
    'custom_path': ?customPath?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expiration_in_days': ?expirationInDays?.toTfJson(),
    's3_bucket_name': ?s3BucketName?.encodeAs('id').toTfJson(),
    's3_object_acl': ?s3ObjectAcl?.toTfJson(),
  };
}

/// `s3_object_acl` — derived from the provider schema description.
extension type const AcmpcaCertificateAuthorityS3ObjectAcl._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaCertificateAuthorityS3ObjectAcl.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateAuthorityS3ObjectAcl.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateAuthorityS3ObjectAcl.arg(TfArg<String> arg)
    : this._(arg);

  static const publicRead = AcmpcaCertificateAuthorityS3ObjectAcl._(
    TfArgLiteral('PUBLIC_READ'),
  );
  static const bucketOwnerFullControl = AcmpcaCertificateAuthorityS3ObjectAcl._(
    TfArgLiteral('BUCKET_OWNER_FULL_CONTROL'),
  );

  static const List<AcmpcaCertificateAuthorityS3ObjectAcl> values = [
    publicRead,
    bucketOwnerFullControl,
  ];
}

/// Typed helper for the `revocation_configuration.ocsp_configuration` block of
/// `aws_acmpca_certificate_authority` (derived from provider schema).
@immutable
final class AcmpcaCertificateAuthorityOcspConfiguration {
  const AcmpcaCertificateAuthorityOcspConfiguration({
    required this.enabled,
    this.ocspCustomCname,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? ocspCustomCname;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'ocsp_custom_cname': ?ocspCustomCname?.toTfJson(),
  };
}

/// Factory wrapper for `aws_acmpca_certificate_authority`.
final class AwsAcmpcaCertificateAuthority extends Resource {
  static const String tfType = 'aws_acmpca_certificate_authority';

  AwsAcmpcaCertificateAuthority(
    super.localName, {
    TfArg<bool>? enabled,
    AcmpcaCertificateAuthorityKeyStorageSecurityStandard?
    keyStorageSecurityStandard,
    TfArg<num>? permanentDeletionTimeInDays,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    AcmpcaCertificateAuthorityType? type,
    AcmpcaCertificateAuthorityUsageMode? usageMode,
    required AcmpcaCertificateAuthorityConfiguration
    certificateAuthorityConfiguration,
    AcmpcaCertificateAuthorityRevocationConfiguration? revocationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'key_storage_security_standard': ?keyStorageSecurityStandard,
           'permanent_deletion_time_in_days': ?permanentDeletionTimeInDays,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           'usage_mode': ?usageMode,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAcmpcaCertificateAuthority>`.
  RefTo<AwsAcmpcaCertificateAuthority> get ref => RefTo.of(this);

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

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `key_storage_security_standard` attribute.
  TfRef<String> get keyStorageSecurityStandard =>
      TfRef.attribute<String>(this, 'key_storage_security_standard');

  /// Reference to `permanent_deletion_time_in_days` attribute.
  TfRef<num> get permanentDeletionTimeInDays =>
      TfRef.attribute<num>(this, 'permanent_deletion_time_in_days');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `usage_mode` attribute.
  TfRef<String> get usageMode => TfRef.attribute<String>(this, 'usage_mode');
}
