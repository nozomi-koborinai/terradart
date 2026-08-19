// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_bucket_iam_policy`.
const Set<String> _googleComputeBackendBucketIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_backend_bucket_iam_policy`.
///
/// Authoritative IAM policy for a Compute Backend Bucket.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleComputeBackendBucketIamMember] for additive grants.
final class GoogleComputeBackendBucketIamPolicy extends Resource {
  static const String tfType = 'google_compute_backend_bucket_iam_policy';

  GoogleComputeBackendBucketIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendBucketIamPolicySensitive;
}
