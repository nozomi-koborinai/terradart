// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_service_iam_member`.
const Set<String> _googleCloudRunV2ServiceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_service_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a Cloud Run v2
/// service** — most commonly `roles/run.invoker` to control who is
/// allowed to invoke the service. For a public HTTPS endpoint, bind
/// `roles/run.invoker` to `'allUsers'`; for service-to-service calls,
/// bind to the caller's SA member string.
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
///   on this Cloud Run v2 service.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the service's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: the target Cloud Run v2 service's `name` attribute (the
///   short service name, *not* the fully-qualified
///   `projects/.../services/...` path). Pass `TfArg.ref(service.nameRef)`.
/// - `role`: role name, typically `'roles/run.invoker'`.
/// - `member`: principal in IAM v1 string form. Use `'allUsers'` for a
///   public endpoint or `TfArg.ref(sa.member)` for a service account.
///
/// `location` is optional and defaults to the provider region.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleCloudRunV2ServiceIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloud_run_v2_service_iam_member';

  GoogleCloudRunV2ServiceIamMember({
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
  Set<String> get $sensitiveFields =>
      _googleCloudRunV2ServiceIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
