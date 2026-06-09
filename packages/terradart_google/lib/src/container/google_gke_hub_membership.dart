// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership`.
const Set<String> _googleGkeHubMembershipSensitive = <String>{};

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
///   `TfArg.ref(cluster.id)` from [GoogleContainerCluster].
/// - `authority.issuer` — issuer URL for the cluster's hub authority;
///   commonly `https://container.googleapis.com/v1/${cluster.id}`.
///
/// Example:
/// ```dart
/// final membership = GoogleGkeHubMembership(
///   localName: 'main',
///   membershipId: TfArg.literal('main-cluster'),
///   endpoint: {
///     'gke_cluster': {
///       'resource_link': TfArg.ref(cluster.id),
///     },
///   },
///   authority: {
///     'issuer': TfArg.literal(
///       'https://container.googleapis.com/v1/${cluster.id}',
///     ),
///   },
/// );
/// ```
final class GoogleGkeHubMembership extends Resource {
  static const String tfType = 'google_gke_hub_membership';

  GoogleGkeHubMembership({
    required super.localName,
    required TfArg<String> membershipId,
    TfArg<String>? location,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, dynamic>>? endpoint,
    TfArg<Map<String, dynamic>>? authority,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'membership_id': membershipId,
           if (location != null) 'location': location,
           if (labels != null) 'labels': labels,
           if (endpoint != null) 'endpoint': endpoint,
           if (authority != null) 'authority': authority,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipSensitive;

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
