// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleComputeNetworkFirewallPolicyIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'policy_data': policyData, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkFirewallPolicyIamPolicy>`.
  RefTo<GoogleComputeNetworkFirewallPolicyIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
