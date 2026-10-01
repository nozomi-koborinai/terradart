// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network_firewall_policy.dart'
    show GoogleComputeNetworkFirewallPolicy;

/// Sensitive field paths for `google_compute_network_firewall_policy_iam_policy`.
const Set<String> _googleComputeNetworkFirewallPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_firewall_policy_iam_policy`.
///
/// Authoritative IAM policy for a global network firewall policy.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleComputeNetworkFirewallPolicyIamMember] for single-principal grants.
final class GoogleComputeNetworkFirewallPolicyIamPolicy extends Resource {
  static const String tfType =
      'google_compute_network_firewall_policy_iam_policy';

  GoogleComputeNetworkFirewallPolicyIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeNetworkFirewallPolicy> firewallPolicy,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': firewallPolicy.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? firewallPolicy.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkFirewallPolicyIamPolicy>`.
  RefTo<GoogleComputeNetworkFirewallPolicyIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
