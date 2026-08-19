// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_firewall_policy_packet_mirroring_rule`.
const Set<String>
_googleComputeNetworkFirewallPolicyPacketMirroringRuleSensitive = <String>{};

/// Factory wrapper for `google_compute_network_firewall_policy_packet_mirroring_rule`.
final class GoogleComputeNetworkFirewallPolicyPacketMirroringRule
    extends Resource {
  static const String tfType =
      'google_compute_network_firewall_policy_packet_mirroring_rule';

  GoogleComputeNetworkFirewallPolicyPacketMirroringRule({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> direction,
    TfArg<bool>? disabled,
    required TfArg<String> firewallPolicy,
    required TfArg<num> priority,
    TfArg<String>? project,
    TfArg<String>? ruleName,
    TfArg<String>? securityProfileGroup,
    TfArg<bool>? tlsInspect,
    required TfArg<Map<String, dynamic>> match,
    TfArg<List<Map<String, dynamic>>>? targetSecureTags,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
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
           'match': match,
           if (targetSecureTags != null) 'target_secure_tags': targetSecureTags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyPacketMirroringRuleSensitive;
}
