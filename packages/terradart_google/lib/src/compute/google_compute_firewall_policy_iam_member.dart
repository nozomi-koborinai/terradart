// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_firewall_policy.dart'
    show GoogleComputeFirewallPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_firewall_policy_iam_member`.
const Set<String> _googleComputeFirewallPolicyIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_firewall_policy_iam_member` (derived from provider schema).
@immutable
final class ComputeFirewallPolicyIamMemberCondition {
  const ComputeFirewallPolicyIamMemberCondition({
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

/// Factory wrapper for `google_compute_firewall_policy_iam_member`.
///
/// Non-authoritative IAM member on a hierarchical firewall policy.
///
/// Requires an org/folder [GoogleComputeFirewallPolicy] parent — deferred
/// with the org-scoped policy (no apply-smoke quickstart).
final class GoogleComputeFirewallPolicyIamMember extends Resource {
  static const String tfType = 'google_compute_firewall_policy_iam_member';

  GoogleComputeFirewallPolicyIamMember(
    super.localName, {
    required RefTo<GoogleComputeFirewallPolicy> firewallPolicy,
    required TfArg<String> role,
    required IamPrincipal member,
    ComputeFirewallPolicyIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': firewallPolicy.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeFirewallPolicyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFirewallPolicyIamMember>`.
  RefTo<GoogleComputeFirewallPolicyIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
