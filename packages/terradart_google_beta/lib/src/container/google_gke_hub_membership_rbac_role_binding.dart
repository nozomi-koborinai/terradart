// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership_rbac_role_binding`.
const Set<String> _googleGkeHubMembershipRbacRoleBindingSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_membership_rbac_role_binding`.
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
    required TfArg<Map<String, dynamic>> role,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'location': location,
           'membership_id': membershipId,
           'membership_rbac_role_binding_id': membershipRbacRoleBindingId,
           if (project != null) 'project': project,
           'user': user,
           'role': role,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeHubMembershipRbacRoleBindingSensitive;
}
