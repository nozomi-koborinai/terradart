// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_firewall_policy_rule`.
const Set<String> _googleComputeNetworkFirewallPolicyRuleSensitive = <String>{};

/// Compute Network Firewall Policy Rule enum for `direction`.
enum ComputeNetworkFirewallPolicyRuleDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const ComputeNetworkFirewallPolicyRuleDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Network Firewall Policy Rule Target enum for `target_type`.
enum ComputeNetworkFirewallPolicyRuleTargetType implements TerraformEnum {
  instances('INSTANCES'),
  internalManagedLb('INTERNAL_MANAGED_LB');

  const ComputeNetworkFirewallPolicyRuleTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `match` block of
/// `google_compute_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyRuleMatch {
  const ComputeNetworkFirewallPolicyRuleMatch({
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

  final TfArg<ComputeNetworkFirewallPolicyRuleMatchDestNetworkContext>?
  destNetworkContext;

  final TfArg<List<String>>? destRegionCodes;

  final TfArg<List<String>>? destThreatIntelligences;

  final TfArg<List<String>>? srcAddressGroups;

  final TfArg<List<String>>? srcFqdns;

  final TfArg<List<String>>? srcIpRanges;

  final TfArg<ComputeNetworkFirewallPolicyRuleMatchSrcNetworkContext>?
  srcNetworkContext;

  final TfArg<List<String>>? srcNetworks;

  final TfArg<List<String>>? srcRegionCodes;

  final TfArg<List<String>>? srcThreatIntelligences;

  final List<ComputeNetworkFirewallPolicyRuleMatchLayer4Configs> layer4Configs;

  final List<ComputeNetworkFirewallPolicyRuleMatchSrcSecureTags>? srcSecureTags;

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
enum ComputeNetworkFirewallPolicyRuleMatchDestNetworkContext
    implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  internet('INTERNET'),
  intraVpc('INTRA_VPC'),
  nonInternet('NON_INTERNET'),
  vpcNetworks('VPC_NETWORKS');

  const ComputeNetworkFirewallPolicyRuleMatchDestNetworkContext(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `src_network_context` — derived from the provider schema description.
enum ComputeNetworkFirewallPolicyRuleMatchSrcNetworkContext
    implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  internet('INTERNET'),
  intraVpc('INTRA_VPC'),
  nonInternet('NON_INTERNET'),
  vpcNetworks('VPC_NETWORKS');

  const ComputeNetworkFirewallPolicyRuleMatchSrcNetworkContext(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyRuleMatchLayer4Configs {
  const ComputeNetworkFirewallPolicyRuleMatchLayer4Configs({
    required this.ipProtocol,
    this.ports,
  });

  final TfArg<String> ipProtocol;

  final TfArg<List<String>>? ports;

  Map<String, Object?> encode() => {
    'ip_protocol': ipProtocol.toTfJson(),
    'ports': ?ports?.toTfJson(),
  };
}

/// Typed helper for the `match.src_secure_tags` block of
/// `google_compute_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyRuleMatchSrcSecureTags {
  const ComputeNetworkFirewallPolicyRuleMatchSrcSecureTags({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyRuleTargetSecureTags {
  const ComputeNetworkFirewallPolicyRuleTargetSecureTags({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_network_firewall_policy_rule`.
///
/// Represents a rule that describes one or more match conditions along with the
/// action to be taken when traffic matches this condition (allow or deny).
///
/// Global network firewall policy rule — allow/deny match on a
/// [GoogleComputeNetworkFirewallPolicy].
///
/// Minimal ingress allow example (any source, TCP 443):
/// ```dart
/// GoogleComputeNetworkFirewallPolicyRule(
///   localName: 'allow_https',
///   firewallPolicy: TfArg.ref(policy.nameRef),
///   priority: TfArg.literal(1000),
///   action: TfArg.literal('allow'),
///   direction: TfArg.literal(
///     ComputeNetworkFirewallPolicyRuleDirection.ingress,
///   ),
///   match: ComputeNetworkFirewallPolicyRuleMatch(
///     srcIpRanges: TfArg.literal(['0.0.0.0/0']),
///     layer4Configs: [
///       ComputeNetworkFirewallPolicyRuleMatchLayer4Configs(
///         ipProtocol: TfArg.literal('tcp'),
///         ports: TfArg.literal(['443']),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleComputeNetworkFirewallPolicyRule extends Resource {
  static const String tfType = 'google_compute_network_firewall_policy_rule';

  GoogleComputeNetworkFirewallPolicyRule({
    required super.localName,
    required TfArg<String> firewallPolicy,
    required TfArg<num> priority,
    required TfArg<String> action,
    required TfArg<ComputeNetworkFirewallPolicyRuleDirection> direction,
    required ComputeNetworkFirewallPolicyRuleMatch match,
    TfArg<String>? ruleName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<List<String>>? targetServiceAccounts,
    List<ComputeNetworkFirewallPolicyRuleTargetSecureTags>? targetSecureTags,
    TfArg<String>? targetType,
    TfArg<List<String>>? targetForwardingRules,
    TfArg<String>? securityProfileGroup,
    TfArg<bool>? tlsInspect,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_policy': firewallPolicy,
           'priority': priority,
           'action': action,
           'direction': direction,
           'match': TfArg.literal(match.encode()),
           'rule_name': ?ruleName,
           'description': ?description,
           'disabled': ?disabled,
           'enable_logging': ?enableLogging,
           'target_service_accounts': ?targetServiceAccounts,
           if (targetSecureTags != null)
             'target_secure_tags': TfArg.literal([
               for (final e in targetSecureTags) e.encode(),
             ]),
           'target_type': ?targetType,
           'target_forwarding_rules': ?targetForwardingRules,
           'security_profile_group': ?securityProfileGroup,
           'tls_inspect': ?tlsInspect,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkFirewallPolicyRule>`.
  RefTo<GoogleComputeNetworkFirewallPolicyRule> get ref => RefTo.of(this);

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');
}
