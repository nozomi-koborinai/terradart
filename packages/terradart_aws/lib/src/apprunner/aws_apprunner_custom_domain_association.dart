// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_custom_domain_association`.
const Set<String> _awsApprunnerCustomDomainAssociationSensitive = <String>{};

/// Factory wrapper for `aws_apprunner_custom_domain_association`.
final class AwsApprunnerCustomDomainAssociation extends Resource {
  static const String tfType = 'aws_apprunner_custom_domain_association';

  AwsApprunnerCustomDomainAssociation({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<bool>? enableWwwSubdomain,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (enableWwwSubdomain != null)
             'enable_www_subdomain': enableWwwSubdomain,
           if (region != null) 'region': region,
           'service_arn': serviceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApprunnerCustomDomainAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_validation_records` attribute.
  TfRef<List<Map<String, Object?>>> get certificateValidationRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_validation_records',
      );

  /// Reference to `dns_target` attribute.
  TfRef<String> get dnsTarget => TfRef.attribute<String>(this, 'dns_target');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
