// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_iam_policy`.
const Set<String> _googleIamWorkloadIdentityPoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamWorkloadIdentityPoolIamPolicy extends Data {
  static const String tfType = 'google_iam_workload_identity_pool_iam_policy';

  DataGoogleIamWorkloadIdentityPoolIamPolicy({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> workloadIdentityPoolId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'workload_identity_pool_id': workloadIdentityPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
