// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership_iam_member`.
const Set<String> _googleGkeHubMembershipIamMemberSensitive = <String>{};

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
           'member': member,
           'project': ?project,
           'condition': ?condition,
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
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipIdRef =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
