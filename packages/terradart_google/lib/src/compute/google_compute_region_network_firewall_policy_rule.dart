// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_firewall_policy_rule`.
const Set<String> _googleComputeRegionNetworkFirewallPolicyRuleSensitive =
    <String>{};

/// Compute Region Network Firewall Policy Rule enum for `direction`.
enum ComputeRegionNetworkFirewallPolicyRuleDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const ComputeRegionNetworkFirewallPolicyRuleDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Region Network Firewall Policy Rule Target enum for `target_type`.
enum ComputeRegionNetworkFirewallPolicyRuleTargetType implements TerraformEnum {
  instances('INSTANCES'),
  internalManagedLb('INTERNAL_MANAGED_LB');

  const ComputeRegionNetworkFirewallPolicyRuleTargetType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<List<Object?>>? destAddressGroups;

  final TfArg<List<Object?>>? destFqdns;

  final TfArg<List<Object?>>? destIpRanges;

  final TfArg<ComputeRegionNetworkFirewallPolicyRuleMatchDestNetworkContext>?
  destNetworkContext;

  final TfArg<List<Object?>>? destRegionCodes;

  final TfArg<List<Object?>>? destThreatIntelligences;

  final TfArg<List<Object?>>? srcAddressGroups;

  final TfArg<List<Object?>>? srcFqdns;

  final TfArg<List<Object?>>? srcIpRanges;

  final TfArg<ComputeRegionNetworkFirewallPolicyRuleMatchSrcNetworkContext>?
  srcNetworkContext;

  final TfArg<List<Object?>>? srcNetworks;

  final TfArg<List<Object?>>? srcRegionCodes;

  final TfArg<List<Object?>>? srcThreatIntelligences;

  final List<ComputeRegionNetworkFirewallPolicyRuleMatchLayer4Configs>
  layer4Configs;

  final List<ComputeRegionNetworkFirewallPolicyRuleMatchSrcSecureTags>?
  srcSecureTags;

  Map<String, Object?> encode() => {
    if (destAddressGroups != null)
      'dest_address_groups': destAddressGroups!.toTfJson(),
    if (destFqdns != null) 'dest_fqdns': destFqdns!.toTfJson(),
    if (destIpRanges != null) 'dest_ip_ranges': destIpRanges!.toTfJson(),
    if (destNetworkContext != null)
      'dest_network_context': destNetworkContext!.toTfJson(),
    if (destRegionCodes != null)
      'dest_region_codes': destRegionCodes!.toTfJson(),
    if (destThreatIntelligences != null)
      'dest_threat_intelligences': destThreatIntelligences!.toTfJson(),
    if (srcAddressGroups != null)
      'src_address_groups': srcAddressGroups!.toTfJson(),
    if (srcFqdns != null) 'src_fqdns': srcFqdns!.toTfJson(),
    if (srcIpRanges != null) 'src_ip_ranges': srcIpRanges!.toTfJson(),
    if (srcNetworkContext != null)
      'src_network_context': srcNetworkContext!.toTfJson(),
    if (srcNetworks != null) 'src_networks': srcNetworks!.toTfJson(),
    if (srcRegionCodes != null) 'src_region_codes': srcRegionCodes!.toTfJson(),
    if (srcThreatIntelligences != null)
      'src_threat_intelligences': srcThreatIntelligences!.toTfJson(),
    'layer4_configs': [for (final e in layer4Configs) e.encode()],
    if (srcSecureTags != null)
      'src_secure_tags': [for (final e in srcSecureTags!) e.encode()],
  };
}

/// `dest_network_context` — derived from the provider schema description.
enum ComputeRegionNetworkFirewallPolicyRuleMatchDestNetworkContext
    implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  internet('INTERNET'),
  intraVpc('INTRA_VPC'),
  nonInternet('NON_INTERNET'),
  vpcNetworks('VPC_NETWORKS');

  const ComputeRegionNetworkFirewallPolicyRuleMatchDestNetworkContext(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `src_network_context` — derived from the provider schema description.
enum ComputeRegionNetworkFirewallPolicyRuleMatchSrcNetworkContext
    implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  internet('INTERNET'),
  intraVpc('INTRA_VPC'),
  nonInternet('NON_INTERNET'),
  vpcNetworks('VPC_NETWORKS');

  const ComputeRegionNetworkFirewallPolicyRuleMatchSrcNetworkContext(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleMatchLayer4Configs {
  const ComputeRegionNetworkFirewallPolicyRuleMatchLayer4Configs({
    required this.ipProtocol,
    this.ports,
  });

  final TfArg<String> ipProtocol;

  final TfArg<List<Object?>>? ports;

  Map<String, Object?> encode() => {
    'ip_protocol': ipProtocol.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
  };
}

/// Typed helper for the `match.src_secure_tags` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleMatchSrcSecureTags {
  const ComputeRegionNetworkFirewallPolicyRuleMatchSrcSecureTags({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_region_network_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyRuleTargetSecureTags {
  const ComputeRegionNetworkFirewallPolicyRuleTargetSecureTags({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
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
///   localName: 'allow_https',
///   firewallPolicy: TfArg.ref(policy.nameRef),
///   region: TfArg.literal('asia-northeast1'),
///   priority: TfArg.literal(1000),
///   action: TfArg.literal('allow'),
///   direction: TfArg.literal(
///     ComputeRegionNetworkFirewallPolicyRuleDirection.ingress,
///   ),
///   match: ComputeRegionNetworkFirewallPolicyRuleMatch(
///     srcIpRanges: TfArg.literal(['0.0.0.0/0']),
///     layer4Configs: [
///       ComputeRegionNetworkFirewallPolicyRuleMatchLayer4Configs(
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

  GoogleComputeRegionNetworkFirewallPolicyRule({
    required super.localName,
    required TfArg<String> firewallPolicy,
    TfArg<String>? region,
    required TfArg<num> priority,
    required TfArg<String> action,
    required TfArg<ComputeRegionNetworkFirewallPolicyRuleDirection> direction,
    required ComputeRegionNetworkFirewallPolicyRuleMatch match,
    TfArg<String>? ruleName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<List<String>>? targetServiceAccounts,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_policy': firewallPolicy,
           if (region != null) 'region': region,
           'priority': priority,
           'action': action,
           'direction': direction,
           'match': TfArg.literal(match.encode()),
           if (ruleName != null) 'rule_name': ruleName,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (enableLogging != null) 'enable_logging': enableLogging,
           if (targetServiceAccounts != null)
             'target_service_accounts': targetServiceAccounts,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkFirewallPolicyRuleSensitive;

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
