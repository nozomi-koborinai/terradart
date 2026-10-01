// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_scope_rbac_role_binding`.
const Set<String> _googleGkeHubScopeRbacRoleBindingSensitive = <String>{};

/// Exactly one of `user`, `group` on `google_gke_hub_scope_rbac_role_binding`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.user(...)`.
sealed class GkeHubScopeRbacRoleBindingPrincipal {
  const GkeHubScopeRbacRoleBindingPrincipal();

  /// Sets `user`.
  const factory GkeHubScopeRbacRoleBindingPrincipal.user(TfArg<String> user) =
      GkeHubScopeRbacRoleBindingPrincipalUser;

  /// Sets `group`.
  const factory GkeHubScopeRbacRoleBindingPrincipal.group(TfArg<String> group) =
      GkeHubScopeRbacRoleBindingPrincipalGroup;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GkeHubScopeRbacRoleBindingPrincipal.user] choice: sets `user`.
final class GkeHubScopeRbacRoleBindingPrincipalUser
    extends GkeHubScopeRbacRoleBindingPrincipal {
  const GkeHubScopeRbacRoleBindingPrincipalUser(this.user);

  final TfArg<String> user;

  @override
  String get blockKey => 'user';

  @override
  Map<String, Object?> encode() => {'user': user.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user': user};
}

/// The [GkeHubScopeRbacRoleBindingPrincipal.group] choice: sets `group`.
final class GkeHubScopeRbacRoleBindingPrincipalGroup
    extends GkeHubScopeRbacRoleBindingPrincipal {
  const GkeHubScopeRbacRoleBindingPrincipalGroup(this.group);

  final TfArg<String> group;

  @override
  String get blockKey => 'group';

  @override
  Map<String, Object?> encode() => {'group': group.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'group': group};
}

/// Exactly one of `predefined_role`, `custom_role` on the `role` block of `google_gke_hub_scope_rbac_role_binding`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.predefinedRole(...)`.
sealed class GkeHubScopeRbacRoleBindingRole {
  const GkeHubScopeRbacRoleBindingRole();

  /// Sets `predefined_role`.
  const factory GkeHubScopeRbacRoleBindingRole.predefinedRole(
    TfArg<GkeHubScopeRbacRoleBindingPredefinedRole> predefinedRole,
  ) = GkeHubScopeRbacRoleBindingPredefinedRoleChoice;

  /// Sets `custom_role`.
  const factory GkeHubScopeRbacRoleBindingRole.customRole(
    TfArg<String> customRole,
  ) = GkeHubScopeRbacRoleBindingCustomRole;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeHubScopeRbacRoleBindingRole.predefinedRole] choice: sets `predefined_role`.
final class GkeHubScopeRbacRoleBindingPredefinedRoleChoice
    extends GkeHubScopeRbacRoleBindingRole {
  const GkeHubScopeRbacRoleBindingPredefinedRoleChoice(this.predefinedRole);

  final TfArg<GkeHubScopeRbacRoleBindingPredefinedRole> predefinedRole;

  @override
  String get blockKey => 'predefined_role';

  @override
  Map<String, Object?> encode() => {
    'predefined_role': predefinedRole.toTfJson(),
  };
}

/// The [GkeHubScopeRbacRoleBindingRole.customRole] choice: sets `custom_role`.
final class GkeHubScopeRbacRoleBindingCustomRole
    extends GkeHubScopeRbacRoleBindingRole {
  const GkeHubScopeRbacRoleBindingCustomRole(this.customRole);

  final TfArg<String> customRole;

  @override
  String get blockKey => 'custom_role';

  @override
  Map<String, Object?> encode() => {'custom_role': customRole.toTfJson()};
}

/// `predefined_role` — derived from the provider schema description.
enum GkeHubScopeRbacRoleBindingPredefinedRole implements TerraformEnum {
  unknown('UNKNOWN'),
  admin('ADMIN'),
  edit('EDIT'),
  view('VIEW');

  const GkeHubScopeRbacRoleBindingPredefinedRole(this.terraformValue);
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
/// [principal] is exactly one Kubernetes principal: `.user(...)`
/// (`alice@example.com`) or `.group(...)` (a Google Group email). [role] must set either `predefinedRole` (`VIEW` / `EDIT`
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
///   principal: .user(.literal('terradart-fleet-rbac@example.com')),
///   role: .predefinedRole(.literal(.view)),
/// );
/// ```
final class GoogleGkeHubScopeRbacRoleBinding extends Resource {
  static const String tfType = 'google_gke_hub_scope_rbac_role_binding';

  GoogleGkeHubScopeRbacRoleBinding({
    required super.localName,
    required TfArg<String> scopeId,
    required TfArg<String> scopeRbacRoleBindingId,
    required GkeHubScopeRbacRoleBindingPrincipal principal,
    required GkeHubScopeRbacRoleBindingRole role,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scopeId,
           'scope_rbac_role_binding_id': scopeRbacRoleBindingId,
           ...principal.argMap,
           'role': TfArg.literal(role.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeRbacRoleBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubScopeRbacRoleBinding>`.
  RefTo<GoogleGkeHubScopeRbacRoleBinding> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `group` attribute.
  TfRef<String> get groupRef => TfRef.attribute<String>(this, 'group');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeIdRef => TfRef.attribute<String>(this, 'scope_id');

  /// Reference to `scope_rbac_role_binding_id` attribute.
  TfRef<String> get scopeRbacRoleBindingIdRef =>
      TfRef.attribute<String>(this, 'scope_rbac_role_binding_id');

  /// Reference to `user` attribute.
  TfRef<String> get userRef => TfRef.attribute<String>(this, 'user');
}
