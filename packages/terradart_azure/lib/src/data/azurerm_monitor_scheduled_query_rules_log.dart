// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../monitor/azurerm_monitor_scheduled_query_rules_log.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_scheduled_query_rules_log`.
const Set<String> _azurermMonitorScheduledQueryRulesLogSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_scheduled_query_rules_log`.
final class DataAzurermMonitorScheduledQueryRulesLog extends Data {
  static const String tfType = 'azurerm_monitor_scheduled_query_rules_log';

  DataAzurermMonitorScheduledQueryRulesLog(
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
  Set<String> get sensitiveFields =>
      _azurermMonitorScheduledQueryRulesLogSensitive;

  /// A reference to the `azurerm_monitor_scheduled_query_rules_log` this data source reads, for
  /// arguments typed `RefTo<AzurermMonitorScheduledQueryRulesLog>`.
  RefTo<AzurermMonitorScheduledQueryRulesLog> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorized_resource_ids` attribute.
  TfRef<List<String>> get authorizedResourceIds =>
      TfRef.attribute<List<String>>(this, 'authorized_resource_ids');

  /// Reference to `criteria` attribute.
  TfRef<List<Map<String, Object?>>> get criteria =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'criteria');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
