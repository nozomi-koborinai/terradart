// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_subnetwork_iam_policy.dart';
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_subnetwork_iam_policy`.
const Set<String> _googleComputeSubnetworkIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_subnetwork_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeSubnetworkIamPolicy extends Data {
  static const String tfType = 'google_compute_subnetwork_iam_policy';

  DataGoogleComputeSubnetworkIamPolicy(
    super.localName, {
    TfArg<String>? project,
    TfArg<String>? region,
    required RefTo<GoogleComputeSubnetwork> subnetwork,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': ?project,
           'region': ?region,
           'subnetwork': subnetwork.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworkIamPolicySensitive;

  /// A reference to the `google_compute_subnetwork_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeSubnetworkIamPolicy>`.
  RefTo<GoogleComputeSubnetworkIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
