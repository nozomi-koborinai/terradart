// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_domain_list`.
const Set<String> _awsRoute53ResolverFirewallDomainListSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_domain_list`.
final class AwsRoute53ResolverFirewallDomainList extends Resource {
  static const String tfType = 'aws_route53_resolver_firewall_domain_list';

  AwsRoute53ResolverFirewallDomainList({
    required super.localName,
    TfArg<List<String>>? domains,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domains': ?domains,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverFirewallDomainListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverFirewallDomainList>`.
  RefTo<AwsRoute53ResolverFirewallDomainList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domains` attribute.
  TfRef<List<String>> get domains =>
      TfRef.attribute<List<String>>(this, 'domains');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
