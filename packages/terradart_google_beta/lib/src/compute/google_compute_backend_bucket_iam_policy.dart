// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeBackendBucket;

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

  GoogleComputeBackendBucketIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeBackendBucket> backendBucket,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'name': backendBucket.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? backendBucket.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendBucketIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendBucketIamPolicy>`.
  RefTo<GoogleComputeBackendBucketIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
