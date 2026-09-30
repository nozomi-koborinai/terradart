// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall_policy_rule`.
const Set<String> _googleComputeFirewallPolicyRuleSensitive = <String>{};

/// Compute Firewall Policy Rule enum for `direction`.
enum ComputeFirewallPolicyRuleDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const ComputeFirewallPolicyRuleDirection(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<ComputeFirewallPolicyRuleMatchDestNetworkContext>?
  destNetworkContext;

  final TfArg<List<String>>? destRegionCodes;

  final TfArg<List<String>>? destThreatIntelligences;

  final TfArg<List<String>>? srcAddressGroups;

  final TfArg<List<String>>? srcFqdns;

  final TfArg<List<String>>? srcIpRanges;

  final TfArg<ComputeFirewallPolicyRuleMatchSrcNetworkContext>?
  srcNetworkContext;

  final TfArg<List<String>>? srcNetworks;

  final TfArg<List<String>>? srcRegionCodes;

  final TfArg<List<String>>? srcThreatIntelligences;

  final List<ComputeFirewallPolicyRuleMatchLayer4Configs> layer4Configs;

  final List<ComputeFirewallPolicyRuleMatchSrcSecureTags>? srcSecureTags;

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
enum ComputeFirewallPolicyRuleMatchDestNetworkContext implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  internet('INTERNET'),
  intraVpc('INTRA_VPC'),
  nonInternet('NON_INTERNET'),
  vpcNetworks('VPC_NETWORKS');

  const ComputeFirewallPolicyRuleMatchDestNetworkContext(this.terraformValue);
  @override
  final String terraformValue;
}

/// `src_network_context` — derived from the provider schema description.
enum ComputeFirewallPolicyRuleMatchSrcNetworkContext implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  internet('INTERNET'),
  intraVpc('INTRA_VPC'),
  nonInternet('NON_INTERNET'),
  vpcNetworks('VPC_NETWORKS');

  const ComputeFirewallPolicyRuleMatchSrcNetworkContext(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleMatchLayer4Configs {
  const ComputeFirewallPolicyRuleMatchLayer4Configs({
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
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleMatchSrcSecureTags {
  const ComputeFirewallPolicyRuleMatchSrcSecureTags({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_firewall_policy_rule` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyRuleTargetSecureTags {
  const ComputeFirewallPolicyRuleTargetSecureTags({this.name});

  final TfArg<String>? name;

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

  GoogleComputeFirewallPolicyRule({
    required super.localName,
    required TfArg<String> firewallPolicy,
    required TfArg<num> priority,
    required TfArg<String> action,
    required TfArg<ComputeFirewallPolicyRuleDirection> direction,
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
           'firewall_policy': firewallPolicy,
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
