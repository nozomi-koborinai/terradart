// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_network_monitoring_provider`.
const Set<String> _googleNetworkManagementNetworkMonitoringProviderSensitive =
    <String>{};

/// Factory wrapper for `google_network_management_network_monitoring_provider`.
final class GoogleNetworkManagementNetworkMonitoringProvider extends Resource {
  static const String tfType =
      'google_network_management_network_monitoring_provider';

  GoogleNetworkManagementNetworkMonitoringProvider({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    required TfArg<String> networkMonitoringProviderId,
    TfArg<String>? project,
    required TfArg<String> providerType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'location': location,
           'network_monitoring_provider_id': networkMonitoringProviderId,
           'project': ?project,
           'provider_type': providerType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementNetworkMonitoringProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkManagementNetworkMonitoringProvider>`.
  RefTo<GoogleNetworkManagementNetworkMonitoringProvider> get ref =>
      RefTo.of(this);
}
