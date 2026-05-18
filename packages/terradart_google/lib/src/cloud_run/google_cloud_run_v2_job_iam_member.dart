// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_job_iam_member`.
const Set<String> _googleCloudRunV2JobIamMemberSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_job_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a Cloud Run v2
/// job** — most commonly `roles/run.invoker` to control who is allowed
/// to trigger an execution of the job (e.g. a Cloud Scheduler SA, or a
/// human operator's group).
///
/// Picking the right `*_iam_*` variant:
///
/// - `*_iam_member` (this resource) — **additive**: grants ONE
///   (role, member) tuple. Does not touch other principals' bindings.
///   Safe in 95% of cases; prefer this unless you have a concrete reason
///   to use one of the authoritative variants below.
/// - `*_iam_binding` — **authoritative per role**: takes a list of
///   members and *replaces* the entire member list for that role. Will
///   silently erase any other principal previously bound to that role
///   on this Cloud Run v2 job.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the job's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: the target Cloud Run v2 job's `name` attribute (the short
///   job name, *not* the fully-qualified `projects/.../jobs/...` path).
///   Pass `TfArg.ref(job.nameRef)`.
/// - `role`: role name, typically `'roles/run.invoker'` (run-this-job)
///   or `'roles/run.viewer'` (inspect-only).
/// - `member`: principal in IAM v1 string form.
///
/// `location` is optional and defaults to the provider region.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleCloudRunV2JobIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloud_run_v2_job_iam_member';

  GoogleCloudRunV2JobIamMember({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'role': role,
            'member': member,
            if (condition != null) 'condition': condition,
            if (location != null) 'location': location,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleCloudRunV2JobIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
