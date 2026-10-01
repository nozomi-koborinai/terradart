// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_rule`.
const Set<String> _awsRoute53ResolverRuleSensitive = <String>{};

/// Route53 Resolver Rule enum for `rule_type`.
extension type const Route53ResolverRuleType._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverRuleType.variable(String name) : this._(TfArg.variable(name));
  Route53ResolverRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverRuleType.arg(TfArg<String> arg) : this._(arg);

  static const forward = Route53ResolverRuleType._(TfArgLiteral('FORWARD'));
  static const system = Route53ResolverRuleType._(TfArgLiteral('SYSTEM'));
  static const recursive = Route53ResolverRuleType._(TfArgLiteral('RECURSIVE'));
  static const delegate = Route53ResolverRuleType._(TfArgLiteral('DELEGATE'));

  static const List<Route53ResolverRuleType> values = [
    forward,
    system,
    recursive,
    delegate,
  ];
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

  final Route53ResolverRuleProtocol? protocol;

  Map<String, Object?> encode() => {
    'ip': ?ip?.toTfJson(),
    'ipv6': ?ipv6?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const Route53ResolverRuleProtocol._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverRuleProtocol.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverRuleProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverRuleProtocol.arg(TfArg<String> arg) : this._(arg);

  static const doh = Route53ResolverRuleProtocol._(TfArgLiteral('DoH'));
  static const do53 = Route53ResolverRuleProtocol._(TfArgLiteral('Do53'));
  static const dohFips = Route53ResolverRuleProtocol._(
    TfArgLiteral('DoH-FIPS'),
  );

  static const List<Route53ResolverRuleProtocol> values = [doh, do53, dohFips];
}

/// Factory wrapper for `aws_route53_resolver_rule`.
final class AwsRoute53ResolverRule extends Resource {
  static const String tfType = 'aws_route53_resolver_rule';

  AwsRoute53ResolverRule(
    super.localName, {
    required TfArg<String> domainName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? resolverEndpointId,
    required Route53ResolverRuleType ruleType,
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
           'name': ?name,
           'region': ?region,
           'resolver_endpoint_id': ?resolverEndpointId,
           'rule_type': ruleType,
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resolver_endpoint_id` attribute.
  TfRef<String> get resolverEndpointId =>
      TfRef.attribute<String>(this, 'resolver_endpoint_id');

  /// Reference to `rule_type` attribute.
  TfRef<String> get ruleType => TfRef.attribute<String>(this, 'rule_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
