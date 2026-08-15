// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_hub_iam_policy`.
const Set<String> _googleNetworkConnectivityHubIamPolicySensitive = <String>{};

/// Factory wrapper for `google_network_connectivity_hub_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNetworkConnectivityHubIamPolicy extends Data {
  static const String tfType = 'google_network_connectivity_hub_iam_policy';

  DataGoogleNetworkConnectivityHubIamPolicy({
    required super.localName,
    required TfArg<String> hub,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'hub': hub, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
