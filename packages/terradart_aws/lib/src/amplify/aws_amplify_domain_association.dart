// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_domain_association`.
const Set<String> _awsAmplifyDomainAssociationSensitive = <String>{};

/// Typed helper for the `certificate_settings` block of
/// `aws_amplify_domain_association` (derived from provider schema).
@immutable
final class AmplifyDomainAssociationCertificateSettings {
  const AmplifyDomainAssociationCertificateSettings({
    this.customCertificateArn,
    required this.type,
  });

  final TfArg<String>? customCertificateArn;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (customCertificateArn != null)
      'custom_certificate_arn': customCertificateArn!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `sub_domain` block of
/// `aws_amplify_domain_association` (derived from provider schema).
@immutable
final class AmplifyDomainAssociationSubDomain {
  const AmplifyDomainAssociationSubDomain({
    required this.branchName,
    required this.prefix,
  });

  final TfArg<String> branchName;

  final TfArg<String> prefix;

  Map<String, Object?> encode() => {
    'branch_name': branchName.toTfJson(),
    'prefix': prefix.toTfJson(),
  };
}

/// Factory wrapper for `aws_amplify_domain_association`.
final class AwsAmplifyDomainAssociation extends Resource {
  static const String tfType = 'aws_amplify_domain_association';

  AwsAmplifyDomainAssociation({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> domainName,
    TfArg<bool>? enableAutoSubDomain,
    TfArg<String>? region,
    TfArg<bool>? waitForVerification,
    AmplifyDomainAssociationCertificateSettings? certificateSettings,
    required List<AmplifyDomainAssociationSubDomain> subDomain,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'domain_name': domainName,
           if (enableAutoSubDomain != null)
             'enable_auto_sub_domain': enableAutoSubDomain,
           if (region != null) 'region': region,
           if (waitForVerification != null)
             'wait_for_verification': waitForVerification,
           if (certificateSettings != null)
             'certificate_settings': TfArg.literal(
               certificateSettings.encode(),
             ),
           'sub_domain': TfArg.literal([for (final e in subDomain) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyDomainAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_verification_dns_record` attribute.
  TfRef<String> get certificateVerificationDnsRecord =>
      TfRef.attribute<String>(this, 'certificate_verification_dns_record');
}
