// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership_iam_binding`.
const Set<String> _googleGkeHubMembershipIamBindingSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_membership_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Hub fleet membership.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubMembershipIamMember] for additive grants.
final class GoogleGkeHubMembershipIamBinding extends Resource {
  static const String tfType = 'google_gke_hub_membership_iam_binding';

  GoogleGkeHubMembershipIamBinding({
    required super.localName,
    required TfArg<String> membershipId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'membership_id': membershipId,
           if (location != null) 'location': location,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
