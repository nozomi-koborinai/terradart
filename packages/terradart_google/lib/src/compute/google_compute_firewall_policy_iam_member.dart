// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall_policy_iam_member`.
const Set<String> _googleComputeFirewallPolicyIamMemberSensitive = <String>{};

/// Factory wrapper for `google_compute_firewall_policy_iam_member`.
///
/// Non-authoritative IAM member on a hierarchical firewall policy.
///
/// Requires an org/folder [GoogleComputeFirewallPolicy] parent — deferred
/// with the org-scoped policy (no apply-smoke quickstart).
final class GoogleComputeFirewallPolicyIamMember extends Resource {
  static const String tfType = 'google_compute_firewall_policy_iam_member';

  GoogleComputeFirewallPolicyIamMember({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeFirewallPolicyIamMemberSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
