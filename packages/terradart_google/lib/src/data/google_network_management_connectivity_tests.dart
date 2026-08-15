// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_connectivity_tests`.
const Set<String> _googleNetworkManagementConnectivityTestsSensitive =
    <String>{};

/// Factory wrapper for `google_network_management_connectivity_tests`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNetworkManagementConnectivityTests extends Data {
  static const String tfType = 'google_network_management_connectivity_tests';

  DataGoogleNetworkManagementConnectivityTests({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementConnectivityTestsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connectivity_tests` attribute.
  TfRef<List<Map<String, Object?>>> get connectivityTests =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connectivity_tests');
}
