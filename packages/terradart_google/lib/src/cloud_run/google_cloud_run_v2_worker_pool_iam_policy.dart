// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_worker_pool_iam_policy`.
const Set<String> _googleCloudRunV2WorkerPoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_worker_pool_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Run v2 worker pool.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleCloudRunV2WorkerPoolIamMember] for single-principal grants.
final class GoogleCloudRunV2WorkerPoolIamPolicy extends Resource {
  static const String tfType = 'google_cloud_run_v2_worker_pool_iam_policy';

  GoogleCloudRunV2WorkerPoolIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudRunV2WorkerPoolIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
