// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_rule`.
const Set<String> _awsRoute53ResolverRuleSensitive = <String>{};

/// Route53 Resolver Rule Rule enum for `rule_type`.
enum Route53ResolverRuleRuleType implements TerraformEnum {
  forward('FORWARD'),
  system('SYSTEM'),
  recursive('RECURSIVE'),
  delegate('DELEGATE');

  const Route53ResolverRuleRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_ip` block of
/// `aws_route53_resolver_rule` (derived from provider schema).
@immutable
final class Route53ResolverRuleTargetIp {
  const Route53ResolverRuleTargetIp({
    this.ip,
    this.ipv6,
    this.port,
    this.protocol,
  });

  final TfArg<String>? ip;

  final TfArg<String>? ipv6;

  final TfArg<num>? port;

  final TfArg<Route53ResolverRuleTargetIpProtocol>? protocol;

  Map<String, Object?> encode() => {
    if (ip != null) 'ip': ip!.toTfJson(),
    if (ipv6 != null) 'ipv6': ipv6!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum Route53ResolverRuleTargetIpProtocol implements TerraformEnum {
  doh('DoH'),
  do53('Do53'),
  dohFips('DoH-FIPS');

  const Route53ResolverRuleTargetIpProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_resolver_rule`.
final class AwsRoute53ResolverRule extends Resource {
  static const String tfType = 'aws_route53_resolver_rule';

  AwsRoute53ResolverRule({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? resolverEndpointId,
    required TfArg<Route53ResolverRuleRuleType> ruleType,
    TfArg<Map<String, String>>? tags,
    List<Route53ResolverRuleTargetIp>? targetIp,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (resolverEndpointId != null)
             'resolver_endpoint_id': resolverEndpointId,
           'rule_type': ruleType,
           if (tags != null) 'tags': tags,
           if (targetIp != null)
             'target_ip': TfArg.literal([for (final e in targetIp) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverRule>`.
  RefTo<AwsRoute53ResolverRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');
}
