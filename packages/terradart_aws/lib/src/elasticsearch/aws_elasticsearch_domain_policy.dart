// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticsearch_domain_policy`.
const Set<String> _awsElasticsearchDomainPolicySensitive = <String>{};

/// Factory wrapper for `aws_elasticsearch_domain_policy`.
final class AwsElasticsearchDomainPolicy extends Resource {
  static const String tfType = 'aws_elasticsearch_domain_policy';

  AwsElasticsearchDomainPolicy({
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticsearchDomainPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticsearchDomainPolicy>`.
  RefTo<AwsElasticsearchDomainPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policies` attribute.
  TfRef<String> get accessPolicies =>
      TfRef.attribute<String>(this, 'access_policies');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
