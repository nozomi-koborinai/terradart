// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_iam_policy`.
const Set<String> _googleIamWorkloadIdentityPoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_iam_policy`.
///
/// Authoritative IAM policy for a Workload Identity Federation pool.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIamWorkloadIdentityPoolIamMember] for single-principal grants.
final class GoogleIamWorkloadIdentityPoolIamPolicy extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_iam_policy';

  GoogleIamWorkloadIdentityPoolIamPolicy({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPoolIamPolicy>`.
  RefTo<GoogleIamWorkloadIdentityPoolIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_identity_pool_id` attribute.
  TfRef<String> get workloadIdentityPoolIdRef =>
      TfRef.attribute<String>(this, 'workload_identity_pool_id');
}
