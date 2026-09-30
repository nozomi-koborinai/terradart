// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall_policy_with_rules`.
const Set<String> _googleComputeFirewallPolicyWithRulesSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `google_compute_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyWithRulesRule {
  const ComputeFirewallPolicyWithRulesRule({
    required this.action,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    required this.priority,
    this.ruleName,
    this.securityProfileGroup,
    this.targetResources,
    this.targetServiceAccounts,
    this.tlsInspect,
    required this.match,
    this.targetSecureTag,
  });

  final TfArg<String> action;

  final TfArg<String>? description;

  final TfArg<ComputeFirewallPolicyWithRulesRuleDirection>? direction;

  final TfArg<bool>? disabled;

  final TfArg<bool>? enableLogging;

  final TfArg<num> priority;

  final TfArg<String>? ruleName;

  final TfArg<String>? securityProfileGroup;

  final TfArg<List<String>>? targetResources;

  final TfArg<List<String>>? targetServiceAccounts;

  final TfArg<bool>? tlsInspect;

  final ComputeFirewallPolicyWithRulesRuleMatch match;

  final List<ComputeFirewallPolicyWithRulesRuleTargetSecureTag>?
  targetSecureTag;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'enable_logging': ?enableLogging?.toTfJson(),
    'priority': priority.toTfJson(),
    'rule_name': ?ruleName?.toTfJson(),
    'security_profile_group': ?securityProfileGroup?.toTfJson(),
    'target_resources': ?targetResources?.toTfJson(),
    'target_service_accounts': ?targetServiceAccounts?.toTfJson(),
    'tls_inspect': ?tlsInspect?.toTfJson(),
    'match': match.encode(),
    if (targetSecureTag != null)
      'target_secure_tag': [for (final e in targetSecureTag!) e.encode()],
  };
}

/// `direction` — derived from the provider schema description.
enum ComputeFirewallPolicyWithRulesRuleDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const ComputeFirewallPolicyWithRulesRuleDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.match` block of
/// `google_compute_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyWithRulesRuleMatch {
  const ComputeFirewallPolicyWithRulesRuleMatch({
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

  final List<ComputeFirewallPolicyWithRulesRuleMatchLayer4Config> layer4Config;

  final List<ComputeFirewallPolicyWithRulesRuleMatchSrcSecureTag>? srcSecureTag;

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
/// `google_compute_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyWithRulesRuleMatchLayer4Config {
  const ComputeFirewallPolicyWithRulesRuleMatchLayer4Config({
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

/// Typed helper for the `rule.match.src_secure_tag` block of
/// `google_compute_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyWithRulesRuleMatchSrcSecureTag {
  const ComputeFirewallPolicyWithRulesRuleMatchSrcSecureTag({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `rule.target_secure_tag` block of
/// `google_compute_firewall_policy_with_rules` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyWithRulesRuleTargetSecureTag {
  const ComputeFirewallPolicyWithRulesRuleTargetSecureTag({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_firewall_policy_with_rules`.
///
/// The Compute FirewallPolicy with rules resource. It declaratively manges all
/// rules in the firewall policy.
///
/// Hierarchical firewall policy with inline rules — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputeFirewallPolicyWithRules extends Resource {
  static const String tfType = 'google_compute_firewall_policy_with_rules';

  GoogleComputeFirewallPolicyWithRules({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> parent,
    required TfArg<String> shortName,
    required List<ComputeFirewallPolicyWithRulesRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'parent': parent,
           'short_name': shortName,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeFirewallPolicyWithRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFirewallPolicyWithRules>`.
  RefTo<GoogleComputeFirewallPolicyWithRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `predefined_rules` attribute.
  TfRef<List<Map<String, Object?>>> get predefinedRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'predefined_rules');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}
