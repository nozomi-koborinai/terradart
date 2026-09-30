// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/google_network_connectivity_hub_iam_policy.dart';

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
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'hub': hub, 'project': ?project});

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamPolicySensitive;

  /// A reference to the `google_network_connectivity_hub_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleNetworkConnectivityHubIamPolicy>`.
  RefTo<GoogleNetworkConnectivityHubIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `hub` attribute.
  TfRef<String> get hubRef => TfRef.attribute<String>(this, 'hub');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
