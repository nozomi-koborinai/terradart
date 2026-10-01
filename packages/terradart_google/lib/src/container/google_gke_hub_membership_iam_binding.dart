// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_membership.dart'
    show GoogleGkeHubMembership;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gke_hub_membership_iam_binding`.
const Set<String> _googleGkeHubMembershipIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_hub_membership_iam_binding` (derived from provider schema).
@immutable
final class GkeHubMembershipIamBindingCondition {
  const GkeHubMembershipIamBindingCondition({
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

/// Factory wrapper for `google_gke_hub_membership_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Hub fleet membership.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubMembershipIamMember] for additive grants.
final class GoogleGkeHubMembershipIamBinding extends Resource {
  static const String tfType = 'google_gke_hub_membership_iam_binding';

  GoogleGkeHubMembershipIamBinding(
    super.localName, {
    required RefTo<GoogleGkeHubMembership> membership,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    GkeHubMembershipIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'membership_id': membership.encodeAs('membership_id'),
           'location': ?(location ?? membership.alsoAs('location')),
           'role': role,
           'members': members,
           'project': ?(project ?? membership.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
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
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipId =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
