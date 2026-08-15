// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_subnetwork_iam_policy`.
const Set<String> _googleComputeSubnetworkIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_subnetwork_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeSubnetworkIamPolicy extends Data {
  static const String tfType = 'google_compute_subnetwork_iam_policy';

  DataGoogleComputeSubnetworkIamPolicy({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> subnetwork,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'subnetwork': subnetwork,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworkIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
