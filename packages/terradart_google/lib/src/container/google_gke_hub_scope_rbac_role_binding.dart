// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_scope.dart' show GoogleGkeHubScope;

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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GkeHubScopeRbacRoleBindingPrincipal.user] choice: sets `user`.
final class GkeHubScopeRbacRoleBindingPrincipalUser
    extends GkeHubScopeRbacRoleBindingPrincipal {
  const GkeHubScopeRbacRoleBindingPrincipalUser(this.user);

  final TfArg<String> user;

  @internal
  @override
  String get blockKey => 'user';

  @internal
  @override
  Map<String, Object?> encode() => {'user': user.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'user': user};
}

/// The [GkeHubScopeRbacRoleBindingPrincipal.group] choice: sets `group`.
final class GkeHubScopeRbacRoleBindingPrincipalGroup
    extends GkeHubScopeRbacRoleBindingPrincipal {
  const GkeHubScopeRbacRoleBindingPrincipalGroup(this.group);

  final TfArg<String> group;

  @internal
  @override
  String get blockKey => 'group';

  @internal
  @override
  Map<String, Object?> encode() => {'group': group.toTfJson()};

  @internal
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
    GkeHubScopeRbacRoleBindingPredefinedRole predefinedRole,
  ) = GkeHubScopeRbacRoleBindingPredefinedRoleChoice;

  /// Sets `custom_role`.
  const factory GkeHubScopeRbacRoleBindingRole.customRole(
    TfArg<String> customRole,
  ) = GkeHubScopeRbacRoleBindingCustomRole;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [GkeHubScopeRbacRoleBindingRole.predefinedRole] choice: sets `predefined_role`.
final class GkeHubScopeRbacRoleBindingPredefinedRoleChoice
    extends GkeHubScopeRbacRoleBindingRole {
  const GkeHubScopeRbacRoleBindingPredefinedRoleChoice(this.predefinedRole);

  final GkeHubScopeRbacRoleBindingPredefinedRole predefinedRole;

  @internal
  @override
  String get blockKey => 'predefined_role';

  @internal
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

  @internal
  @override
  String get blockKey => 'custom_role';

  @internal
  @override
  Map<String, Object?> encode() => {'custom_role': customRole.toTfJson()};
}

/// `predefined_role` — derived from the provider schema description.
extension type const GkeHubScopeRbacRoleBindingPredefinedRole._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubScopeRbacRoleBindingPredefinedRole.variable(String name)
    : this._(TfArg.variable(name));
  GkeHubScopeRbacRoleBindingPredefinedRole.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubScopeRbacRoleBindingPredefinedRole.arg(TfArg<String> arg)
    : this._(arg);

  static const unknown = GkeHubScopeRbacRoleBindingPredefinedRole._(
    TfArgLiteral('UNKNOWN'),
  );
  static const admin = GkeHubScopeRbacRoleBindingPredefinedRole._(
    TfArgLiteral('ADMIN'),
  );
  static const edit = GkeHubScopeRbacRoleBindingPredefinedRole._(
    TfArgLiteral('EDIT'),
  );
  static const view = GkeHubScopeRbacRoleBindingPredefinedRole._(
    TfArgLiteral('VIEW'),
  );

  static const List<GkeHubScopeRbacRoleBindingPredefinedRole> values = [
    unknown,
    admin,
    edit,
    view,
  ];
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
///   'team_view',
///   scopeId: .literal('terradart-scope'),
///   scopeRbacRoleBindingId: TfArg.literal('terradart-scope-rbac'),
///   principal: .user(.literal('terradart-fleet-rbac@example.com')),
///   role: .predefinedRole(.view),
/// );
/// ```
final class GoogleGkeHubScopeRbacRoleBinding extends Resource {
  static const String tfType = 'google_gke_hub_scope_rbac_role_binding';

  GoogleGkeHubScopeRbacRoleBinding(
    super.localName, {
    required RefTo<GoogleGkeHubScope> scopeId,
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
           'scope_id': scopeId.encodeAs('scope_id'),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');

  /// Reference to `scope_rbac_role_binding_id` attribute.
  TfRef<String> get scopeRbacRoleBindingId =>
      TfRef.attribute<String>(this, 'scope_rbac_role_binding_id');

  /// Reference to `user` attribute.
  TfRef<String> get user => TfRef.attribute<String>(this, 'user');
}
