// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_network_firewall_policy.dart'
    show GoogleComputeRegionNetworkFirewallPolicy;

/// Sensitive field paths for `google_compute_region_network_firewall_policy_rule`.
const Set<String> _googleComputeRegionNetworkFirewallPolicyRuleSensitive =
    <String>{};

/// Compute Region Network Firewall Policy Rule enum for `direction`.
extension type const ComputeRegionNetworkFirewallPolicyRuleDirection._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyRuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyRuleDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const ingress = ComputeRegionNetworkFirewallPolicyRuleDirection._(
    TfArgLiteral('INGRESS'),
  );
  static const egress = ComputeRegionNetworkFirewallPolicyRuleDirection._(
    TfArgLiteral('EGRESS'),
  );

  static const List<ComputeRegionNetworkFirewallPolicyRuleDirection> values = [
    ingress,
    egress,
  ];
}

/// Compute Region Network Firewall Policy Rule Target enum for `target_type`.
extension type const ComputeRegionNetworkFirewallPolicyRuleTargetType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyRuleTargetType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyRuleTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyRuleTargetType.arg(TfArg<String> arg)
    : this._(arg);

  static const instances = ComputeRegionNetworkFirewallPolicyRuleTargetType._(
    TfArgLiteral('INSTANCES'),
  );
  static const internalManagedLb =
      ComputeRegionNetworkFirewallPolicyRuleTargetType._(
        TfArgLiteral('INTERNAL_MANAGED_LB'),
      );

  static const List<ComputeRegionNetworkFirewallPolicyRuleTargetType> values = [
    instances,
    internalManagedLb,
  ];
}

/// Typed helper for the `match` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleMatch {
  const ComputeRegionNetworkFirewallPolicyRuleMatch({
    this.destAddressGroups,
    this.destFqdns,
    this.destIpRanges,
    this.destNetworkContext,
    this.destRegionCodes,
    this.destThreatIntelligences,
    this.srcAddressGroups,
    this.srcFqdns,
    this.srcIpRanges,
    this.srcNetworkContext,
    this.srcNetworks,
    this.srcRegionCodes,
    this.srcThreatIntelligences,
    required this.layer4Configs,
    this.srcSecureTags,
  });

  final TfArg<List<String>>? destAddressGroups;

  final TfArg<List<String>>? destFqdns;

  final TfArg<List<String>>? destIpRanges;

  final ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext?
  destNetworkContext;

  final TfArg<List<String>>? destRegionCodes;

  final TfArg<List<String>>? destThreatIntelligences;

  final TfArg<List<String>>? srcAddressGroups;

  final TfArg<List<String>>? srcFqdns;

  final TfArg<List<String>>? srcIpRanges;

  final ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext?
  srcNetworkContext;

  final TfArg<List<String>>? srcNetworks;

  final TfArg<List<String>>? srcRegionCodes;

  final TfArg<List<String>>? srcThreatIntelligences;

  final List<ComputeRegionNetworkFirewallPolicyRuleLayer4Configs> layer4Configs;

  final List<ComputeRegionNetworkFirewallPolicyRuleSrcSecureTags>?
  srcSecureTags;

  @internal
  Map<String, Object?> encode() => {
    'dest_address_groups': ?destAddressGroups?.toTfJson(),
    'dest_fqdns': ?destFqdns?.toTfJson(),
    'dest_ip_ranges': ?destIpRanges?.toTfJson(),
    'dest_network_context': ?destNetworkContext?.toTfJson(),
    'dest_region_codes': ?destRegionCodes?.toTfJson(),
    'dest_threat_intelligences': ?destThreatIntelligences?.toTfJson(),
    'src_address_groups': ?srcAddressGroups?.toTfJson(),
    'src_fqdns': ?srcFqdns?.toTfJson(),
    'src_ip_ranges': ?srcIpRanges?.toTfJson(),
    'src_network_context': ?srcNetworkContext?.toTfJson(),
    'src_networks': ?srcNetworks?.toTfJson(),
    'src_region_codes': ?srcRegionCodes?.toTfJson(),
    'src_threat_intelligences': ?srcThreatIntelligences?.toTfJson(),
    'layer4_configs': [for (final e in layer4Configs) e.encode()],
    if (srcSecureTags != null)
      'src_secure_tags': [for (final e in srcSecureTags!) e.encode()],
  };
}

/// `dest_network_context` — derived from the provider schema description.
extension type const ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const unspecified =
      ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext._(
        TfArgLiteral('UNSPECIFIED'),
      );
  static const internet =
      ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext._(
        TfArgLiteral('INTERNET'),
      );
  static const intraVpc =
      ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext._(
        TfArgLiteral('INTRA_VPC'),
      );
  static const nonInternet =
      ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext._(
        TfArgLiteral('NON_INTERNET'),
      );
  static const vpcNetworks =
      ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext._(
        TfArgLiteral('VPC_NETWORKS'),
      );

  static const List<ComputeRegionNetworkFirewallPolicyRuleDestNetworkContext>
  values = [unspecified, internet, intraVpc, nonInternet, vpcNetworks];
}

