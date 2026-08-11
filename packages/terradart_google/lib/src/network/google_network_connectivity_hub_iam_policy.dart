// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_hub_iam_policy`.
const Set<String> _googleNetworkConnectivityHubIamPolicySensitive = <String>{};

/// Factory wrapper for `google_network_connectivity_hub_iam_policy`.
///
/// Authoritative IAM policy for a Network Connectivity Center hub.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleNetworkConnectivityHubIamMember] for single-principal grants.
final class GoogleNetworkConnectivityHubIamPolicy extends Resource {
  static const String tfType = 'google_network_connectivity_hub_iam_policy';

  GoogleNetworkConnectivityHubIamPolicy({
    required super.localName,
    required TfArg<String> hub,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
