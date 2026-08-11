// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_job_iam_binding`.
const Set<String> _googleDataprocJobIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataproc_job_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc job.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocJobIamMember] for additive grants.
final class GoogleDataprocJobIamBinding extends Resource {
  static const String tfType = 'google_dataproc_job_iam_binding';

  GoogleDataprocJobIamBinding({
    required super.localName,
    required TfArg<String> jobId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_id': jobId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocJobIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
