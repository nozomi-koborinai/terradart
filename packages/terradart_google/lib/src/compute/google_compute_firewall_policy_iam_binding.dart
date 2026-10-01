// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_firewall_policy.dart'
    show GoogleComputeFirewallPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_firewall_policy_iam_binding`.
const Set<String> _googleComputeFirewallPolicyIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_firewall_policy_iam_binding` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyIamBindingCondition {
  const ComputeFirewallPolicyIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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

  GoogleComputeFirewallPolicyIamBinding(
    super.localName, {
    required RefTo<GoogleComputeFirewallPolicy> firewallPolicy,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ComputeFirewallPolicyIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': firewallPolicy.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeFirewallPolicyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFirewallPolicyIamBinding>`.
  RefTo<GoogleComputeFirewallPolicyIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
