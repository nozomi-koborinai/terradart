// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_firewall_policy.dart'
    show GoogleComputeFirewallPolicy;

/// Sensitive field paths for `google_compute_firewall_policy_rule`.
const Set<String> _googleComputeFirewallPolicyRuleSensitive = <String>{};

/// Compute Firewall Policy Rule enum for `direction`.
extension type const ComputeFirewallPolicyRuleDirection._(TfArg<String> _)
    implements TfArg<String> {
  ComputeFirewallPolicyRuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFirewallPolicyRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFirewallPolicyRuleDirection.arg(TfArg<String> arg) : this._(arg);

  static const ingress = ComputeFirewallPolicyRuleDirection._(
    TfArgLiteral('INGRESS'),
  );
  static const egress = ComputeFirewallPolicyRuleDirection._(
    TfArgLiteral('EGRESS'),
  );

  static const List<ComputeFirewallPolicyRuleDirection> values = [
    ingress,
    egress,
  ];
}

/// Typed helper for the `match` block of
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleMatch {
  const ComputeFirewallPolicyRuleMatch({
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

  final ComputeFirewallPolicyRuleDestNetworkContext? destNetworkContext;

  final TfArg<List<String>>? destRegionCodes;

  final TfArg<List<String>>? destThreatIntelligences;

  final TfArg<List<String>>? srcAddressGroups;

  final TfArg<List<String>>? srcFqdns;

  final TfArg<List<String>>? srcIpRanges;

  final ComputeFirewallPolicyRuleSrcNetworkContext? srcNetworkContext;

  final TfArg<List<String>>? srcNetworks;

  final TfArg<List<String>>? srcRegionCodes;

  final TfArg<List<String>>? srcThreatIntelligences;

  final List<ComputeFirewallPolicyRuleLayer4Configs> layer4Configs;

  final List<ComputeFirewallPolicyRuleSrcSecureTags>? srcSecureTags;

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
extension type const ComputeFirewallPolicyRuleDestNetworkContext._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeFirewallPolicyRuleDestNetworkContext.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFirewallPolicyRuleDestNetworkContext.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFirewallPolicyRuleDestNetworkContext.arg(TfArg<String> arg)
    : this._(arg);

  static const unspecified = ComputeFirewallPolicyRuleDestNetworkContext._(
    TfArgLiteral('UNSPECIFIED'),
  );
  static const internet = ComputeFirewallPolicyRuleDestNetworkContext._(
    TfArgLiteral('INTERNET'),
  );
  static const intraVpc = ComputeFirewallPolicyRuleDestNetworkContext._(
    TfArgLiteral('INTRA_VPC'),
  );
  static const nonInternet = ComputeFirewallPolicyRuleDestNetworkContext._(
    TfArgLiteral('NON_INTERNET'),
  );
  static const vpcNetworks = ComputeFirewallPolicyRuleDestNetworkContext._(
    TfArgLiteral('VPC_NETWORKS'),
  );

  static const List<ComputeFirewallPolicyRuleDestNetworkContext> values = [
    unspecified,
    internet,
    intraVpc,
    nonInternet,
    vpcNetworks,
  ];
}

/// `src_network_context` — derived from the provider schema description.
extension type const ComputeFirewallPolicyRuleSrcNetworkContext._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeFirewallPolicyRuleSrcNetworkContext.variable(String name)
    : this._(TfArg.variable(name));
  ComputeFirewallPolicyRuleSrcNetworkContext.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeFirewallPolicyRuleSrcNetworkContext.arg(TfArg<String> arg)
    : this._(arg);

  static const unspecified = ComputeFirewallPolicyRuleSrcNetworkContext._(
    TfArgLiteral('UNSPECIFIED'),
  );
  static const internet = ComputeFirewallPolicyRuleSrcNetworkContext._(
    TfArgLiteral('INTERNET'),
  );
  static const intraVpc = ComputeFirewallPolicyRuleSrcNetworkContext._(
    TfArgLiteral('INTRA_VPC'),
  );
  static const nonInternet = ComputeFirewallPolicyRuleSrcNetworkContext._(
    TfArgLiteral('NON_INTERNET'),
  );
  static const vpcNetworks = ComputeFirewallPolicyRuleSrcNetworkContext._(
    TfArgLiteral('VPC_NETWORKS'),
  );

  static const List<ComputeFirewallPolicyRuleSrcNetworkContext> values = [
    unspecified,
    internet,
    intraVpc,
    nonInternet,
    vpcNetworks,
  ];
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleLayer4Configs {
  const ComputeFirewallPolicyRuleLayer4Configs({
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
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleSrcSecureTags {
  const ComputeFirewallPolicyRuleSrcSecureTags({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleTargetSecureTags {
  const ComputeFirewallPolicyRuleTargetSecureTags({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_firewall_policy_rule`.
///
/// Represents a rule that describes one or more match conditions along with the
/// action to be taken when traffic matches this condition (allow or deny).
///
/// Rule on a hierarchical [GoogleComputeFirewallPolicy].
///
/// Valid [action] values include `allow`, `deny`, `goto_next`, and
/// `apply_security_profile_group`. Org-scoped parent path — not
/// standalone-project applyable on terradart-validate (ships via
/// `tool/example_debt.yaml`).
final class GoogleComputeFirewallPolicyRule extends Resource {
  static const String tfType = 'google_compute_firewall_policy_rule';

  GoogleComputeFirewallPolicyRule(
    super.localName, {
    required RefTo<GoogleComputeFirewallPolicy> firewallPolicy,
    required TfArg<num> priority,
    required TfArg<String> action,
    required ComputeFirewallPolicyRuleDirection direction,
    required ComputeFirewallPolicyRuleMatch match,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<List<String>>? targetResources,
    TfArg<List<String>>? targetServiceAccounts,
    List<ComputeFirewallPolicyRuleTargetSecureTags>? targetSecureTags,
    TfArg<String>? securityProfileGroup,
    TfArg<bool>? tlsInspect,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_policy': firewallPolicy.encodeAs('name'),
           'priority': priority,
           'action': action,
           'direction': direction,
           'match': TfArg.literal(match.encode()),
           'description': ?description,
           'disabled': ?disabled,
           'enable_logging': ?enableLogging,
           'target_resources': ?targetResources,
           'target_service_accounts': ?targetServiceAccounts,
           if (targetSecureTags != null)
             'target_secure_tags': TfArg.literal([
               for (final e in targetSecureTags) e.encode(),
             ]),
           'security_profile_group': ?securityProfileGroup,
           'tls_inspect': ?tlsInspect,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeFirewallPolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFirewallPolicyRule>`.
  RefTo<GoogleComputeFirewallPolicyRule> get ref => RefTo.of(this);

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

  /// Reference to `security_profile_group` attribute.
  TfRef<String> get securityProfileGroup =>
      TfRef.attribute<String>(this, 'security_profile_group');

  /// Reference to `target_resources` attribute.
  TfRef<List<String>> get targetResources =>
      TfRef.attribute<List<String>>(this, 'target_resources');

  /// Reference to `target_service_accounts` attribute.
  TfRef<List<String>> get targetServiceAccounts =>
      TfRef.attribute<List<String>>(this, 'target_service_accounts');

  /// Reference to `tls_inspect` attribute.
  TfRef<bool> get tlsInspect => TfRef.attribute<bool>(this, 'tls_inspect');
}
