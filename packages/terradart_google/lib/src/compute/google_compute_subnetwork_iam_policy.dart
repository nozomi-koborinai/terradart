// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_subnetwork_iam_policy`.
const Set<String> _googleComputeSubnetworkIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_subnetwork_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine subnetwork.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleComputeSubnetworkIamMember] for single-principal grants.
final class GoogleComputeSubnetworkIamPolicy extends Resource {
  static const String tfType = 'google_compute_subnetwork_iam_policy';

  GoogleComputeSubnetworkIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeSubnetwork> subnetwork,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subnetwork': subnetwork.encodeAs('id'),
           'policy_data': policyData,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworkIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSubnetworkIamPolicy>`.
  RefTo<GoogleComputeSubnetworkIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');
}
