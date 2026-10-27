// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_app_dynamics_application_performance_monitoring`.
const Set<String>
_azurermSpringCloudAppDynamicsApplicationPerformanceMonitoringSensitive =
    <String>{'agent_account_access_key', 'agent_account_name'};

/// Factory wrapper for `azurerm_spring_cloud_app_dynamics_application_performance_monitoring`.
final class AzurermSpringCloudAppDynamicsApplicationPerformanceMonitoring
    extends Resource {
  static const String tfType =
      'azurerm_spring_cloud_app_dynamics_application_performance_monitoring';

  AzurermSpringCloudAppDynamicsApplicationPerformanceMonitoring(
    super.localName, {
    required Sensitive<String> agentAccountAccessKey,
    required Sensitive<String> agentAccountName,
    TfArg<String>? agentApplicationName,
    TfArg<String>? agentNodeName,
    TfArg<String>? agentTierName,
    TfArg<String>? agentUniqueHostId,
    required TfArg<String> controllerHostName,
    TfArg<num>? controllerPort,
    TfArg<bool>? controllerSslEnabled,
    TfArg<bool>? globallyEnabled,
    required TfArg<String> name,
    required TfArg<String> springCloudServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_account_access_key': agentAccountAccessKey,
           'agent_account_name': agentAccountName,
           'agent_application_name': ?agentApplicationName,
           'agent_node_name': ?agentNodeName,
           'agent_tier_name': ?agentTierName,
           'agent_unique_host_id': ?agentUniqueHostId,
           'controller_host_name': controllerHostName,
           'controller_port': ?controllerPort,
           'controller_ssl_enabled': ?controllerSslEnabled,
           'globally_enabled': ?globallyEnabled,
           'name': name,
           'spring_cloud_service_id': springCloudServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudAppDynamicsApplicationPerformanceMonitoringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudAppDynamicsApplicationPerformanceMonitoring>`.
  RefTo<AzurermSpringCloudAppDynamicsApplicationPerformanceMonitoring>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_account_access_key` attribute.
  TfRef<String> get agentAccountAccessKey =>
      TfRef.attribute<String>(this, 'agent_account_access_key');

  /// Reference to `agent_account_name` attribute.
  TfRef<String> get agentAccountName =>
      TfRef.attribute<String>(this, 'agent_account_name');

  /// Reference to `agent_application_name` attribute.
  TfRef<String> get agentApplicationName =>
      TfRef.attribute<String>(this, 'agent_application_name');

  /// Reference to `agent_node_name` attribute.
  TfRef<String> get agentNodeName =>
      TfRef.attribute<String>(this, 'agent_node_name');

  /// Reference to `agent_tier_name` attribute.
  TfRef<String> get agentTierName =>
      TfRef.attribute<String>(this, 'agent_tier_name');

  /// Reference to `agent_unique_host_id` attribute.
  TfRef<String> get agentUniqueHostId =>
      TfRef.attribute<String>(this, 'agent_unique_host_id');

  /// Reference to `controller_host_name` attribute.
  TfRef<String> get controllerHostName =>
      TfRef.attribute<String>(this, 'controller_host_name');

  /// Reference to `controller_port` attribute.
  TfRef<num> get controllerPort =>
      TfRef.attribute<num>(this, 'controller_port');

  /// Reference to `controller_ssl_enabled` attribute.
  TfRef<bool> get controllerSslEnabled =>
      TfRef.attribute<bool>(this, 'controller_ssl_enabled');

  /// Reference to `globally_enabled` attribute.
  TfRef<bool> get globallyEnabled =>
      TfRef.attribute<bool>(this, 'globally_enabled');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
