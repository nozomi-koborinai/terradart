// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_backend_bucket_iam_policy`.
const Set<String> _googleComputeRegionBackendBucketIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_backend_bucket_iam_policy`.
///
/// Authoritative IAM policy for a Compute Region Backend Bucket.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleComputeRegionBackendBucketIamMember] for additive grants.
final class GoogleComputeRegionBackendBucketIamPolicy extends Resource {
  static const String tfType =
      'google_compute_region_backend_bucket_iam_policy';

  GoogleComputeRegionBackendBucketIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendBucketIamPolicySensitive;
}
