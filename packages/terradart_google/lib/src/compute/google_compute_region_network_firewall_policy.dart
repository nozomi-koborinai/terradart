// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_firewall_policy`.
const Set<String> _googleComputeRegionNetworkFirewallPolicySensitive =
    <String>{};

/// Compute Region Network Firewall Policy Policy enum for `policy_type`.
enum ComputeRegionNetworkFirewallPolicyPolicyType implements TerraformEnum {
  vpcPolicy('VPC_POLICY'),
  rdmaRocePolicy('RDMA_ROCE_POLICY'),
  rdmaFalconPolicy('RDMA_FALCON_POLICY'),
  ullPolicy('ULL_POLICY');

  const ComputeRegionNetworkFirewallPolicyPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_region_network_firewall_policy`.
///
/// The Compute NetworkFirewallPolicy resource
final class GoogleComputeRegionNetworkFirewallPolicy extends Resource {
  static const String tfType = 'google_compute_region_network_firewall_policy';

  GoogleComputeRegionNetworkFirewallPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<ComputeRegionNetworkFirewallPolicyPolicyType>? policyType,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (policyType != null) 'policy_type': policyType,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkFirewallPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `region_network_firewall_policy_id` attribute.
  TfRef<String> get regionNetworkFirewallPolicyId =>
      TfRef.attribute<String>(this, 'region_network_firewall_policy_id');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');
}
