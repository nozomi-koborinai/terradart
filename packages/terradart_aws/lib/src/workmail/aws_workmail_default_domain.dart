// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workmail_default_domain`.
const Set<String> _awsWorkmailDefaultDomainSensitive = <String>{};

/// Factory wrapper for `aws_workmail_default_domain`.
final class AwsWorkmailDefaultDomain extends Resource {
  static const String tfType = 'aws_workmail_default_domain';

  AwsWorkmailDefaultDomain({
    required super.localName,
    required TfArg<String> domainName,
    required TfArg<String> organizationId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'organization_id': organizationId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkmailDefaultDomainSensitive;
}
