// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_application_insights_application_performance_monitoring`.
const Set<String>
_azurermSpringCloudApplicationInsightsApplicationPerformanceMonitoringSensitive =
    <String>{};

/// Factory wrapper for `azurerm_spring_cloud_application_insights_application_performance_monitoring`.
final class AzurermSpringCloudApplicationInsightsApplicationPerformanceMonitoring
    extends Resource {
  static const String tfType =
      'azurerm_spring_cloud_application_insights_application_performance_monitoring';

  AzurermSpringCloudApplicationInsightsApplicationPerformanceMonitoring(
    super.localName, {
    TfArg<String>? connectionString,
    TfArg<bool>? globallyEnabled,
    required TfArg<String> name,
    TfArg<String>? roleInstance,
    TfArg<String>? roleName,
    TfArg<num>? samplingPercentage,
    TfArg<num>? samplingRequestsPerSecond,
    required TfArg<String> springCloudServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_string': ?connectionString,
           'globally_enabled': ?globallyEnabled,
           'name': name,
           'role_instance': ?roleInstance,
           'role_name': ?roleName,
           'sampling_percentage': ?samplingPercentage,
           'sampling_requests_per_second': ?samplingRequestsPerSecond,
           'spring_cloud_service_id': springCloudServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudApplicationInsightsApplicationPerformanceMonitoringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudApplicationInsightsApplicationPerformanceMonitoring>`.
  RefTo<AzurermSpringCloudApplicationInsightsApplicationPerformanceMonitoring>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `globally_enabled` attribute.
  TfRef<bool> get globallyEnabled =>
      TfRef.attribute<bool>(this, 'globally_enabled');

  /// Reference to `role_instance` attribute.
  TfRef<String> get roleInstance =>
      TfRef.attribute<String>(this, 'role_instance');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');

  /// Reference to `sampling_percentage` attribute.
  TfRef<num> get samplingPercentage =>
      TfRef.attribute<num>(this, 'sampling_percentage');

  /// Reference to `sampling_requests_per_second` attribute.
  TfRef<num> get samplingRequestsPerSecond =>
      TfRef.attribute<num>(this, 'sampling_requests_per_second');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
