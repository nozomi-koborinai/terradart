// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_job_iam_policy`.
const Set<String> _googleDataprocJobIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataproc_job_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc job.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocJobIamMember] for single-principal grants.
final class GoogleDataprocJobIamPolicy extends Resource {
  static const String tfType = 'google_dataproc_job_iam_policy';

  GoogleDataprocJobIamPolicy({
    required super.localName,
    required TfArg<String> jobId,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_id': jobId,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocJobIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
