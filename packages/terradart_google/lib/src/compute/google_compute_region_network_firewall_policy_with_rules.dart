// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_firewall_policy_with_rules`.
const Set<String> _googleComputeRegionNetworkFirewallPolicyWithRulesSensitive =
    <String>{};

/// Compute Region Network Firewall Policy With Rules Policy enum for `policy_type`.
extension type const ComputeRegionNetworkFirewallPolicyWithRulesPolicyType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyWithRulesPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyWithRulesPolicyType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyWithRulesPolicyType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vpcPolicy =
      ComputeRegionNetworkFirewallPolicyWithRulesPolicyType._(
        TfArgLiteral('VPC_POLICY'),
      );
  static const rdmaRocePolicy =
      ComputeRegionNetworkFirewallPolicyWithRulesPolicyType._(
        TfArgLiteral('RDMA_ROCE_POLICY'),
      );
  static const rdmaFalconPolicy =
      ComputeRegionNetworkFirewallPolicyWithRulesPolicyType._(
        TfArgLiteral('RDMA_FALCON_POLICY'),
      );
  static const ullPolicy =
      ComputeRegionNetworkFirewallPolicyWithRulesPolicyType._(
        TfArgLiteral('ULL_POLICY'),
      );

  static const List<ComputeRegionNetworkFirewallPolicyWithRulesPolicyType>
  values = [vpcPolicy, rdmaRocePolicy, rdmaFalconPolicy, ullPolicy];
}

/// Typed helper for the `rule` block of
/// `google_compute_region_network_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyWithRulesRule {
  const ComputeRegionNetworkFirewallPolicyWithRulesRule({
    required this.action,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    required this.priority,
    this.ruleName,
    this.securityProfileGroup,
    this.targetForwardingRules,
    this.targetServiceAccounts,
    this.targetType,
    this.tlsInspect,
    required this.match,
    this.targetSecureTag,
  });

  final TfArg<String> action;

  final TfArg<String>? description;

  final ComputeRegionNetworkFirewallPolicyWithRulesDirection? direction;

  final TfArg<bool>? disabled;

  final TfArg<bool>? enableLogging;

  final TfArg<num> priority;

  final TfArg<String>? ruleName;

  final TfArg<String>? securityProfileGroup;

  final TfArg<List<String>>? targetForwardingRules;

  final TfArg<List<String>>? targetServiceAccounts;

  final ComputeRegionNetworkFirewallPolicyWithRulesTargetType? targetType;

  final TfArg<bool>? tlsInspect;

  final ComputeRegionNetworkFirewallPolicyWithRulesMatch match;

  final List<ComputeRegionNetworkFirewallPolicyWithRulesTargetSecureTag>?
  targetSecureTag;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'enable_logging': ?enableLogging?.toTfJson(),
    'priority': priority.toTfJson(),
    'rule_name': ?ruleName?.toTfJson(),
    'security_profile_group': ?securityProfileGroup?.toTfJson(),
    'target_forwarding_rules': ?targetForwardingRules?.toTfJson(),
    'target_service_accounts': ?targetServiceAccounts?.toTfJson(),
    'target_type': ?targetType?.toTfJson(),
    'tls_inspect': ?tlsInspect?.toTfJson(),
    'match': match.encode(),
    if (targetSecureTag != null)
      'target_secure_tag': [for (final e in targetSecureTag!) e.encode()],
  };
}

/// `direction` — derived from the provider schema description.
extension type const ComputeRegionNetworkFirewallPolicyWithRulesDirection._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyWithRulesDirection.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyWithRulesDirection.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyWithRulesDirection.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ingress = ComputeRegionNetworkFirewallPolicyWithRulesDirection._(
    TfArgLiteral('INGRESS'),
  );
  static const egress = ComputeRegionNetworkFirewallPolicyWithRulesDirection._(
    TfArgLiteral('EGRESS'),
  );

  static const List<ComputeRegionNetworkFirewallPolicyWithRulesDirection>
  values = [ingress, egress];
}

/// `target_type` — derived from the provider schema description.
extension type const ComputeRegionNetworkFirewallPolicyWithRulesTargetType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRegionNetworkFirewallPolicyWithRulesTargetType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRegionNetworkFirewallPolicyWithRulesTargetType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeRegionNetworkFirewallPolicyWithRulesTargetType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const instances =
      ComputeRegionNetworkFirewallPolicyWithRulesTargetType._(
        TfArgLiteral('INSTANCES'),
      );
  static const internalManagedLb =
      ComputeRegionNetworkFirewallPolicyWithRulesTargetType._(
        TfArgLiteral('INTERNAL_MANAGED_LB'),
      );

  static const List<ComputeRegionNetworkFirewallPolicyWithRulesTargetType>
  values = [instances, internalManagedLb];
}

