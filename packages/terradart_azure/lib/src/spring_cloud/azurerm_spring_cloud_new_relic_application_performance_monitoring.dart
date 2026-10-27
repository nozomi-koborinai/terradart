// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_new_relic_application_performance_monitoring`.
const Set<String>
_azurermSpringCloudNewRelicApplicationPerformanceMonitoringSensitive = <String>{
  'license_key',
};

/// Factory wrapper for `azurerm_spring_cloud_new_relic_application_performance_monitoring`.
final class AzurermSpringCloudNewRelicApplicationPerformanceMonitoring
    extends Resource {
  static const String tfType =
      'azurerm_spring_cloud_new_relic_application_performance_monitoring';

  AzurermSpringCloudNewRelicApplicationPerformanceMonitoring(
    super.localName, {
    TfArg<bool>? agentEnabled,
    required TfArg<String> appName,
    TfArg<num>? appServerPort,
    TfArg<bool>? auditModeEnabled,
    TfArg<bool>? autoAppNamingEnabled,
    TfArg<bool>? autoTransactionNamingEnabled,
    TfArg<bool>? customTracingEnabled,
    TfArg<bool>? globallyEnabled,
    TfArg<Map<String, String>>? labels,
    required Sensitive<String> licenseKey,
    required TfArg<String> name,
    required TfArg<String> springCloudServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_enabled': ?agentEnabled,
           'app_name': appName,
           'app_server_port': ?appServerPort,
           'audit_mode_enabled': ?auditModeEnabled,
           'auto_app_naming_enabled': ?autoAppNamingEnabled,
           'auto_transaction_naming_enabled': ?autoTransactionNamingEnabled,
           'custom_tracing_enabled': ?customTracingEnabled,
           'globally_enabled': ?globallyEnabled,
           'labels': ?labels,
           'license_key': licenseKey,
           'name': name,
           'spring_cloud_service_id': springCloudServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudNewRelicApplicationPerformanceMonitoringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudNewRelicApplicationPerformanceMonitoring>`.
  RefTo<AzurermSpringCloudNewRelicApplicationPerformanceMonitoring> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_enabled` attribute.
  TfRef<bool> get agentEnabled => TfRef.attribute<bool>(this, 'agent_enabled');

  /// Reference to `app_name` attribute.
  TfRef<String> get appName => TfRef.attribute<String>(this, 'app_name');

  /// Reference to `app_server_port` attribute.
  TfRef<num> get appServerPort => TfRef.attribute<num>(this, 'app_server_port');

  /// Reference to `audit_mode_enabled` attribute.
  TfRef<bool> get auditModeEnabled =>
      TfRef.attribute<bool>(this, 'audit_mode_enabled');

  /// Reference to `auto_app_naming_enabled` attribute.
  TfRef<bool> get autoAppNamingEnabled =>
      TfRef.attribute<bool>(this, 'auto_app_naming_enabled');

  /// Reference to `auto_transaction_naming_enabled` attribute.
  TfRef<bool> get autoTransactionNamingEnabled =>
      TfRef.attribute<bool>(this, 'auto_transaction_naming_enabled');

  /// Reference to `custom_tracing_enabled` attribute.
  TfRef<bool> get customTracingEnabled =>
      TfRef.attribute<bool>(this, 'custom_tracing_enabled');

  /// Reference to `globally_enabled` attribute.
  TfRef<bool> get globallyEnabled =>
      TfRef.attribute<bool>(this, 'globally_enabled');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `license_key` attribute.
  TfRef<String> get licenseKey => TfRef.attribute<String>(this, 'license_key');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
