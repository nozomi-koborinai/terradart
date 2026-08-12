// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_firewall_policy_association`.
const Set<String>
_googleComputeRegionNetworkFirewallPolicyAssociationSensitive = <String>{};

/// Factory wrapper for `google_compute_region_network_firewall_policy_association`.
///
/// The Compute NetworkFirewallPolicyAssociation resource
///
/// Associates a regional [GoogleComputeRegionNetworkFirewallPolicy] with a
/// VPC network ([attachmentTarget] = network self-link). Regional sibling
/// of [GoogleComputeNetworkFirewallPolicyAssociation].
final class GoogleComputeRegionNetworkFirewallPolicyAssociation
    extends Resource {
  static const String tfType =
      'google_compute_region_network_firewall_policy_association';

  GoogleComputeRegionNetworkFirewallPolicyAssociation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> firewallPolicy,
    required TfArg<String> attachmentTarget,
    TfArg<String>? region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'firewall_policy': firewallPolicy,
           'attachment_target': attachmentTarget,
           if (region != null) 'region': region,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkFirewallPolicyAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
