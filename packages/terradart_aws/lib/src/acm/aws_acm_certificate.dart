// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acm_certificate`.
const Set<String> _awsAcmCertificateSensitive = <String>{'private_key'};

/// Typed helper for the `options` block of
/// `aws_acm_certificate` (derived from provider schema).
@immutable
final class AcmCertificateOptions {
  const AcmCertificateOptions({
    this.certificateTransparencyLoggingPreference,
    this.export,
  });

  final TfArg<String>? certificateTransparencyLoggingPreference;

  final TfArg<String>? export;

  Map<String, Object?> encode() => {
    if (certificateTransparencyLoggingPreference != null)
      'certificate_transparency_logging_preference':
          certificateTransparencyLoggingPreference!.toTfJson(),
    if (export != null) 'export': export!.toTfJson(),
  };
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
    TfArg<String>? domainName,
    TfArg<String>? earlyRenewalDuration,
    TfArg<String>? keyAlgorithm,
    TfArg<String>? privateKey,
    TfArg<String>? privateKeyWo,
    TfArg<num>? privateKeyWoVersion,
    TfArg<String>? region,
    TfArg<List<String>>? subjectAlternativeNames,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? validationMethod,
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
           if (domainName != null) 'domain_name': domainName,
           if (earlyRenewalDuration != null)
             'early_renewal_duration': earlyRenewalDuration,
           if (keyAlgorithm != null) 'key_algorithm': keyAlgorithm,
           if (privateKey != null) 'private_key': privateKey,
           if (privateKeyWo != null) 'private_key_wo': privateKeyWo,
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
