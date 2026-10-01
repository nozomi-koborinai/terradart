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

  final AmplifyDomainAssociationType type;

  @internal
  Map<String, Object?> encode() => {
    'custom_certificate_arn': ?customCertificateArn?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const AmplifyDomainAssociationType._(TfArg<String> _)
    implements TfArg<String> {
  AmplifyDomainAssociationType.variable(String name)
    : this._(TfArg.variable(name));
  AmplifyDomainAssociationType.expression(String template)
    : this._(TfArg.expression(template));
  const AmplifyDomainAssociationType.arg(TfArg<String> arg) : this._(arg);

  static const amplifyManaged = AmplifyDomainAssociationType._(
    TfArgLiteral('AMPLIFY_MANAGED'),
  );
  static const custom = AmplifyDomainAssociationType._(TfArgLiteral('CUSTOM'));

  static const List<AmplifyDomainAssociationType> values = [
    amplifyManaged,
    custom,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'branch_name': branchName.toTfJson(),
    'prefix': prefix.toTfJson(),
  };
}

/// Factory wrapper for `aws_amplify_domain_association`.
final class AwsAmplifyDomainAssociation extends Resource {
  static const String tfType = 'aws_amplify_domain_association';

  AwsAmplifyDomainAssociation(
    super.localName, {
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
           'enable_auto_sub_domain': ?enableAutoSubDomain,
           'region': ?region,
           'wait_for_verification': ?waitForVerification,
           if (certificateSettings != null)
             'certificate_settings': TfArg.literal(
               certificateSettings.encode(),
             ),
           'sub_domain': TfArg.literal([for (final e in subDomain) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyDomainAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAmplifyDomainAssociation>`.
  RefTo<AwsAmplifyDomainAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_verification_dns_record` attribute.
  TfRef<String> get certificateVerificationDnsRecord =>
      TfRef.attribute<String>(this, 'certificate_verification_dns_record');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `enable_auto_sub_domain` attribute.
  TfRef<bool> get enableAutoSubDomain =>
      TfRef.attribute<bool>(this, 'enable_auto_sub_domain');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `wait_for_verification` attribute.
  TfRef<bool> get waitForVerification =>
      TfRef.attribute<bool>(this, 'wait_for_verification');
}