/// Typed helper for the `rule.match` block of
/// `google_compute_region_network_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyWithRulesMatch {
  const ComputeRegionNetworkFirewallPolicyWithRulesMatch({
    this.destAddressGroups,
    this.destFqdns,
    this.destIpRanges,
    this.destRegionCodes,
    this.destThreatIntelligences,
    this.srcAddressGroups,
    this.srcFqdns,
    this.srcIpRanges,
    this.srcRegionCodes,
    this.srcThreatIntelligences,
    required this.layer4Config,
    this.srcSecureTag,
  });

  final TfArg<List<String>>? destAddressGroups;

  final TfArg<List<String>>? destFqdns;

  final TfArg<List<String>>? destIpRanges;

  final TfArg<List<String>>? destRegionCodes;

  final TfArg<List<String>>? destThreatIntelligences;

  final TfArg<List<String>>? srcAddressGroups;

  final TfArg<List<String>>? srcFqdns;

  final TfArg<List<String>>? srcIpRanges;

  final TfArg<List<String>>? srcRegionCodes;

  final TfArg<List<String>>? srcThreatIntelligences;

  final List<ComputeRegionNetworkFirewallPolicyWithRulesLayer4Config>
  layer4Config;

  final List<ComputeRegionNetworkFirewallPolicyWithRulesSrcSecureTag>?
  srcSecureTag;

  @internal
  Map<String, Object?> encode() => {
    'dest_address_groups': ?destAddressGroups?.toTfJson(),
    'dest_fqdns': ?destFqdns?.toTfJson(),
    'dest_ip_ranges': ?destIpRanges?.toTfJson(),
    'dest_region_codes': ?destRegionCodes?.toTfJson(),
    'dest_threat_intelligences': ?destThreatIntelligences?.toTfJson(),
    'src_address_groups': ?srcAddressGroups?.toTfJson(),
    'src_fqdns': ?srcFqdns?.toTfJson(),
    'src_ip_ranges': ?srcIpRanges?.toTfJson(),
    'src_region_codes': ?srcRegionCodes?.toTfJson(),
    'src_threat_intelligences': ?srcThreatIntelligences?.toTfJson(),
    'layer4_config': [for (final e in layer4Config) e.encode()],
    if (srcSecureTag != null)
      'src_secure_tag': [for (final e in srcSecureTag!) e.encode()],
  };
}

/// Typed helper for the `rule.match.layer4_config` block of
/// `google_compute_region_network_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyWithRulesLayer4Config {
  const ComputeRegionNetworkFirewallPolicyWithRulesLayer4Config({
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

/// Typed helper for the `rule.match.src_secure_tag` block of
/// `google_compute_region_network_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyWithRulesSrcSecureTag {
  const ComputeRegionNetworkFirewallPolicyWithRulesSrcSecureTag({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `rule.target_secure_tag` block of
/// `google_compute_region_network_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeRegionNetworkFirewallPolicyWithRulesTargetSecureTag {
  const ComputeRegionNetworkFirewallPolicyWithRulesTargetSecureTag({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_region_network_firewall_policy_with_rules`.
///
/// The Compute NetworkFirewallPolicy with rules resource
///
/// Regional network firewall policy that embeds its rules in one resource
/// (`rule` blocks) instead of separate
/// `google_compute_region_network_firewall_policy_rule` children. Prefer the
/// split policy + rule factories when rules are owned by multiple stacks.
final class GoogleComputeRegionNetworkFirewallPolicyWithRules extends Resource {
  static const String tfType =
      'google_compute_region_network_firewall_policy_with_rules';

  GoogleComputeRegionNetworkFirewallPolicyWithRules(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required List<ComputeRegionNetworkFirewallPolicyWithRulesRule> rule,
    TfArg<String>? description,
    TfArg<String>? policyType,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
           'description': ?description,
           'policy_type': ?policyType,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkFirewallPolicyWithRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionNetworkFirewallPolicyWithRules>`.
  RefTo<GoogleComputeRegionNetworkFirewallPolicyWithRules> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `network_firewall_policy_id` attribute.
  TfRef<String> get networkFirewallPolicyId =>
      TfRef.attribute<String>(this, 'network_firewall_policy_id');

  /// Reference to `predefined_rules` attribute.
  TfRef<List<Map<String, Object?>>> get predefinedRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'predefined_rules');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
