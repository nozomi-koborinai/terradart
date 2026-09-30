// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_network_monitoring_provider`.
const Set<String> _googleNetworkManagementNetworkMonitoringProviderSensitive =
    <String>{};

/// Factory wrapper for `google_network_management_network_monitoring_provider`.
///
/// A Network Monitoring Provider resource that allows third-party network
/// monitoring solutions to integrate with Google Cloud Network Management. A
/// provider acts as the parent resource for MonitoringPoints, NetworkPaths, and
/// WebPaths.
final class GoogleNetworkManagementNetworkMonitoringProvider extends Resource {
  static const String tfType =
      'google_network_management_network_monitoring_provider';

  GoogleNetworkManagementNetworkMonitoringProvider({
    required super.localName,
    required TfArg<String> networkMonitoringProviderId,
    required TfArg<String> location,
    required TfArg<String> providerType,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_monitoring_provider_id': networkMonitoringProviderId,
           'location': location,
           'provider_type': providerType,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementNetworkMonitoringProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkManagementNetworkMonitoringProvider>`.
  RefTo<GoogleNetworkManagementNetworkMonitoringProvider> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `errors` attribute.
  TfRef<List<String>> get errors =>
      TfRef.attribute<List<String>>(this, 'errors');

  /// Reference to `provider_uri` attribute.
  TfRef<String> get providerUri =>
      TfRef.attribute<String>(this, 'provider_uri');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
