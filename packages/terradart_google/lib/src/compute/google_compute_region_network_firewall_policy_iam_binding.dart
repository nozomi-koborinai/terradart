// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_firewall_policy_iam_binding`.
const Set<String> _googleComputeRegionNetworkFirewallPolicyIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_network_firewall_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a regional network
/// firewall policy.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeRegionNetworkFirewallPolicyIamMember] for additive grants.
final class GoogleComputeRegionNetworkFirewallPolicyIamBinding
    extends Resource {
  static const String tfType =
      'google_compute_region_network_firewall_policy_iam_binding';

  GoogleComputeRegionNetworkFirewallPolicyIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkFirewallPolicyIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
