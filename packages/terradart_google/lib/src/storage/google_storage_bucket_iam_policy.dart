// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket_iam_policy`.
const Set<String> _googleStorageBucketIamPolicySensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Storage bucket.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleStorageBucketIamMember] for single-principal grants.
final class GoogleStorageBucketIamPolicy extends Resource {
  static const String tfType = 'google_storage_bucket_iam_policy';

  GoogleStorageBucketIamPolicy({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'bucket': bucket, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
