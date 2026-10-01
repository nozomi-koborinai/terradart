// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_network_firewall_policy.dart'
    show GoogleComputeNetworkFirewallPolicy;

/// Sensitive field paths for `google_compute_network_firewall_policy_association`.
const Set<String> _googleComputeNetworkFirewallPolicyAssociationSensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_firewall_policy_association`.
///
/// The Compute NetworkFirewallPolicyAssociation resource
///
/// Associates a global [GoogleComputeNetworkFirewallPolicy] with a VPC
/// network ([attachmentTarget] = network self-link). One association per
/// network per policy.
final class GoogleComputeNetworkFirewallPolicyAssociation extends Resource {
  static const String tfType =
      'google_compute_network_firewall_policy_association';

  GoogleComputeNetworkFirewallPolicyAssociation({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleComputeNetworkFirewallPolicy> firewallPolicy,
    required RefTo<GoogleComputeNetwork> attachmentTarget,
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
           'firewall_policy': firewallPolicy.encodeAs('name'),
           'attachment_target': attachmentTarget.encodeAs('self_link'),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkFirewallPolicyAssociation>`.
  RefTo<GoogleComputeNetworkFirewallPolicyAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `attachment_target` attribute.
  TfRef<String> get attachmentTarget =>
      TfRef.attribute<String>(this, 'attachment_target');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `firewall_policy` attribute.
  TfRef<String> get firewallPolicy =>
      TfRef.attribute<String>(this, 'firewall_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
