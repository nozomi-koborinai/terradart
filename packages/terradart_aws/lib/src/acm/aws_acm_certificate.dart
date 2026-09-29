// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acm_certificate`.
const Set<String> _awsAcmCertificateSensitive = <String>{'private_key'};

/// Acm Certificate Key enum for `key_algorithm`.
enum AcmCertificateKeyAlgorithm implements TerraformEnum {
  rsa1024('RSA_1024'),
  rsa2048('RSA_2048'),
  rsa3072('RSA_3072'),
  rsa4096('RSA_4096'),
  ecPrime256v1('EC_prime256v1'),
  ecSecp384r1('EC_secp384r1'),
  ecSecp521r1('EC_secp521r1');

  const AcmCertificateKeyAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// Acm Certificate Validation enum for `validation_method`.
enum AcmCertificateValidationMethod implements TerraformEnum {
  email('EMAIL'),
  dns('DNS'),
  http('HTTP');

  const AcmCertificateValidationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `domain_name`, `private_key`, `private_key_wo` on `aws_acm_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.domainName(...)`.
sealed class AcmCertificateSource {
  const AcmCertificateSource();

  /// Sets `domain_name`.
  const factory AcmCertificateSource.domainName(TfArg<String> domainName) =
      AcmCertificateSourceDomainName;

  /// Sets `private_key`.
  const factory AcmCertificateSource.privateKey(TfArg<String> privateKey) =
      AcmCertificateSourcePrivateKey;

  /// Sets `private_key_wo`.
  const factory AcmCertificateSource.privateKeyWo(TfArg<String> privateKeyWo) =
      AcmCertificateSourcePrivateKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AcmCertificateSource.domainName] choice: sets `domain_name`.
final class AcmCertificateSourceDomainName extends AcmCertificateSource {
  const AcmCertificateSourceDomainName(this.domainName);

  final TfArg<String> domainName;

  @override
  String get blockKey => 'domain_name';

  @override
  Map<String, Object?> encode() => {'domain_name': domainName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'domain_name': domainName};
}

/// The [AcmCertificateSource.privateKey] choice: sets `private_key`.
final class AcmCertificateSourcePrivateKey extends AcmCertificateSource {
  const AcmCertificateSourcePrivateKey(this.privateKey);

  final TfArg<String> privateKey;

  @override
  String get blockKey => 'private_key';

  @override
  Map<String, Object?> encode() => {'private_key': privateKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'private_key': privateKey};
}

/// The [AcmCertificateSource.privateKeyWo] choice: sets `private_key_wo`.
final class AcmCertificateSourcePrivateKeyWo extends AcmCertificateSource {
  const AcmCertificateSourcePrivateKeyWo(this.privateKeyWo);

  final TfArg<String> privateKeyWo;

  @override
  String get blockKey => 'private_key_wo';

  @override
  Map<String, Object?> encode() => {'private_key_wo': privateKeyWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'private_key_wo': privateKeyWo};
}

/// Typed helper for the `options` block of
/// `aws_acm_certificate` (derived from provider schema).
@immutable
final class AcmCertificateOptions {
  const AcmCertificateOptions({
    this.certificateTransparencyLoggingPreference,
    this.export,
  });

  final TfArg<AcmCertificateOptionsCertificateTransparencyLoggingPreference>?
  certificateTransparencyLoggingPreference;

  final TfArg<AcmCertificateOptionsExport>? export;

  Map<String, Object?> encode() => {
    if (certificateTransparencyLoggingPreference != null)
      'certificate_transparency_logging_preference':
          certificateTransparencyLoggingPreference!.toTfJson(),
    if (export != null) 'export': export!.toTfJson(),
  };
}

/// `certificate_transparency_logging_preference` — derived from the provider schema description.
enum AcmCertificateOptionsCertificateTransparencyLoggingPreference
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AcmCertificateOptionsCertificateTransparencyLoggingPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `export` — derived from the provider schema description.
enum AcmCertificateOptionsExport implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AcmCertificateOptionsExport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `validation_option` block of
/// `aws_acm_certificate` (derived from provider schema).
@immutable
final class AcmCertificateValidationOption {
  const AcmCertificateValidationOption({
    required this.domainName,
    required this.validationDomain,
  });

  final TfArg<String> domainName;

  final TfArg<String> validationDomain;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'validation_domain': validationDomain.toTfJson(),
  };
}

/// Factory wrapper for `aws_acm_certificate`.
final class AwsAcmCertificate extends Resource {
  static const String tfType = 'aws_acm_certificate';

  AwsAcmCertificate({
    required super.localName,
    TfArg<String>? certificateAuthorityArn,
    TfArg<String>? certificateBody,
    TfArg<String>? certificateChain,
    required AcmCertificateSource source,
    TfArg<String>? earlyRenewalDuration,
    TfArg<AcmCertificateKeyAlgorithm>? keyAlgorithm,
    TfArg<num>? privateKeyWoVersion,
    TfArg<String>? region,
    TfArg<List<String>>? subjectAlternativeNames,
    TfArg<Map<String, String>>? tags,
    TfArg<AcmCertificateValidationMethod>? validationMethod,
    AcmCertificateOptions? options,
    List<AcmCertificateValidationOption>? validationOption,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (certificateAuthorityArn != null)
             'certificate_authority_arn': certificateAuthorityArn,
           if (certificateBody != null) 'certificate_body': certificateBody,
           if (certificateChain != null) 'certificate_chain': certificateChain,
           ...source.argMap,
           if (earlyRenewalDuration != null)
             'early_renewal_duration': earlyRenewalDuration,
           if (keyAlgorithm != null) 'key_algorithm': keyAlgorithm,
           if (privateKeyWoVersion != null)
             'private_key_wo_version': privateKeyWoVersion,
           if (region != null) 'region': region,
           if (subjectAlternativeNames != null)
             'subject_alternative_names': subjectAlternativeNames,
           if (tags != null) 'tags': tags,
           if (validationMethod != null) 'validation_method': validationMethod,
           if (options != null) 'options': TfArg.literal(options.encode()),
           if (validationOption != null)
             'validation_option': TfArg.literal([
               for (final e in validationOption) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_validation_options` attribute.
  TfRef<List<Map<String, Object?>>> get domainValidationOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'domain_validation_options',
      );

  /// Reference to `not_after` attribute.
  TfRef<String> get notAfter => TfRef.attribute<String>(this, 'not_after');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `pending_renewal` attribute.
  TfRef<bool> get pendingRenewal =>
      TfRef.attribute<bool>(this, 'pending_renewal');

  /// Reference to `renewal_eligibility` attribute.
  TfRef<String> get renewalEligibility =>
      TfRef.attribute<String>(this, 'renewal_eligibility');

  /// Reference to `renewal_summary` attribute.
  TfRef<List<Map<String, Object?>>> get renewalSummary =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'renewal_summary');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `validation_emails` attribute.
  TfRef<List<String>> get validationEmails =>
      TfRef.attribute<List<String>>(this, 'validation_emails');
}
