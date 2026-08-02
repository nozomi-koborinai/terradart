// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleComputeSubnetworkIamPolicy({
    required super.localName,
    required TfArg<String> subnetwork,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subnetwork': subnetwork,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworkIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
