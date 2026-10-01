// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_container_cluster.dart' show GoogleContainerCluster;

/// Sensitive field paths for `google_gke_hub_membership`.
const Set<String> _googleGkeHubMembershipSensitive = <String>{};

/// Typed helper for the `authority` block of
/// `google_gke_hub_membership` (derived from provider schema).
@immutable
final class GkeHubMembershipAuthority {
  const GkeHubMembershipAuthority({required this.issuer});

  final TfArg<String> issuer;

  Map<String, Object?> encode() => {'issuer': issuer.toTfJson()};
}

/// Typed helper for the `endpoint` block of
/// `google_gke_hub_membership` (derived from provider schema).
@immutable
final class GkeHubMembershipEndpoint {
  const GkeHubMembershipEndpoint({this.gkeCluster});

  final GkeHubMembershipGkeCluster? gkeCluster;

  Map<String, Object?> encode() => {'gke_cluster': ?gkeCluster?.encode()};
}

/// Typed helper for the `endpoint.gke_cluster` block of
/// `google_gke_hub_membership` (derived from provider schema).
@immutable
final class GkeHubMembershipGkeCluster {
  const GkeHubMembershipGkeCluster({required this.resourceLink});

  final RefTo<GoogleContainerCluster> resourceLink;

  Map<String, Object?> encode() => {
    'resource_link': resourceLink.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_gke_hub_membership`.
///
/// Membership contains information about a member cluster.
///
/// Enrolls a GKE cluster in a **GKE Hub fleet** via
/// [GoogleGkeHubMembership].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `membershipId`: unique membership ID within the project/location.
///
/// Required blocks (schema):
/// - `endpoint.gkeCluster.resourceLink` — typically
///   `cluster.id` from [GoogleContainerCluster].
/// - `authority.issuer` — issuer URL for the cluster's hub authority;
///   commonly `https://container.googleapis.com/v1/${cluster.id}`.
///
/// Example:
/// ```dart
/// final membership = GoogleGkeHubMembership(
///   localName: 'main',
///   membershipId: TfArg.literal('main-cluster'),
///   endpoint: GkeHubMembershipEndpoint(
///     gkeCluster: .new(
///       resourceLink: cluster.ref,
///     ),
///   ),
///   authority: GkeHubMembershipAuthority(
///     issuer: TfArg.literal(
///       'https://container.googleapis.com/v1/${cluster.id}',
///     ),
///   ),
/// );
/// ```
final class GoogleGkeHubMembership extends Resource {
  static const String tfType = 'google_gke_hub_membership';

  GoogleGkeHubMembership({
    required super.localName,
    required TfArg<String> membershipId,
    TfArg<String>? location,
    TfArg<Map<String, String>>? labels,
    GkeHubMembershipEndpoint? endpoint,
    GkeHubMembershipAuthority? authority,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'membership_id': membershipId,
           'location': ?location,
           'labels': ?labels,
           if (endpoint != null) 'endpoint': TfArg.literal(endpoint.encode()),
           if (authority != null)
             'authority': TfArg.literal(authority.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubMembership>`.
  RefTo<GoogleGkeHubMembership> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipId =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
