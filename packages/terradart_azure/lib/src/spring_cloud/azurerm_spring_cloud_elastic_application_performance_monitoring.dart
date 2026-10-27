// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_elastic_application_performance_monitoring`.
const Set<String>
_azurermSpringCloudElasticApplicationPerformanceMonitoringSensitive =
    <String>{};

/// Factory wrapper for `azurerm_spring_cloud_elastic_application_performance_monitoring`.
final class AzurermSpringCloudElasticApplicationPerformanceMonitoring
    extends Resource {
  static const String tfType =
      'azurerm_spring_cloud_elastic_application_performance_monitoring';

  AzurermSpringCloudElasticApplicationPerformanceMonitoring(
    super.localName, {
    required TfArg<List<String>> applicationPackages,
    TfArg<bool>? globallyEnabled,
    required TfArg<String> name,
    required TfArg<String> serverUrl,
    required TfArg<String> serviceName,
    required TfArg<String> springCloudServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_packages': applicationPackages,
           'globally_enabled': ?globallyEnabled,
           'name': name,
           'server_url': serverUrl,
           'service_name': serviceName,
           'spring_cloud_service_id': springCloudServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudElasticApplicationPerformanceMonitoringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudElasticApplicationPerformanceMonitoring>`.
  RefTo<AzurermSpringCloudElasticApplicationPerformanceMonitoring> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_packages` attribute.
  TfRef<List<String>> get applicationPackages =>
      TfRef.attribute<List<String>>(this, 'application_packages');

  /// Reference to `globally_enabled` attribute.
  TfRef<bool> get globallyEnabled =>
      TfRef.attribute<bool>(this, 'globally_enabled');

  /// Reference to `server_url` attribute.
  TfRef<String> get serverUrl => TfRef.attribute<String>(this, 'server_url');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
