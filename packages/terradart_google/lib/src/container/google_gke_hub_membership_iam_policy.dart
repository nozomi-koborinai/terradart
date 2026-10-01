// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_membership.dart'
    show GoogleGkeHubMembership;

/// Sensitive field paths for `google_gke_hub_membership_iam_policy`.
const Set<String> _googleGkeHubMembershipIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gke_hub_membership_iam_policy`.
///
/// Authoritative IAM policy for a GKE Hub fleet membership.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubMembershipIamMember] for single-principal grants.
final class GoogleGkeHubMembershipIamPolicy extends Resource {
  static const String tfType = 'google_gke_hub_membership_iam_policy';

  GoogleGkeHubMembershipIamPolicy({
    required super.localName,
    required RefTo<GoogleGkeHubMembership> membership,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'membership_id': membership.encodeAs('membership_id'),
           'location': ?(location ?? membership.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? membership.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubMembershipIamPolicy>`.
  RefTo<GoogleGkeHubMembershipIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipId =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
