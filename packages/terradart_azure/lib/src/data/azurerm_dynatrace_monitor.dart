// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dynatrace/azurerm_dynatrace_monitor.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dynatrace_monitor`.
const Set<String> _azurermDynatraceMonitorSensitive = <String>{};

/// Factory wrapper for `azurerm_dynatrace_monitor`.
final class DataAzurermDynatraceMonitor extends Data {
  static const String tfType = 'azurerm_dynatrace_monitor';

  DataAzurermDynatraceMonitor(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDynatraceMonitorSensitive;

  /// A reference to the `azurerm_dynatrace_monitor` this data source reads, for
  /// arguments typed `RefTo<AzurermDynatraceMonitor>`.
  RefTo<AzurermDynatraceMonitor> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `environment_properties` attribute.
  TfRef<List<Map<String, Object?>>> get environmentProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'environment_properties',
      );

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `marketplace_subscription` attribute.
  TfRef<String> get marketplaceSubscription =>
      TfRef.attribute<String>(this, 'marketplace_subscription');

  /// Reference to `monitoring_enabled` attribute.
  TfRef<bool> get monitoringEnabled =>
      TfRef.attribute<bool>(this, 'monitoring_enabled');

  /// Reference to `plan` attribute.
  TfRef<List<Map<String, Object?>>> get plan =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'plan');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user` attribute.
  TfRef<List<Map<String, Object?>>> get user =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
