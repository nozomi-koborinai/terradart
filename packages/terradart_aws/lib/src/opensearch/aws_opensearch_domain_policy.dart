// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_domain_policy`.
const Set<String> _awsOpensearchDomainPolicySensitive = <String>{};

/// Factory wrapper for `aws_opensearch_domain_policy`.
final class AwsOpensearchDomainPolicy extends Resource {
  static const String tfType = 'aws_opensearch_domain_policy';

  AwsOpensearchDomainPolicy({
    required super.localName,
    required TfArg<String> accessPolicies,
    required TfArg<String> domainName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policies': accessPolicies,
           'domain_name': domainName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchDomainPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
