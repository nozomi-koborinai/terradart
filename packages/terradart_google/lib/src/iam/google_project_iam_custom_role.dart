// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_custom_role`.
const Set<String> _googleProjectIamCustomRoleSensitive = <String>{};

/// Lifecycle stage for [GoogleProjectIamCustomRole.stage]. Mirrors the
/// `stage` field exposed by the IAM API — `alpha` / `beta` / `ga` are
/// grantable; `deprecated` / `disabled` keep the role visible but
/// reject new bindings.
enum CustomRoleStage {
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecated('DEPRECATED'),
  disabled('DISABLED');

  const CustomRoleStage(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_project_iam_custom_role`.
///
/// Defines a project-level custom IAM role: a named bundle of low-level
/// permissions that can be granted via `google_project_iam_member` /
/// `_iam_binding` like any predefined role. Custom roles let you express
/// "least privilege" surfaces that don't exist as a predefined role
/// (e.g. read access to a single GCS bucket plus list on a single
/// Pub/Sub topic).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `roleId`: short ID; the final segment of the role's full path. Must
///   be 3-64 chars matching `[a-zA-Z0-9_\.]+`. The role's full name is
///   `projects/{project}/roles/{roleId}`.
/// - `title`: human-readable name (≤100 chars).
/// - `permissions`: set of low-level permission strings, e.g.
///   `'storage.objects.get'`, `'storage.objects.list'`. Each entry must
///   be a real GCP permission — Terraform asks the API to validate the
///   list at apply time and any unknown entry fails the resource.
///
/// Optional:
/// - `description`: free-form text.
/// - `stage`: lifecycle stage of the custom role itself
///   ([CustomRoleStage]). Surfaces in the GCP console; the role is
///   grantable in `alpha` / `beta` / `ga` and unusable in `disabled` /
///   `deprecated`.
///
/// ForceNew note: `roleId` is **immutable** after creation. Renaming
/// requires destroying and recreating the role, which detaches every
/// existing IAM binding that referenced it.
final class GoogleProjectIamCustomRole extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_project_iam_custom_role';

  GoogleProjectIamCustomRole({
    required super.localName,
    required TfArg<String> roleId,
    required TfArg<String> title,
    required TfArg<List<String>> permissions,
    TfArg<String>? description,
    TfArg<CustomRoleStage>? stage,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'role_id': roleId,
           'title': title,
           'permissions': permissions,
           if (description != null) 'description': description,
           if (stage != null) 'stage': stage,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleProjectIamCustomRoleSensitive;

  /// Reference to `id` attribute (full role path
  /// `projects/{project}/roles/{roleId}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute — same shape as [id]; the API returns
  /// it as `projects/{project}/roles/{roleId}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `deleted` attribute — `true` once the role has been
  /// soft-deleted (custom roles enter a 7-day grace window before
  /// permanent removal).
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');
}
