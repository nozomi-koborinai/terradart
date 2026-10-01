// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_project_iam_member`.
const Set<String> _googleProjectIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_project_iam_member` (derived from provider schema).
@immutable
final class ProjectIamMemberCondition {
  const ProjectIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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
  static const String tfType = 'google_project_iam_member';

  GoogleProjectIamMember({
    required super.localName,
    required TfArg<String> project,
    required TfArg<String> role,
    required IamPrincipal member,
    ProjectIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': project,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectIamMember>`.
  RefTo<GoogleProjectIamMember> get ref => RefTo.of(this);

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
