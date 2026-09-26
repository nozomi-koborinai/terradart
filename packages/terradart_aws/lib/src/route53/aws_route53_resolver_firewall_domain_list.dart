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
           if (domains != null) 'domains': domains,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverFirewallDomainListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
