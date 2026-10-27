// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_dynatrace_application_performance_monitoring`.
const Set<String>
_azurermSpringCloudDynatraceApplicationPerformanceMonitoringSensitive =
    <String>{'api_token', 'tenant', 'tenant_token'};

/// Factory wrapper for `azurerm_spring_cloud_dynatrace_application_performance_monitoring`.
final class AzurermSpringCloudDynatraceApplicationPerformanceMonitoring
    extends Resource {
  static const String tfType =
      'azurerm_spring_cloud_dynatrace_application_performance_monitoring';

  AzurermSpringCloudDynatraceApplicationPerformanceMonitoring(
    super.localName, {
    Sensitive<String>? apiToken,
    TfArg<String>? apiUrl,
    required TfArg<String> connectionPoint,
    TfArg<String>? environmentId,
    TfArg<bool>? globallyEnabled,
    required TfArg<String> name,
    required TfArg<String> springCloudServiceId,
    required Sensitive<String> tenant,
    required Sensitive<String> tenantToken,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_token': ?apiToken,
           'api_url': ?apiUrl,
           'connection_point': connectionPoint,
           'environment_id': ?environmentId,
           'globally_enabled': ?globallyEnabled,
           'name': name,
           'spring_cloud_service_id': springCloudServiceId,
           'tenant': tenant,
           'tenant_token': tenantToken,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudDynatraceApplicationPerformanceMonitoringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudDynatraceApplicationPerformanceMonitoring>`.
  RefTo<AzurermSpringCloudDynatraceApplicationPerformanceMonitoring> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_token` attribute.
  TfRef<String> get apiToken => TfRef.attribute<String>(this, 'api_token');

  /// Reference to `api_url` attribute.
  TfRef<String> get apiUrl => TfRef.attribute<String>(this, 'api_url');

  /// Reference to `connection_point` attribute.
  TfRef<String> get connectionPoint =>
      TfRef.attribute<String>(this, 'connection_point');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `globally_enabled` attribute.
  TfRef<bool> get globallyEnabled =>
      TfRef.attribute<bool>(this, 'globally_enabled');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');

  /// Reference to `tenant` attribute.
  TfRef<String> get tenant => TfRef.attribute<String>(this, 'tenant');

  /// Reference to `tenant_token` attribute.
  TfRef<String> get tenantToken =>
      TfRef.attribute<String>(this, 'tenant_token');
}