/// `src_network_context` — derived from the provider schema description.
extension type const ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const unspecified =
      ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext._(
        TfArgLiteral('UNSPECIFIED'),
      );
  static const internet =
      ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext._(
        TfArgLiteral('INTERNET'),
      );
  static const intraVpc =
      ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext._(
        TfArgLiteral('INTRA_VPC'),
      );
  static const nonInternet =
      ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext._(
        TfArgLiteral('NON_INTERNET'),
      );
  static const vpcNetworks =
      ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext._(
        TfArgLiteral('VPC_NETWORKS'),
      );

  static const List<ComputeRegionNetworkFirewallPolicyRuleSrcNetworkContext>
  values = [unspecified, internet, intraVpc, nonInternet, vpcNetworks];
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleLayer4Configs {
  const ComputeRegionNetworkFirewallPolicyRuleLayer4Configs({
    required this.ipProtocol,
    this.ports,
  });

  final TfArg<String> ipProtocol;

  final TfArg<List<String>>? ports;

  @internal
  Map<String, Object?> encode() => {
    'ip_protocol': ipProtocol.toTfJson(),
    'ports': ?ports?.toTfJson(),
  };
}

/// Typed helper for the `match.src_secure_tags` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleSrcSecureTags {
  const ComputeRegionNetworkFirewallPolicyRuleSrcSecureTags({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleTargetSecureTags {
  const ComputeRegionNetworkFirewallPolicyRuleTargetSecureTags({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_region_network_firewall_policy_rule`.
///
/// Represents a rule that describes one or more match conditions along with the
/// action to be taken when traffic matches this condition (allow or deny).
///
/// Regional network firewall policy rule — allow/deny match on a
/// [GoogleComputeRegionNetworkFirewallPolicy].
///
/// Minimal ingress allow example (any source, TCP 443):
/// ```dart
/// GoogleComputeRegionNetworkFirewallPolicyRule(
///   'allow_https',
///   firewallPolicy: policy.ref,
///   region: TfArg.literal('asia-northeast1'),
///   priority: TfArg.literal(1000),
///   action: TfArg.literal('allow'),
///   direction: ComputeRegionNetworkFirewallPolicyRuleDirection.ingress,
///   match: ComputeRegionNetworkFirewallPolicyRuleMatch(
///     srcIpRanges: TfArg.literal(['0.0.0.0/0']),
///     layer4Configs: [
///       .new(
///         ipProtocol: TfArg.literal('tcp'),
///         ports: TfArg.literal(['443']),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleComputeRegionNetworkFirewallPolicyRule extends Resource {
  static const String tfType =
      'google_compute_region_network_firewall_policy_rule';

  GoogleComputeRegionNetworkFirewallPolicyRule(
    super.localName, {
    required RefTo<GoogleComputeRegionNetworkFirewallPolicy> firewallPolicy,
    TfArg<String>? region,
    required TfArg<num> priority,
    required TfArg<String> action,
    required ComputeRegionNetworkFirewallPolicyRuleDirection direction,
    required ComputeRegionNetworkFirewallPolicyRuleMatch match,
    TfArg<String>? ruleName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<List<String>>? targetServiceAccounts,
    TfArg<String>? project,
    List<ComputeRegionNetworkFirewallPolicyRuleTargetSecureTags>?
    targetSecureTags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_policy': firewallPolicy.encodeAs('name'),
           'region': ?region,
           'priority': priority,
           'action': action,
           'direction': direction,
           'match': TfArg.literal(match.encode()),
           'rule_name': ?ruleName,
           'description': ?description,
           'disabled': ?disabled,
           'enable_logging': ?enableLogging,
           'target_service_accounts': ?targetServiceAccounts,
           'project': ?project,
           if (targetSecureTags != null)
             'target_secure_tags': TfArg.literal([
               for (final e in targetSecureTags) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkFirewallPolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionNetworkFirewallPolicyRule>`.
  RefTo<GoogleComputeRegionNetworkFirewallPolicyRule> get ref => RefTo.of(this);

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `enable_logging` attribute.
  TfRef<bool> get enableLogging =>
      TfRef.attribute<bool>(this, 'enable_logging');

  /// Reference to `firewall_policy` attribute.
  TfRef<String> get firewallPolicy =>
      TfRef.attribute<String>(this, 'firewall_policy');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `security_profile_group` attribute.
  TfRef<String> get securityProfileGroup =>
      TfRef.attribute<String>(this, 'security_profile_group');

  /// Reference to `target_forwarding_rules` attribute.
  TfRef<List<String>> get targetForwardingRules =>
      TfRef.attribute<List<String>>(this, 'target_forwarding_rules');

  /// Reference to `target_service_accounts` attribute.
  TfRef<List<String>> get targetServiceAccounts =>
      TfRef.attribute<List<String>>(this, 'target_service_accounts');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');

  /// Reference to `tls_inspect` attribute.
  TfRef<bool> get tlsInspect => TfRef.attribute<bool>(this, 'tls_inspect');
}
