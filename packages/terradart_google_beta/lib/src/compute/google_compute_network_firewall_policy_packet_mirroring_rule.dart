// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? destIpRanges;

  final TfArg<List<Object?>>? srcIpRanges;

  final List<ComputeNetworkFirewallPolicyPacketMirroringRuleMatchLayer4Configs>
  layer4Configs;

  Map<String, Object?> encode() => {
    if (destIpRanges != null) 'dest_ip_ranges': destIpRanges!.toTfJson(),
    if (srcIpRanges != null) 'src_ip_ranges': srcIpRanges!.toTfJson(),
    'layer4_configs': [for (final e in layer4Configs) e.encode()],
  };
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_network_firewall_policy_packet_mirroring_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyPacketMirroringRuleMatchLayer4Configs {
  const ComputeNetworkFirewallPolicyPacketMirroringRuleMatchLayer4Configs({
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

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_network_firewall_policy_packet_mirroring_rule` (derived from provider schema).
@immutable
final class ComputeNetworkFirewallPolicyPacketMirroringRuleTargetSecureTags {
  const ComputeNetworkFirewallPolicyPacketMirroringRuleTargetSecureTags({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
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
    required TfArg<String> firewallPolicy,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'direction': direction,
           if (disabled != null) 'disabled': disabled,
           'firewall_policy': firewallPolicy,
           'priority': priority,
           if (project != null) 'project': project,
           if (ruleName != null) 'rule_name': ruleName,
           if (securityProfileGroup != null)
             'security_profile_group': securityProfileGroup,
           if (tlsInspect != null) 'tls_inspect': tlsInspect,
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
