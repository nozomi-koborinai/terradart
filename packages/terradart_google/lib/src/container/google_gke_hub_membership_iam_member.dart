// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_gke_hub_membership_iam_member`.
final class GoogleGkeHubMembershipIamMember extends Resource {
  static const String tfType = 'google_gke_hub_membership_iam_member';

  GoogleGkeHubMembershipIamMember({
    required super.localName,
    required TfArg<String> membershipId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    GkeHubMembershipIamMemberCondition? condition,
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
           'member': member,
           'project': ?project,
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
}
