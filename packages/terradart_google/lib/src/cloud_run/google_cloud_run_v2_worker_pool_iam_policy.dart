// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_worker_pool.dart'
    show GoogleCloudRunV2WorkerPool;

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

  GoogleCloudRunV2WorkerPoolIamPolicy(
    super.localName, {
    required RefTo<GoogleCloudRunV2WorkerPool> workerPool,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': workerPool.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? workerPool.alsoAs('location')),
           'project': ?(project ?? workerPool.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudRunV2WorkerPoolIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2WorkerPoolIamPolicy>`.
  RefTo<GoogleCloudRunV2WorkerPoolIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
