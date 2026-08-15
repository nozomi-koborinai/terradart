// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_connectivity_test_run`.
const Set<String> _googleNetworkManagementConnectivityTestRunSensitive =
    <String>{};

/// Factory wrapper for `google_network_management_connectivity_test_run`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNetworkManagementConnectivityTestRun extends Data {
  static const String tfType =
      'google_network_management_connectivity_test_run';

  DataGoogleNetworkManagementConnectivityTestRun({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementConnectivityTestRunSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `reachability_details` attribute.
  TfRef<List<Map<String, Object?>>> get reachabilityDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'reachability_details');
}
