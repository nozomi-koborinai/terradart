// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_network_firewall_policy_iam_policy.dart';

/// Sensitive field paths for `google_compute_network_firewall_policy_iam_policy`.
const Set<String> _googleComputeNetworkFirewallPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_firewall_policy_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeNetworkFirewallPolicyIamPolicy extends Data {
  static const String tfType =
      'google_compute_network_firewall_policy_iam_policy';

  DataGoogleComputeNetworkFirewallPolicyIamPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkFirewallPolicyIamPolicySensitive;

  /// A reference to the `google_compute_network_firewall_policy_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeNetworkFirewallPolicyIamPolicy>`.
  // ignore: invalid_use_of_internal_member
  RefTo<GoogleComputeNetworkFirewallPolicyIamPolicy> get ref =>
      RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
