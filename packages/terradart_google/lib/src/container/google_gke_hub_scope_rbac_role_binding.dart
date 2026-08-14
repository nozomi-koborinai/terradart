// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_scope_rbac_role_binding`.
const Set<String> _googleGkeHubScopeRbacRoleBindingSensitive = <String>{};

/// Typed helper for the `role` block of
/// `google_gke_hub_scope_rbac_role_binding` (derived from provider schema).
@immutable
final class GkeHubScopeRbacRoleBindingRole {
  const GkeHubScopeRbacRoleBindingRole({this.customRole, this.predefinedRole});

  final TfArg<String>? customRole;

  final TfArg<GkeHubScopeRbacRoleBindingRolePredefinedRole>? predefinedRole;

  Map<String, Object?> encode() => {
    if (customRole != null) 'custom_role': customRole!.toTfJson(),
    if (predefinedRole != null) 'predefined_role': predefinedRole!.toTfJson(),
  };
}

/// `predefined_role` — derived from the provider schema description.
enum GkeHubScopeRbacRoleBindingRolePredefinedRole implements TerraformEnum {
  unknown('UNKNOWN'),
  admin('ADMIN'),
  edit('EDIT'),
  view('VIEW');

  const GkeHubScopeRbacRoleBindingRolePredefinedRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gke_hub_scope_rbac_role_binding`.
///
/// RBACRoleBinding represents a rbacrolebinding across the Fleet.
///
/// GKE Hub **scope RBAC role binding** — a fleet-wide Kubernetes RBAC
/// binding on a [GoogleGkeHubScope] (no cluster membership required).
///
/// Pass [user] as a Kubernetes principal (`alice@example.com`). [group]
/// is the other half of the MM `exactly_one_of` and is omitted from this
/// constructor — use [user] (a Google Group cannot be created via
/// Terraform). [role] must set either `predefinedRole` (`VIEW` / `EDIT`
/// / `ADMIN`) or `customRole` (needs the `rbacrolebindingactuation`
/// feature). Prefer `VIEW` for smoke stacks.
///
/// Creating the binding does not attach clusters or bill GKE Enterprise.
/// Enable `gkehub.googleapis.com` via [GoogleProjectService] before apply.
/// The scope must exist first (`dependsOn` it).
///
/// Example:
/// ```dart
/// GoogleGkeHubScopeRbacRoleBinding(
///   localName: 'team_view',
///   scopeId: TfArg.literal('terradart-scope'),
///   scopeRbacRoleBindingId: TfArg.literal('terradart-scope-rbac'),
///   user: TfArg.literal('terradart-fleet-rbac@example.com'),
///   role: GkeHubScopeRbacRoleBindingRole(
///     predefinedRole: TfArg.literal(
///       GkeHubScopeRbacRoleBindingRolePredefinedRole.view,
///     ),
///   ),
/// );
/// ```
final class GoogleGkeHubScopeRbacRoleBinding extends Resource {
  static const String tfType = 'google_gke_hub_scope_rbac_role_binding';

  GoogleGkeHubScopeRbacRoleBinding({
    required super.localName,
    required TfArg<String> scopeId,
    required TfArg<String> scopeRbacRoleBindingId,
    TfArg<String>? user,
    required GkeHubScopeRbacRoleBindingRole role,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scopeId,
           'scope_rbac_role_binding_id': scopeRbacRoleBindingId,
           if (user != null) 'user': user,
           'role': TfArg.literal(role.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeRbacRoleBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
