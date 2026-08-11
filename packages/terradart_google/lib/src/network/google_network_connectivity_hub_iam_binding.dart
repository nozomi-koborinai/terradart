// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_hub_iam_binding`.
const Set<String> _googleNetworkConnectivityHubIamBindingSensitive = <String>{};

/// Factory wrapper for `google_network_connectivity_hub_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Network Connectivity
/// Center hub.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleNetworkConnectivityHubIamMember] for additive grants.
final class GoogleNetworkConnectivityHubIamBinding extends Resource {
  static const String tfType = 'google_network_connectivity_hub_iam_binding';

  GoogleNetworkConnectivityHubIamBinding({
    required super.localName,
    required TfArg<String> hub,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
