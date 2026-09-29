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
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {'name': name, 'policy_data': policyData, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendBucketIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendBucketIamPolicy>`.
  RefTo<GoogleComputeBackendBucketIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
