// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_custom_domain_association`.
const Set<String> _awsRedshiftserverlessCustomDomainAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_redshiftserverless_custom_domain_association`.
final class AwsRedshiftserverlessCustomDomainAssociation extends Resource {
  static const String tfType =
      'aws_redshiftserverless_custom_domain_association';

  AwsRedshiftserverlessCustomDomainAssociation({
    required super.localName,
    required TfArg<String> customDomainCertificateArn,
    required TfArg<String> customDomainName,
    TfArg<String>? region,
    required TfArg<String> workgroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_domain_certificate_arn': customDomainCertificateArn,
           'custom_domain_name': customDomainName,
           if (region != null) 'region': region,
           'workgroup_name': workgroupName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftserverlessCustomDomainAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_domain_certificate_expiry_time` attribute.
  TfRef<String> get customDomainCertificateExpiryTime =>
      TfRef.attribute<String>(this, 'custom_domain_certificate_expiry_time');
}
