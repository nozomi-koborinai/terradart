// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall_policy`.
const Set<String> _googleComputeFirewallPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_firewall_policy`.
///
/// Hierarchical firewall policy rules let you create and enforce a consistent
/// firewall policy across your organization. Rules can explicitly allow or deny
/// connections or delegate evaluation to lower level policies. Policies can be
/// created within organizations or folders.
///
/// This resource should be generally be used with
/// `google_compute_firewall_policy_association` and
/// `google_compute_firewall_policy_rule`
///
/// For more information see the [official
/// documentation](https://cloud.google.com/vpc/docs/firewall-policies)
///
/// Hierarchical (organization / folder) firewall policy.
///
/// [parent] is an organization or folder (`organizations/{id}` or
/// `folders/{id}`). Pair with [GoogleComputeFirewallPolicyAssociation] and
/// [GoogleComputeFirewallPolicyRule]. Org-scoped — not standalone-project
/// applyable on terradart-validate (ships via `tool/example_debt.yaml`).
final class GoogleComputeFirewallPolicy extends Resource {
  static const String tfType = 'google_compute_firewall_policy';

  GoogleComputeFirewallPolicy({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> shortName,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'short_name': shortName,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeFirewallPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `firewall_policy_id` attribute.
  TfRef<String> get firewallPolicyId =>
      TfRef.attribute<String>(this, 'firewall_policy_id');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}
