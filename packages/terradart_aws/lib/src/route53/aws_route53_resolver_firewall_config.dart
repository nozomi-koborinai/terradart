// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_config`.
const Set<String> _awsRoute53ResolverFirewallConfigSensitive = <String>{};

/// Route53 Resolver Firewall Config Firewall Fail enum for `firewall_fail_open`.
enum Route53ResolverFirewallConfigFirewallFailOpen implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED'),
  useLocalResourceSetting('USE_LOCAL_RESOURCE_SETTING');

  const Route53ResolverFirewallConfigFirewallFailOpen(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_resolver_firewall_config`.
final class AwsRoute53ResolverFirewallConfig extends Resource {
  static const String tfType = 'aws_route53_resolver_firewall_config';

  AwsRoute53ResolverFirewallConfig({
    required super.localName,
    TfArg<Route53ResolverFirewallConfigFirewallFailOpen>? firewallFailOpen,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_fail_open': ?firewallFailOpen,
           'region': ?region,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverFirewallConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverFirewallConfig>`.
  RefTo<AwsRoute53ResolverFirewallConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `firewall_fail_open` attribute.
  TfRef<String> get firewallFailOpen =>
      TfRef.attribute<String>(this, 'firewall_fail_open');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
