// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall_policy_association`.
const Set<String> _googleComputeFirewallPolicyAssociationSensitive = <String>{};

/// Factory wrapper for `google_compute_firewall_policy_association`.
///
/// Allows associating hierarchical firewall policies with the target where they
/// are applied. This allows creating policies and rules in a different location
/// than they are applied. For more information on applying hierarchical
/// firewall policies see the [official
/// documentation](https://cloud.google.com/firewall/docs/firewall-policies#managing_hierarchical_firewall_policy_resources)
///
/// Associates a hierarchical [GoogleComputeFirewallPolicy] with a folder,
/// organization, or network attachment target.
///
/// Org-scoped parent path — not standalone-project applyable on
/// terradart-validate (ships via `tool/example_debt.yaml`).
final class GoogleComputeFirewallPolicyAssociation extends Resource {
  static const String tfType = 'google_compute_firewall_policy_association';

  GoogleComputeFirewallPolicyAssociation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> firewallPolicy,
    required TfArg<String> attachmentTarget,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'firewall_policy': firewallPolicy,
           'attachment_target': attachmentTarget,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeFirewallPolicyAssociationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');
}
