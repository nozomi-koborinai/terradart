// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_hub_iam_member`.
const Set<String> _googleNetworkConnectivityHubIamMemberSensitive = <String>{};

/// Factory wrapper for `google_network_connectivity_hub_iam_member`.
final class GoogleNetworkConnectivityHubIamMember extends Resource {
  static const String tfType = 'google_network_connectivity_hub_iam_member';

  GoogleNetworkConnectivityHubIamMember({
    required super.localName,
    required TfArg<String> hub,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub,
           'role': role,
           'member': member,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
