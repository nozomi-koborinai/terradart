// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_membership.dart'
    show GoogleGkeHubMembership;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gke_hub_membership_iam_member`.
const Set<String> _googleGkeHubMembershipIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_hub_membership_iam_member` (derived from provider schema).
@immutable
final class GkeHubMembershipIamMemberCondition {
  const GkeHubMembershipIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_gke_hub_membership_iam_member`.
final class GoogleGkeHubMembershipIamMember extends Resource {
  static const String tfType = 'google_gke_hub_membership_iam_member';

  GoogleGkeHubMembershipIamMember(
    super.localName, {
    required RefTo<GoogleGkeHubMembership> membership,
    TfArg<String>? location,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    GkeHubMembershipIamMemberCondition? condition,
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
           'member': member,
           'project': ?(project ?? membership.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubMembershipIamMember>`.
  RefTo<GoogleGkeHubMembershipIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipId =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
