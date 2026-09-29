// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership_rbac_role_binding`.
const Set<String> _googleGkeHubMembershipRbacRoleBindingSensitive = <String>{};

/// Typed helper for the `role` block of
/// `google_gke_hub_membership_rbac_role_binding` (derived from provider schema).
@immutable
final class GkeHubMembershipRbacRoleBindingRole {
  const GkeHubMembershipRbacRoleBindingRole({required this.predefinedRole});

  final TfArg<GkeHubMembershipRbacRoleBindingRolePredefinedRole> predefinedRole;

  Map<String, Object?> encode() => {
    'predefined_role': predefinedRole.toTfJson(),
  };
}

/// `predefined_role` — derived from the provider schema description.
enum GkeHubMembershipRbacRoleBindingRolePredefinedRole
    implements TerraformEnum {
  unknown('UNKNOWN'),
  admin('ADMIN'),
  edit('EDIT'),
  view('VIEW'),
  anthosSupport('ANTHOS_SUPPORT');

  const GkeHubMembershipRbacRoleBindingRolePredefinedRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gke_hub_membership_rbac_role_binding`.
///
/// RBACRoleBinding represents a rbacrolebinding across the Fleet.
final class GoogleGkeHubMembershipRbacRoleBinding extends Resource {
  static const String tfType = 'google_gke_hub_membership_rbac_role_binding';

  GoogleGkeHubMembershipRbacRoleBinding({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    required TfArg<String> membershipId,
    required TfArg<String> membershipRbacRoleBindingId,
    TfArg<String>? project,
    required TfArg<String> user,
    required GkeHubMembershipRbacRoleBindingRole role,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'location': location,
           'membership_id': membershipId,
           'membership_rbac_role_binding_id': membershipRbacRoleBindingId,
           if (project != null) 'project': project,
           'user': user,
           'role': TfArg.literal(role.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeHubMembershipRbacRoleBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
