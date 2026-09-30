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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'membership_id': membershipId,
           'location': ?location,
           'role': role,
           'members': members,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubMembershipIamBinding>`.
  RefTo<GoogleGkeHubMembershipIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipIdRef =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
