// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_backend_bucket.dart'
    show GoogleComputeRegionBackendBucket;

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
    required RefTo<GoogleComputeRegionBackendBucket> backendBucket,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
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
           'region': ?(region ?? backendBucket.alsoAs('region')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendBucketIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionBackendBucketIamPolicy>`.
  RefTo<GoogleComputeRegionBackendBucketIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
