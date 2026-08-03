// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall_policy_iam_binding`.
const Set<String> _googleComputeFirewallPolicyIamBindingSensitive = <String>{};

/// Factory wrapper for `google_compute_firewall_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a hierarchical
/// firewall policy.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeFirewallPolicyIamMember] for additive grants. Deferred
/// with the org-scoped policy (no apply-smoke quickstart).
final class GoogleComputeFirewallPolicyIamBinding extends Resource {
  static const String tfType = 'google_compute_firewall_policy_iam_binding';

  GoogleComputeFirewallPolicyIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeFirewallPolicyIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
