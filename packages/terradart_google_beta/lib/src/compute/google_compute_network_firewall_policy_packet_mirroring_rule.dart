// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeNetworkFirewallPolicy;

/// Sensitive field paths for `google_compute_network_firewall_policy_packet_mirroring_rule`.
const Set<String>
_googleComputeNetworkFirewallPolicyPacketMirroringRuleSensitive = <String>{};

/// Compute Network Firewall Policy Packet Mirroring Rule enum for `direction`.
enum ComputeNetworkFirewallPolicyPacketMirroringRuleDirection
    implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const ComputeNetworkFirewallPolicyPacketMirroringRuleDirection(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `match` block of
/// `google_compute_network_firewall_policy_packet_mirroring_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyPacketMirroringRuleMatch {
  const ComputeNetworkFirewallPolicyPacketMirroringRuleMatch({
    this.destIpRanges,
    this.srcIpRanges,
    required this.layer4Configs,
  });

  final TfArg<List<String>>? destIpRanges;

  final TfArg<List<String>>? srcIpRanges;

  final List<ComputeNetworkFirewallPolicyPacketMirroringRuleLayer4Configs>
  layer4Configs;

  Map<String, Object?> encode() => {
    'dest_ip_ranges': ?destIpRanges?.toTfJson(),
    'src_ip_ranges': ?srcIpRanges?.toTfJson(),
    'layer4_configs': [for (final e in layer4Configs) e.encode()],
  };
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_network_firewall_policy_packet_mirroring_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyPacketMirroringRuleLayer4Configs {
  const ComputeNetworkFirewallPolicyPacketMirroringRuleLayer4Configs({
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

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_network_firewall_policy_packet_mirroring_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyPacketMirroringRuleTargetSecureTags {
  const ComputeNetworkFirewallPolicyPacketMirroringRuleTargetSecureTags({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_network_firewall_policy_packet_mirroring_rule`.
///
/// Represents a packet mirroring rule that describes one or more match
/// conditions along with the action to be taken when traffic matches this
/// condition (mirror or do_not_mirror).
final class GoogleComputeNetworkFirewallPolicyPacketMirroringRule
    extends Resource {
  static const String tfType =
      'google_compute_network_firewall_policy_packet_mirroring_rule';

  GoogleComputeNetworkFirewallPolicyPacketMirroringRule({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<ComputeNetworkFirewallPolicyPacketMirroringRuleDirection>
    direction,
    TfArg<bool>? disabled,
    required RefTo<GoogleComputeNetworkFirewallPolicy> firewallPolicy,
    required TfArg<num> priority,
    TfArg<String>? project,
    TfArg<String>? ruleName,
    TfArg<String>? securityProfileGroup,
    TfArg<bool>? tlsInspect,
    required ComputeNetworkFirewallPolicyPacketMirroringRuleMatch match,
    List<ComputeNetworkFirewallPolicyPacketMirroringRuleTargetSecureTags>?
    targetSecureTags,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'action': action,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'direction': direction,
           'disabled': ?disabled,
           'firewall_policy': firewallPolicy.encodeAs('name'),
           'priority': priority,
           'project': ?project,
           'rule_name': ?ruleName,
           'security_profile_group': ?securityProfileGroup,
           'tls_inspect': ?tlsInspect,
           'match': TfArg.literal(match.encode()),
           if (targetSecureTags != null)
             'target_secure_tags': TfArg.literal([
               for (final e in targetSecureTags) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyPacketMirroringRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkFirewallPolicyPacketMirroringRule>`.
  RefTo<GoogleComputeNetworkFirewallPolicyPacketMirroringRule> get ref =>
      RefTo.of(this);

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

  /// Reference to `firewall_policy` attribute.
  TfRef<String> get firewallPolicy =>
      TfRef.attribute<String>(this, 'firewall_policy');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `security_profile_group` attribute.
  TfRef<String> get securityProfileGroup =>
      TfRef.attribute<String>(this, 'security_profile_group');

  /// Reference to `tls_inspect` attribute.
  TfRef<bool> get tlsInspect => TfRef.attribute<bool>(this, 'tls_inspect');
}
