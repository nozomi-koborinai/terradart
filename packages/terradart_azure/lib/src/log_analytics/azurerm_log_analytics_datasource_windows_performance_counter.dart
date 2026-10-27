// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_datasource_windows_performance_counter`.
const Set<String>
_azurermLogAnalyticsDatasourceWindowsPerformanceCounterSensitive = <String>{};

/// Factory wrapper for `azurerm_log_analytics_datasource_windows_performance_counter`.
final class AzurermLogAnalyticsDatasourceWindowsPerformanceCounter
    extends Resource {
  static const String tfType =
      'azurerm_log_analytics_datasource_windows_performance_counter';

  AzurermLogAnalyticsDatasourceWindowsPerformanceCounter(
    super.localName, {
    required TfArg<String> counterName,
    required TfArg<String> instanceName,
    required TfArg<num> intervalSeconds,
    required TfArg<String> name,
    required TfArg<String> objectName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> workspaceName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'counter_name': counterName,
           'instance_name': instanceName,
           'interval_seconds': intervalSeconds,
           'name': name,
           'object_name': objectName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'workspace_name': workspaceName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsDatasourceWindowsPerformanceCounterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsDatasourceWindowsPerformanceCounter>`.
  RefTo<AzurermLogAnalyticsDatasourceWindowsPerformanceCounter> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `counter_name` attribute.
  TfRef<String> get counterName =>
      TfRef.attribute<String>(this, 'counter_name');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `interval_seconds` attribute.
  TfRef<num> get intervalSeconds =>
      TfRef.attribute<num>(this, 'interval_seconds');

  /// Reference to `object_name` attribute.
  TfRef<String> get objectName => TfRef.attribute<String>(this, 'object_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `workspace_name` attribute.
  TfRef<String> get workspaceName =>
      TfRef.attribute<String>(this, 'workspace_name');
}
