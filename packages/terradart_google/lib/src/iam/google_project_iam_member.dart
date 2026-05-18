// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_member`.
const Set<String> _googleProjectIamMemberSensitive = <String>{};

/// Factory wrapper for `google_project_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding on a GCP project. This
/// is the **safe additive** form: it adds the tuple without touching any
/// other bindings on the project.
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
///   (including ones created out-of-band).
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the resource's whole IAM policy. Will erase **all** existing
///   bindings on the project. Use only when you intend to fully own the
///   policy from Terraform.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_project_iam_member.`).
/// - `project`: target project (ID or number).
/// - `role`: role name, e.g. `'roles/storage.objectViewer'` or the full
///   path to a project-level custom role (`projects/<id>/roles/<role_id>`).
/// - `member`: principal in IAM v1 string form, e.g.
///   `'serviceAccount:foo@<project>.iam.gserviceaccount.com'`,
///   `'user:alice@example.com'`, `'group:eng@example.com'`. The
///   `serviceAccount:` prefix is best sourced from
///   [GoogleServiceAccount.member] to avoid manual concatenation.
///
/// Optional `condition` is a single IAM Condition block (CEL `expression`,
/// `title`, optional `description`). Conditioned bindings count as a
/// distinct tuple from the same role+member without the condition — the
/// two coexist.
final class GoogleProjectIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_project_iam_member';

  GoogleProjectIamMember({
    required super.localName,
    required TfArg<String> project,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'project': project,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleProjectIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
