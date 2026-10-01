// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_job.dart' show GoogleCloudRunV2Job;

/// Sensitive field paths for `google_cloud_run_v2_job_iam_policy`.
const Set<String> _googleCloudRunV2JobIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_job_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Run v2 job.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleCloudRunV2JobIamMember] for single-principal grants.
final class GoogleCloudRunV2JobIamPolicy extends Resource {
  static const String tfType = 'google_cloud_run_v2_job_iam_policy';

  GoogleCloudRunV2JobIamPolicy({
    required super.localName,
    required RefTo<GoogleCloudRunV2Job> job,
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
           'name': job.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? job.alsoAs('location')),
           'project': ?(project ?? job.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2JobIamPolicy>`.
  RefTo<GoogleCloudRunV2JobIamPolicy> get ref => RefTo.of(this);

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
