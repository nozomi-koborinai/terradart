// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_config`.
const Set<String> _awsRoute53ResolverFirewallConfigSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_config`.
final class AwsRoute53ResolverFirewallConfig extends Resource {
  static const String tfType = 'aws_route53_resolver_firewall_config';

  AwsRoute53ResolverFirewallConfig({
    required super.localName,
    TfArg<String>? firewallFailOpen,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (firewallFailOpen != null) 'firewall_fail_open': firewallFailOpen,
           if (region != null) 'region': region,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverFirewallConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
